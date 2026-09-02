Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfWriter?download=true
inline.NumInlined: 3859
inline.NumDeleted: 2168
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZN4llvm10sampleprofL17kVTableProfPrefixE = internal constant [9 x i8] c"vtables \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"!CFGChecksum: \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"!Attributes: \00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c" !Flat\0A\00", align 1
@_ZN4llvm21ProfileSummaryBuilder14DefaultCutoffsE = external local_unnamed_addr global %"class.llvm::ArrayRef.253", align 8
@_ZTVN4llvm10sampleprof19SampleProfileWriterE = unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN4llvm10sampleprof19SampleProfileWriterD2Ev, ptr @_ZN4llvm10sampleprof19SampleProfileWriterD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN4llvm10sampleprof19SampleProfileWriter5writeERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter20setProfileSymbolListEPNS0_17ProfileSymbolListE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter24setToCompressAllSectionsEv, ptr @_ZN4llvm10sampleprof19SampleProfileWriter9setUseMD5Ev, ptr @_ZN4llvm10sampleprof19SampleProfileWriter17setPartialProfileEv, ptr @_ZN4llvm10sampleprof19SampleProfileWriter20setUseCtxSplitLayoutEv, ptr @__cxa_pure_virtual, ptr @_ZN4llvm10sampleprof19SampleProfileWriter17writeFuncProfilesERKNS0_16SampleProfileMapE] }, align 8
@_ZTVN4llvm10sampleprof23SampleProfileWriterTextE = unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN4llvm10sampleprof19SampleProfileWriterD2Ev, ptr @_ZN4llvm10sampleprof23SampleProfileWriterTextD0Ev, ptr @_ZN4llvm10sampleprof23SampleProfileWriterText11writeSampleERKNS0_15FunctionSamplesE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter5writeERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter20setProfileSymbolListEPNS0_17ProfileSymbolListE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter24setToCompressAllSectionsEv, ptr @_ZN4llvm10sampleprof19SampleProfileWriter9setUseMD5Ev, ptr @_ZN4llvm10sampleprof19SampleProfileWriter17setPartialProfileEv, ptr @_ZN4llvm10sampleprof23SampleProfileWriterText20setUseCtxSplitLayoutEv, ptr @_ZN4llvm10sampleprof23SampleProfileWriterText11writeHeaderERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter17writeFuncProfilesERKNS0_16SampleProfileMapE] }, align 8
@_ZTVN4llvm10sampleprof25SampleProfileWriterBinaryE = unnamed_addr constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr null, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinaryD2Ev, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinaryD0Ev, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary11writeSampleERKNS0_15FunctionSamplesE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter5writeERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter20setProfileSymbolListEPNS0_17ProfileSymbolListE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter24setToCompressAllSectionsEv, ptr @_ZN4llvm10sampleprof19SampleProfileWriter9setUseMD5Ev, ptr @_ZN4llvm10sampleprof19SampleProfileWriter17setPartialProfileEv, ptr @_ZN4llvm10sampleprof19SampleProfileWriter20setUseCtxSplitLayoutEv, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary11writeHeaderERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter17writeFuncProfilesERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary12getNameTableEv, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary15writeMagicIdentENS0_19SampleProfileFormatE, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary14writeNameTableEv, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary15writeContextIdxERKNS0_13SampleContextE, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary10addContextERKNS0_13SampleContextE] }, align 8
@_ZTVN4llvm10sampleprof32SampleProfileWriterExtBinaryBaseE = unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBaseD2Ev, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBaseD0Ev, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase11writeSampleERKNS0_15FunctionSamplesE, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase5writeERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase20setProfileSymbolListEPNS0_17ProfileSymbolListE, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase24setToCompressAllSectionsEv, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase9setUseMD5Ev, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase17setPartialProfileEv, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase20setUseCtxSplitLayoutEv, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase11writeHeaderERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter17writeFuncProfilesERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary12getNameTableEv, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary15writeMagicIdentENS0_19SampleProfileFormatE, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14writeNameTableEv, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase15writeContextIdxERKNS0_13SampleContextE, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase10addContextERKNS0_13SampleContextE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase15writeOneSectionENS0_7SecTypeEjRKNS0_16SampleProfileMapE] }, align 8
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl3optImLb0ENS0_6parserImEEEE = linkonce_odr unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN4llvm2cl3optImLb0ENS0_6parserImEEE16handleOccurrenceEjNS_9StringRefES5_, ptr @_ZNK4llvm2cl3optImLb0ENS0_6parserImEEE27getValueExpectedFlagDefaultEv, ptr @_ZN4llvm2cl6Option6anchorEv, ptr @_ZN4llvm2cl3optImLb0ENS0_6parserImEEED2Ev, ptr @_ZN4llvm2cl3optImLb0ENS0_6parserImEEED0Ev, ptr @_ZNK4llvm2cl3optImLb0ENS0_6parserImEEE14getOptionWidthEv, ptr @_ZNK4llvm2cl3optImLb0ENS0_6parserImEEE15printOptionInfoEm, ptr @_ZNK4llvm2cl3optImLb0ENS0_6parserImEEE16printOptionValueEmb, ptr @_ZN4llvm2cl3optImLb0ENS0_6parserImEEE10setDefaultEv, ptr @_ZN4llvm2cl3optImLb0ENS0_6parserImEEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE, ptr @_ZN4llvm2cl6Option13addOccurrenceEjNS_9StringRefES2_b] }, comdat, align 8
@_ZTVN4llvm2cl11OptionValueImEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyImE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm19raw_svector_ostreamE = external unnamed_addr constant { [16 x ptr] }, align 8
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.18 = private unnamed_addr constant [4 x i8] c" @ \00", align 1
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTVN4llvm10sampleprof28SampleProfileWriterRawBinaryE = linkonce_odr unnamed_addr constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr null, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinaryD2Ev, ptr @_ZN4llvm10sampleprof28SampleProfileWriterRawBinaryD0Ev, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary11writeSampleERKNS0_15FunctionSamplesE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter5writeERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter20setProfileSymbolListEPNS0_17ProfileSymbolListE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter24setToCompressAllSectionsEv, ptr @_ZN4llvm10sampleprof19SampleProfileWriter9setUseMD5Ev, ptr @_ZN4llvm10sampleprof19SampleProfileWriter17setPartialProfileEv, ptr @_ZN4llvm10sampleprof19SampleProfileWriter20setUseCtxSplitLayoutEv, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary11writeHeaderERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof19SampleProfileWriter17writeFuncProfilesERKNS0_16SampleProfileMapE, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary12getNameTableEv, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary15writeMagicIdentENS0_19SampleProfileFormatE, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary14writeNameTableEv, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary15writeContextIdxERKNS0_13SampleContextE, ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinary10addContextERKNS0_13SampleContextE] }, comdat, align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm2cl6parserImEE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.22 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SampleProfWriter.cpp, ptr null }]

@_ZN4llvm10sampleprof30DefaultFunctionPruningStrategyC1ERNS0_16SampleProfileMapEm = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN4llvm10sampleprof30DefaultFunctionPruningStrategyC2ERNS0_16SampleProfileMapEm
@_ZN4llvm10sampleprof28SampleProfileWriterExtBinaryC1ERSt10unique_ptrINS_11raw_ostreamESt14default_deleteIS3_EE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm10sampleprof28SampleProfileWriterExtBinaryC2ERSt10unique_ptrINS_11raw_ostreamESt14default_deleteIS3_EE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5arrayIN4llvm11SmallVectorINS0_10sampleprof16SecHdrTableEntryELj8EEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(672) dereferenceable(672) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_10sampleprof16SecHdrTableEntryELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #26
  br label %_ZN4llvm11SmallVectorINS_10sampleprof16SecHdrTableEntryELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_10sampleprof16SecHdrTableEntryELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm11SmallVectorINS_10sampleprof16SecHdrTableEntryELj8EED2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_10sampleprof16SecHdrTableEntryELj8EED2Ev.exit
  tail call void @free(ptr noundef %i.e) #26
  br label %_ZN4llvm11SmallVectorINS_10sampleprof16SecHdrTableEntryELj8EED2Ev.exit.1

_ZN4llvm11SmallVectorINS_10sampleprof16SecHdrTableEntryELj8EED2Ev.exit.1: ; preds = %bb.c, %_ZN4llvm11SmallVectorINS_10sampleprof16SecHdrTableEntryELj8EED2Ev.exit
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !49, !range !50, !noundef !51
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.i) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #26
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optImLb0ENS0_6parserImEEED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optImLb0ENS0_6parserImEEEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !49, !range !50, !noundef !51
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.i) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #26
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10sampleprof30DefaultFunctionPruningStrategyC2ERNS0_16SampleProfileMapEm(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !336
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm10sampleprof30DefaultFunctionPruningStrategyE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm10sampleprof16sortFuncProfilesERKNS0_16SampleProfileMapERSt6vectorISt4pairINS_9hash_codeEPKNS0_15FunctionSamplesEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #26
  ret void
}

declare void @_ZN4llvm10sampleprof16sortFuncProfilesERKNS0_16SampleProfileMapERSt6vectorISt4pairINS_9hash_codeEPKNS0_15FunctionSamplesEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10sampleprof30DefaultFunctionPruningStrategy5EraseEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #4 align 2 {
_ZN4llvm10drop_beginIRSt6vectorISt4pairINS_9hash_codeEPKNS_10sampleprof15FunctionSamplesEESaIS8_EEEEDaOT_m.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56
  %i.c = uitofp i64 %i.b to double
  %i.d = uitofp i64 %1 to double
  %i.e = fdiv double %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !338, !nonnull !51, !align !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64   ; 3 uses
  %i.j = uitofp i64 %i.i to double
  %i.k = fmul double %i.e, %i.j
  %i.l = fmul double %i.e, %i.k
  %i.m = tail call double @llvm.round.f64(double %i.l)
  %i.n = fptoui double %i.m to i64                ; 2 uses
  %i.o = sub i64 %i.i, %i.n
  %i.p = icmp eq i64 %i.i, %i.n
  %spec.store.select = select i1 %i.p, i64 1, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67   ; 4 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !68   ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 4                   ; 2 uses
  %i.y = sub i64 %i.x, %spec.store.select         ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.y ; 2 uses
  %.not22 = icmp eq ptr %i.z, %i.s
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm10sampleprof16SampleProfileMap5eraseERKNS_9hash_codeE.exit
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !67  ; 2 uses
  %.pre31 = load ptr, ptr %i.q, align 8, !tbaa !68 ; 2 uses
  %.pre32 = ptrtoint ptr %.pre to i64
  %.pre33 = ptrtoint ptr %.pre31 to i64
  %.pre35 = sub i64 %.pre32, %.pre33
  %.pre37 = ashr exact i64 %.pre35, 4             ; 2 uses
  %.pre39 = sub nuw i64 %.pre37, %spec.store.select
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm10drop_beginIRSt6vectorISt4pairINS_9hash_codeEPKNS_10sampleprof15FunctionSamplesEESaIS8_EEEEDaOT_m.exit
  %.pre-phi40 = phi i64 [ %.pre39, %._crit_edge.loopexit ], [ %i.y, %_ZN4llvm10drop_beginIRSt6vectorISt4pairINS_9hash_codeEPKNS_10sampleprof15FunctionSamplesEESaIS8_EEEEDaOT_m.exit ]
  %.pre-phi38 = phi i64 [ %.pre37, %._crit_edge.loopexit ], [ %i.x, %_ZN4llvm10drop_beginIRSt6vectorISt4pairINS_9hash_codeEPKNS_10sampleprof15FunctionSamplesEESaIS8_EEEEDaOT_m.exit ]
  %i.aa = phi ptr [ %.pre31, %._crit_edge.loopexit ], [ %i.t, %_ZN4llvm10drop_beginIRSt6vectorISt4pairINS_9hash_codeEPKNS_10sampleprof15FunctionSamplesEESaIS8_EEEEDaOT_m.exit ]
  %i.ab = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.s, %_ZN4llvm10drop_beginIRSt6vectorISt4pairINS_9hash_codeEPKNS_10sampleprof15FunctionSamplesEESaIS8_EEEEDaOT_m.exit ]
  %i.ac = icmp ugt i64 %spec.store.select, %.pre-phi38
  br i1 %i.ac, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge
  %i.ad = sub i64 0, %spec.store.select
  tail call void @_ZNSt6vectorISt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEESaIS7_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ad)
  br label %_ZNSt6vectorISt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEESaIS7_EE6resizeEm.exit

bb.b:                                             ; preds = %._crit_edge
  %.not24 = icmp eq i64 %spec.store.select, 0
  br i1 %.not24, label %_ZNSt6vectorISt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEESaIS7_EE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.pre-phi40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEESaIS7_EE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ae, ptr %i.r, align 8, !tbaa !67
  br label %_ZNSt6vectorISt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEESaIS7_EE6resizeEm.exit

_ZNSt6vectorISt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEESaIS7_EE6resizeEm.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void

.lr.ph:                                           ; preds = %_ZN4llvm10drop_beginIRSt6vectorISt4pairINS_9hash_codeEPKNS_10sampleprof15FunctionSamplesEESaIS8_EEEEDaOT_m.exit, %_ZN4llvm10sampleprof16SampleProfileMap5eraseERKNS_9hash_codeE.exit
  %.sroa.011.023 = phi ptr [ %i.bx, %_ZN4llvm10sampleprof16SampleProfileMap5eraseERKNS_9hash_codeE.exit ], [ %i.z, %_ZN4llvm10drop_beginIRSt6vectorISt4pairINS_9hash_codeEPKNS_10sampleprof15FunctionSamplesEESaIS8_EEEEDaOT_m.exit ] ; 3 uses
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !338, !nonnull !51, !align !57 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !64
  %.not.not.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.not.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof16SampleProfileMap5eraseERKNS_9hash_codeE.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.e
  %i.ak = load i64, ptr %.sroa.011.023, align 8, !tbaa !71 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !71
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !71
  %i.aq = icmp eq i64 %i.ak, %i.ap
  br i1 %i.aq, label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !337

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i.i, %bb.f
  %.016.i34.i.i.i.i = phi ptr [ %i.ar, %bb.f ], [ %i.aj, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.ar = load ptr, ptr %.016.i34.i.i.i.i, align 8, !tbaa !69 ; 4 uses
  %.not14.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not14.i.i.i.i.i, label %_ZN4llvm10sampleprof16SampleProfileMap5eraseERKNS_9hash_codeE.exit, label %bb.f, !llvm.loop !337

_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit.i.i.i.i: ; preds = %bb.f, %.preheader.i.i.i.i.i
  %i.as = phi ptr [ %i.aj, %.preheader.i.i.i.i.i ], [ %i.ar, %bb.f ] ; 2 uses
  %.01115.i.lcssa.i.i.i.i = phi ptr [ %i.ai, %.preheader.i.i.i.i.i ], [ %.016.i34.i.i.i.i, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !73
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !75
  %i.ax = urem i64 %i.aw, %i.au
  br label %_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.ay = load i64, ptr %.sroa.011.023, align 8, !tbaa !71 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !73 ; 2 uses
  %i.bb = urem i64 %i.ay, %i.ba                   ; 4 uses
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !77 ; 3 uses
  %.not.i24.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i24.i.i.i.i, label %_ZN4llvm10sampleprof16SampleProfileMap5eraseERKNS_9hash_codeE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !69 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !75
  %i.bj = icmp eq i64 %i.ay, %i.bi
  %i.bk = load i64, ptr %i.bg, align 8
  %i.bl = icmp eq i64 %i.ay, %i.bk
  %i.bm = select i1 %i.bj, i1 %i.bl, i1 false
  br i1 %i.bm, label %_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bo = icmp eq i64 %i.ay, %i.bu
  %i.bp = load i64, ptr %i.bn, align 8
  %i.bq = icmp eq i64 %i.ay, %i.bp
  %i.br = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %i.br, label %_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i = phi ptr [ %i.bs, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bs = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !69 ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.i.i.i.i.i, label %_ZN4llvm10sampleprof16SampleProfileMap5eraseERKNS_9hash_codeE.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !75 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.ba
  %.not19.i.i.i.i.i = icmp eq i64 %i.bv, %i.bb
  br i1 %.not19.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.j
  br label %_ZN4llvm10sampleprof16SampleProfileMap5eraseERKNS_9hash_codeE.exit, !llvm.loop !1

_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %.01115.i.lcssa.i.i.i.i, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit.i.i.i.i ], [ %i.be, %bb.h ], [ %.020.i.i.i.i.i, %bb.i ]
  %.119.i.i.i.i = phi ptr [ %i.as, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit.i.i.i.i ], [ %i.bf, %bb.h ], [ %i.bs, %bb.i ]
  %.017.i.i.i.i = phi i64 [ %i.ax, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS3_.exit.i.i.i.i ], [ %i.bb, %bb.h ], [ %i.bb, %bb.i ]
  %i.bw = tail call ptr @_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNS8_15_Hash_node_baseEPNS8_10_Hash_nodeIS6_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 noundef %.017.i.i.i.i, ptr noundef nonnull %.020.i.i.i.i, ptr noundef nonnull %.119.i.i.i.i) ; 0 uses
  br label %_ZN4llvm10sampleprof16SampleProfileMap5eraseERKNS_9hash_codeE.exit

_ZN4llvm10sampleprof16SampleProfileMap5eraseERKNS_9hash_codeE.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %bb.e, %bb.g, %..loopexit_crit_edge21.i.i.i.i.i, %_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.011.023, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.s
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZN4llvm10sampleprof19SampleProfileWriter26writeWithSizeLimitInternalERNS0_16SampleProfileMapEmPNS0_23FunctionPruningStrategyE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.34", align 8 ; 9 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { i32, ptr } %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #26 ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.e, 0
  %i.g = extractvalue { i32, ptr } %i.e, 1
  br label %_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79   ; 4 uses
  store ptr null, ptr %i.i, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 40, ptr %i.m, align 8, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  store i64 0, ptr %i.l, align 8, !tbaa !83
  %i.n = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 2, ptr %i.o, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i8 0, ptr %i.p, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  store i32 1, ptr %i.q, align 4, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %i.n, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %4, ptr %i.s, align 8, !tbaa !342
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef null, i64 noundef 0, i32 noundef 0) #26
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !79   ; 3 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN4llvm11raw_ostreamEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm11raw_ostreamEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(48) %i.t) #26, !inline_history !339
  br label %_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4llvm11raw_ostreamEEclEPS1_.exit.i.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call { i32, ptr } %i.z(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #26 ; 2 uses
  %i.ab = extractvalue { i32, ptr } %i.aa, 0      ; 2 uses
  %.not19 = icmp eq i32 %i.ab, 0
  br i1 %.not19, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !83  ; 3 uses
  %.not = icmp ugt i64 %i.ac, %2
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %3, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ac) #26
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !64
  %.not13 = icmp eq i64 %i.ag, 0
  br i1 %.not13, label %.thread, label %bb.d, !llvm.loop !340

bb.g:                                             ; preds = %bb.e
  %.pr = load i64, ptr %i.h, align 8, !tbaa !64
  %i.ah = icmp eq i64 %.pr, 0
end_hunk_0
