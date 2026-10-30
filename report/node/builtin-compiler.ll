Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtin-compiler?download=true
inline.NumInlined: 611
inline.NumDeleted: 496
begin_hunk_0
%"struct.std::_Optional_base.537" = type { %"struct.std::_Optional_payload.539" }
%"struct.std::_Optional_payload.539" = type { %"struct.std::_Optional_payload.base.545", [7 x i8] }
%"struct.std::_Optional_payload.base.545" = type { %"struct.std::_Optional_payload_base.base.544" }
%"struct.std::_Optional_payload_base.base.544" = type <{ %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::detail::InstructionComponent>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::detail::InstructionComponent>::_Storage" = type { %"struct.v8::internal::compiler::turboshaft::detail::InstructionComponent" }
%"struct.v8::internal::compiler::turboshaft::detail::InstructionComponent" = type { %"struct.v8::internal::compiler::turboshaft::detail::ComponentWithZone.542", ptr }
%"struct.v8::internal::compiler::turboshaft::detail::ComponentWithZone.542" = type { %"class.v8::internal::compiler::turboshaft::ZoneWithName.543" }
%"class.v8::internal::compiler::turboshaft::ZoneWithName.543" = type { %"class.v8::internal::compiler::ZoneStats::Scope" }
%"class.std::optional.548" = type { %"struct.std::_Optional_base.549" }
%"struct.std::_Optional_base.549" = type { %"struct.std::_Optional_payload.551" }
%"struct.std::_Optional_payload.551" = type { %"struct.std::_Optional_payload.base.557", [7 x i8] }
%"struct.std::_Optional_payload.base.557" = type { %"struct.std::_Optional_payload_base.base.556" }
%"struct.std::_Optional_payload_base.base.556" = type <{ %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::detail::RegisterComponent>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::detail::RegisterComponent>::_Storage" = type { %"struct.v8::internal::compiler::turboshaft::detail::RegisterComponent" }
%"struct.v8::internal::compiler::turboshaft::detail::RegisterComponent" = type { %"struct.v8::internal::compiler::turboshaft::detail::ComponentWithZone.554", ptr }
%"struct.v8::internal::compiler::turboshaft::detail::ComponentWithZone.554" = type { %"class.v8::internal::compiler::turboshaft::ZoneWithName.555" }
%"class.v8::internal::compiler::turboshaft::ZoneWithName.555" = type { %"class.v8::internal::compiler::ZoneStats::Scope" }

$_ZN2v88internal8compiler10turboshaft12PipelineData24InitializeGraphComponentEPNS1_19SourcePositionTableE = comdat any

$_ZN2v88internal8compiler10turboshaft12PipelineDataD2Ev = comdat any

$_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft5GraphEJRNS4_12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEEEEEEPT_DpOT0_ = comdat any

$_ZNSt22_Optional_payload_baseIN2v88internal8compiler10turboshaft6detail16CodegenComponentEE10_M_destroyEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN2v88internal8compiler13CodeGeneratorD2Ev = comdat any

$_ZN2v88internal9AssemblerD2Ev = comdat any

$_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZN2v88internal8compiler10turboshaft27kBuiltinCompilationZoneNameE = comdat any

$_ZN2v88internal8compiler10turboshaft13kTempZoneNameE = comdat any

$_ZN2v88internal8compiler10turboshaft20kCompilationZoneNameE = comdat any

$_ZTAXtlN2v84base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEE = comdat any

@_ZN2v88internal8compiler10turboshaft27kBuiltinCompilationZoneNameE = linkonce_odr hidden constant [25 x i8] c"builtin-compilation-zone\00", comdat, align 16
@_ZN2v88internal8compiler10turboshaft13kTempZoneNameE = linkonce_odr hidden constant [10 x i8] c"temp-zone\00", comdat, align 1
@_ZN2v88internal8compiler10turboshaft20kCompilationZoneNameE = linkonce_odr hidden constant [17 x i8] c"compilation-zone\00", comdat, align 16
@_ZTAXtlN2v84base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEE = linkonce_odr hidden constant %"class.v8::base::tmp::StringLiteral" { %"struct.std::array" { [11 x i8] c"graph-zone\00" } }, comdat
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN2v88internal9AssemblerE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal8compiler10turboshaft32BuildWithTurboshaftAssemblerImplEPNS0_7IsolateENS0_7BuiltinEPFvPNS2_12PipelineDataES4_RNS2_5GraphEPNS0_4ZoneEESt8functionIFPNS1_14CallDescriptorESB_EEPKcRKNS0_16AssemblerOptionsENS0_8CodeKindESt8optionalINS0_11interpreter19BytecodeHandlerDataEE(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(27) %5, i8 noundef zeroext %6, i56 %7) local_unnamed_addr #0 {
_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::ZoneStats", align 8 ; 11 uses
  %9 = alloca %"class.v8::internal::OptimizedCompilationInfo", align 8 ; 6 uses
  %10 = alloca %"class.v8::internal::compiler::turboshaft::PipelineData", align 8 ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 58832
  %i.c = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal8compiler9ZoneStatsC1EPNS0_19AccountingAllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #11
  %i.e = call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull @_ZN2v88internal8compiler10turboshaft27kBuiltinCompilationZoneNameE) #10 ; 3 uses
  call void @_ZN2v88internal24OptimizedCompilationInfoC1ENS_4base6VectorIKcEEPNS0_4ZoneENS0_8CodeKindENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(192) %9, ptr nonnull %4, i64 %i.d, ptr noundef %i.e, i8 noundef zeroext %6, i32 noundef %1) #10
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.a, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit16

bb.a:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit
  %i.g = call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull @_ZN2v88internal8compiler10turboshaft27kBuiltinCompilationZoneNameE) #10
  br label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit16

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit16: ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit, %bb.a
  %.sroa.9.1 = phi ptr [ %i.g, %bb.a ], [ %i.e, %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.9.1, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit16
  call void @_ZSt25__throw_bad_function_callv() #12
  unreachable

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #10, !inline_history !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  store ptr %8, ptr %10, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @_ZN2v88internal8compiler10turboshaft20kCompilationZoneNameE, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %8, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 3, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %9, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNK2v88internal24OptimizedCompilationInfo12GetDebugNameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.466") align 8 %i.t, ptr noundef nonnull align 8 dereferenceable(192) %9) #10
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 144
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 168 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 160
  store i64 0, ptr %i.aa, align 8
  store i8 0, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 184
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 280
  store i8 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 384
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 432
  store i8 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 480
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 488
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 520
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ah, i8 0, i64 25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 192
  store ptr %i.l, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 200
  store i56 %7, ptr %i.ak, align 8
  store i8 1, ptr %i.ac, align 8
  call void @_ZN2v88internal8compiler10turboshaft12PipelineData24InitializeGraphComponentEPNS1_19SourcePositionTableE(ptr noundef nonnull align 8 dereferenceable(536) %10, ptr noundef null)
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 248
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull @_ZN2v88internal8compiler10turboshaft13kTempZoneNameE) #10 ; 3 uses
  call void %2(ptr noundef nonnull %10, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(328) %i.am, ptr noundef %i.an) #10
  %i.ao = call noundef ptr @_ZN2v88internal19ProfileDataFromFile7TryReadEPKc(ptr noundef nonnull %4) #10
  %i.ap = call ptr @_ZN2v88internal8compiler8Pipeline32GenerateCodeForTurboshaftBuiltinEPNS1_10turboshaft12PipelineDataEPNS1_14CallDescriptorENS0_7BuiltinEPKcPKNS0_19ProfileDataFromFileE(ptr noundef nonnull %10, ptr noundef %i.l, i32 noundef %1, ptr noundef nonnull %4, ptr noundef %i.ao) #10 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #12
  unreachable

_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit
  call void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull %i.an) #10
  br label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit, %bb.d
  call void @_ZN2v88internal8compiler10turboshaft12PipelineDataD2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @_ZN2v88internal24OptimizedCompilationInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %.not.i.i.i17 = icmp eq ptr %.sroa.9.1, null
  br i1 %.not.i.i.i17, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit
  call void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull %.sroa.9.1) #10
  br label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm25EEEtlSt5arrayIcLm25EEtlA25_cLc98ELc117ELc105ELc108ELc116ELc105ELc110ELc45ELc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm10EEEtlSt5arrayIcLm10EEtlA10_cLc116ELc101ELc109ELc112ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit, %bb.e
  call void @_ZN2v88internal8compiler9ZoneStatsD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret ptr %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2v88internal8compiler9ZoneStatsC1EPNS0_19AccountingAllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal24OptimizedCompilationInfoC1ENS_4base6VectorIKcEEPNS0_4ZoneENS0_8CodeKindENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64, ptr noundef, i8 noundef zeroext, i32 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft12PipelineData24InitializeGraphComponentEPNS1_19SourcePositionTableE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !6, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3NewINS2_5GraphEJRSB_EEEPT_DpOT0_.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3NewINS2_5GraphEJRSB_EEEPT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull %i.f) #10
  br label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3NewINS2_5GraphEJRSB_EEEPT_DpOT0_.exit

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3NewINS2_5GraphEJRSB_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  store ptr @_ZTAXtlN2v84base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEE, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.m, i8 0, i64 26, i1 false)
  store i8 1, ptr %i.b, align 8
  %i.n = tail call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull @_ZTAXtlN2v84base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEE) #10 ; 2 uses
  store ptr %i.n, ptr %i.k, align 8
  %i.o = tail call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft5GraphEJRNS4_12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  store ptr %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3NewINS2_5GraphEJRSB_EEEPT_DpOT0_.exit
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 2048
  %.not6 = icmp eq i32 %i.t, 0
  br i1 %.not6, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3getEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.j, align 8
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = tail call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef %i.x) #10 ; 2 uses
  store ptr %i.y, ptr %i.k, align 8
  br label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3getEv.exit.i

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3getEv.exit.i: ; preds = %bb.f, %bb.e
  %i.z = phi ptr [ %i.y, %bb.f ], [ %i.u, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = icmp ult i64 %i.ae, 104
  br i1 %i.af, label %bb.g, label %_ZN2v88internal4Zone8AllocateINS0_8compiler15NodeOriginTableEEEPvm.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3getEv.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 noundef 104) #10
  %.pre.i.i.i = load i64, ptr %i.ac, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler15NodeOriginTableEEEPvm.exit.i.i

_ZN2v88internal4Zone8AllocateINS0_8compiler15NodeOriginTableEEEPvm.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3getEv.exit.i
  %i.ag = phi i64 [ %.pre.i.i.i, %bb.g ], [ %i.ad, %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3getEv.exit.i ] ; 2 uses
  %i.ah = add i64 %i.ag, 104
  store i64 %i.ah, ptr %i.ac, align 8
  %i.ai = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.h, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3NewINS1_15NodeOriginTableEJRSB_EEEPT_DpOT0_.exit

bb.h:                                             ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler15NodeOriginTableEEEPvm.exit.i.i
  %i.ak = load ptr, ptr %i.j, align 8
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = tail call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef %i.al) #10 ; 2 uses
  store ptr %i.am, ptr %i.k, align 8
  br label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3NewINS1_15NodeOriginTableEJRSB_EEEPT_DpOT0_.exit

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3NewINS1_15NodeOriginTableEJRSB_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler15NodeOriginTableEEEPvm.exit.i.i, %bb.h
  %i.an = phi ptr [ %i.am, %bb.h ], [ %i.ai, %_ZN2v88internal4Zone8AllocateINS0_8compiler15NodeOriginTableEEEPvm.exit.i.i ]
  %i.ao = inttoptr i64 %i.ag to ptr               ; 2 uses
  tail call void @_ZN2v88internal8compiler15NodeOriginTableC1EPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(104) %i.ao, ptr noundef %i.an) #10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.ao, ptr %i.ap, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3NewINS1_15NodeOriginTableEJRSB_EEEPT_DpOT0_.exit, %bb.d, %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEE3NewINS2_5GraphEJRSB_EEEPT_DpOT0_.exit
  ret void
}

declare ptr @_ZN2v88internal8compiler8Pipeline32GenerateCodeForTurboshaftBuiltinEPNS1_10turboshaft12PipelineDataEPNS1_14CallDescriptorENS0_7BuiltinEPKcPKNS0_19ProfileDataFromFileE(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal19ProfileDataFromFile7TryReadEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft12PipelineDataD2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail17RegisterComponentELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail17RegisterComponentELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull %i.e) #10
  br label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail17RegisterComponentELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail17RegisterComponentELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail20InstructionComponentELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail17RegisterComponentELb0ELb0EED2Ev.exit
  store i8 0, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i1, label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail20InstructionComponentELb0ELb0EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull %i.l) #10
  br label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail20InstructionComponentELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail20InstructionComponentELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail17RegisterComponentELb0ELb0EED2Ev.exit, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.p = load i8, ptr %i.o, align 8, !range !6, !noundef !7
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail16CodegenComponentELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail20InstructionComponentELb0ELb0EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZNSt22_Optional_payload_baseIN2v88internal8compiler10turboshaft6detail16CodegenComponentEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %i.r) #10
  br label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail16CodegenComponentELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail16CodegenComponentELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail20InstructionComponentELb0ELb0EED2Ev.exit, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !6, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail14GraphComponentELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail16CodegenComponentELb0ELb0EED2Ev.exit
  store i8 0, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i2, label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail14GraphComponentELb0ELb0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull %i.w) #10
  br label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail14GraphComponentELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail14GraphComponentELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail16CodegenComponentELb0ELb0EED2Ev.exit, %bb.g, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail14GraphComponentELb0ELb0EED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft6detail14GraphComponentELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.af, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2v88internal8compiler12JSHeapBrokerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #10, !inline_history !10
  %i.ap = load ptr, ptr %i.ag, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #10, !inline_history !10
  br label %_ZNSt12__shared_ptrIN2v88internal8compiler12JSHeapBrokerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.as = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ak, %bb.l ], [ %i.au, %bb.m ]
  %i.av = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.av, label %bb.n, label %_ZNSt12__shared_ptrIN2v88internal8compiler12JSHeapBrokerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #10
  br label %_ZNSt12__shared_ptrIN2v88internal8compiler12JSHeapBrokerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal8compiler12JSHeapBrokerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt12__shared_ptrIN2v88internal8compiler12JSHeapBrokerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ax) #13
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2v88internal8compiler12JSHeapBrokerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i3, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm17EEEtlSt5arrayIcLm17EEtlA17_cLc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noundef nonnull %i.az) #10
  br label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm17EEEtlSt5arrayIcLm17EEtlA17_cLc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm17EEEtlSt5arrayIcLm17EEtlA17_cLc99ELc111ELc109ELc112ELc105ELc108ELc97ELc116ELc105ELc111ELc110ELc45ELc122ELc111ELc110ELc101EEEEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.o
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal24OptimizedCompilationInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler9ZoneStatsD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare void @_ZNK2v88internal24OptimizedCompilationInfo12GetDebugNameEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.466") align 8, ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft5GraphEJRNS4_12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 328
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4Zone8AllocateINS0_8compiler10turboshaft5GraphEEEPvm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 328) #10
  %.pre.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler10turboshaft5GraphEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler10turboshaft5GraphEEEPvm.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 23 uses
  %i.i = add i64 %i.g, 328
  store i64 %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit

bb.c:                                             ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler10turboshaft5GraphEEEPvm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %1, align 8
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef %i.o) #10 ; 2 uses
  store ptr %i.p, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit

_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit: ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler10turboshaft5GraphEEEPvm.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %_ZN2v88internal4Zone8AllocateINS0_8compiler10turboshaft5GraphEEEPvm.exit ] ; 12 uses
  store ptr %i.q, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %i.w = icmp ult i64 %i.v, 16384
  br i1 %i.w, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef 16384) #10
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit
  %i.x = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.u, %_ZN2v88internal8compiler10turboshaft12ZoneWithNameIXtlNS_4base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEEEcvPNS0_4ZoneEEv.exit ] ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = add i64 %i.x, 16384
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.y, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = icmp ult i64 %i.ah, 2048
  br i1 %i.ai, label %bb.e, label %_ZN2v88internal8compiler10turboshaft5GraphC2EPNS0_4ZoneEm.exit, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 noundef 2048) #10
  %.pre.i.i4.i.i = load i64, ptr %i.af, align 8
  br label %_ZN2v88internal8compiler10turboshaft5GraphC2EPNS0_4ZoneEm.exit

_ZN2v88internal8compiler10turboshaft5GraphC2EPNS0_4ZoneEm.exit: ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, %bb.e
  %i.aj = phi i64 [ %.pre.i.i4.i.i, %bb.e ], [ %i.ag, %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i ] ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = add i64 %i.aj, 2048
  store i64 %i.al, ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.ak, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.ab, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16384
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ao, ptr %i.ap, align 8
end_hunk_0
