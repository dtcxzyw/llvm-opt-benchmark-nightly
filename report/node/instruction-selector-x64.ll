Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction-selector-x64?download=true
inline.NumInlined: 9610
inline.NumDeleted: 1506
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSelector13VisitInt32AddENS1_10turboshaft7OpIndexE:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector13VisitInt64AddENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::FlagsContinuation", align 8 ; 18 uses
  %3 = alloca %"class.v8::internal::compiler::X64OperandGenerator", align 8 ; 5 uses
  %4 = alloca [4 x %"class.v8::internal::compiler::InstructionOperand"], align 16 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca [1 x %"class.v8::internal::compiler::InstructionOperand"], align 8 ; 4 uses
  %6 = alloca %"class.std::optional.34", align 8  ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN2v88internal8compiler44TryMatchBaseWithScaledIndexAndDisplacement64EPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %6, ptr noundef nonnull %0, i32 %1)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, 2147483647
  %i.i = icmp ult i64 %i.h, 4294967295
  br i1 %i.i, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.02.0.copyload = load i32, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %.sroa.01.0.copyload = load i32, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = load i32, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.o = load ptr, ptr %i.b, align 8
  store ptr %i.o, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8
  %i.q = call noundef zeroext i8 @_ZN2v88internal8compiler19X64OperandGenerator27GenerateMemoryOperandInputsENS1_10turboshaft15OptionalOpIndexEiNS3_7OpIndexElNS1_16DisplacementModeEPNS1_18InstructionOperandEPmNS1_16OperandGenerator15RegisterUseKindE(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %.sroa.02.0.copyload, i32 noundef %i.l, i32 %.sroa.01.0.copyload, i64 noundef %i.g, i32 noundef %i.n, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.r, i32 %1) #25
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = or disjoint i64 %i.u, 927712935937
  %i.w = load ptr, ptr %i.p, align 8
  call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.w, i32 %1) #25
  store i64 %i.v, ptr %5, align 8
  %i.x = zext i8 %i.q to i32
  %i.y = shl nuw nsw i32 %i.x, 9
  %i.z = or disjoint i32 %i.y, 282
  %i.aa = load i64, ptr %i.a, align 8
  %i.ab = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjmPNS1_18InstructionOperandEmS4_mS4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %i.z, i64 noundef 1, ptr noundef nonnull %5, i64 noundef %i.aa, ptr noundef nonnull %4, i64 noundef 0, ptr noundef null) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 0, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 -1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 -1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 -1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 -1, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 -1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 -1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 -1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 -1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 -1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 -1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 -1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i8 0, ptr %i.ap, align 4
  call fastcc void @_ZN2v88internal8compilerL10VisitBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef nonnull %0, i32 %1, i32 noundef 179, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector25VisitInt64AddWithOverflowENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::FlagsContinuation", align 8 ; 19 uses
  %3 = alloca %"class.v8::internal::compiler::FlagsContinuation", align 8 ; 18 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler19InstructionSelector14FindProjectionENS1_10turboshaft7OpIndexEm(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, i64 noundef 1) #25 ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 3, ptr %2, align 8, !alias.scope !40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 20, ptr %i.b, align 4, !alias.scope !40
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 -1, ptr %i.c, align 4, !alias.scope !40
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1, ptr %i.d, align 8, !alias.scope !40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 -1, ptr %i.e, align 4, !alias.scope !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 -1, ptr %i.f, align 8, !alias.scope !40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 -1, ptr %i.g, align 4, !alias.scope !40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 -1, ptr %i.h, align 8, !alias.scope !40
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 -1, ptr %i.i, align 4, !alias.scope !40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 -1, ptr %i.j, align 8, !alias.scope !40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr null, ptr %i.k, align 8, !alias.scope !40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 -1, ptr %i.l, align 8, !alias.scope !40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 %i.a, ptr %i.m, align 8, !alias.scope !40
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 -1, ptr %i.n, align 4, !alias.scope !40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 -1, ptr %i.o, align 8, !alias.scope !40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i8 0, ptr %i.p, align 4, !alias.scope !40
  call fastcc void @_ZN2v88internal8compilerL10VisitBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %1, i32 noundef 179, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 0, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 -1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 -1, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 -1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 -1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 -1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 -1, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 -1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 -1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i32 -1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 132
  store i32 -1, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i32 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i8 0, ptr %i.ad, align 4
  call fastcc void @_ZN2v88internal8compilerL10VisitBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %1, i32 noundef 179, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i32 @_ZN2v88internal8compiler19InstructionSelector14FindProjectionENS1_10turboshaft7OpIndexEm(ptr noundef nonnull align 8 dereferenceable(752), i32, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compilerL10VisitBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef nonnull %0, i32 %1, i32 noundef range(i32 179, 199) %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::X64OperandGenerator", align 8 ; 8 uses
  %5 = alloca [8 x %"class.v8::internal::compiler::InstructionOperand"], align 16 ; 12 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %6 = alloca [1 x %"class.v8::internal::compiler::InstructionOperand"], align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  store ptr %i.c, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload.i57 = load i32, ptr %i.p, align 4 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.q, align 4 ; 5 uses
  %i.r = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector13IsCommutativeENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  br i1 %i.r, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = zext i32 %.sroa.0.0.copyload.i57 to i64
  %i.x = add i64 %i.v, %i.w
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = icmp eq i8 %i.z, 75
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ac = add i64 %i.v, %i.ab
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = icmp eq i8 %i.ae, 75                    ; 2 uses
  %spec.select = select i1 %i.af, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i57
  %spec.select91 = select i1 %i.af, i32 %.sroa.0.0.copyload.i57, i32 %.sroa.0.0.copyload.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.064.0 = phi i32 [ %spec.select, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.a ], [ %.sroa.0.0.copyload.i, %bb.b ] ; 12 uses
  %.sroa.075.0 = phi i32 [ %spec.select91, %bb.c ], [ %.sroa.0.0.copyload.i57, %bb.a ], [ %.sroa.0.0.copyload.i57, %bb.b ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 0, ptr %6, align 8
  %i.ag = icmp eq i32 %.sroa.075.0, %.sroa.064.0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.064.0) #25
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = or disjoint i64 %i.aj, 377957122049     ; 2 uses
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.064.0) #25
  store i64 %i.ak, ptr %5, align 16
  store i64 2, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ak, ptr %i.al, align 8
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = zext i32 %.sroa.064.0 to i64
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr               ; 6 uses
  %i.at = load i8, ptr %i.as, align 4
  %i.au = icmp eq i8 %i.at, 75
  br i1 %i.au, label %bb.g, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = load i8, ptr %i.av, align 4
  switch i8 %i.aw, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread [
    i8 5, label %.split90
    i8 0, label %.split89
    i8 1, label %.split
    i8 4, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit
  ]

.split89:                                         ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 4294967295
  %.not = icmp eq i64 %i.az, 2147483648
  br i1 %.not, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread, label %bb.h

.split:                                           ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, 2147483647
  %i.bd = icmp ult i64 %i.bc, 4294967295
  br i1 %i.bd, label %bb.h, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread

.split90:                                         ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.be, align 8
  %i.bf = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.bf, label %bb.h, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread

_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bh, 2147483647
  %i.bj = icmp ult i64 %i.bi, 4294967295
  br i1 %i.bj, label %bb.h, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread

bb.h:                                             ; preds = %.split90, %.split89, %.split, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit
  %i.bk = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.075.0) #25
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = or disjoint i64 %i.bm, 377957122049
  %i.bo = load ptr, ptr %i.d, align 8
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.bo, i32 %.sroa.075.0) #25
  store i64 %i.bn, ptr %5, align 16
  %i.bp = load ptr, ptr %i.d, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8            ; 5 uses
  %i.bs = call { i64, i64 } @_ZN2v88internal8compiler16OperandGenerator10ToConstantENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 %.sroa.064.0) ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.bs, 0      ; 3 uses
  %i.bu = extractvalue { i64, i64 } %i.bs, 1      ; 6 uses
  %i.bv = and i64 %i.bt, 1095216660480
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %i.bt to i32
  switch i32 %.sroa.0.sroa.0.0.extract.trunc.i, label %bb.n [
    i32 7, label %bb.j
    i32 0, label %bb.k
    i32 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.bx = trunc i64 %i.bu to i32
  %sext13.i.i = shl i64 %i.bu, 32                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 176
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ashr exact i64 %sext13.i.i, 30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i32 %i.bx, ptr %i.cb, align 4
  %i.cc = or disjoint i64 %sext13.i.i, 19
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

bb.k:                                             ; preds = %bb.i
  %sext.i.i = shl i64 %i.bu, 32
  %i.cd = or disjoint i64 %sext.i.i, 3
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

bb.l:                                             ; preds = %bb.i
  %i.ce = add i64 %i.bu, 2147483648
  %spec.select.i.i.i = icmp ult i64 %i.ce, 4294967296
  br i1 %spec.select.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = shl nsw i64 %i.bu, 32
  %i.cg = or disjoint i64 %i.cf, 11
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

bb.n:                                             ; preds = %bb.l, %bb.i, %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 152 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 160
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = icmp ult ptr %i.ci, %i.cp
  br i1 %i.cq, label %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i, label %bb.o, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cs, %i.cm
  %i.cu = ashr exact i64 %i.ct, 4
  %i.cv = add nsw i64 %i.cu, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 noundef %i.cv)
  %.pre.i.i.i = load ptr, ptr %i.ch, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i: ; preds = %bb.o, %bb.n
  %i.cw = phi ptr [ %i.ci, %bb.n ], [ %.pre.i.i.i, %bb.o ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.cx, ptr %i.ch, align 8
  store i64 %i.bt, ptr %i.cw, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.bu, ptr %.sroa.6.0..sroa_idx.i, align 8
  %sext14.i.i = shl i64 %i.cn, 28
  %i.cy = and i64 %sext14.i.i, -4294967296
  %i.cz = or disjoint i64 %i.cy, 27
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.j, %bb.k, %bb.m, %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i
  %.sroa.012.0.i.i = phi i64 [ %i.cc, %bb.j ], [ %i.cd, %bb.k ], [ %i.cg, %bb.m ], [ %i.cz, %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i ]
  store i64 2, ptr %i.a, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.012.0.i.i, ptr %i.da, align 8
  br label %bb.u

_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread: ; preds = %bb.g, %bb.f, %.split90, %.split89, %.split, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit
  %i.db = tail call noundef i32 @_ZNK2v88internal8compiler19InstructionSelector14GetEffectLevelENS1_10turboshaft7OpIndexEPNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, ptr noundef %3) #25 ; 2 uses
  %i.dc = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector13IsCommutativeENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  br i1 %i.dc, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread
  %i.dd = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.de = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector9IsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.dd, i32 %.sroa.064.0) #25
  br i1 %i.de, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit

_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.p
  %i.df = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector12IsReallyUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.dd, i32 %.sroa.064.0) #25
  br i1 %i.df, label %bb.r, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread

_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread: ; preds = %bb.p, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit
  %i.dg = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.dh = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector9IsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.dg, i32 %.sroa.075.0) #25
  br i1 %i.dh, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61.thread, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61

_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61: ; preds = %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread
  %i.di = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector12IsReallyUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.dg, i32 %.sroa.075.0) #25
  br i1 %i.di, label %bb.q, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61.thread

_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61.thread: ; preds = %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61
  %i.dj = call noundef zeroext i1 @_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2, i32 %1, i32 %.sroa.064.0, i32 noundef %i.db)
  br i1 %i.dj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61.thread, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61.thread, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread
  %.sroa.064.1 = phi i32 [ %.sroa.064.0, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61.thread ], [ %.sroa.075.0, %bb.q ], [ %.sroa.064.0, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit ], [ %.sroa.064.0, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread ] ; 4 uses
  %.sroa.075.1 = phi i32 [ %.sroa.075.0, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit61.thread ], [ %.sroa.064.0, %bb.q ], [ %.sroa.075.0, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit ], [ %.sroa.075.0, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread ] ; 2 uses
  %i.dk = call noundef zeroext i1 @_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2, i32 %1, i32 %.sroa.064.1, i32 noundef %i.db)
  %i.dl = load ptr, ptr %i.d, align 8
  %i.dm = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.dl, i32 %.sroa.075.1) #25
  %i.dn = zext i32 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = or disjoint i64 %i.do, 377957122049     ; 2 uses
  %i.dq = load ptr, ptr %i.d, align 8
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.dq, i32 %.sroa.075.1) #25
  br i1 %i.dk, label %bb.s, label %bb.t
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler19InstructionSelector36VisitTruncateFloat64ToFloat16RawBitsENS1_10turboshaft7OpIndexE:bb.a
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.y, align 4 ; 2 uses
  %i.z = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = or disjoint i64 %i.ab, 927712935937
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.ad = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjNS1_18InstructionOperandES3_mPS3_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef 246, i64 %i.x, i64 %i.ac, i64 noundef 2, ptr noundef nonnull %2) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector34VisitChangeFloat16RawBitsToFloat64ENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::compiler::InstructionOperand"], align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.i) #25 ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = or disjoint i64 %i.l, 377957122049
  %i.n = load ptr, ptr %i.h, align 8
  tail call void @_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352) %i.n, i8 noundef zeroext 18, i32 noundef %i.j) #25
  store i64 %i.m, ptr %2, align 8
  %i.o = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = or disjoint i64 %i.q, 927712935937
  tail call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.s, align 4 ; 2 uses
  %i.t = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = or disjoint i64 %i.v, 377957122049
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.x = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjNS1_18InstructionOperandES3_mPS3_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef 247, i64 %i.r, i64 %i.w, i64 noundef 1, ptr noundef nonnull %2) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector25VisitTruncateInt64ToInt32ENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
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
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = zext i32 %1 to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 4 ; 4 uses
  %i.l = zext i32 %.sroa.0.0.copyload.i.i to i64  ; 2 uses
  %i.m = add i64 %i.l, %i.g
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.n, align 4
  %i.o = and i64 %.0.copyload.i.i.i.i, 72057589742960895
  %.not = icmp eq i64 %i.o, 285881613156424
  %i.p = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector8CanCoverENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, i32 %.sroa.0.0.copyload.i.i) #25 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i62 = load i32, ptr %i.q, align 4 ; 2 uses
  br i1 %i.p, label %.split, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit.thread

.split:                                           ; preds = %bb.b
  %i.r = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector8CanCoverENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, i32 %.sroa.0.0.copyload.i.i62) #25
  %.sroa.0.0.copyload.i.i63 = load i32, ptr %i.q, align 4 ; 3 uses
  br i1 %i.r, label %.split._crit_edge, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit.thread

.split._crit_edge:                                ; preds = %.split
  %.pre = zext i32 %.sroa.0.0.copyload.i.i63 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.p, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit.thread

bb.d:                                             ; preds = %.split._crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre, %.split._crit_edge ], [ %i.l, %bb.c ]
  %.sroa.036.072 = phi i32 [ %.sroa.0.0.copyload.i.i63, %.split._crit_edge ], [ %.sroa.0.0.copyload.i.i, %bb.c ] ; 6 uses
  %i.s = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = add i64 %.pre-phi, %i.v
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.x, align 4
  %i.y = and i64 %.0.copyload.i.i.i, 281470681743615
  switch i64 %i.y, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit.thread [
    i64 1103806595139, label %bb.e
    i64 1108101562435, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.z, align 4
  %i.aa = zext i32 %.sroa.0.0.copyload.i.i66 to i64
  %i.ab = add i64 %i.aa, %i.v
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %.not.i.i = icmp eq i8 %i.ad, 75
  br i1 %.not.i.i, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i8, ptr %i.ae, align 4
  switch i8 %i.af, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit.thread [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit
    i8 1, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit
    i8 11, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit
    i8 12, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit
  ]

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit: ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 32
  br i1 %i.aj, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit.thread

bb.g:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i67 = load i32, ptr %i.ak, align 4
  %i.al = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector8CanCoverENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.036.072, i32 %.sroa.0.0.copyload.i.i67) #25
  br i1 %i.al, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.am = tail call fastcc noundef zeroext i1 @_ZN2v88internal8compiler12_GLOBAL__N_137TryEmitLoadForLoadWord64AndShiftRightEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEj(ptr noundef %0, i32 %.sroa.036.072, i32 noundef 106)
  br i1 %i.am, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal8compiler19InstructionSelector12EmitIdentityENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  br label %.critedge61

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.an = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = or disjoint i64 %i.ap, 1065151889409
  tail call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %.sroa.0.0.copyload.i.i68 = load i32, ptr %i.ak, align 4 ; 2 uses
  %i.ar = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i68) #25
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = or disjoint i64 %i.at, 377957122049
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i68) #25
  %i.av = call i64 @_ZN2v88internal8compiler16OperandGenerator13TempImmediateEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 32)
  %i.aw = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjNS1_18InstructionOperandES3_S3_mPS3_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef 213, i64 %i.aq, i64 %i.au, i64 %i.av, i64 noundef 0, ptr noundef null) #25 ; 0 uses
  br label %.critedge61

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit.thread: ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %.split, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit, %bb.c
  %.sroa.036.073 = phi i32 [ %.sroa.0.0.copyload.i.i63, %.split ], [ %.sroa.036.072, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit ], [ %.sroa.036.072, %bb.d ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.036.072, %bb.e ], [ %.sroa.036.072, %bb.f ], [ %.sroa.0.0.copyload.i.i62, %bb.b ] ; 2 uses
  %i.ax = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = or disjoint i64 %i.az, 927712935937
  tail call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.bb = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.036.073) #25
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = or disjoint i64 %i.bd, 34359738369
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.036.073) #25
  %i.bf = tail call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjNS1_18InstructionOperandES3_mPS3_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef 106, i64 %i.ba, i64 %i.be, i64 noundef 0, ptr noundef null) #25 ; 0 uses
  br label %.critedge61

.critedge61:                                      ; preds = %bb.i, %.critedge, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEj.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector15VisitFloat32AddENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_115VisitFloatBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjj(ptr noundef %0, i32 %1, i32 noundef 171, i32 noundef 163)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_115VisitFloatBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjj(ptr noundef nonnull %0, i32 %1, i32 noundef range(i32 171, 179) %2, i32 noundef range(i32 163, 171) %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::X64OperandGenerator", align 8 ; 8 uses
  %5 = alloca [8 x %"class.v8::internal::compiler::InstructionOperand"], align 16 ; 10 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %6 = alloca [1 x %"class.v8::internal::compiler::InstructionOperand"], align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  store ptr %i.c, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.l, align 4 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.0.0.copyload.i.i75 = load i32, ptr %i.m, align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 0, ptr %6, align 8
  %i.n = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i75
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = or disjoint i64 %i.q, 377957122049       ; 2 uses
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  store i64 %i.r, ptr %5, align 16
  store i64 2, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.r, ptr %i.s, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.t = tail call noundef i32 @_ZNK2v88internal8compiler19InstructionSelector14GetEffectLevelENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25 ; 3 uses
  %i.u = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector13IsCommutativeENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector9IsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i75) #25
  br i1 %i.v, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit

_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.d
  %i.w = tail call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector12IsReallyUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i75) #25
  br i1 %i.w, label %bb.e, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread

bb.e:                                             ; preds = %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit
  %i.x = call noundef zeroext i1 @_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2, i32 %1, i32 %.sroa.0.0.copyload.i.i, i32 noundef %i.t)
  br i1 %i.x, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread, label %bb.g

_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread: ; preds = %bb.d, %bb.e, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit
  %i.y = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.z = call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector9IsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.y, i32 %.sroa.0.0.copyload.i.i) #25
  br i1 %i.z, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76.thread, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76

_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76: ; preds = %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread
  %i.aa = call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector12IsReallyUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.y, i32 %.sroa.0.0.copyload.i.i) #25
  br i1 %i.aa, label %bb.f, label %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76.thread

_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76.thread: ; preds = %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit.thread, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76
  %i.ab = call noundef zeroext i1 @_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2, i32 %1, i32 %.sroa.0.0.copyload.i.i75, i32 noundef %i.t)
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76.thread, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76.thread, %bb.e, %bb.c
  %.sroa.089.0 = phi i32 [ %.sroa.0.0.copyload.i.i, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76.thread ], [ %.sroa.0.0.copyload.i.i75, %bb.f ], [ %.sroa.0.0.copyload.i.i, %bb.e ], [ %.sroa.0.0.copyload.i.i, %bb.c ] ; 2 uses
  %.sroa.078.0 = phi i32 [ %.sroa.0.0.copyload.i.i75, %_ZNK2v88internal8compiler19X64OperandGenerator22CanBeBetterLeftOperandENS1_10turboshaft7OpIndexE.exit76.thread ], [ %.sroa.0.0.copyload.i.i, %bb.f ], [ %.sroa.0.0.copyload.i.i75, %bb.e ], [ %.sroa.0.0.copyload.i.i75, %bb.c ] ; 9 uses
  %i.ac = call noundef zeroext i1 @_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2, i32 %1, i32 %.sroa.078.0, i32 noundef %i.t)
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.ad, i32 %.sroa.089.0) #25
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = or disjoint i64 %i.ag, 377957122049     ; 2 uses
  %i.ai = load ptr, ptr %i.d, align 8
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.ai, i32 %.sroa.089.0) #25
  br i1 %i.ac, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i64 1, ptr %i.a, align 8
  store i64 %i.ah, ptr %5, align 16
  %i.aj = call noundef zeroext i8 @_ZN2v88internal8compiler19X64OperandGenerator32GetEffectiveAddressMemoryOperandENS1_10turboshaft7OpIndexEPNS1_18InstructionOperandEPmNS1_16OperandGenerator15RegisterUseKindE(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 %.sroa.078.0, ptr noundef nonnull %5, ptr noundef nonnull %i.a, i32 noundef 0)
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 9                ; 2 uses
  %i.am = or disjoint i32 %i.al, %2               ; 3 uses
  %i.an = or disjoint i32 %i.al, %3               ; 3 uses
  %i.ao = call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector15IsProtectedLoadENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.078.0) #25
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ap = call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector21CanCoverProtectedLoadENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, i32 %.sroa.078.0) #25
  br i1 %i.ap, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aq = lshr i32 %1, 4
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = lshr i32 %1, 10
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = or i64 %i.az, %i.at
  store i64 %i.ba, ptr %i.ay, align 8
  %i.bb = or disjoint i32 %i.am, 1073741824
  %i.bc = or disjoint i32 %i.an, 1073741824
  %i.bd = lshr i32 %.sroa.078.0, 4
  %i.be = and i32 %i.bd, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = lshr i32 %.sroa.078.0, 10
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = or i64 %i.bm, %i.bg
  store i64 %i.bn, ptr %i.bl, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  store i64 %i.ah, ptr %5, align 16
  %i.bo = load ptr, ptr %i.d, align 8
  %i.bp = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.bo, i32 %.sroa.078.0) #25
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = or disjoint i64 %i.br, 34359738369
  %i.bt = load ptr, ptr %i.d, align 8
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.bt, i32 %.sroa.078.0) #25
  store i64 2, ptr %i.a, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bs, ptr %i.bu, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.b
  %.sroa.0.0 = phi i32 [ -1, %bb.b ], [ %.sroa.078.0, %bb.j ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.k ] ; 2 uses
  %.273 = phi i32 [ %3, %bb.b ], [ %i.bc, %bb.j ], [ %i.an, %bb.i ], [ %i.an, %bb.h ], [ %3, %bb.k ]
  %.2 = phi i32 [ %2, %bb.b ], [ %i.bb, %bb.j ], [ %i.am, %bb.i ], [ %i.am, %bb.h ], [ %2, %bb.k ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 32
  %.not = icmp eq i32 %i.bx, 0                    ; 2 uses
  %i.by = select i1 %.not, i32 %.273, i32 %.2
  %i.bz = load ptr, ptr %i.d, align 8
  %i.ca = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.bz, i32 %1) #25
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = load ptr, ptr %i.d, align 8
  call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.cd, i32 %1) #25
  %. = select i1 %.not, i64 1065151889409, i64 927712935937
  %i.ce = or disjoint i64 %i.cc, %.
  store i64 %i.ce, ptr %6, align 8
  %i.cf = load i64, ptr %i.a, align 8
  %i.cg = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjmPNS1_18InstructionOperandEmS4_mS4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %i.by, i64 noundef 1, ptr noundef nonnull %6, i64 noundef %i.cf, ptr noundef nonnull %5, i64 noundef 0, ptr noundef null) #25
  %.not97 = icmp eq i32 %.sroa.0.0, -1
  br i1 %.not97, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal8compiler19InstructionSelector20UpdateSourcePositionEPNS1_11InstructionENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef %i.cg, i32 %.sroa.0.0) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector15VisitFloat32SubENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_115VisitFloatBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjj(ptr noundef %0, i32 %1, i32 noundef 172, i32 noundef 164)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector15VisitFloat32MulENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_115VisitFloatBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjj(ptr noundef %0, i32 %1, i32 noundef 173, i32 noundef 165)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector15VisitFloat32DivENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_115VisitFloatBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjj(ptr noundef %0, i32 %1, i32 noundef 174, i32 noundef 166)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector15VisitFloat32AbsENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.h, align 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 32
  %.not.i = icmp eq i32 %i.k, 0
  %i.l = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  %i.o = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = or disjoint i64 %i.q, 377957122049
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
end_hunk_1
