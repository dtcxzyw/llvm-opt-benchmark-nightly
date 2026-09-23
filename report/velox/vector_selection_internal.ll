Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/vector_selection_internal?download=true
inline.NumInlined: 6676
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImplD2Ev:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !4005
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_24SparseUnionSelectionImplENS_15SparseUnionTypeEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_24SparseUnionSelectionImplENS_15SparseUnionTypeEED2Ev.exit, !prof !83

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !4006
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_24SparseUnionSelectionImplENS_15SparseUnionTypeEED2Ev.exit

_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_24SparseUnionSelectionImplENS_15SparseUnionTypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIavED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImplD0Ev(ptr noundef nonnull align 8 dereferenceable(177) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImplE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIavED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !60
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !4007
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !4007
  br label %_ZN5arrow18TypedBufferBuilderIavED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIavED2Ev.exit.i, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !438
  br label %_ZN5arrow18TypedBufferBuilderIavED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIavED2Ev.exit.i:     ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_24SparseUnionSelectionImplENS_15SparseUnionTypeEEE, i64 16), ptr %0, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i1.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImplD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIavED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !60
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !4008
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !4008
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImplD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImplD2Ev.exit, !prof !83

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !439
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImplD2Ev.exit

_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImplD2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIavED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImpl4InitEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(177) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !431
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load i64, ptr %i.c, align 8, !tbaa !189, !noalias !4017
  %i.e = add nsw i64 %i.d, %i.b                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = load i64, ptr %i.f, align 8, !tbaa !156, !noalias !4017 ; 2 uses
  %.not.i.i = icmp sgt i64 %i.e, %i.g
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit4.thread

_ZN5arrow6StatusD2Ev.exit4.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = shl nsw i64 %i.g, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.e, i64 %i.i)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false)
  %.pr = load ptr, ptr %2, align 8, !tbaa !92, !noalias !4018 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4018)
  store ptr %.pr, ptr %0, align 8, !tbaa !92, !alias.scope !4018
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit4.thread, %_ZN5arrow6StatusD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !92, !alias.scope !4019
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_124SparseUnionSelectionImpl6FinishEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(177) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.411, align 1            ; 3 uses
  %3 = alloca %class.anon.411, align 1            ; 3 uses
  %4 = alloca %class.anon.411, align 1            ; 3 uses
  %5 = alloca %class.anon.411, align 1            ; 3 uses
  %6 = alloca %"class.arrow::Result.143", align 8 ; 13 uses
  %7 = alloca %"class.std::shared_ptr.131", align 16 ; 8 uses
  %8 = alloca %"class.arrow::SparseUnionArray", align 8 ; 8 uses
  %9 = alloca %"class.std::shared_ptr.104", align 8 ; 4 uses
  %10 = alloca %"class.std::vector.148", align 8  ; 13 uses
  %11 = alloca [2 x %"class.std::shared_ptr.131"], align 8 ; 10 uses
  %12 = alloca %"struct.arrow::ArrayData", align 8 ; 13 uses
  %13 = alloca %"class.std::shared_ptr.17", align 8 ; 5 uses
  %14 = alloca %"class.std::vector.148", align 8  ; 2 uses
  %15 = alloca %"class.arrow::Result.78", align 8 ; 13 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %17 = alloca %"class.std::shared_ptr.175", align 8 ; 7 uses
  %18 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %19 = alloca %"struct.arrow::ArrayData", align 16 ; 14 uses
  %20 = alloca %"class.std::shared_ptr.104", align 8 ; 7 uses
  %21 = alloca %"class.arrow::compute::TakeOptions", align 8 ; 5 uses
  %22 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZN5arrow18TypedBufferBuilderIavE6FinishEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.143") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true)
  %i.b = load ptr, ptr %6, align 8, !tbaa !92
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b, !prof !93

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.cv unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !4036)
  call void @llvm.experimental.noalias.scope.decl(metadata !4037)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !86, !noalias !4038
  store ptr null, ptr %i.g, align 8, !tbaa !65, !noalias !4038
  store <2 x ptr> %i.h, ptr %7, align 16, !tbaa !86, !alias.scope !4038
  store ptr null, ptr %i.e, align 8, !tbaa !477, !noalias !4038
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !437, !nonnull !159, !align !160
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.104") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %i.j)
          to label %bb.e unwind label %bb.ah

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow16SparseUnionArrayC1ESt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 %9)
          to label %bb.f unwind label %bb.ai

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.m, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !60
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24, !inline_history !18
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24, !inline_history !18
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.p, %bb.j ], [ %i.z, %bb.k ]
  %i.aa = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aa, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !260 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !505
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !504
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 4
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = load ptr, ptr %7, align 16, !tbaa !477  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !477
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !65  ; 5 uses
  store ptr null, ptr %i.f, align 8, !tbaa !65
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !65
  store ptr null, ptr %7, align 16, !tbaa !477
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.as, align 8
  %i.at = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i unwind label %.body ; 7 uses

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %i.at, ptr %10, align 8, !tbaa !422
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !478
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store ptr %i.am, ptr %i.aw, align 8, !tbaa !477
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.ar, ptr %i.ax, align 8, !tbaa !65
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread, label %bb.m

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !421
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread151

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread151: ; preds = %bb.m
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !82
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !82
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !421
  br label %bb.n

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.m
  %i.bg = atomicrmw volatile add ptr %i.ba, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !65 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !421
  %.not.i.i52 = icmp eq ptr %.pre, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread151, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.bh = phi ptr [ %i.ar, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread151 ], [ %.pre, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1 ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bi, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !60
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #24, !inline_history !27
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #24, !inline_history !27
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i53 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i53, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.r:                                             ; preds = %bb.p
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i55 = phi i32 [ %i.bl, %bb.q ], [ %i.bv, %bb.r ]
  %i.bw = icmp eq i32 %.0.i.i.i.i55, 1
  br i1 %i.bw, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54, %bb.s
  %i.bx = phi ptr [ %i.az, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread ], [ %i.bd, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1 ], [ %i.bd, %bb.o ], [ %i.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54 ], [ %i.bd, %bb.s ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !65 ; 8 uses
  %.not.i.i52.1 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i52.1, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i53.1 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i53.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = add nsw i32 %i.cd, -1
  store i32 %i.cf, ptr %i.ca, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54.1

bb.w:                                             ; preds = %bb.u
  %i.cg = atomicrmw volatile add ptr %i.ca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54.1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54.1: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i55.1 = phi i32 [ %i.cd, %bb.v ], [ %i.cg, %bb.w ]
  %i.ch = icmp eq i32 %.0.i.i.i.i55.1, 1
  br i1 %i.ch, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, !prof !83

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54.1
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

bb.y:                                             ; preds = %bb.t
  store i32 0, ptr %i.ca, align 8, !tbaa !59
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !60
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #24, !inline_history !27
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #24, !inline_history !27
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1: ; preds = %bb.y, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54.1, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.cp = load ptr, ptr %i.ab, align 8, !tbaa !260 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !80 ; 3 uses
  store ptr %i.cq, ptr %13, align 8, !tbaa !80
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !65 ; 4 uses
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !65
  %.not.i.i.i56 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i56, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !82
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !82
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cy = atomicrmw volatile add ptr %i.cu, i32 1 acq_rel, align 4 ; 0 uses
  %.pre122 = load ptr, ptr %13, align 8, !tbaa !80
  %.pre123 = load ptr, ptr %i.cr, align 8, !tbaa !65
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1
  %i.cz = phi ptr [ %.pre123, %bb.ab ], [ %i.ct, %bb.aa ], [ null, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1 ]
  %i.da = phi ptr [ %.pre122, %bb.ab ], [ %i.cq, %bb.aa ], [ %i.cq, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1 ]
  %i.db = load ptr, ptr %10, align 8, !tbaa !422
  %i.dc = load ptr, ptr %i.bx, align 8, !tbaa !421
  %i.dd = load ptr, ptr %i.av, align 8, !tbaa !478
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store ptr %i.da, ptr %12, align 8, !tbaa !80
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.cz, ptr %i.de, align 8, !tbaa !65
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.ao, ptr %i.df, align 8, !tbaa !423
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dg, i8 0, i64 96, i1 false)
  store ptr %i.db, ptr %i.dh, align 8, !tbaa !422
  store ptr %i.dc, ptr %i.di, align 8, !tbaa !421
  store ptr %i.dd, ptr %i.dj, align 8, !tbaa !478
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !432
  %i.dm = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN5arrow9ArrayDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.dl, ptr noundef nonnull align 8 dereferenceable(120) %12)
          to label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.aj ; 0 uses

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ac
  call void @_ZN5arrow9ArrayDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %12) #24
  %.pre124 = load ptr, ptr %i.dk, align 8, !tbaa !432 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre124, i64 64 ; 3 uses
  %sext = shl i64 %i.aj, 28
  %i.do = ashr i64 %sext, 32                      ; 4 uses
  %i.dp = icmp ugt i64 %i.do, 576460752303423487
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #28
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre124, i64 80 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !503
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !504
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dw, %i.do
  br i1 %i.dx, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre124, i64 72 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !505
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.du
  %i.ec = shl nuw nsw i64 %i.do, 4
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #25
          to label %.noexc65 unwind label %bb.ak  ; 4 uses

.noexc65:                                         ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !504 ; 5 uses
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !505 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc65, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i ], [ %i.ed, %.noexc65 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i ], [ %i.ee, %.noexc65 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4039)
  call void @llvm.experimental.noalias.scope.decl(metadata !4040)
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.eh = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !86, !alias.scope !4040, !noalias !4039
  store ptr null, ptr %i.eg, align 8, !tbaa !65, !alias.scope !4040, !noalias !4039
  store <2 x ptr> %i.eh, ptr %.012.i.i.i.i, align 8, !tbaa !86, !alias.scope !4039, !noalias !4040
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !260, !alias.scope !4040, !noalias !4039
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i64 = icmp eq ptr %i.ei, %i.ef
  br i1 %.not.i.i.i.i64, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !43

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc65
  %.not.i8.i = icmp eq ptr %i.ee, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.ek = load ptr, ptr %i.dq, align 8, !tbaa !503
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ee to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.en) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.af, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !504
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eb
  store ptr %i.eo, ptr %i.dy, align 8, !tbaa !505
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.do
  store ptr %i.ep, ptr %i.dq, align 8, !tbaa !503
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE7reserveEm.exit: ; preds = %bb.ae, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.not116 = icmp sgt i32 %i.al, 0
  br i1 %.not116, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE7reserveEm.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.ew = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.ey = getelementptr inbounds nuw i8, ptr %19, i64 88 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  br label %bb.al

bb.ag:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit
  %i.fj = add nuw nsw i32 %.0117, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fj, %i.al
  br i1 %exitcond.not, label %.critedge, label %bb.al, !llvm.loop !4027

bb.ah:                                            ; preds = %bb.d
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ai:                                            ; preds = %bb.e
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  br label %bb.cu

.body:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.fn) #24
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.ct

bb.aj:                                            ; preds = %bb.ac
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow9ArrayDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %12) #24
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #24
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.cs

bb.ak:                                            ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i, %bb.ad
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.al:                                            ; preds = %.lr.ph, %bb.ag
  %.0117 = phi i32 [ 0, %.lr.ph ], [ %i.fj, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNK5arrow10UnionArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.175") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %.0117)
          to label %bb.am unwind label %bb.bg

bb.am:                                            ; preds = %bb.al
  %i.fq = load ptr, ptr %17, align 8, !tbaa !468
  invoke void @_ZN5arrow5DatumC1ERKNS_5ArrayE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.fq)
          to label %bb.an unwind label %bb.bh

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.fr = load ptr, ptr %i.eq, align 8, !tbaa !436, !nonnull !159, !align !160
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.104") align 8 %20, ptr noundef nonnull align 8 dereferenceable(128) %i.fr)
          to label %bb.ao unwind label %bb.bi

bb.ao:                                            ; preds = %bb.an
  %i.fs = load ptr, ptr %20, align 8, !tbaa !260
  call void @_ZN5arrow9ArrayDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %19, ptr noundef nonnull align 8 dereferenceable(120) %i.fs) #24
  %i.ft = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #25
          to label %bb.ap unwind label %bb.bj     ; 11 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i32 1, ptr %i.fu, align 8, !tbaa !59, !noalias !4041
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 1, ptr %i.fv, align 4, !tbaa !60, !noalias !4041
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ft, align 8, !tbaa !62, !noalias !4041
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fx = load <2 x ptr>, ptr %19, align 16, !tbaa !86, !noalias !4041
  store ptr null, ptr %i.er, align 8, !tbaa !65, !noalias !4041
  store <2 x ptr> %i.fx, ptr %i.fw, align 8, !tbaa !86, !noalias !4041
  store ptr null, ptr %19, align 16, !tbaa !80, !noalias !4041
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fz = load i64, ptr %i.es, align 16, !tbaa !423, !noalias !4041
  store i64 %i.fz, ptr %i.fy, align 8, !tbaa !423, !noalias !4041
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 40 ; 2 uses
  store i64 0, ptr %i.ga, align 8, !tbaa !525, !noalias !4041
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.gc = load i64, ptr %i.et, align 16, !tbaa !334, !noalias !4041
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !334, !noalias !4041
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  %i.ge = load <2 x ptr>, ptr %i.eu, align 8, !tbaa !521, !noalias !4041
  store <2 x ptr> %i.ge, ptr %i.gd, align 8, !tbaa !521, !noalias !4041
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  %i.gg = load ptr, ptr %i.ev, align 8, !tbaa !478, !noalias !4041
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i8 0, i64 24, i1 false), !noalias !4041
  %23 = load ptr, ptr %i.ew, align 16, !tbaa !504, !noalias !4041
  %24 = load <2 x ptr>, ptr %i.ex, align 8, !tbaa !522, !noalias !4041
  %25 = insertelement <4 x ptr> poison, ptr %i.gg, i64 0
  %26 = insertelement <4 x ptr> %25, ptr %23, i64 1
  %27 = shufflevector <2 x ptr> %24, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = shufflevector <4 x ptr> %26, <4 x ptr> %27, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %28, ptr %i.gf, align 8, !tbaa !86, !noalias !4041
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ew, i8 0, i64 24, i1 false), !noalias !4041
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ft, i64 104
  %29 = load <4 x ptr>, ptr %i.ey, align 8, !tbaa !86, !noalias !4041
  store <4 x ptr> %29, ptr %i.gh, align 8, !tbaa !86, !noalias !4041
  store <4 x ptr> splat (ptr null), ptr %i.ey, align 8, !tbaa !86, !noalias !4041
  %i.gi = load atomic i64, ptr %i.ez seq_cst, align 8, !noalias !4041
  store atomic i64 %i.gi, ptr %i.ga seq_cst, align 8, !noalias !4041
  store ptr %i.fw, ptr %18, align 8, !tbaa !260
  store ptr %i.ft, ptr %i.fa, align 8, !tbaa !65
  store i8 2, ptr %i.fb, align 8, !tbaa !527
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZN5arrow7compute11TakeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(17) %21, i1 noundef zeroext true)
          to label %_ZN5arrow7compute11TakeOptions8DefaultsEv.exit unwind label %bb.bk

_ZN5arrow7compute11TakeOptions8DefaultsEv.exit:   ; preds = %bb.ap
  invoke void @_ZN5arrow7compute4TakeERKNS_5DatumES3_RKNS0_11TakeOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.78") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(17) %21, ptr noundef null)
          to label %bb.aq unwind label %bb.bl

bb.aq:                                            ; preds = %_ZN5arrow7compute11TakeOptions8DefaultsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN5arrow9ArrayDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %19) #24
  %i.gl = load ptr, ptr %i.fc, align 8, !tbaa !65 ; 8 uses
  %.not.i.i68 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i68, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72, label %bb.as

bb.as:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 4 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 4294967297
  %i.gp = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.go, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.gm, align 8, !tbaa !59
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 0, ptr %i.gq, align 4, !tbaa !60
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !62
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #24, !inline_history !18
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !62
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #24, !inline_history !18
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72

bb.au:                                            ; preds = %bb.as
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i69 = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i69, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gy = add nsw i32 %i.gp, -1
  store i32 %i.gy, ptr %i.gm, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70

bb.aw:                                            ; preds = %bb.au
  %i.gz = atomicrmw volatile add ptr %i.gm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i71 = phi i32 [ %i.gp, %bb.av ], [ %i.gz, %bb.aw ]
  %i.ha = icmp eq i32 %.0.i.i.i.i71, 1
  br i1 %i.ha, label %bb.ax, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72, !prof !83

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i70, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZN5arrow5DatumD2Ev.exit73 unwind label %bb.ay

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit73:                       ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.hd = load ptr, ptr %i.fd, align 8, !tbaa !65 ; 8 uses
  %.not.i.i74 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i74, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit73
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 4 uses
  %i.hf = load atomic i64, ptr %i.he acquire, align 8 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 4294967297
  %i.hh = trunc i64 %i.hf to i32                  ; 2 uses
  br i1 %i.hg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.he, align 8, !tbaa !59
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  store i32 0, ptr %i.hi, align 4, !tbaa !60
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !62
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #24, !inline_history !19
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !62
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #24, !inline_history !19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bb:                                            ; preds = %bb.az
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i75 = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i75, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hq = add nsw i32 %i.hh, -1
  store i32 %i.hq, ptr %i.he, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

bb.bd:                                            ; preds = %bb.bb
  %i.hr = atomicrmw volatile add ptr %i.he, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i77 = phi i32 [ %i.hh, %bb.bc ], [ %i.hr, %bb.bd ]
  %i.hs = icmp eq i32 %.0.i.i.i.i77, 1
  br i1 %i.hs, label %bb.be, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #24
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit73, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.ht = load ptr, ptr %15, align 8, !tbaa !92
  %i.hu = icmp eq ptr %i.ht, null                 ; 2 uses
  br i1 %i.hu, label %bb.bs, label %bb.bf, !prof !93

bb.bf:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ca unwind label %bb.br

bb.bg:                                            ; preds = %bb.al
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bh:                                            ; preds = %bb.am
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bi:                                            ; preds = %bb.an
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bj:                                            ; preds = %bb.ao
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bk:                                            ; preds = %bb.ap
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %_ZN5arrow7compute11TakeOptions8DefaultsEv.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn35 = phi { ptr, i32 } [ %i.ia, %bb.bl ], [ %i.hz, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #24
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.bm ], [ %i.hy, %bb.bj ]
  call void @_ZN5arrow9ArrayDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %19) #24
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #24
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bi
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %bb.bn ], [ %i.hx, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #24
  br label %bb.bp
end_hunk_0
