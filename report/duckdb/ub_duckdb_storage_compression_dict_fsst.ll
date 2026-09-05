Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_compression_dict_fsst?download=true
inline.NumInlined: 1572
inline.NumDeleted: 732
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
$_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZTVN6duckdb9dict_fsst20DictFSSTAnalyzeStateE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6duckdb9dict_fsst20DictFSSTAnalyzeStateE, ptr @_ZN6duckdb12AnalyzeStateD2Ev, ptr @_ZN6duckdb9dict_fsst20DictFSSTAnalyzeStateD0Ev] }, comdat, align 8
@_ZTVN6duckdb9dict_fsst24DictFSSTCompressionStateE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6duckdb9dict_fsst24DictFSSTCompressionStateE, ptr @_ZN6duckdb9dict_fsst24DictFSSTCompressionStateD1Ev, ptr @_ZN6duckdb9dict_fsst24DictFSSTCompressionStateD0Ev] }, align 8
@.str = private unnamed_addr constant [80 x i8] c"Somehow we did not have enough room in the segment to store the encoded strings\00", align 1
@_ZTIN6duckdb14FatalExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb14FatalExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6duckdb14FatalExceptionE = linkonce_odr constant [26 x i8] c"N6duckdb14FatalExceptionE\00", comdat, align 1
@_ZTIN6duckdb9ExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb9ExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN6duckdb9ExceptionE = linkonce_odr constant [20 x i8] c"N6duckdb9ExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [54 x i8] c"FSST compression failed to compress all input strings\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Unreachable\00", align 1
@_ZTIN6duckdb17InternalExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17InternalExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb17InternalExceptionE = linkonce_odr constant [29 x i8] c"N6duckdb17InternalExceptionE\00", comdat, align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"Compressing directly after Flush doesn't fit - expected to throw earlier!\00", align 1
@_ZTVN6duckdb9dict_fsst25CompressedStringScanStateE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6duckdb9dict_fsst25CompressedStringScanStateE, ptr @_ZN6duckdb9dict_fsst25CompressedStringScanStateD1Ev, ptr @_ZN6duckdb9dict_fsst25CompressedStringScanStateD0Ev] }, align 8
@.str.4 = private unnamed_addr constant [117 x i8] c"This block was written with a mode that is not recognized by this version, highest available mode %d, found mode: %d\00", align 1
@.str.5 = private unnamed_addr constant [98 x i8] c"Failed to scan dictionary string - index was out of range. Database file appears to be corrupted.\00", align 1
@_ZTIN6duckdb11IOExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb11IOExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb11IOExceptionE = linkonce_odr constant [23 x i8] c"N6duckdb11IOExceptionE\00", comdat, align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"DICT_FSST: not performing a sequential scan?\00", align 1
@_ZTIN6duckdb9dict_fsst24DictFSSTCompressionStateE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb9dict_fsst24DictFSSTCompressionStateE, ptr @_ZTIN6duckdb16CompressionStateE }, align 8
@_ZTSN6duckdb9dict_fsst24DictFSSTCompressionStateE = constant [46 x i8] c"N6duckdb9dict_fsst24DictFSSTCompressionStateE\00", align 1
@_ZTIN6duckdb16CompressionStateE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6duckdb16CompressionStateE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6duckdb16CompressionStateE = linkonce_odr constant [28 x i8] c"N6duckdb16CompressionStateE\00", comdat, align 1
@_ZTIN6duckdb9dict_fsst25CompressedStringScanStateE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb9dict_fsst25CompressedStringScanStateE, ptr @_ZTIN6duckdb16SegmentScanStateE }, align 8
@_ZTSN6duckdb9dict_fsst25CompressedStringScanStateE = constant [47 x i8] c"N6duckdb9dict_fsst25CompressedStringScanStateE\00", align 1
@_ZTIN6duckdb16SegmentScanStateE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6duckdb16SegmentScanStateE }, comdat, align 8
@_ZTSN6duckdb16SegmentScanStateE = linkonce_odr constant [28 x i8] c"N6duckdb16SegmentScanStateE\00", comdat, align 1
@_ZTIN6duckdb9dict_fsst20DictFSSTAnalyzeStateE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb9dict_fsst20DictFSSTAnalyzeStateE, ptr @_ZTIN6duckdb12AnalyzeStateE }, comdat, align 8
@_ZTSN6duckdb9dict_fsst20DictFSSTAnalyzeStateE = linkonce_odr constant [42 x i8] c"N6duckdb9dict_fsst20DictFSSTAnalyzeStateE\00", comdat, align 1
@_ZTIN6duckdb12AnalyzeStateE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6duckdb12AnalyzeStateE }, comdat, align 8
@_ZTSN6duckdb12AnalyzeStateE = linkonce_odr constant [24 x i8] c"N6duckdb12AnalyzeStateE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Attempting to get the index of an optional_idx that is not set\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"Attempting to dereference an optional pointer that is not set\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"DictFSSTMode not handled!\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.11 = private unnamed_addr constant [84 x i8] c"Corrupt database file: decoded FSST string of >=%llu bytes (should be <=%llu bytes)\00", align 1
@_ZN6duckdb8string_t13INLINE_LENGTHE = external constant i64, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Attempted to dereference shared_ptr that is NULL!\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"Operation requires a flat vector but a non-flat vector was encountered\00", align 1
@.str.16 = private unnamed_addr constant [76 x i8] c"Information loss on integer cast: value %d outside of target range [%d, %d]\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"Expected unified vector format of type %s, but found type %s\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Attempted to dereference unique_ptr that is NULL!\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Invalid bit width for bitpacking\00", align 1
@_ZTISt11logic_error = external constant ptr
@.str.20 = private unnamed_addr constant [56 x i8] c"Attempted to access index %ld within vector of size %ld\00", align 1
@.str.21 = private unnamed_addr constant [120 x i8] c"AddLookup in DictFSST failed: required: %d, available: %d, indices: %d, bitpacking: %b, dict offset: %d, str length: %d\00", align 1
@.str.22 = private unnamed_addr constant [133 x i8] c"AddToDictionary in DictFSST failed: required: %d, available: %d, dict offset + str_len: %d, new str length: %d, new dict indices: %d\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"'back' called on an empty vector!\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"Expected vector of type %s, but found vector of type %s\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb15SelectionVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb15SelectionVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb15SelectionVectorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb15SelectionVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb15SelectionVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb15SelectionVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb15SelectionVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb15SelectionVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb15SelectionVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [90 x i8] c"St23_Sp_counted_ptr_inplaceIN6duckdb15SelectionVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [88 x i8] c"St23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1

@_ZN6duckdb9dict_fsst20DictFSSTAnalyzeStateC1ERKNS_15CompressionInfoE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb9dict_fsst20DictFSSTAnalyzeStateC2ERKNS_15CompressionInfoE
@_ZN6duckdb9dict_fsst24DictFSSTCompressionStateC1ERNS_24ColumnDataCheckpointDataEONS_10unique_ptrINS0_20DictFSSTAnalyzeStateESt14default_deleteIS5_ELb1EEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb9dict_fsst24DictFSSTCompressionStateC2ERNS_24ColumnDataCheckpointDataEONS_10unique_ptrINS0_20DictFSSTAnalyzeStateESt14default_deleteIS5_ELb1EEE
@_ZN6duckdb9dict_fsst24DictFSSTCompressionStateD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb9dict_fsst24DictFSSTCompressionStateD2Ev
@_ZN6duckdb9dict_fsst25CompressedStringScanStateD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb9dict_fsst25CompressedStringScanStateD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb9dict_fsst20DictFSSTAnalyzeStateC2ERKNS_15CompressionInfoE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 25), (32, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %1, align 8, !tbaa !17
  store i64 %i.b, ptr %i.a, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb9dict_fsst20DictFSSTAnalyzeStateE, i64 16), ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb9dict_fsst20DictFSSTAnalyzeState7AnalyzeERNS_6VectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit unwind label %bb.j

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit: ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %.not41 = icmp eq i64 %2, 0
  br i1 %.not41, label %.critedge35, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit
  %i.c = load ptr, ptr %3, align 8, !tbaa !47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %.not.i36 = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  br i1 %.not.i36, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.promoted = load i64, ptr %i.h, align 8, !tbaa !50 ; 2 uses
  %.promoted56 = load i64, ptr %i.i, align 8, !tbaa !25 ; 2 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us: ; preds = %.lr.ph.split.us, %.critedge.us.us
  %i.j = phi i64 [ %i.q, %.critedge.us.us ], [ %.promoted56, %.lr.ph.split.us ] ; 2 uses
  %i.k = phi i64 [ %i.o, %.critedge.us.us ], [ %.promoted, %.lr.ph.split.us ]
  %.02342.us.us = phi i64 [ %i.s, %.critedge.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.02342.us.us
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51   ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = add i64 %i.k, %i.n                       ; 2 uses
  store i64 %i.o, ptr %i.h, align 8, !tbaa !50
  %i.p = icmp ult i64 %i.j, %i.n
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us
  store i64 %i.n, ptr %i.i, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us
  %i.q = phi i64 [ %i.n, %bb.c ], [ %i.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us ]
  %i.r = icmp ult i32 %i.m, 16384
  br i1 %i.r, label %.critedge.us.us, label %.loopexit

.critedge.us.us:                                  ; preds = %bb.d
  %i.s = add nuw i64 %.02342.us.us, 1             ; 2 uses
  %exitcond67.not = icmp eq i64 %i.s, %2
  br i1 %exitcond67.not, label %.critedge35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us, !llvm.loop !266

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph.split.us, %.critedge.us
  %i.t = phi i64 [ %i.ad, %.critedge.us ], [ %.promoted56, %.lr.ph.split.us ] ; 2 uses
  %i.u = phi i64 [ %i.ab, %.critedge.us ], [ %.promoted, %.lr.ph.split.us ]
  %.02342.us = phi i64 [ %i.af, %.critedge.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02342.us
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.x
  %i.z = load i32, ptr %i.y, align 8, !tbaa !51   ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = add i64 %i.u, %i.aa                     ; 2 uses
  store i64 %i.ab, ptr %i.h, align 8, !tbaa !50
  %i.ac = icmp ult i64 %i.t, %i.aa
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.ad = phi i64 [ %i.aa, %bb.e ], [ %i.t, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ]
  %i.ae = icmp ult i32 %i.z, 16384
  br i1 %i.ae, label %.critedge.us, label %.loopexit

.critedge.us:                                     ; preds = %bb.f
  %i.af = add nuw i64 %.02342.us, 1               ; 2 uses
  %exitcond66.not = icmp eq i64 %i.af, %2
  br i1 %exitcond66.not, label %.critedge35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !266

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us48, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us48: ; preds = %.lr.ph.split, %.critedge.us50
  %.02342.us47 = phi i64 [ %i.au, %.critedge.us50 ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.ag = lshr i64 %.02342.us47, 6
  %i.ah = and i64 %.02342.us47, 63
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ag
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !53
  %i.ak = shl nuw i64 1, %i.ah
  %i.al = and i64 %i.aj, %i.ak
  %.not38.us = icmp eq i64 %i.al, 0
  br i1 %.not38.us, label %4, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us49

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us49: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us48
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.02342.us47
  %i.an = load i32, ptr %i.am, align 8, !tbaa !51 ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = load i64, ptr %i.h, align 8, !tbaa !50
  %i.aq = add i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.h, align 8, !tbaa !50
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !25
  %i.as = icmp ult i64 %i.ar, %i.ao
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us49
  store i64 %i.ao, ptr %i.i, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us49
  %i.at = icmp ult i32 %i.an, 16384
  br i1 %i.at, label %.critedge.us50, label %.loopexit

4:                                                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us48
  store i8 1, ptr %i.g, align 8, !tbaa !26
  br label %.critedge.us50

.critedge.us50:                                   ; preds = %4, %bb.h
  %i.au = add nuw i64 %.02342.us47, 1             ; 2 uses
  %exitcond65.not = icmp eq i64 %i.au, %2
  br i1 %exitcond65.not, label %.critedge35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us48, !llvm.loop !266

bb.i:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.j:                                             ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph.split, %.critedge
  %.02342 = phi i64 [ %i.bo, %.critedge ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.ax = lshr i64 %.02342, 6
  %i.ay = and i64 %.02342, 63
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ax
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !53
  %i.bb = shl nuw i64 1, %i.ay
  %i.bc = and i64 %i.ba, %i.bb
  %.not38 = icmp eq i64 %i.bc, 0
  br i1 %.not38, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  store i8 1, ptr %i.g, align 8, !tbaa !26
  br label %.critedge

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02342
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !51 ; 2 uses
  %i.bi = zext i32 %i.bh to i64                   ; 3 uses
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !50
  %i.bk = add i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.h, align 8, !tbaa !50
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !25
  %i.bm = icmp ult i64 %i.bl, %i.bi
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  store i64 %i.bi, ptr %i.i, align 8, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bn = icmp ult i32 %i.bh, 16384
  br i1 %i.bn, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.m, %bb.k
  %i.bo = add nuw i64 %.02342, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %2
  br i1 %exitcond.not, label %.critedge35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !266

.critedge35:                                      ; preds = %.critedge, %.critedge.us50, %.critedge.us, %.critedge.us.us, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !54
  %i.br = add i64 %i.bq, %2
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.h, %bb.f, %bb.d, %.critedge35
  %.not40 = phi i1 [ true, %.critedge35 ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.m ]
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !55 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bu, align 8, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !58
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #23, !inline_history !0
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #23, !inline_history !0
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.q ], [ %i.ch, %bb.r ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.s, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !59

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.o, %.loopexit
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !55 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.cl, align 8, !tbaa !57
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !58
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #23, !inline_history !1
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #23, !inline_history !1
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.x:                                             ; preds = %bb.v
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.co, %bb.w ], [ %i.cy, %bb.x ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cz, label %bb.y, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !59

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.not40

bb.z:                                             ; preds = %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.aw, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #3

declare void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, ptr noundef nonnull align 8 dereferenceable(73)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
end_hunk_0
