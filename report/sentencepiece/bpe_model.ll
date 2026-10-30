Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/bpe_model?download=true
inline.NumInlined: 1047
inline.NumDeleted: 586
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
$_ZNK13sentencepiece14ModelInterface12GetPieceSizeEv = comdat any

$_ZNK13sentencepiece14ModelInterface8GetScoreEi = comdat any

$_ZNK13sentencepiece14ModelInterface9IsUnknownEi = comdat any

$_ZNK13sentencepiece14ModelInterface9IsControlEi = comdat any

$_ZNK13sentencepiece14ModelInterface8IsUnusedEi = comdat any

$_ZNK13sentencepiece14ModelInterface13IsUserDefinedEi = comdat any

$_ZNK13sentencepiece14ModelInterface6IsByteEi = comdat any

$_ZNK13sentencepiece14ModelInterface19ByteFallbackEnabledEv = comdat any

$_ZNK13sentencepiece14ModelInterface23VerifyOutputsEquivalentESt17basic_string_viewIcSt11char_traitsIcEES4_ = comdat any

$__clang_call_terminate = comdat any

$_ZSt16__do_uninit_copyIPKSt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEPS9_ET0_T_SE_SD_ = comdat any

$_ZSt8_DestroyIPSt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEEvT_SB_ = comdat any

$_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE16try_emplace_implIRKS7_JEEES8_INS1_12raw_hash_setISA_JEE8iteratorEbEOT_DpOT0_ = comdat any

$_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE28find_or_prepare_insert_largeIS7_EES8_INSB_8iteratorEbERKT_ = comdat any

$_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmPKvPvm = comdat any

$_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE19transfer_n_slots_fnEPvSC_SC_m = comdat any

$_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSH_PFvSH_hmmE = comdat any

$_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm = comdat any

$_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE4findIS7_EENSB_8iteratorERKT_ = comdat any

$_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE18GetPolicyFunctionsEvE5value = comdat any

$_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE = comdat any

@_ZTVN13sentencepiece3bpe5ModelE = constant { [27 x ptr] } { [27 x ptr] [ptr null, ptr @_ZTIN13sentencepiece3bpe5ModelE, ptr @_ZN13sentencepiece3bpe5ModelD1Ev, ptr @_ZN13sentencepiece3bpe5ModelD0Ev, ptr @_ZNK13sentencepiece14ModelInterface6statusEv, ptr @_ZNK13sentencepiece14ModelInterface11model_protoEv, ptr @_ZNK13sentencepiece14ModelInterface14prefix_matcherEv, ptr @_ZNK13sentencepiece3bpe5Model6EncodeESt17basic_string_viewIcSt11char_traitsIcEE, ptr @_ZNK13sentencepiece14ModelInterface11NBestEncodeESt17basic_string_viewIcSt11char_traitsIcEEi, ptr @_ZNK13sentencepiece3bpe5Model12SampleEncodeESt17basic_string_viewIcSt11char_traitsIcEEf, ptr @_ZNK13sentencepiece14ModelInterface20SampleEncodeAndScoreESt17basic_string_viewIcSt11char_traitsIcEEfibb, ptr @_ZNK13sentencepiece14ModelInterface16CalculateEntropyESt17basic_string_viewIcSt11char_traitsIcEEf, ptr @_ZNK13sentencepiece3bpe5Model23IsSampleEncodeAvailableEv, ptr @_ZNK13sentencepiece3bpe5Model22IsNBestEncodeAvailableEv, ptr @_ZNK13sentencepiece14ModelInterface31IsSampleEncodeAndScoreAvailableEv, ptr @_ZNK13sentencepiece14ModelInterface27IsCalculateEntropyAvailableEv, ptr @_ZNK13sentencepiece14ModelInterface9PieceToIdESt17basic_string_viewIcSt11char_traitsIcEE, ptr @_ZNK13sentencepiece14ModelInterface9IdToPieceB5cxx11Ei, ptr @_ZNK13sentencepiece14ModelInterface12GetPieceSizeEv, ptr @_ZNK13sentencepiece14ModelInterface8GetScoreEi, ptr @_ZNK13sentencepiece14ModelInterface9IsUnknownEi, ptr @_ZNK13sentencepiece14ModelInterface9IsControlEi, ptr @_ZNK13sentencepiece14ModelInterface8IsUnusedEi, ptr @_ZNK13sentencepiece14ModelInterface13IsUserDefinedEi, ptr @_ZNK13sentencepiece14ModelInterface6IsByteEi, ptr @_ZNK13sentencepiece14ModelInterface19ByteFallbackEnabledEv, ptr @_ZNK13sentencepiece14ModelInterface23VerifyOutputsEquivalentESt17basic_string_viewIcSt11char_traitsIcEES4_] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTIN13sentencepiece3bpe5ModelE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN13sentencepiece3bpe5ModelE, ptr @_ZTIN13sentencepiece14ModelInterfaceE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN13sentencepiece3bpe5ModelE = constant [28 x i8] c"N13sentencepiece3bpe5ModelE\00", align 1
@_ZTIN13sentencepiece14ModelInterfaceE = external constant ptr
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"src/model_interface.h\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Not implemented.\00", align 1
@_ZN13sentencepiece30_TrainerSpec_default_instance_E = external local_unnamed_addr global %"class.sentencepiece::TrainerSpecDefaultTypeInternal", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZN4absl12lts_2026052618container_internal11kSooControlE = external constant [2 x i8], align 1
@_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE18GetPolicyFunctionsEvE5value = linkonce_odr constant %"struct.absl::lts_20260526::container_internal::PolicyFunctions" { i32 16, i32 48, i32 48, i16 8, i8 0, i8 1, ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmPKvPvm, ptr @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE19transfer_n_slots_fnEPvSC_SC_m, ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSH_PFvSH_hmmE }, comdat, align 8
@_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE = linkonce_odr local_unnamed_addr constant [5 x i64] [i64 2611923443488327891, i64 1376283091369227076, i64 -6626703657320631856, i64 589684135938649225, i64 4983270260364809079], comdat, align 64

@_ZN13sentencepiece3bpe5ModelC1ERKNS_10ModelProtoE = unnamed_addr alias void (ptr, ptr), ptr @_ZN13sentencepiece3bpe5ModelC2ERKNS_10ModelProtoE
@_ZN13sentencepiece3bpe5ModelD1Ev = unnamed_addr alias void (ptr), ptr @_ZN13sentencepiece3bpe5ModelD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN13sentencepiece3bpe5ModelC2ERKNS_10ModelProtoE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 32), (48, 56), (72, 76), (80, 88)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.d, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 200) (i8, ptr @_ZTVN13sentencepiece3bpe5ModelE, i64 16), ptr %0, align 8, !tbaa !32
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  invoke void @_ZN13sentencepiece14ModelInterface16InitializePiecesEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN13sentencepiece14ModelInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #22
  resume { ptr, i32 } %i.f
}

declare void @_ZN13sentencepiece14ModelInterface16InitializePiecesEb(ptr noundef nonnull align 8 dereferenceable(88), i1 noundef zeroext) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN13sentencepiece14ModelInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN13sentencepiece3bpe5ModelD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN13sentencepiece14ModelInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN13sentencepiece3bpe5ModelD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN13sentencepiece3bpe5ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK13sentencepiece3bpe5Model12SampleEncodeESt17basic_string_viewIcSt11char_traitsIcEEf(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2, ptr %3, float noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.91", align 8     ; 4 uses
  %6 = alloca %"class.absl::lts_20260526::Status", align 8 ; 5 uses
  %7 = alloca %"class.std::vector.9", align 8     ; 20 uses
  %8 = alloca %"struct.sentencepiece::bpe::(anonymous namespace)::Symbol", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20260526::flat_hash_map.27", align 8 ; 13 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %11 = alloca %"struct.std::pair", align 8       ; 6 uses
  %12 = alloca %"class.std::priority_queue", align 8 ; 10 uses
  %13 = alloca %class.anon, align 8               ; 9 uses
  %14 = alloca %class.anon.30, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.d = load i64, ptr %6, align 8, !tbaa !30     ; 3 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.a
  %i.f = icmp eq i64 %2, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.f, label %bb.d, label %bb.e

.critedge:                                        ; preds = %bb.a
  %i.g = trunc i64 %i.d to i1
  br i1 %i.g, label %_ZN4absl12lts_202605266StatusD2Ev.exit144, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.h = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit144 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit144:        ; preds = %.critedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit144, %_ZN4absl12lts_202605266StatusD2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.bq

bb.e:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.k = icmp ugt i64 %2, 288230376151711743
  br i1 %i.k, label %.invoke, label %_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE11_M_allocateEm.exit.i

.invoke:                                          ; preds = %bb.n, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.cont unwind label %.thread

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.m = shl nuw nsw i64 %2, 5
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #26
          to label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE7reserveEm.exit unwind label %.thread ; 3 uses

_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE11_M_allocateEm.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.n, ptr %7, align 8, !tbaa !36
  store ptr %i.n, ptr %i.o, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %2
  store ptr %i.p, ptr %i.l, align 8, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE7reserveEm.exit, %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %.081255.a = phi i32 [ 0, %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE7reserveEm.exit ], [ %i.ac, %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 2 uses
  %.sroa.8.0254 = phi ptr [ %3, %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE7reserveEm.exit ], [ %i.z, %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 3 uses
  %.sroa.0204.0253 = phi i64 [ %2, %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE7reserveEm.exit ], [ %i.aa, %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.w = invoke noundef i32 @_ZNK13sentencepiece10normalizer13PrefixMatcher11PrefixMatchESt17basic_string_viewIcSt11char_traitsIcEEPb(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 %.sroa.0204.0253, ptr %.sroa.8.0254, ptr noundef nonnull %i.s)
          to label %bb.g unwind label %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  store i64 %i.x, ptr %i.q, align 8, !tbaa !38
  store ptr %.sroa.8.0254, ptr %.sroa.4203.0..sroa_idx, align 8, !tbaa !40
  %i.y = add nsw i32 %.081255.a, -1
  store i32 %i.y, ptr %8, align 8, !tbaa !115
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.8.0254, i64 %i.x
  %i.aa = sub i64 %.sroa.0204.0253, %i.x          ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0                    ; 2 uses
  %i.ac = add nuw nsw i32 %.081255.a, 1           ; 2 uses
  %i.ad = select i1 %i.ab, i32 -1, i32 %i.ac
  store i32 %i.ad, ptr %i.t, align 4, !tbaa !116
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !113 ; 6 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !118
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.u, align 8, !tbaa !113
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %.val.i.i = load ptr, ptr %7, align 8, !tbaa !36 ; 5 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %.val.i.i to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775776
  br i1 %i.ak, label %bb.j, label %_ZNKSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc146 unwind label %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.al = ashr exact i64 %i.aj, 5                 ; 3 uses
  %i.am = icmp eq ptr %i.ae, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.am, i64 1, i64 %i.al
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.al
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 288230376151711743)
  %i.aq = select i1 %i.ao, i64 288230376151711743, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 5
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #26
          to label %.noexc147 unwind label %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc147:                                        ; preds = %_ZNKSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !118
  br i1 %i.am, label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc147, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %i.as, %.noexc147 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %.noexc147 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !118, !alias.scope !119
  %i.au = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.ae
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !106

_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc147
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.as, %.noexc147 ], [ %i.av, %.lr.ph.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i27.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.aj) #23
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i
  store ptr %i.as, ptr %7, align 8, !tbaa !36
  store ptr %i.aw, ptr %i.u, align 8, !tbaa !113
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !114
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.h
  %.val110258 = phi ptr [ %i.aw, %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ag, %bb.h ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.ab, label %bb.l, label %bb.f, !llvm.loop !107

.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.f, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit188

bb.l:                                             ; preds = %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %.val115 = load ptr, ptr %7, align 8            ; 6 uses
  %i.ay = icmp eq ptr %.val115, %.val110258
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.az = ptrtoint ptr %.val110258 to i64
  %i.ba = ptrtoint ptr %.val115 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = ashr exact i64 %i.bb, 5                 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 576460752303423487
  br i1 %i.bd, label %.invoke, label %_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.be = ashr exact i64 %i.bb, 1
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #26
          to label %_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %.thread ; 5 uses

_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EE11_M_allocateEm.exit.i
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i64 0, ptr %9, align 8
  %i.bh = icmp ugt i64 %i.bb, 32
  br i1 %i.bh, label %.lr.ph, label %.loopexit225

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.ab
  %.val110298 = phi ptr [ %.val110258, %.lr.ph ], [ %.val110, %bb.ab ] ; 2 uses
  %.val109296 = phi ptr [ %.val115, %.lr.ph ], [ %.val109, %bb.ab ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %.083264 = phi ptr [ %.val115, %.lr.ph ], [ %.082265, %bb.ab ] ; 6 uses
  %.085262 = phi i32 [ 0, %.lr.ph ], [ %i.eh, %bb.ab ]
  %.sroa.0198.0261 = phi ptr [ %i.bf, %.lr.ph ], [ %.sroa.0198.2, %bb.ab ] ; 11 uses
  %.sroa.12.0260 = phi ptr [ %i.bf, %.lr.ph ], [ %.sroa.12.2, %bb.ab ] ; 11 uses
  %.sroa.19.0259 = phi ptr [ %i.bg, %.lr.ph ], [ %.sroa.19.2, %bb.ab ] ; 7 uses
  %.082265 = getelementptr inbounds nuw i8, ptr %.083264, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.083264, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !46, !range !47, !noundef !48
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %.083264, i64 40
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !46, !range !47, !noundef !48
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ab, label %bb.q

.thread:                                          ; preds = %.invoke, %_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EE11_M_allocateEm.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit188

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.bt = getelementptr inbounds nuw i8, ptr %.083264, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.083264, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !49 ; 2 uses
  %i.bw = load i64, ptr %i.bt, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %.083264, i64 48 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !50
  %i.bz = add i64 %i.by, %i.bw                    ; 2 uses
  store i64 %i.bz, ptr %10, align 8, !tbaa !50
  store ptr %i.bv, ptr %i.bi, align 8, !tbaa !49
  %i.ca = invoke noundef i32 @_ZNK13sentencepiece14ModelInterface19PieceToIdNoReservedESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %i.bz, ptr %i.bv)
          to label %bb.r unwind label %.loopexit226 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.cb = load i32, ptr %i.bj, align 8, !tbaa !29
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = sext i32 %i.ca to i64                   ; 3 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 60
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !68
  switch i32 %i.cl, label %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit.thread [
    i32 1, label %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit
    i32 4, label %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit
    i32 5, label %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit
  ]

_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit: ; preds = %bb.s, %bb.s, %bb.s
  %.not.i154 = icmp eq ptr %.sroa.12.0260, %.sroa.19.0259
  br i1 %.not.i154, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.12.0260, i8 0, i64 16, i1 false)
  br label %bb.x

bb.u:                                             ; preds = %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit
  %i.cm = ptrtoint ptr %.sroa.12.0260 to i64
  %i.cn = ptrtoint ptr %.sroa.0198.0261 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775792
  br i1 %i.cp, label %bb.v, label %_ZNKSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_0
begin_hunk_1_@_ZNK13sentencepiece3bpe5Model12SampleEncodeESt17basic_string_viewIcSt11char_traitsIcEEf:bb.a
          to label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i.i.i unwind label %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  invoke void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.ha, ptr noundef nonnull %i.fe)
          to label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i.i.i unwind label %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i.i.i: ; preds = %bb.au, %bb.at, %bb.ar
  %i.hb = load i64, ptr %i.ff, align 8, !tbaa !127 ; 2 uses
  %i.hc = add i64 %i.hb, 1                        ; 2 uses
  store i64 %i.hc, ptr %i.ff, align 8, !tbaa !127
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.hb
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !38
  %i.hf = and i64 %i.he, 4294967295               ; 2 uses
  %.not.i.i.i.i.i174 = icmp eq i64 %i.hf, %i.gw
  br i1 %.not.i.i.i.i.i174, label %bb.av, label %_ZN4absl12lts_202605269BernoulliIRNS0_6BitGenEEEbOT_d.exit, !prof !87

bb.av:                                            ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i.i.i
  %i.hg = uitofp nneg i64 %i.gw to double
  %i.hh = fmul nnan double %i.hg, f0x3DF0000000000000
  %i.hi = fsub double %.015.i.i.i.i.i, %i.hh
  %i.hj = fmul double %i.hi, f0x41F0000000000000  ; 2 uses
  %i.hk = fcmp une double %i.hj, 0.000000e+00
  br i1 %i.hk, label %bb.ar, label %_ZN4absl12lts_202605269BernoulliIRNS0_6BitGenEEEbOT_d.exit.thread, !llvm.loop !110

_ZN4absl12lts_202605269BernoulliIRNS0_6BitGenEEEbOT_d.exit: ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i.i.i
  %i.hl = icmp ult i64 %i.hf, %i.gw
  br i1 %i.hl, label %bb.az, label %_ZN4absl12lts_202605269BernoulliIRNS0_6BitGenEEEbOT_d.exit.thread, !llvm.loop !111

_ZN4absl12lts_202605269BernoulliIRNS0_6BitGenEEEbOT_d.exit.thread: ; preds = %bb.av, %_ZN4absl12lts_202605269BernoulliIRNS0_6BitGenEEEbOT_d.exit, %bb.ap
  %.val121 = load ptr, ptr %7, align 8, !tbaa !36 ; 3 uses
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %.val121, i64 %i.fk ; 3 uses
  %i.hn = getelementptr inbounds nuw [32 x i8], ptr %.val121, i64 %i.fr ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !50
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !50
  %i.hs = add i64 %i.hr, %i.hp
  store i64 %i.hs, ptr %i.ho, align 8, !tbaa !38
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !116 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 4 ; 2 uses
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !116
  %i.hw = icmp sgt i32 %i.hu, -1
  br i1 %i.hw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4absl12lts_202605269BernoulliIRNS0_6BitGenEEEbOT_d.exit.thread
  %i.hx = zext nneg i32 %i.hu to i64
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %.val121, i64 %i.hx
  store i32 %i.fj, ptr %i.hy, align 8, !tbaa !115
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN4absl12lts_202605269BernoulliIRNS0_6BitGenEEEbOT_d.exit.thread
  store i64 0, ptr %i.hq, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr @.str, ptr %.sroa.4.0..sroa_idx193, align 8, !tbaa !40
  %i.hz = load i32, ptr %i.hm, align 8, !tbaa !115
  invoke fastcc void @"_ZZNK13sentencepiece3bpe5Model12SampleEncodeESt17basic_string_viewIcSt11char_traitsIcEEfENK3$_0clEii"(ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %i.hz, i32 noundef %i.fj)
          to label %bb.ay unwind label %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  %i.ia = load i32, ptr %i.hv, align 4, !tbaa !116
  invoke fastcc void @"_ZZNK13sentencepiece3bpe5Model12SampleEncodeESt17basic_string_viewIcSt11char_traitsIcEEfENK3$_0clEii"(ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %i.fj, i32 noundef %i.ia)
          to label %bb.az unwind label %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %_ZNSt14priority_queueIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESt6vectorIS3_SaIS3_EENS2_20SymbolPairComparatorEE3popEv.exit, %_ZN4absl12lts_202605269BernoulliIRNS0_6BitGenEEEbOT_d.exit, %bb.ay
  %.val132 = load ptr, ptr %12, align 8, !tbaa !85 ; 3 uses
  %.val133 = load ptr, ptr %i.ek, align 8, !tbaa !85 ; 2 uses
  %i.ib = icmp eq ptr %.val132, %.val133
  br i1 %i.ib, label %._crit_edge, label %bb.ai

.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.at, %bb.au, %bb.ay, %bb.ax, %bb.ag
  %lpad.loopexit.split-lp367 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %.val136 = load ptr, ptr %12, align 8           ; 3 uses
  %.not.i.i.i.i177 = icmp eq ptr %.val136, null
  br i1 %.not.i.i.i.i177, label %.thread330, label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val137 = load ptr, ptr %i.el, align 8
  %i.ic = ptrtoint ptr %.val137 to i64
  %i.id = ptrtoint ptr %.val136 to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %.val136, i64 noundef %i.ie) #23
  br label %.thread330

._crit_edge:                                      ; preds = %bb.az, %bb.ah
  %.val132.lcssa = phi ptr [ %.val132268, %bb.ah ], [ %.val132, %bb.az ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %.not.i.i.i.i178 = icmp eq ptr %.val132.lcssa, null
  br i1 %.not.i.i.i.i178, label %_ZNSt14priority_queueIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESt6vectorIS3_SaIS3_EENS2_20SymbolPairComparatorEED2Ev.exit179, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  %.val139 = load ptr, ptr %i.el, align 8
  %i.if = ptrtoint ptr %.val139 to i64
  %i.ig = ptrtoint ptr %.val132.lcssa to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %.val132.lcssa, i64 noundef %i.ih) #23
  br label %_ZNSt14priority_queueIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESt6vectorIS3_SaIS3_EENS2_20SymbolPairComparatorEED2Ev.exit179

_ZNSt14priority_queueIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESt6vectorIS3_SaIS3_EENS2_20SymbolPairComparatorEED2Ev.exit179: ; preds = %._crit_edge, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %.val107.pre = load ptr, ptr %7, align 8, !tbaa !36
  %.val108.pre = load ptr, ptr %i.u, align 8, !tbaa !113
  br label %bb.bc

.thread330:                                       ; preds = %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit188

bb.bc:                                            ; preds = %_ZNSt14priority_queueIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESt6vectorIS3_SaIS3_EENS2_20SymbolPairComparatorEED2Ev.exit179, %.loopexit225
  %.val108 = phi ptr [ %.val108.pre, %_ZNSt14priority_queueIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESt6vectorIS3_SaIS3_EENS2_20SymbolPairComparatorEED2Ev.exit179 ], [ %.val108303, %.loopexit225 ] ; 2 uses
  %.val107 = phi ptr [ %.val107.pre, %_ZNSt14priority_queueIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESt6vectorIS3_SaIS3_EENS2_20SymbolPairComparatorEED2Ev.exit179 ], [ %.val107301, %.loopexit225 ] ; 3 uses
  %.sroa.19.5 = phi ptr [ null, %_ZNSt14priority_queueIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESt6vectorIS3_SaIS3_EENS2_20SymbolPairComparatorEED2Ev.exit179 ], [ %.sroa.19.4, %.loopexit225 ] ; 2 uses
  %.sroa.0198.5 = phi ptr [ null, %_ZNSt14priority_queueIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESt6vectorIS3_SaIS3_EENS2_20SymbolPairComparatorEED2Ev.exit179 ], [ %.sroa.0198.4, %.loopexit225 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %1, ptr %14, align 8, !tbaa !89
  %i.ii = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %9, ptr %i.ii, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ij = ptrtoint ptr %.val108 to i64
  %i.ik = ptrtoint ptr %.val107 to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = ashr exact i64 %i.il, 5                 ; 3 uses
  %i.in = icmp ugt i64 %i.im, 384307168202282325
  br i1 %i.in, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc182 unwind label %.loopexit.split-lp.thread

.noexc182:                                        ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not326 = icmp eq ptr %.val108, %.val107
  br i1 %.not326, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit.preheader, label %_ZNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.be
  %i.ip = mul nuw nsw i64 %i.im, 24
  %i.iq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #26
          to label %_ZNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %.loopexit.split-lp.thread ; 3 uses

_ZNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_M_allocateEm.exit.i
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iq, ptr %0, align 8, !tbaa !92
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !93
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %i.im
  store ptr %i.is, ptr %i.io, align 8, !tbaa !94
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit.preheader

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit.preheader: ; preds = %bb.be, %_ZNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE13_M_deallocateEPS5_m.exit.i
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit.preheader, %bb.bi
  %.val117306 = phi ptr [ %.val117, %bb.bi ], [ %.val107, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit.preheader ] ; 4 uses
  %.080274 = phi i32 [ %i.jk, %bb.bi ], [ 0, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit.preheader ] ; 4 uses
  %i.it = icmp sgt i32 %.080274, -1
  br i1 %i.it, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit
  %.val106 = load ptr, ptr %i.u, align 8, !tbaa !113
  %i.iu = ptrtoint ptr %.val106 to i64
  %i.iv = ptrtoint ptr %.val117306 to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = lshr exact i64 %i.iw, 5
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = icmp slt i32 %.080274, %i.iy
  br i1 %i.iz, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ja = zext nneg i32 %.080274 to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %.val117306, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.jc, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !40
  invoke fastcc void @"_ZZNK13sentencepiece3bpe5Model12SampleEncodeESt17basic_string_viewIcSt11char_traitsIcEEfENK3$_1clIS6_EEvRT_S5_PSt6vectorISt4pairIS5_iESaISC_EEi"(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %0, i32 noundef 0)
          to label %._crit_edge305 unwind label %.loopexit.split-lp

._crit_edge305:                                   ; preds = %bb.bg
  %.val117.pre = load ptr, ptr %7, align 8, !tbaa !36
  br label %bb.bi

.loopexit.split-lp.thread:                        ; preds = %bb.bd, %_ZNSt12_Vector_baseISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp275 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.bg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !92    ; 3 uses
  %.not.i.i.i184 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i184, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !94
  %15 = ptrtoint ptr %i.je to i64
  %i.jf = ptrtoint ptr %.pre to i64
  %i.jg = sub i64 %15, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.jg) #23
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit: ; preds = %.loopexit.split-lp.thread, %.loopexit.split-lp, %bb.bh
  %lpad.phi329 = phi { ptr, i32 } [ %lpad.loopexit.split-lp275, %.loopexit.split-lp.thread ], [ %lpad.loopexit, %.loopexit.split-lp ], [ %lpad.loopexit, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bm

bb.bi:                                            ; preds = %._crit_edge305, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit, %bb.bf
  %.val117 = phi ptr [ %.val117.pre, %._crit_edge305 ], [ %.val117306, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit ], [ %.val117306, %bb.bf ] ; 2 uses
  %i.jh = sext i32 %.080274 to i64
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %.val117, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !116 ; 2 uses
  %.not = icmp eq i32 %i.jk, -1
  br i1 %.not, label %bb.bj, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE7reserveEm.exit, !llvm.loop !112

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.jl = load i64, ptr %9, align 8               ; 2 uses
  %i.jm = and i64 %i.jl, 255                      ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.jm      ; 4 uses
  %i.jn = add nsw i64 %notmask.i.i.i.i.i, 281474976710655
  %i.jo = or i64 %i.jn, %notmask.i.i.i.i.i
  %i.jp = icmp eq i64 %i.jo, -1
  call void @llvm.assume(i1 %i.jp)
  %i.jq = icmp samesign ugt i64 %notmask.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.jq)
  %i.jr = icmp eq i64 %i.jm, 0
  br i1 %i.jr, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEED2Ev.exit, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE7deallocEv.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE7deallocEv.exit.i.i: ; preds = %bb.bj
  %i.js = xor i64 %notmask.i.i.i.i.i, -1
  %i.jt = and i64 %i.jl, 65536
  %.not.i.i.i.i.i185 = icmp ne i64 %i.jt, 0
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ju, align 8, !tbaa !72
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.js, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i185)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEED2Ev.exit unwind label %bb.bk

bb.bk:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE7deallocEv.exit.i.i
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #24
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEED2Ev.exit: ; preds = %bb.bj, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEE7deallocEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.not.i.i.i186 = icmp eq ptr %.sroa.0198.5, null
  br i1 %.not.i.i.i186, label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exitthread-pre-split, label %bb.bl

bb.bl:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEED2Ev.exit
  %i.jx = ptrtoint ptr %.sroa.19.5 to i64
  %i.jy = ptrtoint ptr %.sroa.0198.5 to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0198.5, i64 noundef %i.jz) #23
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exitthread-pre-split

bb.bm:                                            ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit, %bb.ac
  %.sroa.19.6 = phi ptr [ %.sroa.19.3, %bb.ac ], [ %.sroa.19.5, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit ]
  %.sroa.0198.6 = phi ptr [ %.sroa.0198.3, %bb.ac ], [ %.sroa.0198.5, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit ] ; 3 uses
  %.pn97.pn.pn = phi { ptr, i32 } [ %.pn97.pn, %bb.ac ], [ %lpad.phi329, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit ] ; 2 uses
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.not.i.i.i187 = icmp eq ptr %.sroa.0198.6, null
  br i1 %.not.i.i.i187, label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit188, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ka = ptrtoint ptr %.sroa.19.6 to i64
  %i.kb = ptrtoint ptr %.sroa.0198.6 to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0198.6, i64 noundef %i.kc) #23
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit188

_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exitthread-pre-split: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEESt4pairIS7_S7_EEEJEED2Ev.exit, %bb.bl
  %.val142.pr = load ptr, ptr %7, align 8
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit

_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exitthread-pre-split, %bb.m
  %.val142 = phi ptr [ %.val142.pr, %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exitthread-pre-split ], [ %.val115, %bb.m ] ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %.val142, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit
  %.val143 = load ptr, ptr %i.l, align 8
  %i.kd = ptrtoint ptr %.val143 to i64
  %i.ke = ptrtoint ptr %.val142 to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %.val142, i64 noundef %i.kf) #23
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EED2Ev.exit

_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.bq

_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit188: ; preds = %.thread330, %bb.bn, %bb.bm, %.thread, %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn103.pn = phi { ptr, i32 } [ %.pn97.pn.pn, %bb.bn ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bs, %.thread ], [ %.pn97.pn.pn, %bb.bm ], [ %lpad.loopexit.split-lp367, %.thread330 ]
  %.val140 = load ptr, ptr %7, align 8            ; 3 uses
  %.not.i.i.i190 = icmp eq ptr %.val140, null
  br i1 %.not.i.i.i190, label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EED2Ev.exit191, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit188
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val141 = load ptr, ptr %i.kg, align 8
  %i.kh = ptrtoint ptr %.val141 to i64
  %i.ki = ptrtoint ptr %.val140 to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %.val140, i64 noundef %i.kj) #23
  br label %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EED2Ev.exit191

_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EED2Ev.exit191: ; preds = %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_110SymbolPairESaIS3_EED2Ev.exit188, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn103.pn

bb.bq:                                            ; preds = %_ZNSt6vectorIN13sentencepiece3bpe12_GLOBAL__N_16SymbolESaIS3_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare noundef i32 @_ZNK13sentencepiece10normalizer13PrefixMatcher11PrefixMatchESt17basic_string_viewIcSt11char_traitsIcEEPb(ptr noundef nonnull align 8 dereferenceable(8), i64, ptr, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare noundef i32 @_ZNK13sentencepiece14ModelInterface19PieceToIdNoReservedESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88), i64, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN13sentencepiece6random18GetRandomGeneratorEv() local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZNK13sentencepiece3bpe5Model12SampleEncodeESt17basic_string_viewIcSt11char_traitsIcEEfENK3$_0clEii"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.91", align 8     ; 4 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"struct.std::pair", align 8        ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 3 uses
  %i.b = icmp eq i32 %1, -1
  %i.c = icmp eq i32 %2, -1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130, !nonnull !48, !align !95
  %i.f = sext i32 %1 to i64
  %.val23 = load ptr, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.val23, i64 %i.f ; 3 uses
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.val23, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !46, !range !47, !noundef !48
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i8, ptr %i.m, align 8, !range !47
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond22 = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond22, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49   ; 2 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50
  %i.v = add i64 %i.u, %i.s                       ; 3 uses
  store i64 %i.v, ptr %4, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.w, align 8, !tbaa !49
  %i.x = tail call noundef i32 @_ZNK13sentencepiece14ModelInterface19PieceToIdNoReservedESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 %i.v, ptr %i.r) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !29
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = sext i32 %i.x to i64                    ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !68
  switch i32 %i.ak, label %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit.thread [
    i32 1, label %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit
    i32 4, label %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit
    i32 5, label %_ZNK13sentencepiece14ModelInterface12IsReservedIdEi.exit
  ]
end_hunk_1
