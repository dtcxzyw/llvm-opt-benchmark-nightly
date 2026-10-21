Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liftoff-assembler?download=true
inline.NumInlined: 1729
inline.NumDeleted: 639
begin_hunk_0_@_ZNK2v88internal4wasm16LiftoffAssembler27GetTotalFrameSlotCountForGCEv:bb.a
  %i.f = add nsw i32 %i.c, %i.e
  %i.g = sdiv i32 %i.f, 8
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 -268435456, 268435456) i32 @_ZNK2v88internal4wasm16LiftoffAssembler13OolSpillCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(824) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sdiv i32 %i.b, 8
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssemblerC2EPNS0_4ZoneESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %4 = alloca %"struct.v8::internal::AssemblerOptions", align 8 ; 9 uses
  %i.a = load i64, ptr %2, align 8
  store ptr null, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 1, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %i.a, ptr %3, align 8
  call void @_ZN2v88internal18MacroAssemblerBaseC2EPNS0_7IsolateESt7variantIJPNS0_4ZoneEPNS0_19AccountingAllocatorEEENS0_16AssemblerOptionsENS0_18CodeObjectRequiredESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteISD_EE(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef null, ptr %1, i8 0, ptr noundef nonnull byval(%"struct.v8::internal::AssemblerOptions") align 8 %4, i32 noundef 0, ptr noundef nonnull %3) #20
  %i.b = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal15AssemblerBufferEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal15AssemblerBufferEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #20, !inline_history !20
  br label %_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal15AssemblerBufferEEclEPS2_.exit.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal4wasm16LiftoffAssemblerE, i64 16), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.m, i8 0, i64 104, i1 false)
  store i8 -1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 788
  store i32 -1, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i8 -1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i32 32, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 804
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 816
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 425
  store i8 1, ptr %i.u, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(824) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal4wasm16LiftoffAssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ugt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @free(ptr noundef %i.e) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.f)
  tail call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(436) %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal9AssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit

_ZN2v88internal19JumpTableInfoWriterD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt5dequeIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.06.i.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.u = icmp ult ptr %.06.i.i.i, %i.p
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, !llvm.loop !21

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, %bb.c
  %i.v = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i ], [ %i.l, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #21
  br label %_ZNSt5dequeIiSaIiEED2Ev.exit

_ZNSt5dequeIiSaIiEED2Ev.exit:                     ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i
  tail call void @_ZN2v88internal13AssemblerBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(824) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal4wasm16LiftoffAssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ugt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %_ZN2v88internal4wasm16LiftoffAssemblerD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @free(ptr noundef %i.e) #20, !inline_history !22
  br label %_ZN2v88internal4wasm16LiftoffAssemblerD2Ev.exit

_ZN2v88internal4wasm16LiftoffAssemblerD2Ev.exit:  ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.f), !inline_history !22
  tail call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(824) %0) #20, !inline_history !22
  tail call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal8MalloceddlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden preserve_mostcc range(i8 0, 32) i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %1, i32 %2, i32 %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 9 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 8       ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 4 uses
  %i.a = and i64 %.sroa.2.0.extract.shift, 15
  %i.b = icmp ult i8 %.sroa.2.0.extract.trunc, 11
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.a
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %i.e = icmp ne i8 %.sroa.2.0.extract.trunc, 0
  tail call void @llvm.assume(i1 %i.e)
  %5 = icmp ult i8 %i.d, 2
  tail call void @llvm.assume(i1 %5)
  %i.f = zext nneg i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %i.f
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.g, align 4
  %i.h = xor i32 %3, -1
  %i.i = and i32 %.sroa.0.0.copyload.i.i, %i.h    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 8
  %i.k = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.l = and i32 %i.i, %i.k                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.l, i1 true)
  %i.n = trunc nuw nsw i32 %i.m to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.i)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.b, %bb.c
  %.sroa.06.0.i.i = phi i8 [ %i.n, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.sroa.46.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.46.0.extract.trunc.i = trunc nuw i64 %.sroa.46.0.extract.shift.i to i32
  %i.p = and i64 %1, 255
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.r = icmp eq i8 %.sroa.2.0.extract.trunc, 1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.s, i8 0, i64 12, i1 false), !alias.scope !25
  store i32 %.sroa.46.0.extract.trunc.i, ptr %scevgep.i.i.i, align 4, !alias.scope !25
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.t = ashr i64 %1, 32
  %scevgep.i1.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 0, ptr %i.u, align 4, !alias.scope !25
  store i64 %i.t, ptr %scevgep.i1.i.i, align 4, !alias.scope !25
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i32 [ 5648, %bb.e ], [ 5904, %bb.f ]
  store i32 %.sink.i.i, ptr %4, align 8, !alias.scope !25
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.v, align 8, !alias.scope !25
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %4)
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit

bb.g:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.w = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = sub nsw i32 0, %2                        ; 3 uses
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.y, 128
  %i.aa = icmp ult i64 %i.z, 256                  ; 2 uses
  %i.ab = shl i32 %i.x, 24
  %i.ac = or disjoint i32 %i.ab, 4521984
  %.sroa.0.3.insert.insert11.i.i = zext i32 %i.ac to i64
  %.sroa.0.3.insert.ext.i.i = zext i32 %i.x to i64
  %.sroa.0.3.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i, 24
  %.sroa.0.3.insert.insert.i.i = or disjoint i64 %.sroa.0.3.insert.shift.i.i, 8716288
  %.sroa.0.0.i.i = select i1 %i.aa, i64 %.sroa.0.3.insert.insert11.i.i, i64 %.sroa.0.3.insert.insert.i.i
  %storemerge.i.i.i = select i1 %i.aa, i64 2, i64 5
  %.fca.1.load.cast.i.i.i = inttoptr i64 %storemerge.i.i.i to ptr
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %.sroa.0.0.i.i, ptr nonnull %.fca.1.load.cast.i.i.i, i8 noundef zeroext %.sroa.2.0.extract.trunc)
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit: ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i8 %.sroa.06.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %1, i32 %2, i8 %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 7 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 2 uses
  %.sroa.46.0.extract.shift = lshr i64 %1, 32
  %.sroa.46.0.extract.trunc = trunc nuw i64 %.sroa.46.0.extract.shift to i32
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %.sroa.2.0.extract.trunc, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.d, i8 0, i64 12, i1 false), !alias.scope !28
  store i32 %.sroa.46.0.extract.trunc, ptr %scevgep.i.i, align 4, !alias.scope !28
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

bb.d:                                             ; preds = %bb.b
  %i.e = ashr i64 %1, 32
  %scevgep.i1.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 0, ptr %i.f, align 4, !alias.scope !28
  store i64 %i.e, ptr %scevgep.i1.i, align 4, !alias.scope !28
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi i32 [ 5648, %bb.c ], [ 5904, %bb.d ]
  store i32 %.sink.i, ptr %4, align 8, !alias.scope !28
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.g, align 8, !alias.scope !28
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %3, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub nsw i32 0, %2                        ; 3 uses
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, 128
  %i.l = icmp ult i64 %i.k, 256                   ; 2 uses
  %i.m = shl i32 %i.i, 24
  %i.n = or disjoint i32 %i.m, 4521984
  %.sroa.0.3.insert.insert11.i = zext i32 %i.n to i64
  %.sroa.0.3.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.3.insert.shift.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i, 24
  %.sroa.0.3.insert.insert.i = or disjoint i64 %.sroa.0.3.insert.shift.i, 8716288
  %.sroa.0.0.i = select i1 %i.l, i64 %.sroa.0.3.insert.insert11.i, i64 %.sroa.0.3.insert.insert.i
  %storemerge.i.i = select i1 %i.l, i64 2, i64 5
  %.fca.1.load.cast.i.i = inttoptr i64 %storemerge.i.i to ptr
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %3, i64 %.sroa.0.0.i, ptr nonnull %.fca.1.load.cast.i.i, i8 noundef zeroext %.sroa.2.0.extract.trunc)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i8 0, 32) i8 @_ZN2v88internal4wasm16LiftoffAssembler23LoadI64HalfIntoRegisterENS1_15LiftoffVarStateENS1_11RegPairHalfENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %1, i32 %2, i8 noundef zeroext %3, i32 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 5 uses
  %.sroa.023.0.extract.trunc = trunc i64 %1 to i8 ; 2 uses
  %.sroa.526.0.extract.shift = lshr i64 %1, 32    ; 2 uses
  %.sroa.526.sroa.0.0.extract.trunc = trunc i64 %.sroa.526.0.extract.shift to i8 ; 2 uses
  %sum.shift = lshr i64 %1, 40                    ; 2 uses
  %.sroa.526.sroa.5.0.extract.trunc = trunc nuw nsw i64 %sum.shift to i32
  %i.a = icmp eq i8 %.sroa.023.0.extract.trunc, 1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i8 %3, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = and i8 %.sroa.526.sroa.0.0.extract.trunc, 15
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = lshr i8 %.sroa.526.sroa.0.0.extract.trunc, 4
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.e = and i32 %4, 37839
  %i.f = xor i32 %i.e, 37839                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.g, align 8
  %i.h = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.i = and i32 %i.f, %i.h                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.j = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 true)
  %i.k = trunc nuw nsw i32 %i.j to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.f)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.f, %bb.g
  %.sroa.06.0.i.i = phi i8 [ %i.k, %bb.f ], [ %i.l, %bb.g ] ; 3 uses
  %i.m = icmp eq i8 %.sroa.023.0.extract.trunc, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.n = icmp samesign ult i8 %.sroa.06.0.i.i, 16
  tail call void @llvm.assume(i1 %i.n)
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.o = icmp eq i8 %3, 0
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm16LiftoffAssembler19LoadOldFramePointerEv:bb.a
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i32 0, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i32 0, ptr %2, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.d, align 4
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr), i64 26, i32 noundef 8) #20
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 1) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.e, align 8
  %i.f = and i32 %.sroa.0.0.copyload.i.i.i, 37839 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 37839
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.g = xor i32 %i.f, 37839
  %i.h = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.g, i1 true)
  %i.i = trunc nuw nsw i32 %i.h to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.c:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.j = call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 37839)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.b, %bb.c
  %.sroa.06.0.i.i = phi i8 [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 5 uses
  %i.k = icmp samesign ult i8 %.sroa.06.0.i.i, 16
  call void @llvm.assume(i1 %i.k)
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %.sroa.06.0.i.i, i8 5, i32 noundef 8) #20
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %1, i32 noundef 1) #20
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2) #20
  %.sroa.07.0.copyload = load i32, ptr %i.e, align 8 ; 2 uses
  call void @_ZN2v88internal4wasm16LiftoffAssembler13PushRegistersENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %.sroa.07.0.copyload)
  call void @_ZN2v88internal14MacroAssembler20PrepareCallCFunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 1) #20
  %i.l = call i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() #20
  call void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7, i64 %i.l) #20
  %i.m = call i64 @_ZN2v88internal17ExternalReference16wasm_load_old_fpEv() #20
  %i.n = call noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %i.m, i32 noundef 1, i32 noundef 1, ptr noundef null) #20 ; 0 uses
  %.not = icmp eq i8 %.sroa.06.0.i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %.sroa.06.0.i.i, i8 0, i32 noundef 8) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  call void @_ZN2v88internal4wasm16LiftoffAssembler12PopRegistersENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %.sroa.07.0.copyload)
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.012.0 = phi i8 [ %.sroa.06.0.i.i, %bb.e ], [ 5, %bb.a ]
  ret i8 %.sroa.012.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden preserve_mostcc range(i8 0, 32) i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 6 uses
  %.not.i = icmp eq i8 %i.b, -1                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i8 %i.b, 16
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext nneg i8 %i.b to i32
  %i.e = shl nuw nsw i32 1, %i.d                  ; 2 uses
  %i.f = and i32 %i.e, %1
  %.not3.i = icmp eq i32 %i.f, 0
  br i1 %.not3.i, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.h = load i8, ptr %i.g, align 8               ; 4 uses
  %.not4.i = icmp eq i8 %i.h, -1
  br i1 %.not4.i, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit: ; preds = %bb.c
  %i.i = icmp samesign ult i8 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = zext nneg i8 %i.h to i32
  %i.k = shl nuw nsw i32 1, %i.j                  ; 2 uses
  %i.l = and i32 %i.k, %1
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit
  br i1 %.not.i, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %.pre13 = zext nneg i8 %i.b to i32
  %.pre14 = shl nuw nsw i32 1, %.pre13            ; 2 uses
  %.pre16 = and i32 %.pre14, %1
  %i.m = icmp eq i32 %.pre16, 0
  %i.n = icmp samesign ult i8 %i.b, 16
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.m, label %.thread._crit_edge, label %.thread.thread

.thread._crit_edge:                               ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 792
  %.sroa.04.0.copyload6.i.pre = load i8, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre = zext nneg i8 %.sroa.04.0.copyload6.i.pre to i32
  %.pre12 = shl nuw nsw i32 1, %.pre
  br label %bb.e

.thread.thread:                                   ; preds = %bb.b, %.thread
  %.pre-phi1523 = phi i32 [ %.pre14, %.thread ], [ %i.e, %bb.b ]
  store i8 -1, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit

bb.e:                                             ; preds = %.thread._crit_edge, %bb.d
  %.pre11.i.pre-phi = phi i32 [ %.pre12, %.thread._crit_edge ], [ %i.k, %bb.d ]
  %.sroa.04.0.copyload6.i = phi i8 [ %.sroa.04.0.copyload6.i.pre, %.thread._crit_edge ], [ %i.h, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i8 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 788
  store i32 -1, ptr %i.p, align 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit: ; preds = %.thread.thread, %bb.e
  %.pre-phi12.i = phi i32 [ %.pre11.i.pre-phi, %bb.e ], [ %.pre-phi1523, %.thread.thread ]
  %.sroa.04.0.i = phi i8 [ %.sroa.04.0.copyload6.i, %bb.e ], [ %i.b, %.thread.thread ] ; 3 uses
  %i.q = icmp samesign ult i8 %.sroa.04.0.i, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.s = zext nneg i8 %.sroa.04.0.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.v = xor i32 %.pre-phi12.i, -1
  %i.w = load i32, ptr %i.u, align 8
  %i.x = and i32 %i.w, %i.v
  store i32 %i.x, ptr %i.u, align 8
  br label %bb.g

_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10: ; preds = %bb.c, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 780 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.y, align 4
  %i.z = xor i32 %.sroa.0.0.copyload.i, -1
  %i.aa = and i32 %1, %i.z                        ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit

bb.f:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10
  store i32 0, ptr %i.y, align 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10, %bb.f
  %.sroa.02.0.i = phi i32 [ %1, %bb.f ], [ %i.aa, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10 ] ; 2 uses
  %i.ac = icmp ne i32 %.sroa.02.0.i, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.02.0.i, i1 true)
  %i.ae = trunc nuw nsw i32 %i.ad to i8           ; 2 uses
  tail call preserve_mostcc void @_ZN2v88internal4wasm16LiftoffAssembler13SpillRegisterENS1_15LiftoffRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.ae)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit
  %.sroa.07.0 = phi i8 [ %.sroa.04.0.i, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit ], [ %i.ae, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit ]
  ret i8 %.sroa.07.0
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden noundef i8 @_ZN2v88internal4wasm16LiftoffAssembler24SpillAdjacentFpRegistersENS1_14LiftoffRegListE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(824) %0, i32 %1) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #22
  unreachable
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler14set_num_localsEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(824) initializes((436, 440)) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i32 %1, ptr %i.a, align 4
  %i.b = icmp ugt i32 %1, 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal4wasmlsERSoNS1_15LiftoffVarStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 %2) local_unnamed_addr #0 {
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i8
  %.sroa.36.0.extract.shift.a = lshr i64 %1, 8
  %.sroa.36.0.extract.shift = lshr i64 %1, 32     ; 4 uses
  %.sroa.36.sroa.0.0.extract.trunc = trunc i64 %.sroa.36.0.extract.shift to i8 ; 2 uses
  %i.a = and i64 %.sroa.36.0.extract.shift.a, 255
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN2v88internal4wasm4nameENS1_9ValueKindE.kKindName, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %3, label %11

3:                                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.a
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %4, i64 -24
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %0, i64 %6  ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %7, i32 noundef %10) #20
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

11:                                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.a
  %12 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #20
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef %12) #20 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %3, %11
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1) #20 ; 0 uses
  switch i8 %.sroa.0.0.extract.trunc, label %bb.d [
    i8 0, label %bb.a
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.a:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 3) #20 ; 0 uses
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, -75
  %i.l = or disjoint i32 %i.k, 8
  store i32 %i.l, ptr %i.i, align 8
  %i.m = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) #20 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, -75
  %i.v = or disjoint i32 %i.u, 2
  store i32 %i.v, ptr %i.s, align 8
  br label %bb.e

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = icmp ult i8 %.sroa.36.sroa.0.0.extract.trunc, 16
  br i1 %i.w, label %_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i, label %_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i

_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i: ; preds = %bb.b
  %i.x = and i64 %.sroa.36.0.extract.shift, 15
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names, i64 %i.x
  br label %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit

_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i: ; preds = %bb.b
  %i.z = icmp slt i8 %.sroa.36.sroa.0.0.extract.trunc, 32
  tail call void @llvm.assume(i1 %i.z)
  %sext = shl i64 %.sroa.36.0.extract.shift, 56
  %i.aa = ashr exact i64 %sext, 53
  %i.ab = getelementptr i8, ptr @_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -128
  br label %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit: ; preds = %_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i, %_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i
  %.sink9.in.i = phi ptr [ %i.ac, %_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i ], [ %i.y, %_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i ]
  %.sink9.i = load ptr, ptr %.sink9.in.i, align 8 ; 2 uses
  %i.ad = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink9.i) #20
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sink9.i, i64 noundef %i.ad) #20 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 1) #20 ; 0 uses
  %tr.sh.diff = trunc nuw i64 %.sroa.36.0.extract.shift to i32
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %tr.sh.diff) #20
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

bb.e:                                             ; preds = %bb.c, %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit, %bb.a
  %.0 = phi ptr [ %i.n, %bb.a ], [ %0, %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit ], [ %i.ag, %bb.c ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN2v88internal9Assembler24PatchInHeapNumberRequestEmNS0_6HandleINS0_10HeapNumberEEE(ptr noundef nonnull align 8 dereferenceable(408), i64 noundef, ptr) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler22LoadFromConstantsTableENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler22LoadRootRegisterOffsetENS0_8RegisterEl(ptr noundef nonnull align 8 dereferenceable(436), i8, i64 noundef) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436), i8, i16 noundef zeroext) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

declare void @_ZN2v88internal4wasm12ParallelMove15TransferToStackEiRKNS1_15LiftoffVarStateE(ptr noundef nonnull align 8 dereferenceable(356), i32 noundef, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false) ; 2 uses
  %i.j = sub nuw nsw i64 64, %i.i
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = icmp eq i64 %i.i, 1
  br i1 %i.l, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 8 uses
  %i.o = load ptr, ptr %0, align 8                ; 7 uses
  %i.p = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.t, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.t, 24
  %n.vec = and i64 %i.t, -32                      ; 5 uses
  %i.v = getelementptr i8, ptr %i.n, i64 %n.vec
  %i.w = getelementptr i8, ptr %i.o, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.o, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep13, align 1
  %wide.load14 = load <16 x i8>, ptr %i.x, align 1
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load14, ptr %i.y, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.t, -8                     ; 4 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 %n.vec16
  %i.ab = getelementptr i8, ptr %i.o, i64 %n.vec16
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %next.gep18 = getelementptr i8, ptr %i.n, i64 %index17
  %next.gep19 = getelementptr i8, ptr %i.o, i64 %index17
  %wide.load20 = load <8 x i8>, ptr %next.gep19, align 1
  store <8 x i8> %wide.load20, ptr %next.gep18, align 1
  %index.next21 = add nuw i64 %index17, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.t, %n.vec16
  br i1 %cmp.n22, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.ad = load i8, ptr %.sroa.04.07.i.i.i.i, align 1
  store i8 %i.ad, ptr %.08.i.i.i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 1
  %i.ag = icmp eq ptr %i.ae, %i.p
  br i1 %i.ag, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !55

_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.ah = ptrtoint ptr %i.m to i64
  %i.ai = sub i64 %i.ah, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.n, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store ptr %i.ak, ptr %i.c, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #4 comdat align 2 {
end_hunk_1
begin_hunk_2_@_ZN2v88internal17ExternalReference15isolate_addressEv
declare i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() local_unnamed_addr #6

declare noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436), i64, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @_ZN2v88internal17ExternalReference16wasm_load_old_fpEv() local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler12PopRegistersENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 16711680                     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  %.045 = phi i32 [ %i.p, %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit ], [ 0, %bb.a ] ; 6 uses
  %.sroa.021.044 = phi i32 [ %i.o, %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.021.044, i1 true) ; 2 uses
  %i.d = trunc nuw nsw i32 %i.c to i8
  %i.e = add nsw i8 %i.d, -16                     ; 2 uses
  %i.f = icmp eq i32 %.045, 0
  br i1 %i.f, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = sext i32 %.045 to i64
  %i.h = add nsw i64 %i.g, 128
  %i.i = icmp ult i64 %i.h, 256
  br i1 %i.i, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.sroa.4.0.extract.shift = and i32 %.045, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %.lr.ph, %bb.c
  %.sroa.7.sroa.0.0 = phi i32 [ %.045, %bb.c ], [ 0, %.lr.ph ], [ %.045, %bb.b ]
  %.sroa.7.sroa.4.sroa.0.0 = phi i32 [ %.sroa.7.sroa.4.0.extract.shift, %bb.c ], [ 0, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.3.0 = phi i64 [ 8650752, %bb.c ], [ 262144, %.lr.ph ], [ 4456448, %bb.b ]
  %i.j = phi ptr [ inttoptr (i64 6 to ptr), %bb.c ], [ inttoptr (i64 2 to ptr), %.lr.ph ], [ inttoptr (i64 3 to ptr), %bb.b ] ; 2 uses
  %.sroa.7.sroa.0.0.insert.ext = and i32 %.sroa.7.sroa.0.0, 240
  %.sroa.7.sroa.0.0.insert.insert = or disjoint i32 %.sroa.7.sroa.4.sroa.0.0, %.sroa.7.sroa.0.0.insert.ext
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.sroa.0.0.insert.insert to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.3.0
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, 603979776 ; 2 uses
  %i.k = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.l = and i32 %i.k, 32
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.e, i64 %.sroa.3.0.insert.insert, ptr nonnull %i.j) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.e, i64 %.sroa.3.0.insert.insert, ptr nonnull %i.j) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit: ; preds = %bb.d, %bb.e
  %i.m = shl nuw nsw i32 1, %i.c
  %i.n = xor i32 %i.m, -1
  %i.o = and i32 %.sroa.021.044, %i.n             ; 2 uses
  %i.p = add i32 %.045, 16                        ; 3 uses
  %i.q = icmp eq i32 %i.o, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %.sroa.018.0.insert.ext = zext i32 %i.p to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 4, i64 %.sroa.018.0.insert.ext, i32 noundef 8) #20
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.f, %._crit_edge
  %i.r = and i32 %1, 37839                        ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %._crit_edge.thread, %.lr.ph48
  %.sroa.015.046 = phi i32 [ %i.z, %.lr.ph48 ], [ %i.r, %._crit_edge.thread ] ; 2 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.015.046, i1 true)
  %i.u = trunc nuw nsw i32 %i.t to i8
  %i.v = xor i8 %i.u, 31                          ; 2 uses
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.v) #20
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw nsw i32 1, %i.w
  %i.y = xor i32 %i.x, -1
  %i.z = and i32 %.sroa.015.046, %i.y             ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %._crit_edge49, label %.lr.ph48, !llvm.loop !77

._crit_edge49:                                    ; preds = %.lr.ph48, %._crit_edge.thread
  ret void
}

declare void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i64, ptr, i64, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #16

declare void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm7liftoff13StoreToMemoryEPNS1_16LiftoffAssemblerENS0_7OperandENS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef %0, i64 %1, ptr %2, i8 %3, i8 noundef zeroext %4) local_unnamed_addr #5 comdat {
bb.a:
  switch i8 %4, label %bb.n [
    i8 7, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.a)
  tail call void @_ZN2v88internal9Assembler4movwENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i8 %3) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.b)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i8 %3, i32 noundef 4) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.c)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i8 %3, i32 noundef 8) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %bb.a
  %i.d = add nsw i8 %3, -16                       ; 2 uses
  %i.e = icmp slt i8 %3, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.g = and i32 %i.f, 32
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.d, i8 0, i64 %1, ptr %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler5movssENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, i8 %i.d) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.h:                                             ; preds = %bb.a
  %i.h = add nsw i8 %3, -16                       ; 2 uses
  %i.i = icmp slt i8 %3, 32
  tail call void @llvm.assume(i1 %i.i)
  %i.j = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.k = and i32 %i.j, 32
  %.not.i.i28 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.h, i8 0, i64 %1, ptr %2, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, i8 %i.h) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.k:                                             ; preds = %bb.a
  %i.l = add nsw i8 %3, -16                       ; 2 uses
  %i.m = icmp slt i8 %3, 32
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.o = and i32 %i.n, 32
  %.not.i.i29 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, i8 %i.l) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, i8 %i.l) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZN2v88internal9Assembler4movwENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #20
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, i1 true, !"_ZN2v84base8ReversedINS_8internal15SmallZoneVectorINS2_4wasm15LiftoffVarStateELm16EEEEEDaRT_"}
!13 = distinct !{!13, !12, !"_ZN2v84base8ReversedINS_8internal15SmallZoneVectorINS2_4wasm15LiftoffVarStateELm16EEEEEDaRT_: argument 0"}
!14 = distinct !{!14, i1 true, !"_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE6rbeginEv"}
!15 = distinct !{!15, !14, !"_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE6rbeginEv: argument 0"}
!16 = distinct !{!16, i1 true, !"_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4rendEv"}
!17 = distinct !{!17, !16, !"_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4rendEv: argument 0"}
!18 = !{!15, !13}
!19 = !{!17, !13}
!20 = distinct !{null, null, null, null, null, null}
!21 = distinct !{!21, !5}
!22 = !{ptr @_ZN2v88internal4wasm16LiftoffAssemblerD2Ev}
!23 = distinct !{!23, i1 true, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv"}
!24 = distinct !{!24, !23, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv: argument 0"}
!25 = !{!24}
!26 = distinct !{!26, i1 true, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv"}
!27 = distinct !{!27, !26, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv: argument 0"}
!28 = !{!27}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, i1 true, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv"}
!31 = distinct !{!31, !30, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv: argument 0"}
!32 = !{!31}
!33 = distinct !{!33, i1 true, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv"}
!34 = distinct !{!34, !33, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv: argument 0"}
!35 = !{!34}
!36 = distinct !{!36, i1 true, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv"}
!37 = distinct !{!37, !36, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv: argument 0"}
!38 = distinct !{!38, i1 true, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv"}
!39 = distinct !{!39, !38, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv: argument 0"}
!40 = !{!37}
!41 = !{!39}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, i1 true, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv"}
!46 = distinct !{!46, !45, !"_ZNK2v88internal4wasm15LiftoffVarState8constantEv: argument 0"}
!47 = !{!46}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5, !56, !57}
!54 = distinct !{!54, !5, !56, !57}
!55 = distinct !{!55, !5, !57, !56}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"branch_weights", i32 8, i32 24}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
end_hunk_2
