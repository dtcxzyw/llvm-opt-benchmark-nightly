Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/pipeline?download=true
inline.NumInlined: 31354
inline.NumDeleted: 12782
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_ZN2v88internal8compiler12PipelineImpl3RunITkNS1_10turboshaft13TurbofanPhaseENS1_20GenericLoweringPhaseEJEEEbDpOT0_:bb.a
  %.sroa.16.0 = phi ptr [ undef, %_ZN2v88internal8compiler10PhaseScopeC2EPNS1_26TurbofanPipelineStatisticsEPKc.exit.i ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull @.str.183) #29 ; 3 uses
  call void @_ZN2v88internal8compiler20GenericLoweringPhase3RunEPNS1_14TFPipelineDataEPNS0_4ZoneE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %i.j, ptr noundef %i.k)
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.p = load atomic i8, ptr %i.o monotonic, align 1, !range !319, !noundef !320
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.not.i7.i, label %_ZN2v88internal8compiler15NodeOriginTable10PhaseScopeD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScope4zoneEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %.sroa.16.0, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler15NodeOriginTable10PhaseScopeD2Ev.exit.i

_ZN2v88internal8compiler15NodeOriginTable10PhaseScopeD2Ev.exit.i: ; preds = %bb.d, %_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScope4zoneEv.exit
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler9ZoneStats5ScopeD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler15NodeOriginTable10PhaseScopeD2Ev.exit.i
  call void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.k) #29
  br label %_ZN2v88internal8compiler9ZoneStats5ScopeD2Ev.exit.i

_ZN2v88internal8compiler9ZoneStats5ScopeD2Ev.exit.i: ; preds = %bb.e, %_ZN2v88internal8compiler15NodeOriginTable10PhaseScopeD2Ev.exit.i
  br i1 %.not.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScopeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler9ZoneStats5ScopeD2Ev.exit.i
  call void @_ZN2v88internal8compiler26TurbofanPipelineStatistics8EndPhaseEv(ptr noundef nonnull align 8 dereferenceable(208) %i.c) #29
  br label %_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScopeD2Ev.exit

_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScopeD2Ev.exit: ; preds = %_ZN2v88internal8compiler9ZoneStats5ScopeD2Ev.exit.i, %bb.f
  %i.r = trunc nuw i8 %i.p to i1
  %i.s = xor i1 %i.r, true
  ret i1 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal8compiler12PipelineImpl3RunITkNS1_10turboshaft13TurbofanPhaseENS1_22EarlyOptimizationPhaseEJEEEbDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !guid !456 {
bb.a:
  %1 = alloca %"struct.v8::internal::compiler::EarlyOptimizationPhase", align 1 ; 3 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10PhaseScopeC2EPNS1_26TurbofanPipelineStatisticsEPKc.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal8compiler26TurbofanPipelineStatistics10BeginPhaseEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull @.str.184) #29
  br label %_ZN2v88internal8compiler10PhaseScopeC2EPNS1_26TurbofanPipelineStatisticsEPKc.exit.i

_ZN2v88internal8compiler10PhaseScopeC2EPNS1_26TurbofanPipelineStatisticsEPKc.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i7.i = icmp eq ptr %i.g, null             ; 2 uses
  br i1 %.not.i7.i, label %_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScope4zoneEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10PhaseScopeC2EPNS1_26TurbofanPipelineStatisticsEPKc.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  store ptr @.str.184, ptr %i.h, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScope4zoneEv.exit

_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScope4zoneEv.exit: ; preds = %_ZN2v88internal8compiler10PhaseScopeC2EPNS1_26TurbofanPipelineStatisticsEPKc.exit.i, %bb.c
  %.sroa.16.0 = phi ptr [ undef, %_ZN2v88internal8compiler10PhaseScopeC2EPNS1_26TurbofanPipelineStatisticsEPKc.exit.i ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull @.str.184) #29 ; 3 uses
  call void @_ZN2v88internal8compiler22EarlyOptimizationPhase3RunEPNS1_14TFPipelineDataEPNS0_4ZoneE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %i.j, ptr noundef %i.k)
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.p = load atomic i8, ptr %i.o monotonic, align 1, !range !319, !noundef !320
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.not.i7.i, label %_ZN2v88internal8compiler15NodeOriginTable10PhaseScopeD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScope4zoneEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %.sroa.16.0, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler15NodeOriginTable10PhaseScopeD2Ev.exit.i

_ZN2v88internal8compiler15NodeOriginTable10PhaseScopeD2Ev.exit.i: ; preds = %bb.d, %_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScope4zoneEv.exit
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler9ZoneStats5ScopeD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler15NodeOriginTable10PhaseScopeD2Ev.exit.i
  call void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.k) #29
  br label %_ZN2v88internal8compiler9ZoneStats5ScopeD2Ev.exit.i

_ZN2v88internal8compiler9ZoneStats5ScopeD2Ev.exit.i: ; preds = %bb.e, %_ZN2v88internal8compiler15NodeOriginTable10PhaseScopeD2Ev.exit.i
  br i1 %.not.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScopeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler9ZoneStats5ScopeD2Ev.exit.i
  call void @_ZN2v88internal8compiler26TurbofanPipelineStatistics8EndPhaseEv(ptr noundef nonnull align 8 dereferenceable(208) %i.c) #29
  br label %_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScopeD2Ev.exit

_ZN2v88internal8compiler12_GLOBAL__N_116PipelineRunScopeD2Ev.exit: ; preds = %_ZN2v88internal8compiler9ZoneStats5ScopeD2Ev.exit.i, %bb.f
  %i.r = trunc nuw i8 %i.p to i1
  %i.s = xor i1 %i.r, true
  ret i1 %i.s
}

declare void @_ZN2v88internal8compiler19SourcePositionTable15RemoveDecoratorEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler15NodeOriginTable15RemoveDecoratorEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler27CodeAssemblerCompilationJobC2EPNS0_7IsolateENS0_7BuiltinESt8functionIFvPNS1_18CodeAssemblerStateEEES6_IFvS5_NS0_6HandleINS0_4CodeEEEEERKNS0_16AssemblerOptionsES6_IFPNS1_14CallDescriptorEPNS0_4ZoneEEENS0_8CodeKindEPKcPKNS0_19ProfileDataFromFileEi(ptr noundef nonnull align 8 dereferenceable(868) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(27) %5, ptr noundef %6, i8 noundef zeroext %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) unnamed_addr #0 align 2 !guid !457 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal8compiler27CodeAssemblerCompilationJobE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  tail call void @_ZN2v88internal22TurbofanCompilationJobC2EPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_14CompilationJob5StateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 0) #29
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal8compiler27CodeAssemblerCompilationJobE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvPN2v88internal8compiler18CodeAssemblerStateEEEC2ERKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2) #29, !inline_history !8 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %i.f, align 8
  %i.k = load ptr, ptr %i.d, align 8
  store ptr %i.k, ptr %i.g, align 8
  br label %_ZNSt8functionIFvPN2v88internal8compiler18CodeAssemblerStateEEEC2ERKS6_.exit

_ZNSt8functionIFvPN2v88internal8compiler18CodeAssemblerStateEEEC2ERKS6_.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i.not.i14 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i14, label %_ZNSt8functionIFvN2v88internal7BuiltinENS1_6HandleINS1_4CodeEEEEEC2ERKS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvPN2v88internal8compiler18CodeAssemblerStateEEEC2ERKS6_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2) #29, !inline_history !9 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.o, align 8
  %i.t = load ptr, ptr %i.m, align 8
  store ptr %i.t, ptr %i.p, align 8
  br label %_ZNSt8functionIFvN2v88internal7BuiltinENS1_6HandleINS1_4CodeEEEEEC2ERKS7_.exit

_ZNSt8functionIFvN2v88internal7BuiltinENS1_6HandleINS1_4CodeEEEEEC2ERKS7_.exit: ; preds = %_ZNSt8functionIFvPN2v88internal8compiler18CodeAssemblerStateEEEC2ERKS6_.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %9, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 58832 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef %i.y, ptr noundef nonnull @__func__._ZN2v88internal8compiler27CodeAssemblerCompilationJobC2EPNS0_7IsolateENS0_7BuiltinESt8functionIFvPNS1_18CodeAssemblerStateEEES6_IFvS5_NS0_6HandleINS0_4CodeEEEEERKNS0_16AssemblerOptionsES6_IFPNS1_14CallDescriptorEPNS0_4ZoneEEENS0_8CodeKindEPKcPKNS0_19ProfileDataFromFileEi) #29
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aa = load ptr, ptr %i.x, align 8
  tail call void @_ZN2v88internal8compiler9ZoneStatsC1EPNS0_19AccountingAllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef %i.aa) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.w, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFPN2v88internal8compiler14CallDescriptorEPNS1_4ZoneEEEclES6_.exit

bb.d:                                             ; preds = %_ZNSt8functionIFvN2v88internal7BuiltinENS1_6HandleINS1_4CodeEEEEEC2ERKS7_.exit
  tail call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFPN2v88internal8compiler14CallDescriptorEPNS1_4ZoneEEEclES6_.exit: ; preds = %_ZNSt8functionIFvN2v88internal7BuiltinENS1_6HandleINS1_4CodeEEEEEC2ERKS7_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN2v88internal8compiler18CodeAssemblerStateC1EPNS0_7IsolateEPNS0_4ZoneEPNS1_14CallDescriptorENS0_8CodeKindEPKcNS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(216) %i.ad, ptr noundef nonnull %1, ptr noundef nonnull %i.w, ptr noundef %i.ag, i8 noundef zeroext %7, ptr noundef %8, i32 noundef %2) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #34
  call void @_ZN2v88internal24OptimizedCompilationInfoC1ENS_4base6VectorIKcEEPNS0_4ZoneENS0_8CodeKindENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr nonnull %8, i64 %i.ai, ptr noundef nonnull %i.w, i8 noundef zeroext %7, i32 noundef -1) #29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i8 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 59472
  %i.al = load i8, ptr %i.ak, align 8, !range !319, !noundef !320
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 669), align 1, !range !319
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond.i = select i1 %i.am, i1 %i.ao, i1 false
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 630), align 2, !range !319
  %i.aq = trunc nuw i8 %i.ap to i1
  %11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 648), align 8
  %.not.i = icmp eq ptr %11, null
  %.not4.i = xor i1 %i.aq, true
  %not.or.cond3.i = select i1 %or.cond.i, i1 %.not4.i, i1 false
  %i.ar = select i1 %not.or.cond3.i, i1 %.not.i, i1 false
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt8functionIFPN2v88internal8compiler14CallDescriptorEPNS1_4ZoneEEEclES6_.exit
  %i.as = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #31 ; 16 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.as, i8 0, i64 168, i1 false)
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store ptr %i.at, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store i32 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 112 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ax, i8 0, i64 25, i1 false)
  store ptr %i.ay, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  store ptr %i.ay, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 160 ; 3 uses
  store i32 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  store ptr null, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  store ptr %i.bc, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  store ptr %i.bc, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  store i64 0, ptr %i.bg, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFPN2v88internal8compiler14CallDescriptorEPNS1_4ZoneEEEclES6_.exit, %bb.e
  %i.bh = phi ptr [ %i.as, %bb.e ], [ null, %_ZNKSt8functionIFPN2v88internal8compiler14CallDescriptorEPNS1_4ZoneEEEclES6_.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 848
  store ptr %i.bh, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 856
  store ptr null, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 864
  store i32 %10, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 564
  store i32 %2, ptr %i.bl, align 4
  ret void
}

declare void @_ZN2v88internal8compiler18CodeAssemblerStateC1EPNS0_7IsolateEPNS0_4ZoneEPNS1_14CallDescriptorENS0_8CodeKindEPKcNS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) unnamed_addr #1

declare void @_ZN2v88internal24OptimizedCompilationInfoC1ENS_4base6VectorIKcEEPNS0_4ZoneENS0_8CodeKindENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64, ptr noundef, i8 noundef zeroext, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler27CodeAssemblerCompilationJob19ShouldOptimizeJumpsEPNS0_7IsolateE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 align 2 !guid !458 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59472
  %i.b = load i8, ptr %i.a, align 8, !range !319, !noundef !320
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 669), align 1, !range !319
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 630), align 2, !range !319
  %2 = trunc nuw i8 %1 to i1
  %3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 648), align 8
  %.not = icmp eq ptr %3, null
  %.not4 = xor i1 %2, true
  %not.or.cond3 = select i1 %or.cond, i1 %.not4, i1 false
  %i.f = select i1 %not.or.cond3, i1 %.not, i1 false
  ret i1 %i.f
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal8compiler27CodeAssemblerCompilationJob14PrepareJobImplEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(868) %0, ptr noundef %1) unnamed_addr #0 align 2 !guid !464 {
bb.a:
  %2 = alloca %"class.v8::base::EmbeddedVector.3094", align 8 ; 6 uses
  %3 = alloca %"class.v8::internal::AccountingAllocator", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::Zone", align 8 ; 9 uses
  %5 = alloca %"class.v8::internal::ZoneStack.3393", align 8 ; 21 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::basic_ofstream", align 8 ; 17 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.v8::internal::CompilationHandleScope", align 8 ; 5 uses
  %8 = alloca %"class.std::shared_ptr.463", align 8 ; 3 uses
  %9 = alloca %"class.v8::internal::CodeTracer::StreamScope", align 8 ; 19 uses
  %10 = alloca %"struct.v8::internal::compiler::TurboJsonFile", align 8 ; 7 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 55464
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, -55464
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 688
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.d, %i.f
  br i1 %i.p, label %bb.b, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !318

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #29
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.q, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.r = ptrtoint ptr %.0.i.i to i64
  %i.s = add i64 %i.r, 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.c, align 8
  store i64 %i.o, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 6 uses
  call void @_ZN2v88internal22PersistentHandlesScopeC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %1) #29
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.w, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #29, !inline_history !459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN2v88internal22CompilationHandleScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  store ptr %i.d, ptr %i.c, align 8
  %i.ac = load i32, ptr %i.g, align 8
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.g, align 8
  %i.ae = load ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.ae, %i.f
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.e, !prof !324

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %i.e, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %1) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ag = load ptr, ptr %i.w, align 8
  %i.ah = call noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler21ExportForOptimizationEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ag) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  store i8 0, ptr %i.ai, align 8
  call void @_ZN2v88internal8compiler15NodeOriginTableC1EPNS1_7TFGraphE(ptr noundef nonnull align 8 dereferenceable(112) %i.af, ptr noundef %i.ah) #29
  store i8 1, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef ptr %i.al(ptr noundef nonnull align 8 dereferenceable(868) %0, ptr noundef nonnull %1) #29 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.ao = call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #29 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #29, !inline_history !4 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #29, !inline_history !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 536 ; 2 uses
  store ptr null, ptr %i.aw, align 8
  %i.ax = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 552), align 8, !range !319, !noundef !320
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 553), align 1, !range !319
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond, label %bb.f, label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.bc = call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 208) #29 ; 2 uses
  call void @_ZN2v88internal7Isolate18GetTurboStatisticsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.463") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64320) %1) #29
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_ZN2v88internal8compiler26TurbofanPipelineStatisticsC1EPNS0_24OptimizedCompilationInfoESt10shared_ptrINS0_21CompilationStatisticsEEPNS1_9ZoneStatsE(ptr noundef nonnull align 8 dereferenceable(208) %i.bc, ptr noundef nonnull %i.u, ptr noundef nonnull %8, ptr noundef nonnull %i.bd) #29
  %i.be = load ptr, ptr %i.bb, align 8            ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8
  %.not.i.i19 = icmp eq ptr %i.be, null
  br i1 %.not.i.i19, label %_ZNSt10unique_ptrIN2v88internal8compiler26TurbofanPipelineStatisticsESt14default_deleteIS3_EE5resetEPS3_.exit, label %_ZNKSt14default_deleteIN2v88internal8compiler26TurbofanPipelineStatisticsEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v88internal8compiler26TurbofanPipelineStatisticsEEclEPS3_.exit.i.i: ; preds = %bb.f
  call void @_ZN2v88internal8compiler26TurbofanPipelineStatisticsD1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.be) #29
  call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %i.be) #29
  br label %_ZNSt10unique_ptrIN2v88internal8compiler26TurbofanPipelineStatisticsESt14default_deleteIS3_EE5resetEPS3_.exit

_ZNSt10unique_ptrIN2v88internal8compiler26TurbofanPipelineStatisticsESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN2v88internal8compiler26TurbofanPipelineStatisticsEEclEPS3_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8            ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal8compiler26TurbofanPipelineStatisticsESt14default_deleteIS3_EE5resetEPS3_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.bh, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29, !inline_history !0
  %i.bp = load ptr, ptr %i.bg, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.bs = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.bk, %bb.j ], [ %i.bu, %bb.k ]
  %i.bv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bv, label %bb.l, label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !318

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29
  br label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h, %_ZNSt10unique_ptrIN2v88internal8compiler26TurbofanPipelineStatisticsESt14default_deleteIS3_EE5resetEPS3_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.by = load i32, ptr %i.u, align 8
  %i.bz = and i32 %i.by, 6144
  %or.cond53.not = icmp eq i32 %i.bz, 0
  br i1 %or.cond53.not, label %bb.ah, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i8, ptr %i.cc, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal12StdoutStreamC1Ev
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 !guid !469 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr @stdout, align 8
  tail call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.f) #29
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = tail call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #29 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 !guid !470 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2v88internal12StdoutStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29
  br label %_ZN2v88internal12StdoutStreamD2Ev.exit

_ZN2v88internal12StdoutStreamD2Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #29
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler40TurboshaftAssemblerBuiltinCompilationJobC2EPNS0_7IsolateENS0_7BuiltinESt8functionIFvPNS1_10turboshaft12PipelineDataES4_RNS7_5GraphEPNS0_4ZoneEEES6_IFvS5_NS0_6HandleINS0_4CodeEEEEERKNS0_16AssemblerOptionsES6_IFPNS1_14CallDescriptorESD_EENS0_8CodeKindEPKcNS0_11interpreter19BytecodeHandlerDataEPKNS0_19ProfileDataFromFileEi(ptr noundef nonnull align 8 dereferenceable(1096) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(27) %5, ptr noundef %6, i8 noundef zeroext %7, ptr noundef %8, i48 %9, ptr nofree readnone captures(none) %10, i32 noundef %11) unnamed_addr #0 align 2 !guid !472 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler40TurboshaftAssemblerBuiltinCompilationJobE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  tail call void @_ZN2v88internal22TurbofanCompilationJobC2EPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_14CompilationJob5StateE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 0) #29
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler40TurboshaftAssemblerBuiltinCompilationJobE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvPN2v88internal8compiler10turboshaft12PipelineDataEPNS1_7IsolateERNS3_5GraphEPNS1_4ZoneEEEC2ERKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2) #29, !inline_history !471 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr %i.e, align 8
  %i.j = load ptr, ptr %i.c, align 8
  store ptr %i.j, ptr %i.f, align 8
  br label %_ZNSt8functionIFvPN2v88internal8compiler10turboshaft12PipelineDataEPNS1_7IsolateERNS3_5GraphEPNS1_4ZoneEEEC2ERKSD_.exit

_ZNSt8functionIFvPN2v88internal8compiler10turboshaft12PipelineDataEPNS1_7IsolateERNS3_5GraphEPNS1_4ZoneEEEC2ERKSD_.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i.i.not.i11 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.not.i11, label %_ZNSt8functionIFvN2v88internal7BuiltinENS1_6HandleINS1_4CodeEEEEEC2ERKS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvPN2v88internal8compiler10turboshaft12PipelineDataEPNS1_7IsolateERNS3_5GraphEPNS1_4ZoneEEEC2ERKSD_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2) #29, !inline_history !9 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  store ptr %i.r, ptr %i.n, align 8
  %i.s = load ptr, ptr %i.l, align 8
  store ptr %i.s, ptr %i.o, align 8
  br label %_ZNSt8functionIFvN2v88internal7BuiltinENS1_6HandleINS1_4CodeEEEEEC2ERKS7_.exit

_ZNSt8functionIFvN2v88internal7BuiltinENS1_6HandleINS1_4CodeEEEEEC2ERKS7_.exit: ; preds = %_ZNSt8functionIFvPN2v88internal8compiler10turboshaft12PipelineDataEPNS1_7IsolateERNS3_5GraphEPNS1_4ZoneEEEC2ERKSD_.exit, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i.i.not.i12 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i12, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvN2v88internal7BuiltinENS1_6HandleINS1_4CodeEEEEEC2ERKS7_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 2) #29, !inline_history !13 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %i.w, align 8
  %i.ab = load ptr, ptr %i.u, align 8
  store ptr %i.ab, ptr %i.x, align 8
  br label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit: ; preds = %_ZNSt8functionIFvN2v88internal7BuiltinENS1_6HandleINS1_4CodeEEEEEC2ERKS7_.exit, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i48 %9, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %8, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 58832
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @_ZN2v88internal8compiler9ZoneStatsC1EPNS0_19AccountingAllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef %i.ag) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @_ZN2v88internal8compiler27kBuiltinCompilationZoneNameE, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.ae, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.ak, align 8
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #34
  %i.am = tail call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull @_ZN2v88internal8compiler27kBuiltinCompilationZoneNameE) #29 ; 2 uses
  store ptr %i.am, ptr %i.aj, align 8
  tail call void @_ZN2v88internal24OptimizedCompilationInfoC1ENS_4base6VectorIKcEEPNS0_4ZoneENS0_8CodeKindENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr nonnull %8, i64 %i.al, ptr noundef %i.am, i8 noundef zeroext %7, i32 noundef -1) #29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.ae, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr @_ZN2v88internal8compiler10turboshaft20kCompilationZoneNameE, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %i.ae, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 3, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.a, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 552
  tail call void @_ZNK2v88internal24OptimizedCompilationInfo12GetDebugNameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %i.av, ptr noundef nonnull align 8 dereferenceable(192) %i.a) #29
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i64 0, ptr %i.bc, align 8
  store i8 0, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr null, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i8 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i8 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i8 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i8 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1008
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bj, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i8 1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1025
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i64 0, ptr %i.bm, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bn, i8 0, i64 11, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr null, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i32 0, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 59472
  %i.br = load i8, ptr %i.bq, align 8, !range !319, !noundef !320
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 669), align 1, !range !319
  %i.bu = trunc nuw i8 %i.bt to i1
  %or.cond.i = select i1 %i.bs, i1 %i.bu, i1 false
  %i.bv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 630), align 2, !range !319
  %i.bw = trunc nuw i8 %i.bv to i1
  %12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 648), align 8
  %.not.i = icmp eq ptr %12, null
  %.not4.i = xor i1 %i.bw, true
  %not.or.cond3.i = select i1 %or.cond.i, i1 %.not4.i, i1 false
  %i.bx = select i1 %not.or.cond3.i, i1 %.not.i, i1 false
  br i1 %i.bx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit
  %i.by = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #31 ; 16 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.by, i8 0, i64 168, i1 false)
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  store ptr %i.bz, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  store i32 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 112 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 120
  store ptr null, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cd, i8 0, i64 25, i1 false)
  store ptr %i.ce, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  store ptr %i.ce, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 160 ; 3 uses
  store i32 0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  store ptr null, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 176
  store ptr %i.ci, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  store ptr %i.ci, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 192
  store i64 0, ptr %i.cm, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit, %bb.e
  %i.cn = phi ptr [ %i.by, %bb.e ], [ null, %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store ptr null, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i32 %11, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %2, ptr %i.cr, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler40TurboshaftAssemblerBuiltinCompilationJob19ShouldOptimizeJumpsEPNS0_7IsolateE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1096) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 align 2 !guid !473 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 59472
  %i.b = load i8, ptr %i.a, align 8, !range !319, !noundef !320
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 669), align 1, !range !319
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  %2 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 630), align 2, !range !319
  %3 = trunc nuw i8 %2 to i1
  %4 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 648), align 8
  %.not = icmp eq ptr %4, null
  %.not4 = xor i1 %3, true
  %not.or.cond3 = select i1 %or.cond, i1 %.not4, i1 false
  %i.f = select i1 %not.or.cond3, i1 %.not, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8compiler40TurboshaftAssemblerBuiltinCompilationJob14PrepareJobImplEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(1096) %0, ptr noundef %1) unnamed_addr #0 align 2 !guid !475 {
bb.a:
  %2 = alloca %"class.v8::base::EmbeddedVector.3094", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::CompilationHandleScope", align 8 ; 5 uses
  %4 = alloca %"class.std::shared_ptr.463", align 8 ; 3 uses
  %5 = alloca %"class.v8::internal::CodeTracer::StreamScope", align 8 ; 19 uses
  %6 = alloca %"struct.v8::internal::compiler::TurboJsonFile", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 55464
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, -55464
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 688
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.f, %i.h
  br i1 %i.r, label %bb.b, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !318

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #29
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.s, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.t = ptrtoint ptr %.0.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.e, align 8
  store i64 %i.q, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  call void @_ZN2v88internal22PersistentHandlesScopeC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %1) #29
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.c, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.ac, align 8
  %i.ag = call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef %i.af) #29 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8
  br label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit: ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.c ], [ %i.aa, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ah, ptr %i.d, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef ptr %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #29, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.045.sroa.0.0.copyload = load i48, ptr %i.ao, align 8
  %.sroa.045.0.insert.ext = zext i48 %.sroa.045.sroa.0.0.copyload to i56
  %.sroa.045.0.insert.insert = or disjoint i56 %.sroa.045.0.insert.ext, 281474976710656
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 696
  store ptr %i.am, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i56 %.sroa.045.0.insert.insert, ptr %i.ar, align 8
  store i8 1, ptr %i.aq, align 8
  call void @_ZN2v88internal8compiler10turboshaft12PipelineData24InitializeGraphComponentEPNS1_19SourcePositionTableE(ptr noundef nonnull align 8 dereferenceable(536) %i.an, ptr noundef null)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull @_ZN2v88internal8compiler10turboshaft13kTempZoneNameE) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.an, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %i.av, ptr %i.c, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not.i.i11 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i11, label %bb.e, label %_ZNKSt8functionIFvPN2v88internal8compiler10turboshaft12PipelineDataEPNS1_7IsolateERNS3_5GraphEPNS1_4ZoneEEEclES5_S7_S9_SB_.exit

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvPN2v88internal8compiler10turboshaft12PipelineDataEPNS1_7IsolateERNS3_5GraphEPNS1_4ZoneEEEclES5_S7_S9_SB_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29, !inline_history !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal8compiler10turboshaft12PipelineDataEPNS1_7IsolateERNS3_5GraphEPNS1_4ZoneEEEclES5_S7_S9_SB_.exit
  call void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull %i.av) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt8functionIFvPN2v88internal8compiler10turboshaft12PipelineDataEPNS1_7IsolateERNS3_5GraphEPNS1_4ZoneEEEclES5_S7_S9_SB_.exit
  call void @_ZN2v88internal22CompilationHandleScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  store ptr %i.f, ptr %i.e, align 8
  %i.bb = load i32, ptr %i.i, align 8
  %i.bc = add nsw i32 %i.bb, -1
  store i32 %i.bc, ptr %i.i, align 8
  %i.bd = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.bd, %i.h
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.h, !prof !324

bb.h:                                             ; preds = %bb.g
  store ptr %i.h, ptr %i.g, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %1) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.h, %bb.g
  %i.be = call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #29 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #29, !inline_history !14 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #29, !inline_history !14
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  store ptr null, ptr %i.bm, align 8
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 552), align 8, !range !319, !noundef !320
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 553), align 1, !range !319
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond, label %bb.i, label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.bs = call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 208) #29 ; 2 uses
  call void @_ZN2v88internal7Isolate18GetTurboStatisticsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.463") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64320) %1) #29
  call void @_ZN2v88internal8compiler26TurbofanPipelineStatisticsC1EPNS0_24OptimizedCompilationInfoESt10shared_ptrINS0_21CompilationStatisticsEEPNS1_9ZoneStatsE(ptr noundef nonnull align 8 dereferenceable(208) %i.bs, ptr noundef nonnull %i.w, ptr noundef nonnull %4, ptr noundef nonnull %i.as) #29
  %i.bt = load ptr, ptr %i.br, align 8            ; 3 uses
  store ptr %i.bs, ptr %i.br, align 8
  %.not.i.i12 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i12, label %_ZNSt10unique_ptrIN2v88internal8compiler26TurbofanPipelineStatisticsESt14default_deleteIS3_EE5resetEPS3_.exit, label %_ZNKSt14default_deleteIN2v88internal8compiler26TurbofanPipelineStatisticsEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v88internal8compiler26TurbofanPipelineStatisticsEEclEPS3_.exit.i.i: ; preds = %bb.i
  call void @_ZN2v88internal8compiler26TurbofanPipelineStatisticsD1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.bt) #29
  call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %i.bt) #29
  br label %_ZNSt10unique_ptrIN2v88internal8compiler26TurbofanPipelineStatisticsESt14default_deleteIS3_EE5resetEPS3_.exit

_ZNSt10unique_ptrIN2v88internal8compiler26TurbofanPipelineStatisticsESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIN2v88internal8compiler26TurbofanPipelineStatisticsEEclEPS3_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8            ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal8compiler26TurbofanPipelineStatisticsESt14default_deleteIS3_EE5resetEPS3_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bw, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %i.bv, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #29, !inline_history !0
  %i.ce = load ptr, ptr %i.bv, align 8
end_hunk_1
