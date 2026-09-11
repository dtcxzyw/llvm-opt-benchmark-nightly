Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/context-serializer?download=true
inline.NumInlined: 1374
inline.NumDeleted: 729
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal18SharedFunctionInfo17FlushBaselineCodeEv:bb.a
  %i.o = inttoptr i64 %i.n to ptr
  store atomic volatile i64 -4294967296, ptr %i.o release, align 8
  %.sroa.02.0.copyload.i = load i64, ptr %0, align 8 ; 4 uses
  %i.p = add i64 %.sroa.02.0.copyload.i, 7        ; 2 uses
  %i.q = trunc i64 %i.k to i1
  br i1 %i.q, label %bb.c, label %_ZN2v88internal18SharedFunctionInfo14SetTrustedDataENS0_6TaggedINS0_20ExposedTrustedObjectEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit
  %i.r = and i64 %.sroa.02.0.copyload.i, -262144
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 262144         ; 2 uses
  %i.u = and i64 %i.t, 32
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = and i64 %i.t, 25
  %.not38.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not38.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = and i64 %i.k, -262144
  %i.x = inttoptr i64 %i.w to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.x, align 262144
  %i.y = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not39.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i, i64 noundef %i.p, i64 %i.k) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN2v88internal18SharedFunctionInfo14SetTrustedDataENS0_6TaggedINS0_20ExposedTrustedObjectEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i, i64 %i.p, i64 %i.k) #14
  br label %_ZN2v88internal18SharedFunctionInfo14SetTrustedDataENS0_6TaggedINS0_20ExposedTrustedObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal18SharedFunctionInfo14SetTrustedDataENS0_6TaggedINS0_20ExposedTrustedObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit, %bb.f, %bb.g
  ret void
}

declare i64 @_ZNK2v88internal18SharedFunctionInfo7GetCodeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10688
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i32, ptr %i.e monotonic, align 4
  %i.g = lshr i32 %i.f, 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load atomic i64, ptr %i.j monotonic, align 8
  %i.l = icmp ugt i64 %i.k, -281474976710657
  br i1 %i.l, label %bb.b, label %_ZN2v88internal15JSDispatchTable7GetCodeENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #16
  unreachable

_ZN2v88internal15JSDispatchTable7GetCodeENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, 1
  ret i64 %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10JSFunction10UpdateCodeEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = add i64 %2, 51
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 15
  %i.f = add nsw i8 %i.e, -11
  %i.g = icmp ult i8 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8                ; 3 uses
  %i.i = add i64 %i.h, 23
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load atomic volatile i32, ptr %i.j monotonic, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %i.h, 47
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 15
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  store atomic volatile i32 %i.r, ptr %i.j monotonic, align 4
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.s = icmp eq i32 %3, 0
  br i1 %i.s, label %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i64 %.sroa.01.0.copyload.i.i, -262144
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 262144
  %i.w = and i64 %i.v, 32
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE(i64 %.sroa.01.0.copyload.i.i, i32 %i.r) #14
  %.pre = load i64, ptr %0, align 8
  br label %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = phi i64 [ %.pre, %bb.f ], [ %.sroa.01.0.copyload.i.i, %bb.e ], [ %.sroa.01.0.copyload.i.i, %bb.d ], [ %i.h, %bb.c ]
  %i.y = add i64 %i.x, 23
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10688
  %i.ad = add i64 %2, 39
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  tail call void @_ZN2v88internal15JSDispatchTable34SetCodeAndEntrypointNoWriteBarrierENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_6TaggedINS0_4CodeEEEm(ptr noundef nonnull align 8 dereferenceable(44) %i.ac, i32 %i.aa, i64 %2, i64 noundef %i.af)
  %.sroa.01.0.copyload.i11.i = load i64, ptr %0, align 8 ; 2 uses
  %i.ag = icmp eq i32 %3, 0
  br i1 %i.ag, label %_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i
  %i.ah = and i64 %.sroa.01.0.copyload.i11.i, -262144
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 262144
  %i.ak = and i64 %i.aj, 32
  %.not.i.i.i12.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i12.i, label %_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE(i64 %.sroa.01.0.copyload.i11.i, i32 %i.aa) #14
  br label %_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.h, %bb.g, %_ZN2v88internal10JSFunction19set_dispatch_handleENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_16WriteBarrierModeE.exit.i
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1842), align 2, !range !11, !noundef !12
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %_ZN2v88internal10JSFunction14UpdateCodeImplEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeEb.exit, !prof !13

bb.i:                                             ; preds = %_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i
  %i.an = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10688
  %i.ap = load i64, ptr %0, align 8
  %i.aq = add i64 %i.ap, 23
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  tail call void @_ZN2v88internal15JSDispatchTable17SetTieringRequestENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_14TieringBuiltinEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(44) %i.ao, i32 %i.as, i32 noundef 111, ptr noundef %1)
  br label %_ZN2v88internal10JSFunction14UpdateCodeImplEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeEb.exit

_ZN2v88internal10JSFunction14UpdateCodeImplEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeEb.exit: ; preds = %_ZN2v88internal10JSFunction19UpdateDispatchEntryENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17ContextSerializer33SerializeObjectWithEmbedderFieldsINS0_17EmbedderDataArrayEPFNS_11StartupDataEibNS_28SerializeContextDataCallbackENS_5LocalINS_7ContextEEEES5_S8_EEvNS0_6HandleIT_EEiT0_T1_T2_(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr %1, i32 noundef %2, ptr noundef %3, ptr %4, ptr %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::DisallowCompilation", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.660", align 8   ; 13 uses
  %10 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %i.a = inttoptr i64 %6 to ptr
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %7, ptr noundef %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.e = load ptr, ptr %i.c, align 8
  call void @_ZN2v88internal19DisallowCompilationC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %8, ptr noundef %i.e) #14
  %i.f = load i64, ptr %1, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr null, ptr %9, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 7 uses
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  store ptr null, ptr %i.j, align 8
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %invariant.op = add i64 %i.f, 15
  br label %bb.d

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.pre175 = load ptr, ptr %9, align 8
  %invariant.op191 = add i64 %i.f, 15
  br label %bb.ad

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 3 uses
  %.sroa.0106.0153 = phi ptr [ null, %bb.c ], [ %.sroa.0106.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 5 uses
  %.sroa.7109.0152 = phi ptr [ null, %bb.c ], [ %.sroa.7109.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 4 uses
  %.sroa.11.0151 = phi ptr [ null, %bb.c ], [ %.sroa.11.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %.sroa.095.0150 = phi ptr [ null, %bb.c ], [ %.sroa.095.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 10 uses
  %.sroa.9.0149 = phi ptr [ null, %bb.c ], [ %.sroa.9.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 10 uses
  %.sroa.17.0148 = phi ptr [ null, %bb.c ], [ %.sroa.17.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 4 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 3
  %.reass = add i64 %i.k, %invariant.op
  %i.l = inttoptr i64 %.reass to ptr              ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not.i = icmp eq ptr %.sroa.7109.0152, %.sroa.11.0151
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.m, ptr %.sroa.7109.0152, align 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %.sroa.7109.0152 to i64
  %i.o = ptrtoint ptr %.sroa.0106.0153 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.g, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store i64 %i.m, ptr %i.y, align 8
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %.sroa.0106.0153, i64 %i.p, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0106.0153, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0153, i64 noundef %i.p) #15
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.sroa.11.1 = phi ptr [ %i.aa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.11.0151, %bb.e ] ; 2 uses
  %.pn = phi ptr [ %i.y, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.7109.0152, %bb.e ]
  %.sroa.0106.1 = phi ptr [ %i.x, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0106.0153, %bb.e ] ; 5 uses
  %.sroa.7109.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.ab = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.s

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit
  %.not.i.i = icmp eq ptr %.sroa.9.0149, %.sroa.17.0148
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %.sroa.9.0149, align 8
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0149, i64 8
  store i32 0, ptr %.sroa.586.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = ptrtoint ptr %.sroa.9.0149 to i64
  %i.ae = ptrtoint ptr %.sroa.095.0150 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 6 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %bb.m, label %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ah = ashr exact i64 %i.af, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #17 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 3 uses
  store ptr null, ptr %i.ao, align 8
  %.sroa.586.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 0, ptr %.sroa.586.0..sroa_idx87, align 8
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.n, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %.sroa.095.0150, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.095.0150, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0150, i64 noundef %i.af) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.k, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.17.2 = phi ptr [ %i.aq, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.0148, %bb.k ] ; 2 uses
  %.pn135 = phi ptr [ %i.ao, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.9.0149, %bb.k ]
  %.sroa.095.2 = phi ptr [ %i.an, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.095.0150, %bb.k ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn135, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.as = load ptr, ptr %i.j, align 8
  %.not.i46 = icmp eq ptr %i.ar, %i.as
  %.sroa.2.0.copyload.i11.i = load i32, ptr %i.i, align 8 ; 4 uses
  br i1 %.not.i46, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit
  %i.at = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.at, ptr %i.i, align 8
  %i.au = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.au, label %bb.q, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.h, align 8
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.q, %bb.p
  %i.aw = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = xor i64 %i.ax, -1
  %i.az = load i64, ptr %i.ar, align 8
  %i.ba = and i64 %i.az, %i.ay
  store i64 %i.ba, ptr %i.ar, align 8
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.r:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backEOS1_.exit
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr %i.ar, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEERmDpOT_.exit
  %i.bb = icmp eq i64 %i.ab, 0
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = call { ptr, i32 } %3(i32 noundef %i.bc, i1 noundef zeroext %i.bb, ptr %4, ptr %5, ptr %i.a) #14 ; 2 uses
  %i.be = extractvalue { ptr, i32 } %i.bd, 0      ; 2 uses
  %i.bf = extractvalue { ptr, i32 } %i.bd, 1      ; 3 uses
  %.not.i47 = icmp eq ptr %.sroa.9.0149, %.sroa.17.0148
  br i1 %.not.i47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.be, ptr %.sroa.9.0149, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0149, i64 8
  store i32 %i.bf, ptr %.sroa.579.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit

bb.u:                                             ; preds = %bb.s
  %i.bg = ptrtoint ptr %.sroa.9.0149 to i64
  %i.bh = ptrtoint ptr %.sroa.095.0150 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 6 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775792
  br i1 %i.bj, label %bb.v, label %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.bk = ashr exact i64 %i.bi, 4                 ; 3 uses
  %.sroa.speculated.i.i.i48 = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i48, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 576460752303423487)
  %i.bo = select i1 %i.bm, i64 576460752303423487, i64 %i.bn ; 3 uses
  %.not.i.i.i49 = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i49)
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #17 ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 3 uses
  store ptr %i.be, ptr %i.br, align 8
  %.sroa.579.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bf, ptr %.sroa.579.0..sroa_idx80, align 8
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.w, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %.sroa.095.0150, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.w, %_ZNKSt6vectorIN2v811StartupDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i50 = icmp eq ptr %.sroa.095.0150, null
  br i1 %.not.i17.i.i50, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0150, i64 noundef %i.bi) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bo
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.t, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.17.3 = phi ptr [ %i.bt, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.17.0148, %bb.t ] ; 3 uses
  %.pn134 = phi ptr [ %i.br, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9.0149, %bb.t ]
  %.sroa.095.3 = phi ptr [ %i.bq, %_ZNSt6vectorIN2v811StartupDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.095.0150, %bb.t ] ; 3 uses
  %.sroa.9.3 = getelementptr inbounds nuw i8, ptr %.pn134, i64 16 ; 3 uses
  %i.bu = icmp ne i32 %i.bf, 0                    ; 2 uses
  %i.bv = load ptr, ptr %i.h, align 8             ; 7 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %.not.i51 = icmp eq ptr %i.bv, %i.bw
  %.sroa.2.0.copyload.i11.i53 = load i32, ptr %i.i, align 8 ; 4 uses
  br i1 %.not.i51, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit
  %i.bx = add i32 %.sroa.2.0.copyload.i11.i53, 1
  store i32 %i.bx, ptr %i.i, align 8
  %i.by = icmp eq i32 %.sroa.2.0.copyload.i11.i53, 63
  br i1 %i.by, label %bb.z, label %_ZNSt13_Bit_iteratorppEi.exit.i54

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.i, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bz, ptr %i.h, align 8
  br label %_ZNSt13_Bit_iteratorppEi.exit.i54

_ZNSt13_Bit_iteratorppEi.exit.i54:                ; preds = %bb.z, %bb.y
  %i.ca = zext nneg i32 %.sroa.2.0.copyload.i11.i53 to i64
  %i.cb = shl nuw i64 1, %i.ca                    ; 2 uses
  br i1 %i.bu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i54
  %i.cc = load i64, ptr %i.bv, align 8
  %i.cd = or i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.bv, align 8
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ab:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i54
  %i.ce = xor i64 %i.cb, -1
  %i.cf = load i64, ptr %i.bv, align 8
  %i.cg = and i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.bv, align 8
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ac:                                            ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EE9push_backERKS1_.exit
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr %i.bv, i32 %.sroa.2.0.copyload.i11.i53, i1 noundef zeroext %i.bu)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.r, %_ZNSt13_Bit_iteratorppEi.exit.i
  %.sroa.17.1 = phi ptr [ %.sroa.17.2, %bb.r ], [ %.sroa.17.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.17.3, %bb.aa ], [ %.sroa.17.3, %bb.ab ], [ %.sroa.17.3, %bb.ac ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.2, %bb.r ], [ %.sroa.9.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.9.3, %bb.aa ], [ %.sroa.9.3, %bb.ab ], [ %.sroa.9.3, %bb.ac ]
  %.sroa.095.1 = phi ptr [ %.sroa.095.2, %bb.r ], [ %.sroa.095.2, %_ZNSt13_Bit_iteratorppEi.exit.i ], [ %.sroa.095.3, %bb.aa ], [ %.sroa.095.3, %bb.ab ], [ %.sroa.095.3, %bb.ac ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph, label %bb.d, !llvm.loop !23

.lr.ph158:                                        ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal10Serializer16ObjectSerializerE, i64 16), ptr %10, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cj = load ptr, ptr %i.c, align 8
  store ptr %i.cj, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %0, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.ch, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 0, ptr %i.cn, align 8
  call void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44) %10, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.co = load i64, ptr %1, align 8               ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cq = call noundef ptr @_ZNK2v88internal15IdentityMapBase9FindEntryEm(ptr noundef nonnull align 8 dereferenceable(132) %i.cp, i64 noundef %i.co) #14
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %invariant.op193 = add i64 %i.co, 15
  br label %bb.ai

bb.ad:                                            ; preds = %.lr.ph, %bb.af
  %i.cu = phi ptr [ %.pre175, %.lr.ph ], [ %i.dd, %bb.af ] ; 2 uses
  %indvars.iv165 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next166, %bb.af ] ; 4 uses
  %i.cv = lshr i64 %indvars.iv165, 6
  %.zext = and i64 %i.cv, 67108863
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.zext
  %i.cx = and i64 %indvars.iv165, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = load i64, ptr %i.cw, align 8
  %i.da = and i64 %i.cz, %i.cy
  %.not133 = icmp eq i64 %i.da, 0
  br i1 %.not133, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = shl nuw nsw i64 %indvars.iv165, 3
  %.reass192 = add i64 %i.db, %invariant.op191
  %i.dc = inttoptr i64 %.reass192 to ptr
  store atomic volatile i64 0, ptr %i.dc monotonic, align 8
  %.pre = load ptr, ptr %9, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.dd = phi ptr [ %i.cu, %bb.ad ], [ %.pre, %bb.ae ]
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count
  br i1 %exitcond169.not, label %.lr.ph158, label %bb.ad, !llvm.loop !24

._crit_edge159:                                   ; preds = %bb.ar
  %i.de = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.de, null
  br i1 %.not.i.i56, label %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge159
  %i.df = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dk
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.di) #15
  br label %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit

_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit: ; preds = %._crit_edge159, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.dm = ptrtoint ptr %.sroa.17.1 to i64
  %i.dn = ptrtoint ptr %.sroa.095.1 to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.1, i64 noundef %i.do) #15
  %.not.i.i.i58 = icmp eq ptr %.sroa.0106.1, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit
  %i.dp = ptrtoint ptr %.sroa.11.1 to i64
  %i.dq = ptrtoint ptr %.sroa.0106.1 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.1, i64 noundef %i.dr) #15
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2v811StartupDataESaIS1_EED2Ev.exit, %bb.ah
  call void @_ZN2v88internal19DisallowCompilationD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void

bb.ai:                                            ; preds = %.lr.ph158, %bb.ar
  %indvars.iv170 = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next171, %bb.ar ] ; 7 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.1, i64 %indvars.iv170 ; 2 uses
  %.sroa.068.0.copyload = load ptr, ptr %i.ds, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.dt = load ptr, ptr %9, align 8
  %i.du = trunc nuw nsw i64 %indvars.iv170 to i32
  %i.dv = lshr i64 %indvars.iv170, 6
  %.zext132 = and i64 %i.dv, 67108863
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.zext132
  %i.dx = and i64 %indvars.iv170, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = load i64, ptr %i.dw, align 8
  %i.ea = and i64 %i.dz, %i.dy
  %.not = icmp eq i64 %i.ea, 0
  br i1 %.not, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = shl nuw nsw i64 %indvars.iv170, 3
  %.reass194 = add i64 %i.eb, %invariant.op193
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0106.1, i64 %indvars.iv170
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = inttoptr i64 %.reass194 to ptr
  store atomic volatile i64 %i.ed, ptr %i.ee monotonic, align 8
  %i.ef = icmp eq i32 %.sroa.5.0.copyload, 0
  br i1 %i.ef, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eg = load ptr, ptr %i.cs, align 8            ; 3 uses
  %i.eh = load ptr, ptr %i.ct, align 8
  %.not.i.i63 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i.i63, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %i.eg, align 1
  %i.ei = load ptr, ptr %i.cs, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store ptr %i.ej, ptr %i.cs, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

bb.am:                                            ; preds = %bb.ak
  %i.ek = load ptr, ptr %i.cr, align 8            ; 4 uses
  %i.el = ptrtoint ptr %i.eg to i64
  %i.em = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em                    ; 7 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775807
  br i1 %i.eo, label %bb.an, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.am
  %.sroa.speculated.i.i.i.i64 = call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.ep = add i64 %.sroa.speculated.i.i.i.i64, %i.en ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.en
  %i.er = call i64 @llvm.umin.i64(i64 %i.ep, i64 9223372036854775807)
  %i.es = select i1 %i.eq, i64 9223372036854775807, i64 %i.er ; 3 uses
  %.not.i.i.i.i65 = icmp ne i64 %i.es, 0
  call void @llvm.assume(i1 %.not.i.i.i.i65)
  %i.et = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #17 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.en ; 2 uses
  store i8 0, ptr %i.eu, align 1
  %i.ev = icmp sgt i64 %i.en, 0
  br i1 %i.ev, label %bb.ao, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.ao:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.et, ptr align 1 %i.ek, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ao, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %.not.i17.i.i.i66 = icmp eq ptr %i.ek, null
  br i1 %.not.i17.i.i.i66, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.ex = load ptr, ptr %i.ct, align 8
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.ey, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ez) #15
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.et, ptr %i.cr, align 8
  store ptr %i.ew, ptr %i.cs, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es
  store ptr %i.fa, ptr %i.ct, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit:  ; preds = %bb.al, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.fb = load i32, ptr %i.cq, align 4
  %i.fc = lshr i32 %i.fb, 2
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i32 noundef %i.fc, ptr noundef nonnull @.str.6) #14
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i32 noundef %i.du, ptr noundef nonnull @.str.20) #14
  call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i32 noundef %.sroa.5.0.copyload, ptr noundef nonnull @.str.21) #14
  call void @_ZN2v88internal16SnapshotByteSink6PutRawEPKhiPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef %.sroa.068.0.copyload, i32 noundef %.sroa.5.0.copyload, ptr noundef nonnull @.str.1) #14
  %i.fd = icmp eq ptr %.sroa.068.0.copyload, null
  br i1 %i.fd, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.068.0.copyload) #15
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit, %bb.aq, %bb.aj, %bb.ai
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count
  br i1 %exitcond174.not, label %._crit_edge159, label %bb.ai, !llvm.loop !25
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ContextSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(720) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.60", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.60", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 %1, ptr %2, align 8
  %i.d = call noundef zeroext i1 @_ZNK2v88internal10HeapObject14NeedsRehashingENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i64 %1, ptr %3, align 8
  %i.e = call noundef zeroext i1 @_ZNK2v88internal10HeapObject13CanBeRehashedENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret void
}

declare void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17ContextSerializer30ShouldBeInTheSharedObjectCacheENS0_6TaggedINS0_10HeapObjectEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(720) %0, i64 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = and i16 %i.f, -96
  %i.h = icmp eq i16 %i.g, 0
  ret i1 %i.h
}

declare void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal16SnapshotByteSink6PutRawEPKhiPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal10HeapObject14NeedsRehashingENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal10HeapObject13CanBeRehashedENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal10Serializer17VisitRootPointersENS0_4RootEPKcNS0_14FullObjectSlotES5_(ptr noundef nonnull align 8 dereferenceable(600), i32 noundef, ptr noundef, i64, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11RootVisitor16VisitRootPointerENS0_4RootEPKcNS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i64 %3, i64 %i.a) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11RootVisitor17VisitRootPointersENS0_4RootEPKcNS0_21OffHeapFullObjectSlotES5_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i64 %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11RootVisitor16VisitRunningCodeENS0_14FullObjectSlotES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 18, ptr noundef null, i64 %2) #14
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 18, ptr noundef null, i64 %1) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11RootVisitor11SynchronizeENS0_22VisitorSynchronization7SyncTagE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2v88internal11RootVisitor9collectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 1
}

declare noundef zeroext i1 @_ZN2v88internal10Serializer14MustBeDeferredENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEED2Ev(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEEE, i64 16), ptr %0, align 8
  tail call void @_ZN2v88internal15IdentityMapBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(66) %0) #14
  tail call void @_ZN2v88internal15IdentityMapBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal10Serializer14HotObjectsListD1Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v88internal15IdentityMapBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEED0Ev(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEEE, i64 16), ptr %0, align 8
  tail call void @_ZN2v88internal15IdentityMapBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(66) %0) #14, !inline_history !7
  tail call void @_ZN2v88internal15IdentityMapBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(66) %0) #14, !inline_history !7
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEE15NewPointerArrayEmm(ptr noundef nonnull align 8 dereferenceable(66) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %1, 3                            ; 3 uses
  %i.b = tail call noalias noundef ptr @malloc(i64 noundef %i.a) #18 ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a
  %i.e = add i64 %i.a, -8                         ; 2 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.b, %bb.b ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %bb.b ]
  store i64 %2, ptr %.06.i.i.i.i.i.i.prol, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !26

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %bb.b
  %.06.i.i.i.i.i.i.unr = phi ptr [ %i.b, %bb.b ], [ %i.h, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.i = icmp ult i64 %i.e, 56
  br i1 %i.i, label %_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 %2, ptr %.06.i.i.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 16
  store i64 %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 24
  store i64 %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 32
  store i64 %2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 40
  store i64 %2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 48
  store i64 %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 56
  store i64 %2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.q, %i.d
  br i1 %.not.i.i.i.i.i.i.7, label %_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEE18DeletePointerArrayEPmm(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @free(ptr noundef %1) #14
  ret void
}

declare void @_ZN2v88internal15IdentityMapBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #2

end_hunk_0
