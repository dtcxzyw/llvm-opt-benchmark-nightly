inline.NumInlined: 9610
inline.NumDeleted: 1506
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSelector20EmitPrepareArgumentsEPNS0_10ZoneVectorINS1_13PushParameterEEEPKNS1_14CallDescriptorENS1_10turboshaft7OpIndexE:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre89, i64 48
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !131
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !131
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = add i64 %i.gr, %i.dl
  %i.gt = inttoptr i64 %i.gs to ptr               ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 4, !noalias !131
  %cond.i = icmp eq i8 %i.gu, 77
  br i1 %cond.i, label %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24, !noalias !131
  unreachable

_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit.i: ; preds = %bb.ae
  %i.gv = call i16 @_ZNK2v88internal8compiler10turboshaft6LoadOp12machine_typeEv(ptr noundef nonnull align 4 dereferenceable(12) %i.gt) #25
  %.sroa.019.0.extract.trunc.i = trunc i16 %i.gv to i8
  %i.gw = add i8 %.sroa.019.0.extract.trunc.i, -5
  %i.gx = icmp ult i8 %i.gw, 5
  br i1 %i.gx, label %_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread75, label %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit.i._ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread_crit_edge

_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit.i._ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread_crit_edge: ; preds = %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit.i
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread

_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread75: ; preds = %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 1, ptr %i.a, align 8
  store i64 %i.df, ptr %6, align 16
  %i.gy = call noundef zeroext i8 @_ZN2v88internal8compiler19X64OperandGenerator32GetEffectiveAddressMemoryOperandENS1_10turboshaft7OpIndexEPNS1_18InstructionOperandEPmNS1_16OperandGenerator15RegisterUseKindE(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 %.sroa.0.0.copyload60, ptr noundef nonnull %6, ptr noundef nonnull %i.a, i32 noundef 0)
  %i.gz = zext i8 %i.gy to i32
  %i.ha = shl nuw nsw i32 %i.gz, 9
  %i.hb = or disjoint i32 %i.ha, 285
  %i.hc = load i64, ptr %i.a, align 8
  %i.hd = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjmPNS1_18InstructionOperandEmS4_mS4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %i.hb, i64 noundef 0, ptr noundef nonnull %5, i64 noundef %i.hc, ptr noundef nonnull %6, i64 noundef 0, ptr noundef null) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ag

_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread: ; preds = %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit.i._ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread_crit_edge, %bb.ab, %bb.ad, %bb.ac
  %i.he = phi ptr [ %.pre, %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit.i._ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread_crit_edge ], [ %.pre91, %bb.ab ], [ %.pre89, %bb.ad ], [ %.pre90, %bb.ac ]
  %i.hf = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.he, i32 %.sroa.0.0.copyload60) #25
  %i.hg = zext i32 %i.hf to i64
  %i.hh = shl nuw nsw i64 %i.hg, 3
  %i.hi = or disjoint i64 %i.hh, 103079215105
  %i.hj = load ptr, ptr %i.d, align 8
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.hj, i32 %.sroa.0.0.copyload60) #25
  %i.hk = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjNS1_18InstructionOperandES3_S3_mPS3_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef 285, i64 0, i64 %i.df, i64 %i.hi, i64 noundef 0, ptr noundef null) #25 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit59, %_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread75, %_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread, %bb.aa, %bb.o
  %.1 = phi i32 [ %i.de, %bb.o ], [ 0, %bb.aa ], [ 0, %_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread ], [ 0, %_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i.exit.thread75 ], [ 0, %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit59 ]
  %i.hl = icmp eq ptr %i.dd, %i.cz
  br i1 %i.hl, label %.loopexit, label %bb.o

.loopexit:                                        ; preds = %bb.ag, %bb.m, %bb.n, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

declare noundef i32 @_ZNK2v88internal8compiler19InstructionSelector14GetEffectLevelENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), i32) local_unnamed_addr #10

declare noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), i32) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector18EmitPrepareResultsEPNS0_10ZoneVectorINS1_13PushParameterEEEPKNS1_14CallDescriptorENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::X64OperandGenerator", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::compiler::InstructionOperand", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::InstructionOperand", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.e, %i.g
  br i1 %.not25, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.026 = phi ptr [ %i.ae, %bb.f ], [ %i.e, %bb.a ] ; 4 uses
  %.sroa.023.0.copyload = load i32, ptr %.026, align 4 ; 4 uses
  %.sroa.8.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.026, i64 4
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..0.sroa_idx, align 4 ; 2 uses
  %i.h = and i32 %.sroa.8.0.copyload, -2147483647
  %i.i = icmp eq i32 %i.h, -2147483647
  %i.j = icmp ne i32 %.sroa.023.0.copyload, -1
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %.sroa.10.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.026, i64 8
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..0.sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.extract.trunc = trunc i16 %.sroa.10.0.copyload to i8 ; 3 uses
  %.sroa.422.0.extract.shift = lshr i16 %.sroa.10.0.copyload, 8 ; 2 uses
  %i.k = icmp eq i8 %.sroa.021.0.extract.trunc, 17
  %i.l = icmp eq i16 %.sroa.422.0.extract.shift, 8 ; 2 uses
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i8 %.sroa.021.0.extract.trunc, 18
  %i.o = and i1 %i.n, %i.l
  br i1 %i.o, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i8 %.sroa.021.0.extract.trunc, 19
  %i.q = icmp eq i16 %.sroa.422.0.extract.shift, 0
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i8 [ 17, %bb.b ], [ 18, %bb.c ], [ 19, %bb.d ]
  call void @_ZN2v88internal8compiler19InstructionSelector20MarkAsRepresentationENS0_21MachineRepresentationENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i8 noundef zeroext %.sink, i32 %.sroa.023.0.copyload) #25
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.s, i32 %.sroa.023.0.copyload) #25
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = or disjoint i64 %i.v, 927712935937
  %i.x = load ptr, ptr %i.c, align 8
  call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.x, i32 %.sroa.023.0.copyload) #25
  store i64 %i.w, ptr %5, align 8
  %i.y = call noundef i32 @_ZNK2v88internal8compiler14CallDescriptor18GetOffsetToReturnsEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  %i.z = ashr i32 %.sroa.8.0.copyload, 1
  %i.aa = add i32 %i.z, %i.y
  %i.ab = sub i32 0, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ac = call i64 @_ZN2v88internal8compiler16OperandGenerator12UseImmediateEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.ab)
  store i64 %i.ac, ptr %6, align 8
  %i.ad = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector4EmitEjmPNS1_18InstructionOperandEmS4_mS4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef 287, i64 noundef 1, ptr noundef nonnull %5, i64 noundef 1, ptr noundef nonnull %6, i64 noundef 0, ptr noundef null) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.026, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef i32 @_ZNK2v88internal8compiler14CallDescriptor18GetOffsetToReturnsEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler19InstructionSelector26IsTailCallAddressImmediateEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(752) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector20VisitWordCompareZeroENS1_10turboshaft7OpIndexES4_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, i32 %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 9 uses
  store i32 %1, ptr %4, align 4
  store i32 %2, ptr %5, align 4
  call void @_ZN2v88internal8compiler19InstructionSelector16ConsumeEqualZeroEPNS1_10turboshaft7OpIndexES5_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %3) #25
  %.sroa.0101.0.copyload = load i32, ptr %4, align 4
  %.sroa.0100.0.copyload = load i32, ptr %5, align 4
  %i.a = call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector8CanCoverENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0101.0.copyload, i32 %.sroa.0100.0.copyload) #25
  %.sroa.0.0.copyload.pre197 = load i32, ptr %5, align 4 ; 16 uses
  br i1 %i.a, label %bb.b, label %.critedge146

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = zext i32 %.sroa.0.0.copyload.pre197 to i64 ; 3 uses
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr                 ; 13 uses
  %i.i = load i8, ptr %i.h, align 4
  %.not = icmp eq i8 %i.i, 68
  br i1 %.not, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i8, ptr %i.j, align 4               ; 3 uses
  %i.l = icmp eq i8 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %6 = icmp eq i8 %i.n, 4
  %spec.select.i = select i1 %6, i8 1, i8 %i.n    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  switch i8 %spec.select.i, label %.critedge146 [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.m
    i8 3, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = icmp eq i8 %i.p, 0
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %i.o, align 4
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef nonnull %0, i32 %.sroa.0.0.copyload.pre197, i32 noundef 184, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4
  %i.u = icmp eq i8 %i.t, 0
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.w, align 4
  %i.x = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %.not.i.i = icmp eq i8 %i.ae, 75
  br i1 %.not.i.i, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher17MatchIntegralZeroENS2_1VINS2_3AnyEEE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = load i8, ptr %i.af, align 4             ; 2 uses
  %switch.i.i = icmp ult i8 %i.ag, 2
  br i1 %switch.i.i, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher17MatchIntegralZeroENS2_1VINS2_3AnyEEE.exit, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher17MatchIntegralZeroENS2_1VINS2_3AnyEEE.exit.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher17MatchIntegralZeroENS2_1VINS2_3AnyEEE.exit: ; preds = %bb.g
  %i.ah = icmp eq i8 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %sext.i.i.i = shl i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext.i.i.i, 32
  %.0.i.i.i = select i1 %i.ah, i64 %i.ak, i64 %i.aj
  %i.al = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.al, label %bb.h, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher17MatchIntegralZeroENS2_1VINS2_3AnyEEE.exit.thread

bb.h:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher17MatchIntegralZeroENS2_1VINS2_3AnyEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i150 = load i32, ptr %i.am, align 4
  %i.an = call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector8CanCoverENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.pre197, i32 %.sroa.0.0.copyload.i.i150) #25
  %.sroa.0.0.copyload.i.i155.pre = load i32, ptr %i.am, align 4 ; 4 uses
  br i1 %i.an, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = zext i32 %.sroa.0.0.copyload.i.i155.pre to i64
  %i.at = add i64 %i.ar, %i.as
  %i.au = inttoptr i64 %i.at to ptr
  %.0.copyload.i.i = load i64, ptr %i.au, align 4
  %i.av = and i64 %.0.copyload.i.i, 281470681743615
  switch i64 %i.av, label %bb.l [
    i64 1129576398908, label %bb.j
    i64 1116691497020, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.i.i155.pre, i32 noundef 183, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.k:                                             ; preds = %bb.i
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.i.i155.pre, i32 noundef 187, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.l:                                             ; preds = %bb.i, %bb.h
  %.sroa.055.0.copyload = load i32, ptr %5, align 4
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116VisitCompareZeroEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_jPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.055.0.copyload, i32 %.sroa.0.0.copyload.i.i155.pre, i32 noundef 183, ptr noundef nonnull %3)
  br label %.critedge146.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher17MatchIntegralZeroENS2_1VINS2_3AnyEEE.exit.thread: ; preds = %bb.f, %bb.g, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher17MatchIntegralZeroENS2_1VINS2_3AnyEEE.exit
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_120VisitWord64EqualImplEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.pre197, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.m:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = icmp eq i8 %i.ax, 0
  %i.az = zext i1 %i.ay to i8
  %spec.select.i156 = or disjoint i8 %i.az, 18
  store i8 %spec.select.i156, ptr %i.aw, align 4
  %i.ba = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = add i64 %i.bd, %i.f
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 32
  %.not.i = icmp eq i32 %i.bi, 0
  %i.bj = select i1 %.not.i, i32 231, i32 268
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bk, align 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.0.0.copyload.i.i11.i = load i32, ptr %i.bl, align 4 ; 2 uses
  %i.bm = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i.i) #25
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = or disjoint i64 %i.bo, 377957122049
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i.i) #25
  %i.bq = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i11.i) #25
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = or disjoint i64 %i.bs, 34359738369
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i11.i) #25
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_112VisitCompareEPNS1_19InstructionSelectorEjNS1_18InstructionOperandES5_PNS1_17FlagsContinuationE(ptr noundef nonnull %0, i32 noundef range(i32 183, 270) %i.bj, i64 %i.bp, i64 %i.bt, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.n:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i157 = load i32, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.0.0.copyload.i.i158 = load i32, ptr %i.bv, align 4
  %i.bw = icmp eq i32 %.sroa.0.0.copyload.i.i157, %.sroa.0.0.copyload.i.i158
  %i.bx = select i1 %i.bw, i8 25, i8 18
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 4
  %i.ca = icmp eq i8 %i.bz, 0
  %i.cb = zext i1 %i.ca to i8
  %spec.select.i159 = xor i8 %i.bx, %i.cb
  store i8 %spec.select.i159, ptr %i.by, align 4
  %i.cc = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = add i64 %i.cf, %i.f
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = and i32 %i.cj, 32
  %i.cl = add nuw nsw i32 %i.ck, 237
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %.sroa.0.0.copyload.i.i.i160 = load i32, ptr %i.cm, align 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.0.0.copyload.i.i11.i161 = load i32, ptr %i.cn, align 4 ; 2 uses
  %i.co = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i.i160) #25
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = or disjoint i64 %i.cq, 377957122049
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i.i160) #25
  %i.cs = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i11.i161) #25
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = or disjoint i64 %i.cu, 34359738369
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i11.i161) #25
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_112VisitCompareEPNS1_19InstructionSelectorEjNS1_18InstructionOperandES5_PNS1_17FlagsContinuationE(ptr noundef nonnull %0, i32 noundef range(i32 183, 270) %i.cl, i64 %i.cr, i64 %i.cv, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.o:                                             ; preds = %bb.c
  switch i8 %spec.select.i, label %.critedge146 [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.cw = call noundef zeroext i8 @_ZNK2v88internal8compiler19InstructionSelector26GetComparisonFlagConditionERKNS1_10turboshaft12ComparisonOpE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 4 dereferenceable(6) %i.h) #25
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = icmp eq i8 %i.cy, 0
  %i.da = zext i1 %i.cz to i8
  %spec.select.i163 = xor i8 %i.cw, %i.da
  store i8 %spec.select.i163, ptr %i.cx, align 4
  %.sroa.046.0.copyload = load i32, ptr %5, align 4
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.046.0.copyload, i32 noundef 184, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.q:                                             ; preds = %bb.o
  %i.db = call noundef zeroext i8 @_ZNK2v88internal8compiler19InstructionSelector26GetComparisonFlagConditionERKNS1_10turboshaft12ComparisonOpE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 4 dereferenceable(6) %i.h) #25
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = icmp eq i8 %i.dd, 0
  %i.df = zext i1 %i.de to i8
  %spec.select.i164 = xor i8 %i.db, %i.df
  store i8 %spec.select.i164, ptr %i.dc, align 4
  %.sroa.045.0.copyload = load i32, ptr %5, align 4
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.045.0.copyload, i32 noundef 183, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.r:                                             ; preds = %bb.o
  %i.dg = icmp eq i8 %i.k, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.di = load i8, ptr %i.dh, align 4
  %i.dj = icmp eq i8 %i.di, 0
  %i.dk = zext i1 %i.dj to i8                     ; 2 uses
  br i1 %i.dg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.select.i165 = xor i8 %i.dk, 9
  store i8 %spec.select.i165, ptr %i.dh, align 4
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_119VisitFloat32CompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.pre197, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.t:                                             ; preds = %bb.r
  %spec.select.i166 = xor i8 %i.dk, 7
  store i8 %spec.select.i166, ptr %i.dh, align 4
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_119VisitFloat32CompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.pre197, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.u:                                             ; preds = %bb.o
  %i.dl = icmp eq i8 %i.k, 1
  br i1 %i.dl, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i167 = load i32, ptr %i.dm, align 4
  %i.dn = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft16OperationMatcher9MatchZeroENS2_1VINS2_3AnyEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0.0.copyload.i.i167)
  br i1 %i.dn, label %bb.w, label %.critedge144

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.0.0.copyload.i.i168 = load i32, ptr %i.do, align 4
  %i.dp = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = zext i32 %.sroa.0.0.copyload.i.i168 to i64
  %i.du = add i64 %i.ds, %i.dt
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %.0.copyload.i.i169 = load i64, ptr %i.dv, align 4
  %i.dw = and i64 %.0.copyload.i.i169, 281470681743615
  %i.dx = icmp eq i64 %i.dw, 3298534883394
  br i1 %i.dx, label %bb.x, label %.critedge144

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 4
  %i.ea = icmp ne i8 %i.dz, 0
  %spec.select.i170 = zext i1 %i.ea to i8
  store i8 %spec.select.i170, ptr %i.dy, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = and i32 %i.ec, 32
  %i.ee = add nuw nsw i32 %i.ed, 237
  %.sroa.0.0.copyload.i.i171 = load i32, ptr %i.dm, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.0.0.copyload.i.i172 = load i32, ptr %i.ef, align 4
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_112VisitCompareEPNS1_19InstructionSelectorEjNS1_10turboshaft7OpIndexES6_PNS1_17FlagsContinuationEb(ptr noundef %0, i32 noundef %i.ee, i32 %.sroa.0.0.copyload.i.i171, i32 %.sroa.0.0.copyload.i.i172, ptr noundef %3, i1 noundef zeroext false)
  br label %.critedge146.thread

.critedge144:                                     ; preds = %bb.w, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = icmp eq i8 %i.eh, 0
  %i.ej = zext i1 %i.ei to i8
  %spec.select.i173 = xor i8 %i.ej, 9
  store i8 %spec.select.i173, ptr %i.eg, align 4
  %.sroa.033.0.copyload = load i32, ptr %5, align 4
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_119VisitFloat64CompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.033.0.copyload, ptr noundef %3)
  br label %.critedge146.thread

bb.y:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 4
  %i.em = icmp eq i8 %i.el, 0
  %i.en = zext i1 %i.em to i8
  %spec.select.i174 = xor i8 %i.en, 7
  store i8 %spec.select.i174, ptr %i.ek, align 4
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_119VisitFloat64CompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.pre197, ptr noundef %3)
  br label %.critedge146.thread

bb.z:                                             ; preds = %bb.b
  %.0.copyload.i.i175 = load i64, ptr %i.h, align 4 ; 3 uses
  %i.eo = and i64 %.0.copyload.i.i175, 281470681743615
  switch i64 %i.eo, label %bb.ac [
    i64 30064771132, label %bb.aa
    i64 17179869244, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.pre197, i32 noundef 184, ptr noundef %3)
  br label %.critedge146.thread

bb.ab:                                            ; preds = %bb.z
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.pre197, i32 noundef 188, ptr noundef %3)
  br label %.critedge146.thread

bb.ac:                                            ; preds = %bb.z
  %i.ep = trunc i64 %.0.copyload.i.i175 to i8
  switch i8 %i.ep, label %.critedge146 [
    i8 97, label %bb.ad
    i8 82, label %bb.al
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.eq = and i64 %.0.copyload.i.i175, 281470681743360
  %i.er = icmp eq i64 %i.eq, 4294967296
  br i1 %i.er, label %bb.ae, label %.critedge146

bb.ae:                                            ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i178 = load i32, ptr %i.es, align 4 ; 5 uses
  %i.et = zext i32 %.sroa.0.0.copyload.i.i178 to i64
  %i.eu = add i64 %i.et, %i.e
  %i.ev = inttoptr i64 %i.eu to ptr               ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 4
  %.not196 = icmp eq i8 %i.ew, 63
  br i1 %.not196, label %bb.af, label %.critedge146

bb.af:                                            ; preds = %bb.ae
  %i.ex = call noundef zeroext i1 @_ZN2v88internal8compiler19InstructionSelector27CanDoBranchIfOverflowFusionENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i178) #25
  br i1 %i.ex, label %bb.ag, label %..critedge146_crit_edge

..critedge146_crit_edge:                          ; preds = %bb.af
  %.sroa.0.0.copyload.pre = load i32, ptr %5, align 4
  br label %.critedge146

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 5
  %.sroa.014.0.copyload = load i8, ptr %i.ey, align 1
  %i.ez = icmp eq i8 %.sroa.014.0.copyload, 1     ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 4
  %i.fc = icmp eq i8 %i.fb, 0
  %i.fd = zext i1 %i.fc to i8
  %spec.select.i179 = or disjoint i8 %i.fd, 20
  store i8 %spec.select.i179, ptr %i.fa, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ff = load i8, ptr %i.fe, align 4
  switch i8 %i.ff, label %bb.ak [
    i8 0, label %bb.ah
    i8 2, label %bb.ai
    i8 1, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.fg = select i1 %i.ez, i32 179, i32 180
  call fastcc void @_ZN2v88internal8compilerL10VisitBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.i.i178, i32 noundef %i.fg, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.ai:                                            ; preds = %bb.ag
  %i.fh = select i1 %i.ez, i32 195, i32 196
  call fastcc void @_ZN2v88internal8compilerL10VisitBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.i.i178, i32 noundef %i.fh, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.aj:                                            ; preds = %bb.ag
  %i.fi = select i1 %i.ez, i32 197, i32 198
  call fastcc void @_ZN2v88internal8compilerL10VisitBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.0.0.copyload.i.i178, i32 noundef %i.fi, ptr noundef nonnull %3)
  br label %.critedge146.thread

bb.ak:                                            ; preds = %bb.ag
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.al:                                            ; preds = %bb.ac
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 4
  %i.fl = icmp eq i8 %i.fk, 0
  %i.fm = zext i1 %i.fl to i8
  %spec.select.i180 = xor i8 %i.fm, 9
  store i8 %spec.select.i180, ptr %i.fj, align 4
  call void @_ZN2v88internal8compiler19InstructionSelector28VisitStackPointerGreaterThanENS1_10turboshaft7OpIndexEPNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.pre197, ptr noundef %3)
  br label %.critedge146.thread

.critedge146:                                     ; preds = %..critedge146_crit_edge, %bb.ac, %bb.ae, %bb.ad, %bb.d, %bb.o, %bb.a
  %.sroa.0.0.copyload = phi i32 [ %.sroa.0.0.copyload.pre, %..critedge146_crit_edge ], [ %.sroa.0.0.copyload.pre197, %bb.ac ], [ %.sroa.0.0.copyload.pre197, %bb.ae ], [ %.sroa.0.0.copyload.pre197, %bb.ad ], [ %.sroa.0.0.copyload.pre197, %bb.d ], [ %.sroa.0.0.copyload.pre197, %bb.o ], [ %.sroa.0.0.copyload.pre197, %bb.a ]
  %.sroa.07.0.copyload = load i32, ptr %4, align 4
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116VisitCompareZeroEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_jPNS1_17FlagsContinuationE(ptr noundef %0, i32 %.sroa.07.0.copyload, i32 %.sroa.0.0.copyload, i32 noundef 184, ptr noundef %3)
  br label %.critedge146.thread

.critedge146.thread:                              ; preds = %bb.al, %bb.ai, %bb.aj, %bb.ah, %bb.k, %bb.ab, %bb.aa, %bb.y, %bb.x, %.critedge144, %bb.t, %bb.s, %bb.q, %bb.p, %bb.n, %bb.m, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher17MatchIntegralZeroENS2_1VINS2_3AnyEEE.exit.thread, %bb.l, %bb.e, %bb.j, %.critedge146
  ret void
}

declare void @_ZN2v88internal8compiler19InstructionSelector16ConsumeEqualZeroEPNS1_10turboshaft7OpIndexES5_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE(ptr noundef nonnull %0, i32 %1, i32 noundef range(i32 183, 189) %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::X64OperandGenerator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 6 uses
  %i.h = zext i32 %1 to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i80 = load i32, ptr %i.o, align 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 4 ; 3 uses
  %i.q = and i32 %2, 187
  %or.cond = icmp eq i32 %i.q, 184
  br i1 %or.cond, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88

bb.b:                                             ; preds = %bb.a
  %i.r = zext i32 %.sroa.0.0.copyload.i80 to i64
  %i.s = add i64 %i.r, %i.g
  %i.t = inttoptr i64 %i.s to ptr                 ; 5 uses
  %i.u = load i8, ptr %i.t, align 4
  %.not.i.i = icmp eq i8 %i.u, 69
  br i1 %.not.i.i, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = load i8, ptr %i.w, align 4
  %i.y = icmp eq i8 %i.x, 12
  br i1 %i.y, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.z, align 2
  %i.aa = icmp eq i8 %.sroa.0.0.copyload.i.i.i, 1
  br i1 %i.aa, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %.sroa.0.0.copyload.i23.i.i = load i8, ptr %i.ab, align 1
  %i.ac = icmp eq i8 %.sroa.0.0.copyload.i23.i.i, 0
  br i1 %i.ac, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread: ; preds = %bb.b, %bb.d, %bb.e, %bb.c
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit: ; preds = %bb.e, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread
  %.sroa.0128.0 = phi i32 [ %.sroa.0.0.copyload.i80, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.e ] ; 2 uses
  %i.ad = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ae = add i64 %i.ad, %i.g
  %i.af = inttoptr i64 %i.ae to ptr               ; 5 uses
  %i.ag = load i8, ptr %i.af, align 4
  %.not.i.i83 = icmp eq i8 %i.ag, 69
  br i1 %.not.i.i83, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread

bb.f:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0.0.copyload.i.i.i.i85 = load i32, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = icmp eq i8 %i.aj, 12
  br i1 %i.ak, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %.sroa.0.0.copyload.i.i.i86 = load i8, ptr %i.al, align 2
  %i.am = icmp eq i8 %.sroa.0.0.copyload.i.i.i86, 1
  br i1 %i.am, label %bb.h, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 7
  %.sroa.0.0.copyload.i23.i.i87 = load i8, ptr %i.an, align 1
  %i.ao = icmp eq i8 %.sroa.0.0.copyload.i23.i.i87, 0
  br i1 %i.ao, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit, %bb.g, %bb.h, %bb.f
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88: ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread, %bb.h, %bb.a
  %.sroa.0118.1 = phi i32 [ %.sroa.0.0.copyload.i, %bb.a ], [ %.sroa.0.0.copyload.i, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread ], [ %.sroa.0.0.copyload.i.i.i.i85, %bb.h ] ; 12 uses
  %.sroa.0128.1 = phi i32 [ %.sroa.0.0.copyload.i80, %bb.a ], [ %.sroa.0128.0, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread ], [ %.sroa.0128.0, %bb.h ] ; 10 uses
  %i.ap = zext i32 %.sroa.0128.1 to i64           ; 4 uses
  %i.aq = add i64 %i.ap, %i.g
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = load i8, ptr %i.ar, align 4             ; 2 uses
  %.not.i.i89 = icmp eq i8 %i.as, 60
  br i1 %.not.i.i89, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i

_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i: ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load i8, ptr %i.at, align 4
  %i.av = icmp eq i8 %i.au, 4
  br i1 %i.av, label %bb.i, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i
  %i.aw = zext i32 %.sroa.0118.1 to i64
  %i.ax = add i64 %i.aw, %i.g
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4
  %.not.i58.i = icmp eq i8 %i.az, 75
  br i1 %.not.i58.i, label %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i

_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i: ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i8, ptr %i.ba, align 4
  %spec.select.i59.i = icmp ult i8 %i.bb, 2
  br i1 %spec.select.i59.i, label %bb.j, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i

bb.j:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i
  %i.bc = tail call fastcc i16 @_ZN2v88internal8compiler12_GLOBAL__N_127MachineTypeForNarrowWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr %i.f, i32 %.sroa.0128.1, i32 %.sroa.0118.1) ; 2 uses
  br label %bb.l

_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i, %bb.i, %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88
  %i.bd = zext i32 %.sroa.0118.1 to i64
  %i.be = add i64 %i.bd, %i.g
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 4
  %.not.i60.i = icmp eq i8 %i.bg, 60
  br i1 %.not.i60.i, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.i, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.thread.i

_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = icmp eq i8 %i.bi, 4
  %.not.i63.i = icmp eq i8 %i.as, 75
  %or.cond86.i = and i1 %.not.i63.i, %i.bj
  br i1 %or.cond86.i, label %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit66.i, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.thread.i

_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit66.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bl = load i8, ptr %i.bk, align 4
  %spec.select.i65.i = icmp ult i8 %i.bl, 2
  br i1 %spec.select.i65.i, label %bb.k, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.thread.i

bb.k:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit66.i
  %i.bm = tail call fastcc i16 @_ZN2v88internal8compiler12_GLOBAL__N_127MachineTypeForNarrowWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr %i.f, i32 %.sroa.0118.1, i32 %.sroa.0128.1) ; 2 uses
  br label %bb.l

_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.thread.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit66.i, %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.i, %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i
  %i.bn = tail call fastcc i16 @_ZN2v88internal8compiler12_GLOBAL__N_120MachineTypeForNarrowEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr noundef nonnull readonly %0, i32 %.sroa.0128.1, i32 %.sroa.0118.1)
  %i.bo = tail call fastcc i16 @_ZN2v88internal8compiler12_GLOBAL__N_120MachineTypeForNarrowEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr noundef nonnull readonly %0, i32 %.sroa.0118.1, i32 %.sroa.0128.1)
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.thread.i, %bb.k, %bb.j
  %.sroa.8.0.in.in.i = phi i16 [ %i.bc, %bb.j ], [ %i.bm, %bb.k ], [ %i.bn, %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.thread.i ] ; 2 uses
  %.sroa.021.0.i = phi i16 [ %i.bc, %bb.j ], [ %i.bm, %bb.k ], [ %i.bo, %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.thread.i ] ; 2 uses
  %.sroa.0.0.i = trunc i16 %.sroa.8.0.in.in.i to i8 ; 2 uses
  %.sroa.8.0.in.i = lshr i16 %.sroa.8.0.in.in.i, 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.021.0.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.021.0.i, 8
  %i.bp = icmp eq i8 %.sroa.0.0.i, %.sroa.0.0.extract.trunc.i.i
  %i.bq = icmp eq i16 %.sroa.8.0.in.i, %.sroa.2.0.extract.shift.i.i
  %i.br = and i1 %i.bp, %i.bq
  br i1 %i.br, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  switch i8 %.sroa.0.0.i, label %bb.w [
    i8 1, label %bb.n
    i8 2, label %bb.n
    i8 3, label %bb.s
    i8 4, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.bs = add nsw i32 %2, -187
  %or.cond.i = icmp ult i32 %i.bs, 2
  br i1 %or.cond.i, label %_ZN2v88internal8compiler12_GLOBAL__N_119TryNarrowOpcodeSizeEPNS1_19InstructionSelectorEjNS1_10turboshaft7OpIndexES6_PNS1_17FlagsContinuationE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond3.i = icmp samesign ult i32 %2, 185
  br i1 %or.cond3.i, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %trunc88.i = trunc nuw i16 %.sroa.8.0.in.i to i8
  switch i8 %trunc88.i, label %bb.r [
    i8 3, label %bb.q
end_hunk_0
