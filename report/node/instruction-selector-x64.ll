Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction-selector-x64?download=true
inline.NumInlined: 9610
inline.NumDeleted: 1506
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSelector23VisitI32x4UConvertF32x4ENS1_10turboshaft7OpIndexE:bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.i) #25 ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = or disjoint i64 %i.l, 377957122049
  %i.n = load ptr, ptr %i.h, align 8
  tail call void @_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352) %i.n, i8 noundef zeroext 19, i32 noundef %i.j) #25
  store i64 %i.m, ptr %2, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.h, align 8
  %i.q = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.p) #25 ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = or disjoint i64 %i.s, 377957122049
  %i.u = load ptr, ptr %i.h, align 8
  tail call void @_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352) %i.u, i8 noundef zeroext 19, i32 noundef %i.q) #25
  store i64 %i.t, ptr %i.o, align 8
  %i.v = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = or disjoint i64 %i.x, 1065151889409
  tail call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.z, align 4 ; 2 uses
  %i.aa = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = or disjoint i64 %i.ac, 377957122049
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.ae = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjNS1_18InstructionOperandES3_mPS3_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef 372, i64 %i.y, i64 %i.ad, i64 noundef 2, ptr noundef nonnull %2) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector23VisitI32x8UConvertF32x8ENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca [2 x %"class.v8::internal::compiler::InstructionOperand"], align 16 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.i) #25 ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = or disjoint i64 %i.l, 377957122049
  %i.n = load ptr, ptr %i.h, align 8
  tail call void @_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352) %i.n, i8 noundef zeroext 20, i32 noundef %i.j) #25
  store i64 %i.m, ptr %2, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.h, align 8
  %i.q = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.p) #25 ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = or disjoint i64 %i.s, 377957122049
  %i.u = load ptr, ptr %i.h, align 8
  tail call void @_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352) %i.u, i8 noundef zeroext 20, i32 noundef %i.q) #25
  store i64 %i.t, ptr %i.o, align 8
  %i.v = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = or disjoint i64 %i.x, 1065151889409
  tail call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.z, align 4 ; 2 uses
  %i.aa = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = or disjoint i64 %i.ac, 377957122049
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.ae = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjNS1_18InstructionOperandES3_mPS3_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef 373, i64 %i.y, i64 %i.ad, i64 noundef 2, ptr noundef nonnull %2) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector23VisitF32x8UConvertI32x8ENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.h, align 4
  %i.i = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.j = add i64 %i.i, %i.d
  %i.k = inttoptr i64 %i.j to ptr
  %.0.copyload.i.i.i = load i64, ptr %i.k, align 4
  %i.l = and i64 %.0.copyload.i.i.i, 1095216660735
  %i.m = icmp eq i64 %i.l, 111669149747           ; 2 uses
  %i.n = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  tail call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %.sroa.0.0.copyload.i.i17 = load i32, ptr %i.h, align 4 ; 2 uses
  %i.q = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i17) #25
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = or disjoint i64 %i.s, 377957122049
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i17) #25
  %. = select i1 %i.m, i64 927712935937, i64 1065151889409
  %.30 = select i1 %i.m, i32 318, i32 320
  %i.u = or disjoint i64 %i.p, %.
  %i.v = tail call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjNS1_18InstructionOperandES3_mPS3_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %.30, i64 %i.u, i64 %i.t, i64 noundef 0, ptr noundef null) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector16VisitExtractF128ENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::X64OperandGenerator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = zext i32 %1 to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal8compiler19InstructionSelector12EmitIdentityENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = or disjoint i64 %i.p, 927712935937
  tail call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.r, align 4 ; 2 uses
  %i.s = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = or disjoint i64 %i.u, 377957122049
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.w = load i8, ptr %i.k, align 4
  %i.x = zext i8 %i.w to i32
  %i.y = call i64 @_ZN2v88internal8compiler16OperandGenerator12UseImmediateEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.x)
  %i.z = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjNS1_18InstructionOperandES3_S3_mPS3_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef 485, i64 %i.q, i64 %i.v, i64 %i.y, i64 noundef 0, ptr noundef null) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector17VisitI8x32ShuffleENS1_10turboshaft7OpIndexE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(752) %0, i32 %1) local_unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector25VisitInt32AbsWithOverflowENS1_10turboshaft7OpIndexE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(752) %0, i32 %1) local_unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector25VisitInt64AbsWithOverflowENS1_10turboshaft7OpIndexE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(752) %0, i32 %1) local_unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector17VisitI8x16ShuffleENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 46 uses
  %i.c = alloca i8, align 1                       ; 13 uses
  %2 = alloca %"class.v8::internal::compiler::InstructionSelector::SimdShuffleView", align 8 ; 14 uses
  %i.d = alloca [6 x i32], align 16               ; 18 uses
  %3 = alloca [2 x %"class.v8::internal::compiler::InstructionOperand"], align 16 ; 5 uses
  %4 = alloca %"class.v8::internal::compiler::X64OperandGenerator", align 8 ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 10 uses
  %i.g = alloca [8 x i8], align 1                 ; 7 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::InstructionOperand", align 8 ; 7 uses
  %6 = alloca [10 x %"class.v8::internal::compiler::InstructionOperand"], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !202
  store i32 %1, ptr %2, align 8, !alias.scope !202
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !alias.scope !202
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 10 uses
  store ptr %i.p, ptr %i.o, align 8, !alias.scope !202
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = zext i32 %1 to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  store ptr %i.v, ptr %i.p, align 8, !alias.scope !202
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.m, align 8, !alias.scope !202
  store ptr %i.p, ptr %i.n, align 8, !alias.scope !202
  store i32 1, ptr %i.w, align 4, !alias.scope !202
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.y, align 4
  %i.z = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i.i) #25
  %i.aa = load ptr, ptr %i.p, align 8
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %.sroa.0.0.copyload.i.i11.i = load i32, ptr %i.ag, align 4
  %i.ah = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i11.i) #25
  %i.ai = icmp eq i32 %i.z, %i.ah
  call void @_ZN2v88internal4wasm11SimdShuffle19CanonicalizeShuffleILi16ELi16EEEvbPhPbS5_QaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E(i1 noundef zeroext %i.ai, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c)
  %i.aj = load i8, ptr %i.a, align 1, !range !7, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v88internal8compiler19InstructionSelector17SwapShuffleInputsERNS2_15SimdShuffleViewE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.al = load i8, ptr %i.c, align 1, !range !7, !noundef !5 ; 4 uses
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ao, ptr %i.ap, align 4
  br label %_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit

_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aq = load ptr, ptr %i.j, align 8
  store ptr %i.aq, ptr %4, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.as = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle14TryMatchConcatEPKhPh(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #25
  %i.at = load i8, ptr %i.c, align 1, !range !7, !noundef !5
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  br i1 %i.as, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit
  %i.av = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle18TryMatch32x4RotateEPKhPhb(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, i1 noundef zeroext %i.au) #25
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.f) #25
  %i.ax = zext i8 %i.aw to i32
  store i32 %i.ax, ptr %i.d, align 16
  br label %.thread112

bb.g:                                             ; preds = %bb.e
  call void @_ZN2v88internal8compiler19InstructionSelector17SwapShuffleInputsERNS2_15SimdShuffleViewE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #25
  store i8 0, ptr %i.c, align 1
  %i.ay = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.az = trunc i32 %i.ay to i8
  %i.ba = lshr i8 %i.az, 5
  %i.bb = load i8, ptr %i.e, align 1
  %i.bc = zext i8 %i.bb to i32
  store i32 %i.bc, ptr %i.d, align 16
  br label %.thread112

bb.h:                                             ; preds = %_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit
  %i.bd = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatchArchShuffleILi16EEEbPKhbPPKNS1_12ShuffleEntryIXT_ENSt9enable_ifIXooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEEvE4typeEEEQooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEE(ptr noundef nonnull %i.b, i1 noundef zeroext %i.au, ptr noundef nonnull %i.h)
  br i1 %i.bd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 32
  %.not234 = icmp eq i32 %i.bj, 0
  br i1 %.not234, label %bb.aw, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 22
  %i.bl = load i8, ptr %i.bk, align 2, !range !7, !noundef !5
  br label %bb.aw

bb.k:                                             ; preds = %bb.h
  %i.bm = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch32x4ShuffleEPKhPh(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #25
  br i1 %i.bm, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bn = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.f) #25 ; 2 uses
  %i.bo = load i8, ptr %i.c, align 1, !range !7, !noundef !5
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bq = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle16TryMatchIdentityEPKh(ptr noundef nonnull %i.b) #25
  br i1 %i.bq, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = zext i8 %i.bn to i32
  store i32 %i.br, ptr %i.d, align 16
  br label %.thread

bb.o:                                             ; preds = %bb.l
  %i.bs = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle13TryMatchBlendEPKh(ptr noundef nonnull %i.b) #25
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle10PackBlend4EPKh(ptr noundef nonnull %i.f) #25
  %i.bu = zext i8 %i.bt to i32
  store i32 %i.bu, ptr %i.d, align 16
  %i.bv = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.bw = and i32 %i.bv, 32
  %i.bx = icmp ne i32 %i.bw, 0
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.by = load <4 x i8>, ptr %i.f, align 4        ; 2 uses
  %i.bz = icmp ugt <4 x i8> %i.by, <i8 4, i8 4, i8 3, i8 3>
  %i.ca = icmp ult <4 x i8> %i.by, <i8 4, i8 4, i8 3, i8 3>
  %i.cb = shufflevector <4 x i1> %i.ca, <4 x i1> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cc = freeze <4 x i1> %i.cb
  %i.cd = bitcast <4 x i1> %i.cc to i4
  %i.ce = icmp eq i4 %i.cd, -1
  br i1 %i.ce, label %bb.r, label %_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cf = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.f) #25
  %i.cg = zext i8 %i.cf to i32
  store i32 %i.cg, ptr %i.d, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = and i32 %i.ci, 32
  %i.ck = icmp ne i32 %i.cj, 0
  br label %.thread

_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread: ; preds = %bb.q
  %i.cl = zext i8 %i.bn to i32
  store i32 %i.cl, ptr %i.d, align 16
  %i.cm = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle10PackBlend4EPKh(ptr noundef nonnull %i.f) #25
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.cn, ptr %i.co, align 4
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.r, %_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread, %bb.p
  %.082 = phi i32 [ 442, %bb.n ], [ 444, %bb.p ], [ 440, %bb.r ], [ 443, %_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread ]
  %.075.shrunk = phi i1 [ true, %bb.n ], [ %i.bx, %bb.p ], [ %i.ck, %bb.r ], [ true, %_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread ]
  %.0 = phi i32 [ 1, %bb.n ], [ 1, %bb.p ], [ 1, %bb.r ], [ 2, %_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread ]
  %.075 = zext i1 %.075.shrunk to i8
  br label %.thread112

bb.s:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr %i.p, align 8
  %i.cq = load ptr, ptr %i.l, align 8
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cs
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cu, align 4 ; 2 uses
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  call void @_ZN2v88internal8compiler19InstructionSelector9SetRenameENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, i32 %.sroa.0.0.copyload.i.i) #25
  br label %bb.bc

bb.t:                                             ; preds = %bb.k
  %i.cv = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch16x8ShuffleEPKhPh(ptr noundef nonnull %i.b, ptr noundef nonnull %i.g) #25
  br i1 %i.cv, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.cw = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle13TryMatchBlendEPKh(ptr noundef nonnull %i.b) #25
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cx = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle10PackBlend8EPKh(ptr noundef nonnull %i.g) #25
  %i.cy = zext i8 %i.cx to i32
  store i32 %i.cy, ptr %i.d, align 16
  %i.cz = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.da = trunc i32 %i.cz to i8
  %i.db = lshr i8 %i.da, 5
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.dc = load i8, ptr %i.b, align 16             ; 7 uses
  %i.dd = and i8 %i.dc, 1
  %.not.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i, label %.preheader34.i, label %bb.y

.preheader34.i:                                   ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %7 = load i8, ptr %i.de, align 1                ; 5 uses
  %8 = or disjoint i8 %i.dc, 1
  %.not46.i = icmp eq i8 %7, %8
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %10 = load i8, ptr %9, align 2
  %.not47.i = icmp eq i8 %i.dc, %10
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %12 = load i8, ptr %11, align 1
  %.not47.1.i = icmp eq i8 %7, %12
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %14 = load i8, ptr %13, align 4
  %.not47.160.i = icmp eq i8 %i.dc, %14
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %15 = load <8 x i8>, ptr %i.df, align 1
  %16 = insertelement <8 x i8> poison, i8 %7, i64 0
  %17 = insertelement <8 x i8> %16, i8 %i.dc, i64 1
  %18 = shufflevector <8 x i8> %17, <8 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %19 = icmp eq <8 x i8> %18, %15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.dh = load i8, ptr %i.dg, align 1
  %.not29.1.5.i = icmp eq i8 %7, %i.dh
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.dj = load i8, ptr %i.di, align 2
  %.not29.6.i = icmp eq i8 %i.dc, %i.dj
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.dl = load i8, ptr %i.dk, align 1
  %.not29.1.6.i = icmp eq i8 %7, %i.dl
  %i.dm = freeze <8 x i1> %19
  %20 = bitcast <8 x i1> %i.dm to i8
  %21 = icmp eq i8 %20, -1
  %.not46.i.fr = freeze i1 %.not46.i
  %op.rdx = and i1 %21, %.not46.i.fr
  %22 = freeze i1 %.not47.i
  %23 = freeze i1 %.not47.160.i
  %.not47.1.5.i.fr = freeze i1 %.not29.1.5.i
  %op.rdx259 = and i1 %23, %.not47.1.5.i.fr
  %i.dn = freeze i1 %.not29.6.i
  %24 = and i1 %op.rdx, %22
  %i.do = freeze i1 %.not47.1.i
  %op.rdx261 = and i1 %24, %i.do
  %25 = and i1 %op.rdx259, %i.dn
  %i.dp = and i1 %op.rdx261, %25
  %op.rdx252 = select i1 %i.dp, i1 %.not29.1.6.i, i1 false
  br i1 %op.rdx252, label %bb.x, label %bb.y, !llvm.loop !200

bb.x:                                             ; preds = %.preheader34.i
  %i.dq = lshr exact i8 %i.dc, 1
  %i.dr = zext nneg i8 %i.dq to i32
  store i32 %i.dr, ptr %i.d, align 16
  br label %bb.ab

bb.y:                                             ; preds = %bb.w, %.preheader34.i
  %i.ds = call fastcc noundef zeroext i1 @_ZN2v88internal8compiler12_GLOBAL__N_123TryMatch16x8HalfShuffleEPhS3_(ptr noundef %i.g, ptr noundef %i.i)
  br i1 %i.ds, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dt = load i8, ptr %i.c, align 1, !range !7, !noundef !5
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = select i1 %i.du, i32 445, i32 446       ; 2 uses
  %i.dw = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.g) #25
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.dy = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.dx) #25
  %i.dz = zext i8 %i.dw to i32
  store i32 %i.dz, ptr %i.d, align 16
  %i.ea = zext i8 %i.dy to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.ea, ptr %i.eb, align 4
  %i.ec = load i8, ptr %i.c, align 1, !range !7, !noundef !5
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = load i8, ptr %i.i, align 1
  %i.ef = zext i8 %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.ef, ptr %i.eg, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x, %bb.y, %bb.v
  %.284 = phi i32 [ 444, %bb.v ], [ 448, %bb.x ], [ 437, %bb.y ], [ %i.dv, %bb.aa ], [ %i.dv, %bb.z ]
  %.277 = phi i8 [ %i.db, %bb.v ], [ %i.al, %bb.x ], [ %i.al, %bb.y ], [ 1, %bb.aa ], [ 1, %bb.z ]
  %.3 = phi i32 [ 1, %bb.v ], [ 1, %bb.x ], [ 0, %bb.y ], [ 3, %bb.aa ], [ 2, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %bb.aw

bb.ac:                                            ; preds = %bb.t
  %i.eh = load i8, ptr %i.b, align 16             ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.eq = load <8 x i8>, ptr %i.ei, align 1
  %i.er = insertelement <8 x i8> poison, i8 %i.eh, i64 0
  %i.es = shufflevector <8 x i8> %i.er, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.et = icmp eq <8 x i8> %i.es, %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.ey = load <4 x i8>, ptr %i.eu, align 1
  %i.ez = insertelement <4 x i8> poison, i8 %i.eh, i64 0
  %i.fa = shufflevector <4 x i8> %i.ez, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.fb = icmp eq <4 x i8> %i.fa, %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 13 ; 3 uses
  %i.fd = load i8, ptr %i.fc, align 1
  %.not.12.i = icmp eq i8 %i.eh, %i.fd
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 2
  %.not.13.i = icmp eq i8 %i.eh, %i.ff
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 3 uses
  %i.fh = load i8, ptr %i.fg, align 1
  %.not.14.i = icmp eq i8 %i.eh, %i.fh
  %i.fi = freeze <8 x i1> %i.et                   ; 2 uses
  %i.fj = freeze <4 x i1> %i.fb
  %i.fk = shufflevector <8 x i1> %i.fi, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op253 = and <4 x i1> %i.fk, %i.fj
  %i.fl = shufflevector <4 x i1> %rdx.op253, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fm = shufflevector <8 x i1> %i.fl, <8 x i1> %i.fi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.fn = bitcast <8 x i1> %i.fm to i8
  %i.fo = icmp eq i8 %i.fn, -1
  %op.rdx254 = select i1 %i.fo, i1 %.not.12.i, i1 false
  %i.fp = freeze i1 %.not.13.i
  %i.fq = freeze i1 %op.rdx254
  %i.fr = and i1 %i.fq, %i.fp
  %op.rdx256 = select i1 %i.fr, i1 %.not.14.i, i1 false
  br i1 %op.rdx256, label %.thread112.thread144, label %bb.ad

.thread112.thread144:                             ; preds = %bb.ac
  %i.fs = zext i8 %i.eh to i32
  store i32 %i.fs, ptr %i.d, align 16
  %i.ft = load ptr, ptr %i.p, align 8
  %i.fu = load ptr, ptr %i.l, align 8
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fw
  %.sroa.0.0.copyload.i.i96150 = load i32, ptr %i.fy, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  br label %.split

bb.ad:                                            ; preds = %bb.ac
  %i.fz = load ptr, ptr %i.p, align 8
  %i.ga = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 24 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gc
  %.sroa.0.0.copyload.i.i.i95 = load i32, ptr %i.ge, align 4
  %.val11.i = load ptr, ptr %0, align 8
  %i.gf = getelementptr i8, ptr %.val11.i, i64 8
  %.val11.val.i = load ptr, ptr %i.gf, align 8
  %i.gg = ptrtoint ptr %.val11.val.i to i64       ; 2 uses
  %i.gh = zext i32 %.sroa.0.0.copyload.i.i.i95 to i64
  %i.gi = add i64 %i.gg, %i.gh
  %i.gj = inttoptr i64 %i.gi to ptr               ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 4
  %.not.i.i = icmp eq i8 %i.gk, 35
  br i1 %.not.i.i, label %bb.ae, label %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gm = load i128, ptr %i.gl, align 1
  %i.gn = icmp ne i128 0, %i.gm
  %i.go = zext i1 %i.gn to i32
  %i.gp = icmp eq i32 %i.go, 0
  br label %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i: ; preds = %bb.ae, %bb.ad
  %spec.select.i.i = phi i1 [ %i.gp, %bb.ae ], [ false, %bb.ad ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gs
  %.sroa.0.0.copyload.i.i12.i = load i32, ptr %i.gt, align 4
  %i.gu = zext i32 %.sroa.0.0.copyload.i.i12.i to i64
  %i.gv = add i64 %i.gu, %i.gg
  %i.gw = inttoptr i64 %i.gv to ptr               ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 4
  %.not.i13.i = icmp eq i8 %i.gx, 35
  br i1 %.not.i13.i, label %.split246, label %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i

.split246:                                        ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gz = load i128, ptr %i.gy, align 1
  %i.ha = icmp ne i128 0, %i.gz
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  %i.hd = or i1 %spec.select.i.i, %i.hc
  br i1 %i.hd, label %bb.af, label %.thread120

_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i
  br i1 %spec.select.i.i, label %.loopexit.loopexit.critedge, label %.thread120

bb.af:                                            ; preds = %.split246
  store i8 1, ptr %i.c, align 1
  br i1 %spec.select.i.i, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit.critedge:                      ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i
  store i8 1, ptr %i.c, align 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.critedge, %bb.af
  call void @_ZN2v88internal8compiler19InstructionSelector17SwapShuffleInputsERNS2_15SimdShuffleViewE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #25
  %i.he = load <16 x i8>, ptr %i.b, align 16
  %i.hf = xor <16 x i8> %i.he, splat (i8 16)
  store <16 x i8> %i.hf, ptr %i.b, align 16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.af
  %i.hg = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle29TryMatchByteToDwordZeroExtendEPKh(ptr noundef nonnull %i.b) #25
  %i.hh = load i8, ptr %i.b, align 16             ; 2 uses
  br i1 %i.hg, label %.thread112.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %i.hi = icmp ugt i8 %i.hh, 15
  br i1 %i.hi, label %bb.ag, label %.preheader.1

.thread112.thread:                                ; preds = %.loopexit
  %i.hj = zext i8 %i.hh to i32
  store i32 %i.hj, ptr %i.d, align 16
  %i.hk = load ptr, ptr %i.p, align 8
  %i.hl = load ptr, ptr %i.l, align 8
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hn
  %.sroa.0.0.copyload.i.i96133 = load i32, ptr %i.hp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  br label %bb.ax

bb.ag:                                            ; preds = %.preheader.preheader
  store i8 -128, ptr %i.b, align 16
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.ag
  %i.hq = load i8, ptr %i.ei, align 1
  %i.hr = icmp ugt i8 %i.hq, 15
  br i1 %i.hr, label %bb.ah, label %.preheader.2

bb.ah:                                            ; preds = %.preheader.1
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler19InstructionSelector17VisitI8x16ShuffleENS1_10turboshaft7OpIndexE:bb.a
  br label %.preheader.12

.preheader.12:                                    ; preds = %bb.ar, %.preheader.11
  %i.im = load i8, ptr %i.ex, align 4
  %i.in = icmp ugt i8 %i.im, 15
  br i1 %i.in, label %bb.as, label %.preheader.13

bb.as:                                            ; preds = %.preheader.12
  store i8 -128, ptr %i.ex, align 4
  br label %.preheader.13

.preheader.13:                                    ; preds = %bb.as, %.preheader.12
  %i.io = load i8, ptr %i.fc, align 1
  %i.ip = icmp ugt i8 %i.io, 15
  br i1 %i.ip, label %bb.at, label %.preheader.14

bb.at:                                            ; preds = %.preheader.13
  store i8 -128, ptr %i.fc, align 1
  br label %.preheader.14

.preheader.14:                                    ; preds = %bb.at, %.preheader.13
  %i.iq = load i8, ptr %i.fe, align 2
  %i.ir = icmp ugt i8 %i.iq, 15
  br i1 %i.ir, label %bb.au, label %.preheader.15

bb.au:                                            ; preds = %.preheader.14
  store i8 -128, ptr %i.fe, align 2
  br label %.preheader.15

.preheader.15:                                    ; preds = %bb.au, %.preheader.14
  %i.is = load i8, ptr %i.fg, align 1
  %i.it = icmp ugt i8 %i.is, 15
  br i1 %i.it, label %bb.av, label %.thread120

bb.av:                                            ; preds = %.preheader.15
  store i8 -128, ptr %i.fg, align 1
  br label %.thread120

bb.aw:                                            ; preds = %bb.i, %bb.j, %bb.ab
  %.385 = phi i32 [ %i.bg, %bb.j ], [ %i.bg, %bb.i ], [ %.284, %bb.ab ] ; 2 uses
  %.378 = phi i8 [ %i.bl, %bb.j ], [ 0, %bb.i ], [ %.277, %bb.ab ]
  %.4 = phi i32 [ 0, %bb.j ], [ 0, %bb.i ], [ %.3, %bb.ab ] ; 2 uses
  %.not = icmp eq i32 %.385, 437
  br i1 %.not, label %.thread120, label %.thread112

.thread120:                                       ; preds = %.preheader.15, %bb.av, %.split246, %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i, %bb.aw
  %.4126 = phi i32 [ %.4, %bb.aw ], [ 0, %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i ], [ 0, %.split246 ], [ 0, %bb.av ], [ 0, %.preheader.15 ] ; 2 uses
  %i.iu = load i8, ptr %i.c, align 1, !range !7, !noundef !5
  %i.iv = xor i8 %i.iu, 1
  %i.iw = call noundef i32 @_ZN2v88internal4wasm11SimdShuffle10Pack4LanesEPKh(ptr noundef nonnull %i.b) #25
  %i.ix = zext nneg i32 %.4126 to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ix ; 4 uses
  store i32 %i.iw, ptr %i.iy, align 4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ja = call noundef i32 @_ZN2v88internal4wasm11SimdShuffle10Pack4LanesEPKh(ptr noundef nonnull %i.iz) #25
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 %i.ja, ptr %i.jb, align 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jd = call noundef i32 @_ZN2v88internal4wasm11SimdShuffle10Pack4LanesEPKh(ptr noundef nonnull %i.jc) #25
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i32 %i.jd, ptr %i.je, align 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.jg = call noundef i32 @_ZN2v88internal4wasm11SimdShuffle10Pack4LanesEPKh(ptr noundef nonnull %i.jf) #25
  %i.jh = add nuw nsw i32 %.4126, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  store i32 %i.jg, ptr %i.ji, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.jk) #25 ; 2 uses
  %i.jm = zext i32 %i.jl to i64
  %i.jn = shl nuw nsw i64 %i.jm, 3
  %i.jo = or disjoint i64 %i.jn, 377957122049
  %i.jp = load ptr, ptr %i.jj, align 8
  call void @_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352) %i.jp, i8 noundef zeroext 19, i32 noundef %i.jl) #25
  store i64 %i.jo, ptr %3, align 16
  br label %.thread112

.thread112:                                       ; preds = %.thread, %bb.g, %bb.f, %.thread120, %bb.aw
  %.not118 = phi i1 [ true, %.thread120 ], [ false, %bb.aw ], [ false, %bb.f ], [ false, %bb.g ], [ false, %.thread ] ; 2 uses
  %.385117 = phi i32 [ 437, %.thread120 ], [ %.385, %bb.aw ], [ 441, %bb.f ], [ 447, %bb.g ], [ %.082, %.thread ] ; 2 uses
  %.479 = phi i8 [ %i.iv, %.thread120 ], [ %.378, %bb.aw ], [ %i.al, %bb.f ], [ %i.ba, %bb.g ], [ %.075, %.thread ]
  %.074 = phi i64 [ 1, %.thread120 ], [ 0, %bb.aw ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %.thread ] ; 2 uses
  %.5 = phi i32 [ %i.jh, %.thread120 ], [ %.4, %bb.aw ], [ 1, %bb.f ], [ 1, %bb.g ], [ %.0, %.thread ] ; 2 uses
  %i.jq = load ptr, ptr %i.p, align 8
  %i.jr = load ptr, ptr %i.l, align 8
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.jt
  %.sroa.0.0.copyload.i.i96 = load i32, ptr %i.jv, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.jw = trunc i8 %.479 to i1
  br i1 %i.jw, label %bb.ax, label %.split

.split:                                           ; preds = %.thread112.thread144, %.thread112
  %.sroa.0.0.copyload.i.i96155 = phi i32 [ %.sroa.0.0.copyload.i.i96150, %.thread112.thread144 ], [ %.sroa.0.0.copyload.i.i96, %.thread112 ] ; 2 uses
  %.5154 = phi i32 [ 1, %.thread112.thread144 ], [ %.5, %.thread112 ] ; 2 uses
  %.074153 = phi i64 [ 0, %.thread112.thread144 ], [ %.074, %.thread112 ] ; 2 uses
  %.385117152 = phi i32 [ 449, %.thread112.thread144 ], [ %.385117, %.thread112 ] ; 2 uses
  %.not118151 = phi i1 [ false, %.thread112.thread144 ], [ %.not118, %.thread112 ]
  %.sroa.0.0.copyload.i97 = load i32, ptr %2, align 8 ; 2 uses
  %i.jx = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i97) #25
  %i.jy = zext i32 %i.jx to i64
  %i.jz = shl nuw nsw i64 %i.jy, 3
  %i.ka = or disjoint i64 %i.jz, 1065151889409
  call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i97) #25
  store i64 %i.ka, ptr %5, align 8
  br i1 %.not118151, label %bb.az, label %bb.ay

bb.ax:                                            ; preds = %.thread112, %.thread112.thread
  %.sroa.0.0.copyload.i.i96143 = phi i32 [ %.sroa.0.0.copyload.i.i96133, %.thread112.thread ], [ %.sroa.0.0.copyload.i.i96, %.thread112 ] ; 2 uses
  %.5141 = phi i32 [ 1, %.thread112.thread ], [ %.5, %.thread112 ] ; 2 uses
  %.074139 = phi i64 [ 0, %.thread112.thread ], [ %.074, %.thread112 ] ; 2 uses
  %.385117137 = phi i32 [ 394, %.thread112.thread ], [ %.385117, %.thread112 ] ; 2 uses
  %.not118135 = phi i1 [ false, %.thread112.thread ], [ %.not118, %.thread112 ]
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 8 ; 2 uses
  %i.kb = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i) #25
  %i.kc = zext i32 %i.kb to i64
  %i.kd = shl nuw nsw i64 %i.kc, 3
  %i.ke = or disjoint i64 %i.kd, 927712935937
  call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i) #25
  store i64 %i.ke, ptr %5, align 8
  br i1 %.not118135, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.split, %bb.ax
  %.385117136165 = phi i32 [ %.385117152, %.split ], [ %.385117137, %bb.ax ]
  %.074138162 = phi i64 [ %.074153, %.split ], [ %.074139, %bb.ax ]
  %.5140159 = phi i32 [ %.5154, %.split ], [ %.5141, %bb.ax ]
  %.sroa.0.0.copyload.i.i96142157 = phi i32 [ %.sroa.0.0.copyload.i.i96155, %.split ], [ %.sroa.0.0.copyload.i.i96143, %bb.ax ]
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %.split, %bb.ay
  %.sroa.0.0.copyload.i.i96142156.sink249 = phi i32 [ %.sroa.0.0.copyload.i.i96142157, %bb.ay ], [ %.sroa.0.0.copyload.i.i96155, %.split ], [ %.sroa.0.0.copyload.i.i96143, %bb.ax ] ; 2 uses
  %.sink247 = phi i64 [ 377957122049, %bb.ay ], [ 927712935937, %.split ], [ 927712935937, %bb.ax ] ; 2 uses
  %.385117136164 = phi i32 [ %.385117136165, %bb.ay ], [ %.385117152, %.split ], [ %.385117137, %bb.ax ]
  %.074138161 = phi i64 [ %.074138162, %bb.ay ], [ %.074153, %.split ], [ %.074139, %bb.ax ]
  %.5140158 = phi i32 [ %.5140159, %bb.ay ], [ %.5154, %.split ], [ %.5141, %bb.ax ] ; 2 uses
  %i.kf = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i96142156.sink249) #25
  %i.kg = zext i32 %i.kf to i64
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = or disjoint i64 %i.kh, %.sink247
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i96142156.sink249) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  store i64 %i.ki, ptr %6, align 16
  %i.kj = load i8, ptr %i.c, align 1, !range !7, !noundef !5
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kl = load ptr, ptr %i.p, align 8
  %i.km = load ptr, ptr %i.l, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.kp
  %.sroa.0.0.copyload.i.i98 = load i32, ptr %i.kr, align 4 ; 2 uses
  %i.ks = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i98) #25
  %i.kt = zext i32 %i.ks to i64
  %i.ku = shl nuw nsw i64 %i.kt, 3
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i98) #25
  %i.kv = or disjoint i64 %i.ku, %.sink247
  %i.kw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.kv, ptr %i.kw, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.080 = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ]    ; 2 uses
  %.not250 = icmp eq i32 %.5140158, 0
  br i1 %.not250, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bb
  %i.kx = zext nneg i32 %.080 to i64
  %wide.trip.count = zext nneg i32 %.5140158 to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ky = trunc nuw i64 %indvars.iv.next242 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bb
  %.181.lcssa = phi i32 [ %.080, %bb.bb ], [ %i.ky, %._crit_edge.loopexit ]
  %i.kz = zext nneg i32 %.181.lcssa to i64
  %i.la = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjmPNS1_18InstructionOperandEmS4_mS4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %.385117136164, i64 noundef 1, ptr noundef nonnull %5, i64 noundef %i.kz, ptr noundef nonnull %6, i64 noundef %.074138161, ptr noundef nonnull %3) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.bc

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv241 = phi i64 [ %i.kx, %.lr.ph.preheader ], [ %indvars.iv.next242, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.lc = load i32, ptr %i.lb, align 4
  %i.ld = call i64 @_ZN2v88internal8compiler16OperandGenerator12UseImmediateEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.lc)
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv241
  store i64 %i.ld, ptr %i.le, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !201

bb.bc:                                            ; preds = %bb.s, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call preserve_mostcc void @_ZN2v84base11SmallVectorIiLm2ESaIiEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle14TryMatchConcatEPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle18TryMatch32x4RotateEPKhPhb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #10

declare noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef) local_unnamed_addr #10

declare void @_ZN2v88internal8compiler19InstructionSelector17SwapShuffleInputsERNS2_15SimdShuffleViewE(ptr noundef nonnull align 8 dereferenceable(752), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatchArchShuffleILi16EEEbPKhbPPKNS1_12ShuffleEntryIXT_ENSt9enable_ifIXooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEEvE4typeEEEQooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEE(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = select i1 %1, i32 15, i32 31             ; 16 uses
  %.pre = load i8, ptr %0, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %.02131 = phi i64 [ 0, %bb.a ], [ %i.dh, %.critedge ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr @_ZN2v88internal4wasm11SimdShuffle16arch_shuffles128E, i64 %.02131 ; 17 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = xor i8 %.pre, %i.r
  %i.t = zext i8 %i.s to i32
  %i.u = and i32 %i.a, %i.t
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = load i8, ptr %i.b, align 1
  %i.y = xor i8 %i.x, %i.w
  %i.z = zext i8 %i.y to i32
  %i.aa = and i32 %i.a, %i.z
  %.not.1 = icmp eq i32 %i.aa, 0
  br i1 %.not.1, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = load i8, ptr %i.c, align 1
  %i.ae = xor i8 %i.ad, %i.ac
  %i.af = zext i8 %i.ae to i32
  %i.ag = and i32 %i.a, %i.af
  %.not.2 = icmp eq i32 %i.ag, 0
  br i1 %.not.2, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = load i8, ptr %i.d, align 1
  %i.ak = xor i8 %i.aj, %i.ai
  %i.al = zext i8 %i.ak to i32
  %i.am = and i32 %i.a, %i.al
  %.not.3 = icmp eq i32 %i.am, 0
  br i1 %.not.3, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ao = load i8, ptr %i.an, align 4
  %i.ap = load i8, ptr %i.e, align 1
  %i.aq = xor i8 %i.ap, %i.ao
  %i.ar = zext i8 %i.aq to i32
  %i.as = and i32 %i.a, %i.ar
  %.not.4 = icmp eq i32 %i.as, 0
  br i1 %.not.4, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.au = load i8, ptr %i.at, align 1
  %i.av = load i8, ptr %i.f, align 1
  %i.aw = xor i8 %i.av, %i.au
  %i.ax = zext i8 %i.aw to i32
  %i.ay = and i32 %i.a, %i.ax
  %.not.5 = icmp eq i32 %i.ay, 0
  br i1 %.not.5, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = load i8, ptr %i.g, align 1
  %i.bc = xor i8 %i.bb, %i.ba
  %i.bd = zext i8 %i.bc to i32
  %i.be = and i32 %i.a, %i.bd
  %.not.6 = icmp eq i32 %i.be, 0
  br i1 %.not.6, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 7
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = load i8, ptr %i.h, align 1
  %i.bi = xor i8 %i.bh, %i.bg
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %i.a, %i.bj
  %.not.7 = icmp eq i32 %i.bk, 0
  br i1 %.not.7, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = load i8, ptr %i.i, align 1
  %i.bo = xor i8 %i.bn, %i.bm
  %i.bp = zext i8 %i.bo to i32
  %i.bq = and i32 %i.a, %i.bp
  %.not.8 = icmp eq i32 %i.bq, 0
  br i1 %.not.8, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = load i8, ptr %i.j, align 1
  %i.bu = xor i8 %i.bt, %i.bs
  %i.bv = zext i8 %i.bu to i32
  %i.bw = and i32 %i.a, %i.bv
  %.not.9 = icmp eq i32 %i.bw, 0
  br i1 %.not.9, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.by = load i8, ptr %i.bx, align 2
  %i.bz = load i8, ptr %i.k, align 1
  %i.ca = xor i8 %i.bz, %i.by
  %i.cb = zext i8 %i.ca to i32
  %i.cc = and i32 %i.a, %i.cb
  %.not.10 = icmp eq i32 %i.cc, 0
  br i1 %.not.10, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 11
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = load i8, ptr %i.l, align 1
  %i.cg = xor i8 %i.cf, %i.ce
  %i.ch = zext i8 %i.cg to i32
  %i.ci = and i32 %i.a, %i.ch
  %.not.11 = icmp eq i32 %i.ci, 0
  br i1 %.not.11, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ck = load i8, ptr %i.cj, align 4
  %i.cl = load i8, ptr %i.m, align 1
  %i.cm = xor i8 %i.cl, %i.ck
  %i.cn = zext i8 %i.cm to i32
  %i.co = and i32 %i.a, %i.cn
  %.not.12 = icmp eq i32 %i.co, 0
  br i1 %.not.12, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 13
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = load i8, ptr %i.n, align 1
  %i.cs = xor i8 %i.cr, %i.cq
  %i.ct = zext i8 %i.cs to i32
  %i.cu = and i32 %i.a, %i.ct
  %.not.13 = icmp eq i32 %i.cu, 0
  br i1 %.not.13, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  %i.cw = load i8, ptr %i.cv, align 2
  %i.cx = load i8, ptr %i.o, align 1
  %i.cy = xor i8 %i.cx, %i.cw
  %i.cz = zext i8 %i.cy to i32
  %i.da = and i32 %i.a, %i.cz
  %.not.14 = icmp eq i32 %i.da, 0
  br i1 %.not.14, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 15
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = load i8, ptr %i.p, align 1
  %i.de = xor i8 %i.dd, %i.dc
  %i.df = zext i8 %i.de to i32
  %i.dg = and i32 %i.a, %i.df
  %.not.15 = icmp eq i32 %i.dg, 0
  br i1 %.not.15, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  store ptr %i.q, ptr %2, align 8
  br label %.critedge26

.critedge:                                        ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.dh = add nuw nsw i64 %.02131, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, 17
  br i1 %exitcond.not, label %.critedge26, label %bb.b, !llvm.loop !203

.critedge26:                                      ; preds = %.critedge, %bb.r
  %.not33 = phi i1 [ true, %bb.r ], [ false, %.critedge ]
  ret i1 %.not33
}

declare noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch32x4ShuffleEPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle16TryMatchIdentityEPKh(ptr noundef) local_unnamed_addr #10

declare void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), i32) local_unnamed_addr #10

declare void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), i32) local_unnamed_addr #10

declare void @_ZN2v88internal8compiler19InstructionSelector9SetRenameENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752), i32, i32) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle13TryMatchBlendEPKh(ptr noundef) local_unnamed_addr #10

declare noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle10PackBlend4EPKh(ptr noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch16x8ShuffleEPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #10

declare noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle10PackBlend8EPKh(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal8compiler12_GLOBAL__N_123TryMatch16x8HalfShuffleEPhS3_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %1) unnamed_addr #13 {
bb.a:
  store i8 0, ptr %1, align 1
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = and i8 %i.a, 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i8 %i.a, 7
  %i.d = zext i1 %i.c to i8                       ; 2 uses
  store i8 %i.d, ptr %1, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = and i8 %i.f, 4
  %.not.1 = icmp eq i8 %i.g, 0
  br i1 %.not.1, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i8 %i.f, 7
  %i.i = select i1 %i.h, i8 2, i8 0
  %i.j = or disjoint i8 %i.i, %i.d                ; 2 uses
  store i8 %i.j, ptr %1, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = and i8 %i.l, 4
  %.not.2 = icmp eq i8 %i.m, 0
  br i1 %.not.2, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i8 %i.l, 7
  %i.o = select i1 %i.n, i8 4, i8 0
  %i.p = or disjoint i8 %i.j, %i.o                ; 2 uses
  store i8 %i.p, ptr %1, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %i.s = and i8 %i.r, 4
  %.not.3 = icmp eq i8 %i.s, 0
  br i1 %.not.3, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.inv = icmp ult i8 %i.r, 8
  %i.t = select i1 %.inv, i8 0, i8 8
  %i.u = or disjoint i8 %i.p, %i.t                ; 2 uses
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = and i8 %i.w, 4
  %.not.4.not = icmp eq i8 %i.x, 0
  br i1 %.not.4.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp ugt i8 %i.w, 7
  %i.z = select i1 %i.y, i8 16, i8 0
  %i.aa = or disjoint i8 %i.u, %i.z               ; 2 uses
  store i8 %i.aa, ptr %1, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = and i8 %i.ac, 4
  %.not.5.not = icmp eq i8 %i.ad, 0
  br i1 %.not.5.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp ugt i8 %i.ac, 7
  %i.af = select i1 %i.ae, i8 32, i8 0
  %i.ag = or disjoint i8 %i.aa, %i.af             ; 2 uses
  store i8 %i.ag, ptr %1, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = and i8 %i.ai, 4
  %.not.6.not = icmp eq i8 %i.aj, 0
  br i1 %.not.6.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp ugt i8 %i.ai, 7
  %i.al = select i1 %i.ak, i8 64, i8 0
  %i.am = or i8 %i.ag, %i.al                      ; 2 uses
  store i8 %i.am, ptr %1, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ap = and i8 %i.ao, 4
  %.not.7.not = icmp eq i8 %i.ap, 0
  br i1 %.not.7.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ugt i8 %i.ao, 7
  %i.ar = select i1 %i.aq, i8 -128, i8 0
  %i.as = or i8 %i.am, %i.ar
  store i8 %i.as, ptr %1, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ true, %bb.i ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.e ]
  ret i1 %.not.lcssa
}

declare noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle29TryMatchByteToDwordZeroExtendEPKh(ptr noundef) local_unnamed_addr #10

declare noundef i32 @_ZN2v88internal4wasm11SimdShuffle10Pack4LanesEPKh(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector17VisitI8x16SwizzleENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i8, ptr %i.h, align 4
  %i.j = icmp eq i8 %i.i, 108
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.0.0.copyload.i.i24 = load i32, ptr %i.l, align 4 ; 3 uses
  br i1 %i.j, label %_ZN2v88internal8compiler12_GLOBAL__N_120MatchSimd128ConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPSt5arrayIhLm16EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = zext i32 %.sroa.0.0.copyload.i.i24 to i64
  %i.n = add i64 %i.m, %i.d
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %bb.c, label %_ZN2v88internal8compiler12_GLOBAL__N_120MatchSimd128ConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPSt5arrayIhLm16EE.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.032.0.copyload = load i64, ptr %i.r, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4
  %i.s = tail call noundef zeroext i1 @_ZN2v88internal4wasm11SimdSwizzle21AllInRangeOrTopBitSetESt5arrayIhLm16EE(i64 %.sroa.032.0.copyload, i64 %.sroa.4.0.copyload) #25
  %i.t = select i1 %i.s, i32 4194740, i32 436
  br label %_ZN2v88internal8compiler12_GLOBAL__N_120MatchSimd128ConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPSt5arrayIhLm16EE.exit

_ZN2v88internal8compiler12_GLOBAL__N_120MatchSimd128ConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPSt5arrayIhLm16EE.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 4194740, %bb.a ], [ %i.t, %bb.c ], [ 436, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 32
  %.not = icmp eq i32 %i.w, 0
  %i.x = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  tail call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %. = select i1 %.not, i64 1065151889409, i64 927712935937
  %i.aa = or disjoint i64 %i.z, %.
  %i.ab = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = or disjoint i64 %i.ad, 377957122049
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.af = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i24) #25
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = or disjoint i64 %i.ah, 377957122049
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i24) #25
  %i.aj = tail call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjNS1_18InstructionOperandES3_S3_mPS3_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %.1, i64 %i.aa, i64 %i.ae, i64 %i.ai, i64 noundef 0, ptr noundef null) #25 ; 0 uses
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal4wasm11SimdSwizzle21AllInRangeOrTopBitSetESt5arrayIhLm16EE(i64, i64) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector27VisitI8x16RelaxedLaneSelectENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_122VisitRelaxedLaneSelectEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEj(ptr noundef %0, i32 %1, i32 noundef 473)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_122VisitRelaxedLaneSelectEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEj(ptr noundef nonnull %0, i32 %1, i32 noundef range(i32 471, 0) %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler12_GLOBAL__N_112VisitCompareEPNS1_19InstructionSelectorEjNS1_18InstructionOperandES5_PNS1_17FlagsContinuationE:bb.a
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 %2, ptr %5, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.c, align 8
  %.ptr25 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = icmp eq i8 %i.e, 18
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 19, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 132
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 136
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.copyload.i27.sink39.in = phi ptr [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  %.sink38 = phi i64 [ 132, %bb.d ], [ 136, %bb.c ]
  %.sroa.0.0.copyload.i27.sink39 = load i32, ptr %.sroa.0.0.copyload.i27.sink39.in, align 4 ; 2 uses
  %i.i = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i27.sink39) #25
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i27.sink39) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %.sink38
  %.sroa.0.0.copyload.i28.sink37 = load i32, ptr %i.j, align 4 ; 2 uses
  %i.k = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i28.sink37) #25
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i28.sink37) #25
  %.sink.in.in = zext i32 %i.k to i64
  %.sink.in = shl nuw nsw i64 %.sink.in.in, 3
  %.sink = or disjoint i64 %.sink.in, 34359738369
  %.sink36.in.in = zext i32 %i.i to i64
  %.sink36.in = shl nuw nsw i64 %.sink36.in.in, 3
  %.sink36 = or disjoint i64 %.sink36.in, 377957122049
  store i64 %.sink36, ptr %.ptr25, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sink, ptr %i.l, align 8
  %i.m = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector20EmitWithContinuationEjmPNS1_18InstructionOperandEmS4_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %1, i64 noundef 0, ptr noundef null, i64 noundef 4, ptr noundef nonnull %5, ptr noundef nonnull %4) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN2v88internal8compiler19InstructionSelector20EmitWithContinuationEjNS1_18InstructionOperandES3_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %1, i64 %2, i64 %3, ptr noundef nonnull %4) #25 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i16 0, 773) i16 @_ZN2v88internal8compiler12_GLOBAL__N_127MachineTypeForNarrowWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr %.0.val.8.val, i32 %0, i32 %1) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %.0.val.8.val to i64        ; 5 uses
  %i.b = zext i32 %0 to i64
  %i.c = add i64 %i.b, %i.a
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.0.0.copyload.i.i34 = load i32, ptr %i.f, align 4 ; 2 uses
  %i.g = zext i32 %.sroa.0.0.copyload.i.i34 to i64
  %i.h = add i64 %i.g, %i.a
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %.not.i = icmp eq i8 %i.j, 75
  br i1 %.not.i, label %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit, label %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %spec.select.i = icmp ult i8 %i.l, 2
  br i1 %spec.select.i, label %bb.b, label %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread: ; preds = %bb.a, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit
  %i.m = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.n = add i64 %i.m, %i.a
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %.not.i35 = icmp eq i8 %i.p, 75
  br i1 %.not.i35, label %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38, label %.thread

_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i8, ptr %i.q, align 4
  %spec.select.i37 = icmp ult i8 %i.r, 2
  br i1 %spec.select.i37, label %bb.b, label %.thread

bb.b:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit
  %.sroa.03.0 = phi i32 [ %.sroa.0.0.copyload.i.i, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38 ], [ %.sroa.0.0.copyload.i.i34, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit ] ; 2 uses
  %.not15 = icmp eq i32 %.sroa.03.0, -1
  br i1 %.not15, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = zext i32 %.sroa.03.0 to i64
  %i.t = add i64 %i.s, %i.a
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = load i8, ptr %i.u, align 4
  %.not.i39 = icmp eq i8 %i.v, 75
  br i1 %.not.i39, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i8, ptr %i.w, align 4               ; 2 uses
  %switch.i = icmp ult i8 %i.x, 2
  br i1 %switch.i, label %_ZNK2v88internal8compiler10turboshaft10ConstantOp15signed_integralEv.exit.i, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit

_ZNK2v88internal8compiler10turboshaft10ConstantOp15signed_integralEv.exit.i: ; preds = %bb.d
  %i.y = icmp eq i8 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = shl i64 %i.aa, 32
  %i.ac = ashr exact i64 %i.ab, 32
  %.0.i.i = select i1 %i.y, i64 %i.ac, i64 %i.aa
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit: ; preds = %bb.c, %bb.d, %_ZNK2v88internal8compiler10turboshaft10ConstantOp15signed_integralEv.exit.i
  %.0 = phi i64 [ %.0.i.i, %_ZNK2v88internal8compiler10turboshaft10ConstantOp15signed_integralEv.exit.i ], [ undef, %bb.d ], [ undef, %bb.c ] ; 2 uses
  %i.ad = zext i32 %1 to i64
  %i.ae = add i64 %i.ad, %i.a
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4
  %.not.i40 = icmp eq i8 %i.ag, 75
  br i1 %.not.i40, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i8, ptr %i.ah, align 4             ; 2 uses
  %switch.i42 = icmp ult i8 %i.ai, 2
  br i1 %switch.i42, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit45, label %.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit45: ; preds = %bb.e
  %i.aj = icmp eq i8 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = shl i64 %i.al, 32
  %i.an = ashr exact i64 %i.am, 32
  %.0.i.i44 = select i1 %i.aj, i64 %i.an, i64 %i.al ; 2 uses
  %i.ao = icmp sgt i64 %.0, -1
  %i.ap = icmp sgt i64 %.0.i.i44, -1
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit45
  %i.aq = tail call i64 @llvm.umax.i64(i64 %.0, i64 %.0.i.i44) ; 6 uses
  %.not = icmp samesign ugt i64 %i.aq, 127
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %.not28 = icmp samesign ugt i64 %i.aq, 255
  br i1 %.not28, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.not29 = icmp samesign ugt i64 %i.aq, 32767
  br i1 %.not29, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not30 = icmp samesign ugt i64 %i.aq, 65535
  br i1 %.not30, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %.not31 = icmp samesign ugt i64 %i.aq, 2147483647
  br i1 %.not31, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.not32 = icmp samesign ugt i64 %i.aq, 4294967295
  %spec.select = select i1 %.not32, i16 0, i16 772
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit, %bb.e, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38, %bb.b, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit45
  %.sroa.024.3 = phi i16 [ 0, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit ], [ 0, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit45 ], [ 0, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread ], [ %spec.select, %bb.k ], [ 0, %bb.b ], [ 0, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38 ], [ 0, %bb.e ], [ 516, %bb.j ], [ 514, %bb.f ], [ 771, %bb.i ], [ 515, %bb.h ], [ 770, %bb.g ]
  ret i16 %.sroa.024.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i16 @_ZN2v88internal8compiler12_GLOBAL__N_120MachineTypeForNarrowEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr nofree noundef nonnull readonly captures(none) %0, i32 %1, i32 %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i8, ptr %i.g, align 4
  %i.i = icmp eq i8 %i.h, 77
  br i1 %i.i, label %bb.b, label %._ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread_crit_edge

._ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread_crit_edge: ; preds = %bb.a
  %.pre = zext i32 %1 to i64                      ; 2 uses
  %.pre78 = add i64 %i.d, %.pre
  %.pre80 = inttoptr i64 %.pre78 to ptr
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !208
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !208
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, %i.e
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !noalias !208
  %cond = icmp eq i8 %i.q, 77
  br i1 %cond, label %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24, !noalias !208
  unreachable

_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.b
  %i.r = tail call i16 @_ZNK2v88internal8compiler10turboshaft6LoadOp12machine_typeEv(ptr noundef nonnull align 4 dereferenceable(12) %i.p) #25 ; 2 uses
  %.sroa.050.0.extract.trunc = trunc i16 %i.r to i8 ; 3 uses
  %.sroa.10.0.extract.shift = lshr i16 %i.r, 8    ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = zext i32 %1 to i64                       ; 9 uses
  %i.x = add i64 %i.v, %i.w
  %i.y = inttoptr i64 %i.x to ptr                 ; 10 uses
  %i.z = load i8, ptr %i.y, align 4               ; 2 uses
  %.not.i = icmp eq i8 %i.z, 75
  br i1 %.not.i, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread

bb.d:                                             ; preds = %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i8, ptr %i.aa, align 4             ; 2 uses
  %switch.i = icmp ult i8 %i.ab, 2
  br i1 %switch.i, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq i8 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = shl i64 %i.ae, 32
  %i.ag = ashr exact i64 %i.af, 32
  %.0.i.i = select i1 %i.ac, i64 %i.ag, i64 %i.ae ; 7 uses
  %i.ah = icmp eq i8 %.sroa.050.0.extract.trunc, 2 ; 2 uses
  %i.ai = icmp eq i16 %.sroa.10.0.extract.shift, 2 ; 3 uses
  %i.aj = and i1 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.0.i.i, -128
  %or.cond = icmp ult i64 %i.ak, -256
  br i1 %or.cond, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split, label %.thread

bb.g:                                             ; preds = %bb.e
  %i.al = icmp eq i16 %.sroa.10.0.extract.shift, 3 ; 3 uses
  %i.am = and i1 %i.ah, %i.al
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %or.cond69.not = icmp ult i64 %.0.i.i, 256
  br i1 %or.cond69.not, label %.thread, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split

bb.i:                                             ; preds = %bb.g
  %i.an = icmp eq i8 %.sroa.050.0.extract.trunc, 3 ; 2 uses
  %i.ao = and i1 %i.an, %i.ai
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = add i64 %.0.i.i, -32768
  %or.cond70 = icmp ult i64 %i.ap, -65536
  br i1 %or.cond70, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split, label %.thread

bb.k:                                             ; preds = %bb.i
  %i.aq = and i1 %i.an, %i.al
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %or.cond71.not = icmp ult i64 %.0.i.i, 65536
  br i1 %or.cond71.not, label %.thread, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split

bb.m:                                             ; preds = %bb.k
  %i.ar = icmp eq i8 %.sroa.050.0.extract.trunc, 4 ; 2 uses
  %i.as = and i1 %i.ar, %i.ai
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = add i64 %.0.i.i, -2147483648
  %or.cond72 = icmp ult i64 %i.at, -4294967296
  br i1 %or.cond72, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split, label %.thread

bb.o:                                             ; preds = %bb.m
  %i.au = and i1 %i.ar, %i.al
  %.not73 = xor i1 %i.au, true
  %.not = icmp slt i64 %.0.i.i, 0
  %or.cond74 = select i1 %.not73, i1 true, i1 %.not
  %.not20 = icmp samesign ugt i64 %.0.i.i, 4294967295
  %or.cond75 = select i1 %or.cond74, i1 true, i1 %.not20
  br i1 %or.cond75, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split, label %.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split: ; preds = %bb.h, %bb.l, %bb.o, %bb.n, %bb.j, %bb.f, %bb.d, %._ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread_crit_edge
  %.pre-phi81.ph = phi ptr [ %i.y, %bb.h ], [ %i.y, %bb.l ], [ %i.y, %bb.o ], [ %i.y, %bb.n ], [ %i.y, %bb.j ], [ %i.y, %bb.f ], [ %i.y, %bb.d ], [ %.pre80, %._ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread_crit_edge ]
  %.pre-phi77.ph = phi i64 [ %i.w, %bb.h ], [ %i.w, %bb.l ], [ %i.w, %bb.o ], [ %i.w, %bb.n ], [ %i.w, %bb.j ], [ %i.w, %bb.f ], [ %i.w, %bb.d ], [ %.pre, %._ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread_crit_edge ]
  %.pr = load i8, ptr %.pre-phi81.ph, align 4
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split, %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit
  %i.av = phi i8 [ %.pr, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split ], [ %i.z, %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit ]
  %.pre-phi77 = phi i64 [ %.pre-phi77.ph, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split ], [ %i.w, %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit ]
  %i.aw = icmp eq i8 %i.av, 77
  br i1 %i.aw, label %bb.p, label %.thread

bb.p:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !209
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !209
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = add i64 %.pre-phi77, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !noalias !209
  %cond76 = icmp eq i8 %i.be, 77
  br i1 %cond76, label %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit31, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24, !noalias !209
  unreachable

_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit31: ; preds = %bb.p
  %i.bf = tail call i16 @_ZNK2v88internal8compiler10turboshaft6LoadOp12machine_typeEv(ptr noundef nonnull align 4 dereferenceable(12) %i.bd) #25
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread, %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit31
  %.sroa.10.0 = phi i16 [ %i.bf, %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit31 ], [ 0, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread ], [ 516, %bb.n ], [ 514, %bb.f ], [ 770, %bb.h ], [ 515, %bb.j ], [ 771, %bb.l ], [ 772, %bb.o ]
  ret i16 %.sroa.10.0
}

declare noundef zeroext i8 @_ZN2v88internal8compiler21CommuteFlagsConditionENS1_14FlagsConditionE(i8 noundef zeroext) local_unnamed_addr #10

declare noundef ptr @_ZN2v88internal8compiler19InstructionSelector20EmitWithContinuationEjNS1_18InstructionOperandES3_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752), i32 noundef, i64, i64, ptr noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector27IsOnlyUserOfNodeInSameBlockENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752), i32, i32) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal8compiler12_GLOBAL__N_117TryVisitWordShiftEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEiNS1_10ArchOpcodeEPNS1_17FlagsContinuationE(ptr noundef nonnull %0, i32 %1, i32 noundef range(i32 32, 65) %2, i32 noundef range(i32 211, 215) %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::X64OperandGenerator", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::compiler::InstructionOperand", align 8 ; 4 uses
  %7 = alloca [2 x %"class.v8::internal::compiler::InstructionOperand"], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = zext i32 %1 to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.0.0.copyload.i.i22 = load i32, ptr %i.l, align 4 ; 2 uses
  %i.m = zext i32 %.sroa.0.0.copyload.i.i22 to i64
  %i.n = add i64 %i.m, %i.g
  %i.o = inttoptr i64 %i.n to ptr                 ; 6 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = icmp eq i8 %i.p, 75
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i8, ptr %i.r, align 4
  switch i8 %i.s, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread [
    i8 5, label %.split25
    i8 0, label %.split24
    i8 1, label %.split
    i8 4, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit
  ]

.split24:                                         ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = and i64 %i.u, 4294967295
  %.not = icmp eq i64 %i.v, 2147483648
  br i1 %.not, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread, label %.sink.split.i.i

.split:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = add i64 %i.x, 2147483647
  %i.z = icmp ult i64 %i.y, 4294967295
  br i1 %i.z, label %.sink.split.i.i, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread

.split25:                                         ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aa, align 8
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.ab, label %_ZN2v88internal8compiler19X64OperandGenerator24GetImmediateIntegerValueENS1_10turboshaft7OpIndexE.exit, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread

_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = add i64 %i.ad, 2147483647
  %i.af = icmp ult i64 %i.ae, 4294967295
  br i1 %i.af, label %.sink.split.i.i, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread

.sink.split.i.i:                                  ; preds = %.split24, %.split, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit
  %.ph = phi i64 [ %i.ad, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit ], [ %i.x, %.split ], [ %i.u, %.split24 ]
  %i.ag = trunc i64 %.ph to i32
  br label %_ZN2v88internal8compiler19X64OperandGenerator24GetImmediateIntegerValueENS1_10turboshaft7OpIndexE.exit

_ZN2v88internal8compiler19X64OperandGenerator24GetImmediateIntegerValueENS1_10turboshaft7OpIndexE.exit: ; preds = %.split25, %.sink.split.i.i
  %.0.i.i = phi i32 [ %i.ag, %.sink.split.i.i ], [ 0, %.split25 ]
  %i.ah = add nsw i32 %2, -1
  %i.ai = and i32 %.0.i.i, %i.ah
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler19X64OperandGenerator24GetImmediateIntegerValueENS1_10turboshaft7OpIndexE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ak = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = or disjoint i64 %i.am, 1065151889409
  tail call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  store i64 %i.an, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ao = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = or disjoint i64 %i.aq, 377957122049
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  store i64 %i.ar, ptr %7, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8            ; 5 uses
  %i.au = call { i64, i64 } @_ZN2v88internal8compiler16OperandGenerator10ToConstantENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 %.sroa.0.0.copyload.i.i22) ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.au, 0      ; 3 uses
  %i.aw = extractvalue { i64, i64 } %i.au, 1      ; 6 uses
  %i.ax = and i64 %i.av, 1095216660480
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %i.av to i32
  switch i32 %.sroa.0.sroa.0.0.extract.trunc.i, label %bb.i [
    i32 7, label %bb.e
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.az = trunc i64 %i.aw to i32
  %sext.i.i = shl i64 %i.aw, 32                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ashr exact i64 %sext.i.i, 30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i32 %i.az, ptr %i.bd, align 4
  %i.be = or disjoint i64 %sext.i.i, 19
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

bb.f:                                             ; preds = %bb.d
  %i.bf = shl i64 %i.aw, 32
  %i.bg = or disjoint i64 %i.bf, 3
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

bb.g:                                             ; preds = %bb.d
  %i.bh = add i64 %i.aw, 2147483648
  %spec.select.i.i.i = icmp ult i64 %i.bh, 4294967296
  br i1 %spec.select.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = shl nsw i64 %i.aw, 32
  %i.bj = or disjoint i64 %i.bi, 11
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 152 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 160
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp ult ptr %i.bl, %i.bs
  br i1 %i.bt, label %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bv, %i.bp
  %i.bx = ashr exact i64 %i.bw, 4
  %i.by = add nsw i64 %i.bx, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 noundef %i.by)
  %.pre.i.i.i = load ptr, ptr %i.bk, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i: ; preds = %bb.j, %bb.i
  %i.bz = phi ptr [ %i.bl, %bb.i ], [ %.pre.i.i.i, %bb.j ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.ca, ptr %i.bk, align 8
  store i64 %i.av, ptr %i.bz, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.cb = shl i64 %i.bq, 28
  %i.cc = and i64 %i.cb, -4294967296
  %i.cd = or disjoint i64 %i.cc, 27
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.e, %bb.f, %bb.h, %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i
  %.sroa.012.0.i.i = phi i64 [ %i.be, %bb.e ], [ %i.bg, %bb.f ], [ %i.bj, %bb.h ], [ %i.cd, %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.012.0.i.i, ptr %i.ce, align 8
  %i.cf = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector20EmitWithContinuationEjmPNS1_18InstructionOperandEmS4_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %3, i64 noundef 1, ptr noundef nonnull %6, i64 noundef 2, ptr noundef nonnull %7, ptr noundef %4) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread

_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread: ; preds = %bb.b, %bb.a, %.split25, %.split24, %.split, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit, %_ZN2v88internal8compiler19X64OperandGenerator24GetImmediateIntegerValueENS1_10turboshaft7OpIndexE.exit, %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit
  %.0 = phi i1 [ true, %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit ], [ false, %_ZN2v88internal8compiler19X64OperandGenerator24GetImmediateIntegerValueENS1_10turboshaft7OpIndexE.exit ], [ false, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit ], [ false, %.split25 ], [ false, %.split ], [ false, %.split24 ], [ false, %bb.a ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector19CanUseRootsRegisterEv(ptr noundef nonnull align 8 dereferenceable(752)) local_unnamed_addr #10

declare noundef i32 @_ZN2v88internal18MacroAssemblerBase30RootRegisterOffsetForRootIndexENS0_9RootIndexE(i16 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler18InstructionOperandELm3ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler18InstructionOperandELm3ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler18InstructionOperandELm3ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 4 uses
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal8compiler18InstructionOperandES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.s = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.s, ptr %.08.i.i.i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.v = icmp eq ptr %i.t, %i.q
  br i1 %i.v, label %_ZSt18uninitialized_moveIPN2v88internal8compiler18InstructionOperandES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !210

_ZSt18uninitialized_moveIPN2v88internal8compiler18InstructionOperandES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.w = shl nuw i64 1, %i.j
  %i.x = ptrtoint ptr %i.m to i64
  %i.y = sub i64 %i.x, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler18InstructionOperandELm3ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  store ptr %i.o, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler18InstructionOperandELm3ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler18InstructionOperandElET_S5_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler18InstructionOperandElET_S5_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #27
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler18InstructionOperandElET_S5_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIiLm2ESaIiEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPilET_S1_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPilET_S1_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #27
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPilET_S1_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm11SimdShuffle19CanonicalizeShuffleILi16ELi16EEEvbPhPbS5_QaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  store i8 0, ptr %2, align 1
  br i1 %0, label %.preheader.preheader.sink.split, label %.preheader35.preheader

.preheader35.preheader:                           ; preds = %bb.a
  %i.a = load <16 x i8>, ptr %1, align 1
  %.fr = freeze <16 x i8> %i.a
  %i.b = icmp ult <16 x i8> %.fr, splat (i8 16)   ; 2 uses
  %i.c = bitcast <16 x i1> %i.b to i16
  %i.d = icmp eq i16 %i.c, -1
  br i1 %i.d, label %.preheader.preheader.sink.split, label %bb.b

bb.b:                                             ; preds = %.preheader35.preheader
  %i.e = bitcast <16 x i1> %i.b to i16
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1
  br label %.preheader.preheader.sink.split

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %3, align 1
  %i.f = load i8, ptr %1, align 1
  %i.g = icmp ugt i8 %i.f, 15
  br i1 %i.g, label %.loopexit34, label %.loopexit

.loopexit34:                                      ; preds = %bb.d
  store i8 1, ptr %2, align 1
  %i.h = load <16 x i8>, ptr %1, align 1
  %i.i = xor <16 x i8> %i.h, splat (i8 16)
  store <16 x i8> %i.i, ptr %1, align 1
  %.pre = load i8, ptr %3, align 1, !range !7
  %i.j = trunc nuw i8 %.pre to i1
  br i1 %i.j, label %.preheader.preheader, label %.loopexit

.preheader.preheader.sink.split:                  ; preds = %.preheader35.preheader, %bb.a, %bb.c
  store i8 1, ptr %3, align 1
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.sink.split, %.loopexit34
  %i.k = load <16 x i8>, ptr %1, align 1
  %i.l = and <16 x i8> %i.k, splat (i8 15)
  store <16 x i8> %i.l, ptr %1, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader.preheader, %.loopexit34
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler18InstructionOperandEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
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
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #25
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
end_hunk_2
begin_hunk_3_@llvm.usub.sat.i64
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{}
!6 = !{i64 8}
!7 = !{i8 0, i8 2}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, i1 true, !"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_"}
!12 = distinct !{!12, !11, !"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_: argument 0"}
!13 = distinct !{!13, i1 true, !"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_"}
!14 = distinct !{!14, !13, !"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_: argument 0"}
!15 = !{!12}
!16 = !{!14}
!17 = distinct !{!17, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!18 = distinct !{!18, !17, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!19 = !{!18}
!20 = !{!"branch_weights", i32 1073205, i32 2146410443}
!21 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!22 = distinct !{!22, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!23 = distinct !{!23, !22, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!24 = !{!23}
!25 = distinct !{!25, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!26 = distinct !{!26, !25, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!27 = !{!26}
!28 = !{!"branch_weights", i32 4001, i32 4000000}
!29 = distinct !{!29, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!30 = distinct !{!30, !29, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!31 = distinct !{!31, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!32 = distinct !{!32, !31, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!33 = !{!30}
!34 = !{!32}
!35 = distinct !{!35, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!36 = distinct !{!36, !35, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!37 = !{!36}
!38 = distinct !{!38, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!39 = distinct !{!39, !38, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!40 = !{!39}
!41 = distinct !{!41, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!42 = distinct !{!42, !41, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!43 = !{!42}
!44 = distinct !{!44, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!45 = distinct !{!45, !44, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!46 = distinct !{!46, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!47 = distinct !{!47, !46, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!48 = !{!45}
!49 = !{!47, !45}
!50 = distinct !{!50, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!51 = distinct !{!51, !50, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!52 = !{!51}
!53 = distinct !{!53, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!54 = distinct !{!54, !53, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!56 = distinct !{!56, !55, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!57 = !{!54}
!58 = !{!56, !54}
!59 = distinct !{!59, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!60 = distinct !{!60, !59, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!61 = !{!60}
!62 = distinct !{!62, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!63 = distinct !{!63, !62, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!66 = distinct !{!66, !65, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!67 = distinct !{!67, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!68 = distinct !{!68, !67, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!69 = !{!66}
!70 = !{!68, !66}
!71 = distinct !{!71, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!72 = distinct !{!72, !71, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!74 = distinct !{!74, !73, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!75 = !{!72}
!76 = !{!74, !72}
!77 = distinct !{!77, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!78 = distinct !{!78, !77, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!80 = distinct !{!80, !79, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!81 = !{!78}
!82 = !{!80, !78}
!83 = distinct !{!83, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!84 = distinct !{!84, !83, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!86 = distinct !{!86, !85, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!87 = !{!84}
!88 = !{!86, !84}
!89 = distinct !{!89, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!90 = distinct !{!90, !89, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!91 = distinct !{!91, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!92 = distinct !{!92, !91, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!93 = !{!90}
!94 = !{!92, !90}
!95 = distinct !{!95, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!96 = distinct !{!96, !95, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!97 = distinct !{!97, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!98 = distinct !{!98, !97, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!99 = !{!96}
!100 = !{!98, !96}
!101 = distinct !{!101, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!102 = distinct !{!102, !101, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!104 = distinct !{!104, !103, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!105 = !{!102}
!106 = !{!104, !102}
!107 = distinct !{!107, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!108 = distinct !{!108, !107, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!110 = distinct !{!110, !109, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!111 = !{!108}
!112 = !{!110, !108}
!113 = distinct !{!113, i1 true, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE"}
!114 = distinct !{!114, !113, !"_ZN2v88internal8compiler19InstructionSelector6InputsINS1_10turboshaft11WordBinopOpEEEDaNS4_7OpIndexE: argument 0"}
!115 = distinct !{!115, i1 true, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE"}
!116 = distinct !{!116, !115, !"_ZN2v88internal8compiler19InstructionSelector10InputsImplINS1_10turboshaft11WordBinopOpEJLm0ELm1EEEEDaRKT_St16integer_sequenceImJXspT0_EEE: argument 0"}
!117 = !{!114}
!118 = !{!116, !114}
!119 = distinct !{!119, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!120 = distinct !{!120, !119, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!121 = !{!120}
!122 = distinct !{!122, !10}
!123 = distinct !{!123, i1 true, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorINS2_8compiler13PushParameterEEEEEDaRT_"}
!124 = distinct !{!124, !123, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorINS2_8compiler13PushParameterEEEEEDaRT_: argument 0"}
!125 = distinct !{!125, i1 true, !"_ZN2v88internal10ZoneVectorINS0_8compiler13PushParameterEE6rbeginEv"}
!126 = distinct !{!126, !125, !"_ZN2v88internal10ZoneVectorINS0_8compiler13PushParameterEE6rbeginEv: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZN2v88internal10ZoneVectorINS0_8compiler13PushParameterEE4rendEv"}
!128 = distinct !{!128, !127, !"_ZN2v88internal10ZoneVectorINS0_8compiler13PushParameterEE4rendEv: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!130 = distinct !{!130, !129, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!131 = !{!126, !124}
!132 = !{!128, !124}
!133 = !{!130}
!134 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!135 = distinct !{!135, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!136 = distinct !{!136, !135, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!137 = !{!136}
!138 = distinct !{!138, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!139 = distinct !{!139, !138, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!140 = !{!139}
!141 = distinct !{!141, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!142 = distinct !{!142, !141, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!143 = !{!142}
!144 = distinct !{!144, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!145 = distinct !{!145, !144, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!146 = !{!145}
!147 = distinct !{!147, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!148 = distinct !{!148, !147, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!149 = !{!148}
!150 = distinct !{!150, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!151 = distinct !{!151, !150, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!152 = !{!151}
!153 = distinct !{!153, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!154 = distinct !{!154, !153, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!155 = !{!154}
!156 = distinct !{!156, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!157 = distinct !{!157, !156, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!158 = !{!157}
!159 = distinct !{!159, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!160 = distinct !{!160, !159, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!161 = !{!160}
!162 = distinct !{!162, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!163 = distinct !{!163, !162, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!164 = !{!163}
!165 = distinct !{!165, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!166 = distinct !{!166, !165, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!167 = !{!166}
!168 = distinct !{!168, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!169 = distinct !{!169, !168, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!170 = !{!169}
!171 = distinct !{!171, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!172 = distinct !{!172, !171, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!173 = !{!172}
!174 = distinct !{!174, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!175 = distinct !{!175, !174, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!176 = !{!175}
!177 = distinct !{!177, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!178 = distinct !{!178, !177, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!179 = !{!178}
!180 = distinct !{!180, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!181 = distinct !{!181, !180, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!182 = !{!181}
!183 = distinct !{!183, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!184 = distinct !{!184, !183, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!185 = distinct !{!185, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!186 = distinct !{!186, !185, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!187 = !{!184}
!188 = !{!186}
!189 = distinct !{!189, i1 true, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE"}
!190 = distinct !{!190, !189, !"_ZN2v88internal8compiler17FlagsContinuation6ForSetENS1_14FlagsConditionENS1_10turboshaft7OpIndexE: argument 0"}
!191 = !{!190}
!192 = distinct !{!192, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!193 = distinct !{!193, !192, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!194 = !{!193}
!195 = distinct !{!195, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!196 = distinct !{!196, !195, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!197 = !{!196}
!198 = distinct !{!198, i1 true, !"_ZN2v88internal8compiler19InstructionSelector17simd_shuffle_viewENS1_10turboshaft7OpIndexE"}
!199 = distinct !{!199, !198, !"_ZN2v88internal8compiler19InstructionSelector17simd_shuffle_viewENS1_10turboshaft7OpIndexE: argument 0"}
!200 = distinct !{!200, !10}
!201 = distinct !{!201, !10}
!202 = !{!199}
!203 = distinct !{!203, !10}
!204 = distinct !{!204, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!205 = distinct !{!205, !204, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!206 = distinct !{!206, i1 true, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE"}
!207 = distinct !{!207, !206, !"_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE: argument 0"}
!208 = !{!205}
!209 = !{!207}
!210 = distinct !{!210, !10}
end_hunk_3
