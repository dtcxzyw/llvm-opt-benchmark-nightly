Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Compression?download=true
inline.NumInlined: 1607
inline.NumDeleted: 824
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.13 = private unnamed_addr constant [32 x i8] c"Codec: No forward progress made\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Codec: no forward progress made\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Codec: Junk after end of data\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Compression type \00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c" invalid\00", align 1
@_ZN5folly11compression12_GLOBAL__N_114codecFactoriesE = internal constant [13 x %"struct.folly::compression::(anonymous namespace)::Factory"] [%"struct.folly::compression::(anonymous namespace)::Factory" zeroinitializer, %"struct.folly::compression::(anonymous namespace)::Factory" { ptr @_ZN5folly11compression12_GLOBAL__N_118NoCompressionCodec6createEiNS0_9CodecTypeE, ptr null }, %"struct.folly::compression::(anonymous namespace)::Factory" zeroinitializer, %"struct.folly::compression::(anonymous namespace)::Factory" zeroinitializer, %"struct.folly::compression::(anonymous namespace)::Factory" { ptr @_ZN5folly11compression12_GLOBAL__N_112getZlibCodecEiNS0_9CodecTypeE, ptr @_ZN5folly11compression12_GLOBAL__N_118getZlibStreamCodecEiNS0_9CodecTypeE }, %"struct.folly::compression::(anonymous namespace)::Factory" zeroinitializer, %"struct.folly::compression::(anonymous namespace)::Factory" { ptr @_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec11createCodecEiNS0_9CodecTypeE, ptr @_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec12createStreamEiNS0_9CodecTypeE }, %"struct.folly::compression::(anonymous namespace)::Factory" { ptr @_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec11createCodecEiNS0_9CodecTypeE, ptr @_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec12createStreamEiNS0_9CodecTypeE }, %"struct.folly::compression::(anonymous namespace)::Factory" zeroinitializer, %"struct.folly::compression::(anonymous namespace)::Factory" { ptr @_ZN5folly11compression12_GLOBAL__N_112getZlibCodecEiNS0_9CodecTypeE, ptr @_ZN5folly11compression12_GLOBAL__N_118getZlibStreamCodecEiNS0_9CodecTypeE }, %"struct.folly::compression::(anonymous namespace)::Factory" zeroinitializer, %"struct.folly::compression::(anonymous namespace)::Factory" { ptr @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec11createCodecEiNS0_9CodecTypeE, ptr @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12createStreamEiNS0_9CodecTypeE }, %"struct.folly::compression::(anonymous namespace)::Factory" zeroinitializer], align 16
@_ZTVN5folly11compression12_GLOBAL__N_118NoCompressionCodecE = internal constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN5folly11compression12_GLOBAL__N_118NoCompressionCodecE, ptr @_ZN5folly11compression5CodecD2Ev, ptr @_ZN5folly11compression12_GLOBAL__N_118NoCompressionCodecD0Ev, ptr @_ZNK5folly11compression5Codec13validPrefixesB5cxx11Ev, ptr @_ZNK5folly11compression5Codec13canUncompressEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZNK5folly11compression5Codec23doMaxUncompressedLengthEv, ptr @_ZNK5folly11compression5Codec25doNeedsUncompressedLengthEv, ptr @_ZN5folly11compression12_GLOBAL__N_118NoCompressionCodec10doCompressEPKNS_5IOBufE, ptr @_ZN5folly11compression12_GLOBAL__N_118NoCompressionCodec12doUncompressEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZN5folly11compression5Codec16doCompressStringB5cxx11ENS_5RangeIPKcEE, ptr @_ZN5folly11compression5Codec18doUncompressStringB5cxx11ENS_5RangeIPKcEENS_8OptionalImEE, ptr @_ZNK5folly11compression12_GLOBAL__N_118NoCompressionCodec21doMaxCompressedLengthEm, ptr @_ZNK5folly11compression5Codec23doGetUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE] }, align 8
@.str.28 = private unnamed_addr constant [35 x i8] c"NoCompressionCodec: invalid level \00", align 1
@_ZTIN5folly11compression12_GLOBAL__N_118NoCompressionCodecE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly11compression12_GLOBAL__N_118NoCompressionCodecE, ptr @_ZTIN5folly11compression5CodecE }, align 8
@_ZTSN5folly11compression12_GLOBAL__N_118NoCompressionCodecE = internal constant [56 x i8] c"N5folly11compression12_GLOBAL__N_118NoCompressionCodecE\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"NoCompressionCodec: invalid uncompressed length\00", align 1
@_ZTVN5folly11compression12_GLOBAL__N_116LZMA2StreamCodecE = internal constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN5folly11compression12_GLOBAL__N_116LZMA2StreamCodecE, ptr @_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodecD2Ev, ptr @_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodecD0Ev, ptr @_ZNK5folly11compression12_GLOBAL__N_116LZMA2StreamCodec13validPrefixesB5cxx11Ev, ptr @_ZNK5folly11compression12_GLOBAL__N_116LZMA2StreamCodec13canUncompressEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZNK5folly11compression12_GLOBAL__N_116LZMA2StreamCodec23doMaxUncompressedLengthEv, ptr @_ZNK5folly11compression5Codec25doNeedsUncompressedLengthEv, ptr @_ZN5folly11compression11StreamCodec10doCompressEPKNS_5IOBufE, ptr @_ZN5folly11compression11StreamCodec12doUncompressEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZN5folly11compression5Codec16doCompressStringB5cxx11ENS_5RangeIPKcEE, ptr @_ZN5folly11compression5Codec18doUncompressStringB5cxx11ENS_5RangeIPKcEENS_8OptionalImEE, ptr @_ZNK5folly11compression12_GLOBAL__N_116LZMA2StreamCodec21doMaxCompressedLengthEm, ptr @_ZNK5folly11compression5Codec23doGetUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZNK5folly11compression12_GLOBAL__N_116LZMA2StreamCodec17doNeedsDataLengthEv, ptr @_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec13doResetStreamEv, ptr @_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpE, ptr @_ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpE] }, align 8
@.str.32 = private unnamed_addr constant [28 x i8] c"LZMA2Codec: invalid level: \00", align 1
@_ZTIN5folly11compression12_GLOBAL__N_116LZMA2StreamCodecE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly11compression12_GLOBAL__N_116LZMA2StreamCodecE, ptr @_ZTIN5folly11compression11StreamCodecE }, align 8
@_ZTSN5folly11compression12_GLOBAL__N_116LZMA2StreamCodecE = internal constant [54 x i8] c"N5folly11compression12_GLOBAL__N_116LZMA2StreamCodecE\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"LZMA2StreamCodec: lzma_easy_encoder error: \00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@_ZTISt12out_of_range = external constant ptr
@_ZTVSt12out_of_range = external constant { [5 x ptr] }, align 8
@.str.45 = private unnamed_addr constant [26 x i8] c"LZMA2StreamCodec: error: \00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"LZMA2StreamCodec: Invalid flush\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"LZMA2StreamCodec: invalid flush\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"LZMA2StreamCodec: lzma_auto_decoder error: \00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"LZMA2StreamCodec: invalid uncompressed length\00", align 1
@_ZTIN5folly17BadExpectedAccessIvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessIvEE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessIvEE = linkonce_odr constant [31 x i8] c"N5folly17BadExpectedAccessIvEE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVN5folly17BadExpectedAccessIvEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessIvEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessIvED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@_ZTVSt9exception = external constant { [5 x ptr] }, align 8
@.str.50 = private unnamed_addr constant [20 x i8] c"bad expected access\00", align 1
@_ZTVN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecE = internal constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecE, ptr @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecD2Ev, ptr @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecD0Ev, ptr @_ZNK5folly11compression12_GLOBAL__N_116Bzip2StreamCodec13validPrefixesB5cxx11Ev, ptr @_ZNK5folly11compression12_GLOBAL__N_116Bzip2StreamCodec13canUncompressEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZNK5folly11compression5Codec23doMaxUncompressedLengthEv, ptr @_ZNK5folly11compression5Codec25doNeedsUncompressedLengthEv, ptr @_ZN5folly11compression11StreamCodec10doCompressEPKNS_5IOBufE, ptr @_ZN5folly11compression11StreamCodec12doUncompressEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZN5folly11compression5Codec16doCompressStringB5cxx11ENS_5RangeIPKcEE, ptr @_ZN5folly11compression5Codec18doUncompressStringB5cxx11ENS_5RangeIPKcEENS_8OptionalImEE, ptr @_ZNK5folly11compression12_GLOBAL__N_116Bzip2StreamCodec21doMaxCompressedLengthEm, ptr @_ZNK5folly11compression5Codec23doGetUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZNK5folly11compression11StreamCodec17doNeedsDataLengthEv, ptr @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec13doResetStreamEv, ptr @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpE, ptr @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpE] }, align 8
@.str.52 = private unnamed_addr constant [23 x i8] c"Bzip2: invalid level: \00", align 1
@_ZTIN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecE, ptr @_ZTIN5folly11compression11StreamCodecE }, align 8
@_ZTSN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecE = internal constant [54 x i8] c"N5folly11compression12_GLOBAL__N_116Bzip2StreamCodecE\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"Bzip2 error: \00", align 1
@.str.62 = private unnamed_addr constant [47 x i8] c"Bzip2StreamCodec: FlushOp::FLUSH not supported\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"Bzip2StreamCodec: Invalid flush\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c" not supported\00", align 1
@_ZTVN5folly11compression12_GLOBAL__N_114AutomaticCodecE = internal constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN5folly11compression12_GLOBAL__N_114AutomaticCodecE, ptr @_ZN5folly11compression12_GLOBAL__N_114AutomaticCodecD2Ev, ptr @_ZN5folly11compression12_GLOBAL__N_114AutomaticCodecD0Ev, ptr @_ZNK5folly11compression12_GLOBAL__N_114AutomaticCodec13validPrefixesB5cxx11Ev, ptr @_ZNK5folly11compression12_GLOBAL__N_114AutomaticCodec13canUncompressEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZNK5folly11compression12_GLOBAL__N_114AutomaticCodec23doMaxUncompressedLengthEv, ptr @_ZNK5folly11compression12_GLOBAL__N_114AutomaticCodec25doNeedsUncompressedLengthEv, ptr @_ZN5folly11compression12_GLOBAL__N_114AutomaticCodec10doCompressEPKNS_5IOBufE, ptr @_ZN5folly11compression12_GLOBAL__N_114AutomaticCodec12doUncompressEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZN5folly11compression5Codec16doCompressStringB5cxx11ENS_5RangeIPKcEE, ptr @_ZN5folly11compression5Codec18doUncompressStringB5cxx11ENS_5RangeIPKcEENS_8OptionalImEE, ptr @_ZNK5folly11compression12_GLOBAL__N_114AutomaticCodec21doMaxCompressedLengthEm, ptr @_ZNK5folly11compression5Codec23doGetUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE] }, align 8
@__const.AutomaticCodec.defaultTypes = private unnamed_addr constant %"struct.std::array.109" { [6 x i32] [i32 10, i32 8, i32 4, i32 9, i32 6, i32 11] }, align 4
@_ZTIN5folly11compression12_GLOBAL__N_114AutomaticCodecE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly11compression12_GLOBAL__N_114AutomaticCodecE, ptr @_ZTIN5folly11compression5CodecE }, align 8
@_ZTSN5folly11compression12_GLOBAL__N_114AutomaticCodecE = internal constant [52 x i8] c"N5folly11compression12_GLOBAL__N_114AutomaticCodecE\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"AutomaticCodec error: compress() not supported.\00", align 1
@.str.74 = private unnamed_addr constant [46 x i8] c"AutomaticCodec error: Unknown compressed data\00", align 1
@.str.75 = private unnamed_addr constant [59 x i8] c"AutomaticCodec error: maxCompressedLength() not supported.\00", align 1
@switch.table._ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodec12createStreamEiNS0_9CodecTypeE = private unnamed_addr constant [3 x i8] c"\09\09\01", align 4
@switch.table._ZSt11make_uniqueIN5folly11compression12_GLOBAL__N_116LZMA2StreamCodecEJRiRNS1_9CodecTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = private unnamed_addr constant [3 x i8] c"\09\06\00", align 4
@switch.table._ZN5folly11compression12_GLOBAL__N_116LZMA2StreamCodec16doCompressStreamERNS_5RangeIPKhEERNS3_IPhEENS0_11StreamCodec7FlushOpE = private unnamed_addr constant [3 x i8] c"\00\01\03", align 4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly11compression5CodecD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZNK5folly11compression5Codec13validPrefixesB5cxx11Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK5folly11compression5Codec13canUncompressEPKNS_5IOBufENS_8OptionalImEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone align 8 captures(none) dead_on_return %2) unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZNK5folly11compression5Codec23doMaxUncompressedLengthEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK5folly11compression5Codec25doNeedsUncompressedLengthEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11compression5Codec16doCompressStringB5cxx11ENS_5RangeIPKcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %2, ptr %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::IOBuf", align 8      ; 7 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN5folly5IOBufC1ENS0_12WrapBufferOpENS_5RangeIPKhEE(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef 0, ptr %2, ptr %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = load ptr, ptr %1, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.d, !call_target !124

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !2420
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !2423, !alias.scope !3045
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !2426, !alias.scope !3045
  store i8 0, ptr %i.e, align 8, !tbaa !2427, !alias.scope !3045
  invoke void @_ZNK5folly5IOBuf8appendToINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNK5folly5IOBuf2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !2428, !alias.scope !3045 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.e, align 8, !tbaa !2427, !alias.scope !3045
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #32
  br label %.body

_ZNK5folly5IOBuf2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %5, align 8, !tbaa !2420   ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %_ZNK5folly5IOBuf2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v.exit
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.l) #31
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.l) #31
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNK5folly5IOBuf2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v.exit, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #31
  br label %bb.e

bb.e:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %.body ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11compression5Codec18doUncompressStringB5cxx11ENS_5RangeIPKcEENS_8OptionalImEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %2, ptr %3, ptr nofree noundef readonly align 8 captures(none) dead_on_return %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.folly::IOBuf", align 8      ; 7 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %7 = alloca %"class.folly::Optional", align 8   ; 2 uses
  %8 = alloca %"class.folly::IOBuf::Iterator", align 16 ; 11 uses
  %9 = alloca %"class.folly::IOBuf::Iterator", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN5folly5IOBufC1ENS0_12WrapBufferOpENS_5RangeIPKhEE(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 0, ptr %2, ptr %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %bb.b unwind label %bb.d, !call_target !535

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !2423
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !2426
  store i8 0, ptr %i.d, align 8, !tbaa !2427
  %i.f = load ptr, ptr %6, align 8, !tbaa !2420
  %i.g = call noundef i64 @_ZNK5folly5IOBuf22computeChainDataLengthEv(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %6, align 8, !tbaa !2420   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZNK5folly5IOBuf6cbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::IOBuf::Iterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %_ZNK5folly5IOBuf5beginEv.exit unwind label %bb.f

_ZNK5folly5IOBuf5beginEv.exit:                    ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNK5folly5IOBuf4cendEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::IOBuf::Iterator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %_ZNK5folly5IOBuf3endEv.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5folly5IOBuf3endEv.exit.preheader:            ; preds = %_ZNK5folly5IOBuf5beginEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = load <2 x ptr>, ptr %8, align 16
  %i.l = load <2 x ptr>, ptr %9, align 16
  %i.m = icmp ne <2 x ptr> %i.k, %i.l
  %10 = freeze <2 x i1> %i.m
  %11 = bitcast <2 x i1> %10 to i2
  %.not3.i18.not = icmp eq i2 %11, 0
  br i1 %.not3.i18.not, label %_ZNK5folly5IOBuf3endEv.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly5IOBuf3endEv.exit.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.n, align 16, !tbaa !2429
  %.sroa.6.0.copyload.pre = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !2429
  br label %bb.g

_ZNK5folly5IOBuf3endEv.exit._crit_edge:           ; preds = %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit, %_ZNK5folly5IOBuf3endEv.exit.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.o = load ptr, ptr %6, align 8, !tbaa !2420   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %_ZNK5folly5IOBuf3endEv.exit._crit_edge
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.o) #31
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.o) #31
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNK5folly5IOBuf3endEv.exit._crit_edge, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph, %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit
  %.sroa.6.0.copyload = phi ptr [ %.sroa.6.0.copyload.pre, %.lr.ph ], [ %.sroa.6.0.copyload23, %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit ] ; 2 uses
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %.lr.ph ], [ %.sroa.0.0.copyload21, %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit ] ; 5 uses
  %i.s = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.t = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !2426 ; 5 uses
  %i.w = sub i64 9223372036854775807, %i.v
  %i.x = icmp ult i64 %i.w, %i.u
  br i1 %i.x, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.g
  %i.y = add i64 %i.u, %i.v                       ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !2428   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ab = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !2427
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.y, %i.ad
  br i1 %.not.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq ptr %.sroa.6.0.copyload, %.sroa.0.0.copyload
  br i1 %.not8.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v ; 2 uses
  %cond.i.i = icmp eq i64 %i.u, 1
  br i1 %cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !2427
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !2427
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %.sroa.0.0.copyload, i64 %i.u, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef 0, ptr noundef %.sroa.0.0.copyload, i64 noundef %i.u)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.m
  store i64 %i.y, ptr %i.e, align 8, !tbaa !2426
  %i.ag = load ptr, ptr %0, align 8, !tbaa !2428
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i8 0, ptr %i.ah, align 1, !tbaa !2427
  %i.ai = load ptr, ptr %8, align 16, !tbaa !2432
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2435 ; 5 uses
  store ptr %i.ak, ptr %8, align 16, !tbaa !2432
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !2436 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  br label %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit

bb.p:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2437 ; 3 uses
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !2438
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap ; 2 uses
  store ptr %i.ao, ptr %i.n, align 16, !tbaa !2429
  store ptr %i.aq, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !2429
  br label %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit

_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit: ; preds = %bb.o, %bb.p
  %i.ar = phi ptr [ null, %bb.o ], [ %i.al, %bb.p ]
  %i.as = phi ptr [ null, %bb.o ], [ %i.ak, %bb.p ]
  %.sroa.6.0.copyload23 = phi ptr [ null, %bb.o ], [ %i.aq, %bb.p ]
  %.sroa.0.0.copyload21 = phi ptr [ null, %bb.o ], [ %i.ao, %bb.p ]
  %i.at = load ptr, ptr %9, align 16, !tbaa !2432
  %i.au = icmp ne ptr %i.as, %i.at
  %i.av = load ptr, ptr %i.j, align 8
  %i.aw = icmp ne ptr %i.ar, %i.av
  %.not3.i = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %.not3.i, label %bb.g, label %_ZNK5folly5IOBuf3endEv.exit._crit_edge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %_ZNK5folly5IOBuf5beginEv.exit, %bb.h
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp29, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.q, %bb.e ]
  %i.ax = load ptr, ptr %0, align 8, !tbaa !2428  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.d
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.az = load i64, ptr %i.d, align 8, !tbaa !2427
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #31
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly11compression5Codec23doGetUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !2427
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !2441
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2443, !range !2444, !noundef !209
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNR5folly8OptionalImE5valueEv.exit.i, label %_ZN5folly8OptionalImEC2EOS1_.exit

_ZNR5folly8OptionalImE5valueEv.exit.i:            ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !2445
  store i64 %i.e, ptr %0, align 8, !tbaa !2445
  store i8 1, ptr %i.a, align 8, !tbaa !2443
  br label %_ZN5folly8OptionalImEC2EOS1_.exit

_ZN5folly8OptionalImEC2EOS1_.exit:                ; preds = %bb.a, %_ZNR5folly8OptionalImE5valueEv.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly11compression5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN5folly11compression5Codec10uncompressB5cxx11ENS_5RangeIPKcEENS_8OptionalImEE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(12) %1), !call_target !534, !inline_history !2927
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNR5folly8OptionalImEdeEv.exit:                  ; preds = %bb.a
  %i.j = load i64, ptr %4, align 8, !tbaa !2445
  %i.k = load ptr, ptr %1, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(12) %1), !call_target !533, !inline_history !2926
  %i.o = icmp ugt i64 %i.j, %i.n
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNR5folly8OptionalImEdeEv.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %_ZNR5folly8OptionalImEdeEv.exit, %bb.b
  %i.r = icmp eq ptr %2, %3
  br i1 %i.r, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.a, align 8, !tbaa !2443, !range !2444, !noundef !209
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i64, ptr %4, align 8
  %.not7 = icmp ne i64 %i.u, 0
  %.not.not = select i1 %i.t, i1 %.not7, i1 false
  br i1 %.not.not, label %bb.k, label %._crit_edge.i.i

bb.k:                                             ; preds = %bb.j
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge.i.i:                                  ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !2423
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !2426
  store i8 0, ptr %i.x, align 8, !tbaa !2427
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.z = load ptr, ptr %1, align 8, !tbaa !117
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dead_on_return %5), !call_target !537
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  ret void

bb.p:                                             ; preds = %bb.m, %bb.h, %bb.e
  %.sink = phi ptr [ %i.v, %bb.m ], [ %i.p, %bb.h ], [ %i.h, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.q, %bb.h ], [ %i.i, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #31 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly11compression5Codec13canUncompressENS_5RangeIPKcEENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, ptr %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::IOBuf", align 8      ; 7 uses
  %5 = alloca %"class.folly::Optional", align 8   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  call void @_ZN5folly5IOBuf17wrapBufferAsValueEPKvm(ptr dead_on_unwind nonnull writable sret(%"class.folly::IOBuf") align 8 %4, ptr noundef %1, i64 noundef %i.c) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dead_on_return %5)
          to label %bb.b unwind label %bb.c, !call_target !529

bb.b:                                             ; preds = %bb.a
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret i1 %i.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.h
}

; Function Attrs: nounwind
declare void @_ZN5folly5IOBuf17wrapBufferAsValueEPKvm(ptr dead_on_unwind writable sret(%"class.folly::IOBuf") align 8, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufC1ENS0_12WrapBufferOpENS_5RangeIPKhEE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr, ptr) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2420   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #31
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.a) #31
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly5IOBuf8appendToINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.folly::IOBuf::Iterator", align 16 ; 10 uses
  %3 = alloca %"class.folly::IOBuf::Iterator", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2426
  %i.c = tail call noundef i64 @_ZNK5folly5IOBuf22computeChainDataLengthEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #31
  %i.d = add i64 %i.c, %i.b
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNK5folly5IOBuf6cbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::IOBuf::Iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZNK5folly5IOBuf4cendEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::IOBuf::Iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load <2 x ptr>, ptr %2, align 16
  %i.h = load <2 x ptr>, ptr %3, align 16
  %i.i = icmp ne <2 x ptr> %i.g, %i.h
  %4 = freeze <2 x i1> %i.i
  %5 = bitcast <2 x i1> %4 to i2
  %.not3.i9.not = icmp eq i2 %5, 0
  br i1 %.not3.i9.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.08.0.copyload.pre = load ptr, ptr %i.j, align 16, !tbaa !2429
  %.sroa.4.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2429
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit
  %.sroa.4.0.copyload = phi ptr [ %.sroa.4.0.copyload.pre, %.lr.ph ], [ %.sroa.4.0.copyload13, %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit ]
  %.sroa.08.0.copyload = phi ptr [ %.sroa.08.0.copyload.pre, %.lr.ph ], [ %.sroa.08.0.copyload11, %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit ]
  %i.k = load ptr, ptr %1, align 8, !tbaa !2428
  %i.l = load i64, ptr %i.a, align 8, !tbaa !2426
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchIPKhEERS4_N9__gnu_cxx17__normal_iteratorIPKcS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.m, ptr %i.m, ptr noundef %.sroa.08.0.copyload, ptr noundef %.sroa.4.0.copyload) ; 0 uses
  %i.o = load ptr, ptr %2, align 16, !tbaa !2432
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2435 ; 5 uses
  store ptr %i.q, ptr %2, align 16, !tbaa !2432
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !2436 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2437 ; 3 uses
  %i.v = load i64, ptr %i.q, align 8, !tbaa !2438
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v ; 2 uses
  store ptr %i.u, ptr %i.j, align 16, !tbaa !2429
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2429
  br label %_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit

_ZN5folly6detail14IteratorFacadeINS_5IOBuf8IteratorEKNS_5RangeIPKhEESt20forward_iterator_tagEppEv.exit: ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ null, %bb.c ], [ %i.r, %bb.d ]
  %i.y = phi ptr [ null, %bb.c ], [ %i.q, %bb.d ]
  %.sroa.4.0.copyload13 = phi ptr [ null, %bb.c ], [ %i.w, %bb.d ]
  %.sroa.08.0.copyload11 = phi ptr [ null, %bb.c ], [ %i.u, %bb.d ]
  %i.z = load ptr, ptr %3, align 16, !tbaa !2432
  %i.aa = icmp ne ptr %i.y, %i.z
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = icmp ne ptr %i.x, %i.ab
  %.not3.i = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %.not3.i, label %bb.b, label %._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2428
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !2928

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #34 ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !2428   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !2426 ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.p = load i8, ptr %i.l, align 1, !tbaa !2427
  store i8 %i.p, ptr %i.k, align 1, !tbaa !2427
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  %i.q = icmp eq ptr %i.l, %i.b
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.r = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.s = load i64, ptr %i.b, align 8, !tbaa !2427
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4
  store ptr %i.k, ptr %0, align 8, !tbaa !2428
  store i64 %.0, ptr %i.b, align 8, !tbaa !2427
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

declare void @_ZNK5folly5IOBuf6cbeginEv(ptr dead_on_unwind writable sret(%"class.folly::IOBuf::Iterator") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

declare void @_ZNK5folly5IOBuf4cendEv(ptr dead_on_unwind writable sret(%"class.folly::IOBuf::Iterator") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchIPKhEERS4_N9__gnu_cxx17__normal_iteratorIPKcS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !2423
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !2426
  %i.c = ptrtoint ptr %4 to i64
  %i.d = ptrtoint ptr %3 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 7 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #33
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc4.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !2928

.noexc4.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #34 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !2428
  store i64 %i.e, ptr %i.a, align 8, !tbaa !2427
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %.pre14.i.i = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.not7.i.i.i = icmp eq ptr %3, %4
  br i1 %.not7.i.i.i, label %bb.d, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.pre14.i.i, ptr align 1 %3, i64 %i.e, i1 false), !tbaa !2427
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.preheader, %._crit_edge.i.i
  store i64 %i.e, ptr %i.b, align 8, !tbaa !2426
  %i.k = getelementptr inbounds nuw i8, ptr %.pre14.i.i, i64 %i.e
  store i8 0, ptr %i.k, align 1, !tbaa !2427
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = load ptr, ptr %0, align 8, !tbaa !2428
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.m, %i.p
  %i.r = load ptr, ptr %5, align 8, !tbaa !2428
  %i.s = load i64, ptr %i.b, align 8, !tbaa !2426
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q, i64 noundef %i.n, ptr noundef %i.r, i64 noundef %i.s)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %5, align 8, !tbaa !2428   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_1
