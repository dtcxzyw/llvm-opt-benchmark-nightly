Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmRLECodec?download=true
inline.NumInlined: 816
inline.NumDeleted: 407
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
%"class.std::__1::__compressed_pair.17" = type { %"struct.std::__1::__compressed_pair_elem.18" }
%"struct.std::__1::__compressed_pair_elem.18" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon.19 }
%union.anon.19 = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.20, i64, ptr }
%struct.anon.20 = type { i64 }
%"class.std::__1::basic_stringstream" = type { %"class.std::__1::basic_iostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_iostream.base" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_ostream.base" }
%"class.std::__1::basic_istream.base" = type { ptr, i64 }
%"class.std::__1::basic_ostream.base" = type { ptr }
%"class.std::__1::basic_stringbuf" = type <{ %"class.std::__1::basic_streambuf", %"class.std::__1::basic_string", ptr, i32, [4 x i8] }>
%"class.std::__1::basic_streambuf" = type { ptr, %"class.std::__1::locale", ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::locale" = type { ptr }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"class.gdcm::Fragment" = type { %"class.gdcm::DataElement" }
%"class.gdcm::DataElement" = type { %"class.gdcm::Tag", %"class.gdcm::VL", %"class.gdcm::VR", %"class.gdcm::SmartPointer.9" }
%"class.gdcm::Tag" = type { %union.anon }
%union.anon = type { i32 }
%"class.gdcm::VL" = type { i32 }
%"class.gdcm::VR" = type { i64 }
%"class.gdcm::SmartPointer.9" = type { ptr }
%"class.std::__1::basic_ostringstream" = type { %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }
%"class.gdcm::BasicOffsetTable" = type { %"class.gdcm::Fragment" }
%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%"class.gdcm::ParseException" = type { %"class.gdcm::Exception", %"class.gdcm::DataElement" }
%"class.gdcm::Exception" = type { %"class.std::exception", %"class.std::logic_error", %"class.std::logic_error" }
%"class.gdcm::SmartPointer.30" = type { ptr }
%"class.rle::pixel_info" = type { i8, i8 }
%"class.rle::image_info" = type { i32, i32, %"class.rle::pixel_info", i8, i8 }
%"class.gdcm::memsrc" = type { %"class.rle::source", ptr, ptr, i64 }
%"class.rle::source" = type { ptr }
%"class.rle::rle_encoder" = type { ptr }
%"class.gdcm::streamdest" = type { %"class.rle::dest", ptr, %"class.std::__1::fpos" }
%"class.rle::dest" = type { ptr }
%"class.std::__1::fpos" = type { %struct.__mbstate_t, i64 }
%struct.__mbstate_t = type { i32, %union.anon.21 }
%union.anon.21 = type { i32 }

$_ZN4gdcm9ExceptionC2EPKcS2_jS2_ = comdat any

$_ZN4gdcm9ExceptionD2Ev = comdat any

$_ZN4gdcm21count_identical_bytesEPKcm = comdat any

$_ZN4gdcm25count_nonrepetitive_bytesEPKcm = comdat any

$_ZN4gdcm27DoInvertPlanarConfigurationIcEEbPT_PKS1_j = comdat any

$_ZN4gdcm27DoInvertPlanarConfigurationIsEEbPT_PKS1_j = comdat any

$_ZN4gdcm27DoInvertPlanarConfigurationIiEEbPT_PKS1_j = comdat any

$_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev = comdat any

$_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = comdat any

$_ZN4gdcm11DataElement12SetByteValueEPKcNS_2VLE = comdat any

$_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEED2Ev = comdat any

$_ZNK4gdcm11DataElement8GetValueEv = comdat any

$_ZN4gdcm16BasicOffsetTable4ReadINS_11SwapperNoOpEEERNSt3__113basic_istreamIcNS3_11char_traitsIcEEEES8_ = comdat any

$_ZN4gdcm8Fragment12ReadPreValueINS_11SwapperNoOpEEERNSt3__113basic_istreamIcNS3_11char_traitsIcEEEES8_ = comdat any

$_ZN4gdcm5Coder12InternalCodeEPKcmRNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEE = comdat any

$_ZN4gdcm10ImageCodec14SetPixelFormatERKNS_11PixelFormatE = comdat any

$__clang_call_terminate = comdat any

$_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_ = comdat any

$_ZN4gdcm9ExceptionD0Ev = comdat any

$_ZNK4gdcm9Exception4whatEv = comdat any

$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev = comdat any

$_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev = comdat any

$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = comdat any

$_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = comdat any

$_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZN4gdcm12SmartPointerINS_5ValueEED2Ev = comdat any

$_ZN4gdcm12SmartPointerINS_5ValueEEaSEPS1_ = comdat any

$_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm = comdat any

$_ZNKSt3__16vectorIcNS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZN4gdcm6memsrc4readEPci = comdat any

$_ZN4gdcm6memsrc4tellEv = comdat any

$_ZN4gdcm6memsrc4seekEj = comdat any

$_ZN4gdcm6memsrc3eofEv = comdat any

$_ZN4gdcm6memsrc5cloneEv = comdat any

$_ZN3rle6sourceD2Ev = comdat any

$_ZN4gdcm6memsrcD0Ev = comdat any

$_ZN4gdcm10streamdest5writeEPKci = comdat any

$_ZN4gdcm10streamdest4seekEj = comdat any

$_ZN3rle4destD2Ev = comdat any

$_ZN4gdcm10streamdestD0Ev = comdat any

$_ZN4gdcm14ParseExceptionC2Ev = comdat any

$_ZN4gdcm14ParseExceptionC2ERKS0_ = comdat any

$_ZN4gdcm14ParseExceptionD2Ev = comdat any

$_ZN4gdcm9ByteValue4ReadINS_11SwapperNoOpEEERNSt3__113basic_istreamIcNS3_11char_traitsIcEEEES8_ = comdat any

$_ZN4gdcm12SmartPointerINS_9ByteValueEED2Ev = comdat any

$_ZN4gdcm14ParseExceptionD0Ev = comdat any

$_ZTIN4gdcm9ExceptionE = comdat any

$_ZTSN4gdcm9ExceptionE = comdat any

$_ZTVN4gdcm9ExceptionE = comdat any

$_ZTINSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE = comdat any

$_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE = comdat any

$_ZTVN4gdcm6memsrcE = comdat any

$_ZTIN4gdcm6memsrcE = comdat any

$_ZTSN4gdcm6memsrcE = comdat any

$_ZTIN3rle6sourceE = comdat any

$_ZTSN3rle6sourceE = comdat any

$_ZTVN4gdcm10streamdestE = comdat any

$_ZTIN4gdcm10streamdestE = comdat any

$_ZTSN4gdcm10streamdestE = comdat any

$_ZTIN3rle4destE = comdat any

$_ZTSN3rle4destE = comdat any

$_ZTIN4gdcm14ParseExceptionE = comdat any

$_ZTSN4gdcm14ParseExceptionE = comdat any

$_ZTVN4gdcm14ParseExceptionE = comdat any

@_ZTVN4gdcm8RLECodecE = dso_local constant { [20 x ptr], [7 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN4gdcm8RLECodecE, ptr @_ZN4gdcm8RLECodecD2Ev, ptr @_ZN4gdcm8RLECodecD0Ev, ptr @_ZNK4gdcm8RLECodec7CanCodeERKNS_14TransferSyntaxE, ptr @_ZN4gdcm8RLECodec4CodeERKNS_11DataElementERS1_, ptr @_ZN4gdcm5Coder12InternalCodeEPKcmRNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEE, ptr @_ZNK4gdcm8RLECodec9CanDecodeERKNS_14TransferSyntaxE, ptr @_ZN4gdcm8RLECodec6DecodeERKNS_11DataElementERS1_, ptr @_ZN4gdcm8RLECodec13GetHeaderInfoERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS_14TransferSyntaxE, ptr @_ZNK4gdcm8RLECodec5CloneEv, ptr @_ZN4gdcm8RLECodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE, ptr @_ZN4gdcm10ImageCodec7IsValidERKNS_25PhotometricInterpretationE, ptr @_ZN4gdcm10ImageCodec14SetPixelFormatERKNS_11PixelFormatE, ptr @_ZN4gdcm8RLECodec11StartEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE, ptr @_ZN4gdcm8RLECodec12IsRowEncoderEv, ptr @_ZN4gdcm8RLECodec14IsFrameEncoderEv, ptr @_ZN4gdcm8RLECodec15AppendRowEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEEPKcm, ptr @_ZN4gdcm8RLECodec17AppendFrameEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEEPKcm, ptr @_ZN4gdcm8RLECodec10StopEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE], [7 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN4gdcm8RLECodecE, ptr @_ZThn8_N4gdcm8RLECodecD1Ev, ptr @_ZThn8_N4gdcm8RLECodecD0Ev, ptr @_ZThn8_NK4gdcm8RLECodec9CanDecodeERKNS_14TransferSyntaxE, ptr @_ZThn8_N4gdcm8RLECodec6DecodeERKNS_11DataElementERS1_, ptr @_ZThn8_N4gdcm8RLECodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE] }, align 8
@.str = private unnamed_addr constant [56 x i8] c"An invalid logic behavior occurredlength <= inputlength\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"/opt-bench/work/tev/tev/dependencies/GDCM/Source/MediaStorageAndFileFormat/gdcmRLECodec.cxx\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTIN4gdcm9ExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4gdcm9ExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4gdcm9ExceptionE = linkonce_odr dso_local constant [18 x i8] c"N4gdcm9ExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@.str.3 = private unnamed_addr constant [61 x i8] c"An invalid logic behavior occurredpin <= input + inputlength\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"An invalid logic behavior occurred1 - *pout == count\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"An invalid logic behavior occurred*pout <= -1 && *pout >= -127\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"An invalid logic behavior occurred*pout != -128 && *pout+1 == count\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"An invalid logic behavior occurred*pout >= 0\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"An invalid logic behavior occurredcount <= (int)length\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"An invalid logic behavior occurredbv\00", align 1
@.str.10 = private unnamed_addr constant [99 x i8] c"An invalid logic behavior occurredbitsallocated == 8 || bitsallocated == 16 || bitsallocated == 32\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"An invalid logic behavior occurredMaxNumSegments % 3 == 0\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"An invalid logic behavior occurredbitsallocated == 32\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"An invalid logic behavior occurred!(image_len % 4)\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"An invalid logic behavior occurrediimage_len % 4 == 0\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"An invalid logic behavior occurred!(image_len % 2)\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"An invalid logic behavior occurrediimage_len % 2 == 0\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"An invalid logic behavior occurredimage_len % MaxNumSegments == 0\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"An invalid logic behavior occurredptr < ptr_img + image_len\00", align 1
@.str.19 = private unnamed_addr constant [105 x i8] c"An invalid logic behavior occurred(MaxNumSegments-1) * input_seg_length + partition == (size_t)image_len\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"An invalid logic behavior occurredpartition % dims[1] == 0\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"An invalid logic behavior occurredllength\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"An invalid logic behavior occurreddata.str().size() == length\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"An invalid logic behavior occurred!str.empty()\00", align 1
@_ZTIN4gdcm5ValueE = external constant ptr
@_ZTIN4gdcm9ByteValueE = external constant ptr
@.str.25 = private unnamed_addr constant [47 x i8] c"An invalid logic behavior occurredcheck == len\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"An invalid logic behavior occurredpos == len\00", align 1
@.str.27 = private unnamed_addr constant [65 x i8] c"An invalid logic behavior occurredpf.GetBitsAllocated() % 8 == 0\00", align 1
@.str.28 = private unnamed_addr constant [63 x i8] c"An invalid logic behavior occurredpf != PixelFormat::SINGLEBIT\00", align 1
@.str.29 = private unnamed_addr constant [88 x i8] c"An invalid logic behavior occurredpf != PixelFormat::UINT12 && pf != PixelFormat::INT12\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"An invalid logic behavior occurreddiff == 1\00", align 1
@.str.32 = private unnamed_addr constant [107 x i8] c"An invalid logic behavior occurredend - start == frag.GetVL() || (size_t)(end - start) + 1 == frag.GetVL()\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"An invalid logic behavior occurredos.good()\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"An invalid logic behavior occurredlength\00", align 1
@.str.35 = private unnamed_addr constant [165 x i8] c"An invalid logic behavior occurredGetPixelFormat().GetBitsAllocated() == 32 || GetPixelFormat().GetBitsAllocated() == 16 || GetPixelFormat().GetBitsAllocated() == 8\00", align 1
@.str.36 = private unnamed_addr constant [123 x i8] c"An invalid logic behavior occurredGetPixelFormat().GetSamplesPerPixel() == 3 || GetPixelFormat().GetSamplesPerPixel() == 1\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"An invalid logic behavior occurred0\00", align 1
@_ZTIN4gdcm8RLECodecE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4gdcm8RLECodecE, ptr @_ZTIN4gdcm10ImageCodecE }, align 8
@_ZTSN4gdcm8RLECodecE = dso_local constant [17 x i8] c"N4gdcm8RLECodecE\00", align 1
@_ZTIN4gdcm10ImageCodecE = external constant ptr
@_ZTVN4gdcm9ExceptionE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4gdcm9ExceptionE, ptr @_ZN4gdcm9ExceptionD2Ev, ptr @_ZN4gdcm9ExceptionD0Ev, ptr @_ZNK4gdcm9Exception4whatEv] }, comdat, align 8
@.str.39 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"):\0A\00", align 1
@_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [16 x ptr] }, align 8
@.str.42 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.43 = private unnamed_addr constant [38 x i8] c"An invalid logic behavior occurredlen\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"An invalid logic behavior occurredcount <= 128\00", align 1
@.str.46 = private unnamed_addr constant [61 x i8] c"An invalid logic behavior occurred1 <= count && count <= 128\00", align 1
@_ZTVN4gdcm19SequenceOfFragmentsE = external constant { [10 x ptr] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@.str.47 = private unnamed_addr constant [62 x i8] c"An invalid logic behavior occurredBitsStored <= BitsAllocated\00", align 1
@.str.48 = private unnamed_addr constant [93 x i8] c"/opt-bench/work/tev/tev/dependencies/GDCM/Source/MediaStorageAndFileFormat/gdcmPixelFormat.h\00", align 1
@_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [10 x ptr], align 8
@.str.49 = private unnamed_addr constant [53 x i8] c"An invalid logic behavior occurredReferenceCount > 0\00", align 1
@.str.50 = private unnamed_addr constant [69 x i8] c"/opt-bench/work/tev/tev/dependencies/GDCM/Source/Common/gdcmObject.h\00", align 1
@_ZTVN4gdcm9ByteValueE = external constant { [10 x ptr] }, align 8
@.str.51 = private unnamed_addr constant [120 x i8] c"Assert: In /opt-bench/work/tev/tev/dependencies/GDCM/Source/DataStructureAndEncodingDefinition/gdcmDataElement.h, line \00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c", function \00", align 1
@__PRETTY_FUNCTION__._ZNK4gdcm11DataElement8GetValueEv = private unnamed_addr constant [49 x i8] c"const Value &gdcm::DataElement::GetValue() const\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@_ZTINSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE }, comdat, align 8
@_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr dso_local constant [63 x i8] c"NSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE\00", comdat, align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTVN4gdcm6memsrcE = linkonce_odr dso_local constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN4gdcm6memsrcE, ptr @_ZN4gdcm6memsrc4readEPci, ptr @_ZN4gdcm6memsrc4tellEv, ptr @_ZN4gdcm6memsrc4seekEj, ptr @_ZN4gdcm6memsrc3eofEv, ptr @_ZN4gdcm6memsrc5cloneEv, ptr @_ZN3rle6sourceD2Ev, ptr @_ZN4gdcm6memsrcD0Ev] }, comdat, align 8
@_ZTIN4gdcm6memsrcE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4gdcm6memsrcE, ptr @_ZTIN3rle6sourceE }, comdat, align 8
@_ZTSN4gdcm6memsrcE = linkonce_odr dso_local constant [15 x i8] c"N4gdcm6memsrcE\00", comdat, align 1
@_ZTIN3rle6sourceE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3rle6sourceE }, comdat, align 8
@_ZTSN3rle6sourceE = linkonce_odr dso_local constant [14 x i8] c"N3rle6sourceE\00", comdat, align 1
@.str.58 = private unnamed_addr constant [51 x i8] c"An invalid logic behavior occurredcur <= ptr + len\00", align 1
@.str.59 = private unnamed_addr constant [65 x i8] c"An invalid logic behavior occurredcur <= ptr + len && cur >= ptr\00", align 1
@_ZTVN4gdcm10streamdestE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4gdcm10streamdestE, ptr @_ZN4gdcm10streamdest5writeEPKci, ptr @_ZN4gdcm10streamdest4seekEj, ptr @_ZN3rle4destD2Ev, ptr @_ZN4gdcm10streamdestD0Ev] }, comdat, align 8
@_ZTIN4gdcm10streamdestE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4gdcm10streamdestE, ptr @_ZTIN3rle4destE }, comdat, align 8
@_ZTSN4gdcm10streamdestE = linkonce_odr dso_local constant [20 x i8] c"N4gdcm10streamdestE\00", comdat, align 1
@_ZTIN3rle4destE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3rle4destE }, comdat, align 8
@_ZTSN3rle4destE = linkonce_odr dso_local constant [12 x i8] c"N3rle4destE\00", comdat, align 1
@.str.60 = private unnamed_addr constant [85 x i8] c"An invalid logic behavior occurredlength == inputlength || length == inputlength - 1\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"An invalid logic behavior occurredr == input + length\00", align 1
@.str.64 = private unnamed_addr constant [58 x i8] c"An invalid logic behavior occurredg == input + length + 1\00", align 1
@.str.66 = private unnamed_addr constant [58 x i8] c"An invalid logic behavior occurredb == input + length + 2\00", align 1
@.str.67 = private unnamed_addr constant [59 x i8] c"An invalid logic behavior occurred0 && \22Should not happen\22\00", align 1
@.str.68 = private unnamed_addr constant [107 x i8] c"/opt-bench/work/tev/tev/dependencies/GDCM/Source/DataStructureAndEncodingDefinition/gdcmBasicOffsetTable.h\00", align 1
@_ZTIN4gdcm14ParseExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4gdcm14ParseExceptionE, ptr @_ZTIN4gdcm9ExceptionE }, comdat, align 8
@_ZTSN4gdcm14ParseExceptionE = linkonce_odr dso_local constant [24 x i8] c"N4gdcm14ParseExceptionE\00", comdat, align 1
@.str.69 = private unnamed_addr constant [125 x i8] c"Assert: In /opt-bench/work/tev/tev/dependencies/GDCM/Source/DataStructureAndEncodingDefinition/gdcmBasicOffsetTable.h, line \00", align 1
@__PRETTY_FUNCTION__._ZN4gdcm16BasicOffsetTable4ReadINS_11SwapperNoOpEEERNSt3__113basic_istreamIcNS3_11char_traitsIcEEEES8_ = private unnamed_addr constant [87 x i8] c"std::istream &gdcm::BasicOffsetTable::Read(std::istream &) [TSwap = gdcm::SwapperNoOp]\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.71 = private unnamed_addr constant [72 x i8] c"/opt-bench/work/tev/tev/dependencies/GDCM/Source/Common/gdcmException.h\00", align 1
@_ZTVN4gdcm14ParseExceptionE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4gdcm14ParseExceptionE, ptr @_ZN4gdcm14ParseExceptionD2Ev, ptr @_ZN4gdcm14ParseExceptionD0Ev, ptr @_ZNK4gdcm9Exception4whatEv] }, comdat, align 8
@.str.72 = private unnamed_addr constant [93 x i8] c"An invalid logic behavior occurredInternal.size() == Length || Internal.size() == Length + 1\00", align 1
@.str.73 = private unnamed_addr constant [100 x i8] c"/opt-bench/work/tev/tev/dependencies/GDCM/Source/DataStructureAndEncodingDefinition/gdcmByteValue.h\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"Problem #1\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"Problem #2\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"Problem #3\00", align 1

@_ZN4gdcm8RLECodecC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4gdcm8RLECodecC2Ev
@_ZN4gdcm8RLECodecD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4gdcm8RLECodecD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4gdcm8RLECodecC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4gdcm10ImageCodecC2Ev(ptr noundef nonnull align 8 dereferenceable(65) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4gdcm8RLECodecE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4gdcm8RLECodecE, i64 176), ptr %i.a, align 8, !tbaa !12
  %i.b = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #24
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, i8 0, i64 112, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.b, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4gdcm10ImageCodecD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) #25
  resume { ptr, i32 } %i.e
}

declare void @_ZN4gdcm10ImageCodecC2Ev(ptr noundef nonnull align 8 dereferenceable(65)) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4gdcm10ImageCodecD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4gdcm8RLECodecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) initializes((0, 16)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4gdcm8RLECodecE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4gdcm8RLECodecE, i64 176), ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.f, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.l) #26
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit.i

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN4gdcm12RLEInternalsD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.n, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.t) #26
  br label %_ZN4gdcm12RLEInternalsD2Ev.exit

_ZN4gdcm12RLEInternalsD2Ev.exit:                  ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 112) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZN4gdcm12RLEInternalsD2Ev.exit, %bb.a
  tail call void @_ZN4gdcm10ImageCodecD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) #25
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_N4gdcm8RLECodecD1Ev(ptr noundef initializes((-8, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4gdcm8RLECodecE, i64 16), ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4gdcm8RLECodecE, i64 176), ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4gdcm8RLECodecD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.f, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = ptrtoint ptr %i.i to i64
end_hunk_0
begin_hunk_1_@_ZN4gdcm25count_nonrepetitive_bytesEPKcm:bb.a

bb.k:                                             ; preds = %bb.j, %bb.d
  %.sink = phi ptr [ %i.s, %bb.j ], [ %i.a, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.b, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm8RLECodec4CodeERKNS_11DataElementERS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEEC2EPS1_.exit:
  %i.a = alloca [65536 x i8], align 16            ; 5 uses
  %3 = alloca %"class.gdcm::SmartPointer.8", align 8 ; 7 uses
  %4 = alloca %"class.gdcm::RLEHeader", align 4   ; 7 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 21 uses
  %6 = alloca %"class.std::__1::basic_stringstream", align 8 ; 30 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__1::basic_stringstream", align 8 ; 19 uses
  %10 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.gdcm::Fragment", align 8   ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4gdcm19SequenceOfFragmentsE, i64 16), ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536805378, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 -1, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %3, align 8, !tbaa !53
  store i64 1, ptr %i.d, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread, label %_ZNK4gdcm11DataElement12GetByteValueEv.exit

_ZNK4gdcm11DataElement12GetByteValueEv.exit:      ; preds = %_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEEC2EPS1_.exit
  %i.l = tail call ptr @__dynamic_cast(ptr nonnull %i.j, ptr nonnull @_ZTIN4gdcm5ValueE, ptr nonnull @_ZTIN4gdcm9ByteValueE, i64 0) #25 ; 5 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread, label %bb.d

_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread: ; preds = %_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEEC2EPS1_.exit, %_ZNK4gdcm11DataElement12GetByteValueEv.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 364, ptr noundef nonnull @.str.2)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %bb.hi unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #25
  br label %.body

bb.d:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41
  %i.t = icmp eq ptr %i.q, %i.s
  %spec.select.i = select i1 %i.t, ptr null, ptr %i.q ; 4 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke i32 %i.w(ptr noundef nonnull align 8 dereferenceable(44) %i.l)
          to label %bb.e unwind label %bb.n       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !59
  %i.ab = udiv i32 %i.x, %i.aa
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !60 ; 3 uses
  %i.ag = icmp eq i16 %i.af, 12
  br i1 %i.ag, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !61 ; 2 uses
  %.not.i = icmp ugt i16 %i.ai, 12
  br i1 %.not.i, label %bb.g, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 131, ptr noundef nonnull @.str.2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #25
  br label %.body

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit:     ; preds = %bb.f
  %i.al = icmp eq i16 %i.ai, 12
  br i1 %i.al, label %bb.j, label %.thread413

bb.j:                                             ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit
  %i.am = load i32, ptr %i.b, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !59
  %i.ap = invoke noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.ad)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aq = zext i32 %i.am to i64
  %i.ar = zext i32 %i.ao to i64
  %i.as = zext i16 %i.ap to i64
  %i.at = shl nuw nsw i64 %i.aq, 1
  %i.au = mul i64 %i.at, %i.ar
  %i.av = mul i64 %i.au, %i.as                    ; 2 uses
  %i.aw = load i32, ptr %i.z, align 8, !tbaa !59
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul i64 %i.av, %i.ax
  %i.az = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #24
          to label %bb.l unwind label %bb.q       ; 4 uses

bb.l:                                             ; preds = %bb.k
  %i.ba = invoke noundef zeroext i1 @_ZN4gdcm14Unpacker12Bits6UnpackEPcPKcm(ptr noundef nonnull %i.az, ptr noundef %spec.select.i, i64 noundef %i.y)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.ba, label %.thread413, label %.thread.sink.split

bb.n:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.e
  %i.bg = zext i16 %i.af to i32                   ; 2 uses
  %i.bh = icmp ugt i16 %i.af, 8
  br i1 %i.bh, label %.thread413, label %bb.u

.thread413:                                       ; preds = %bb.m, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit, %bb.s
  %.1229426 = phi i32 [ %i.bg, %bb.s ], [ 12, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit ], [ 16, %bb.m ]
  %.0230423 = phi ptr [ null, %bb.s ], [ null, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit ], [ %i.az, %bb.m ]
  %.1232420 = phi i64 [ %i.ac, %bb.s ], [ %i.ac, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit ], [ %i.av, %bb.m ] ; 2 uses
  %.1234419 = phi ptr [ %spec.select.i, %bb.s ], [ %spec.select.i, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit ], [ %i.az, %bb.m ]
  %i.bi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.1232420) #24
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %.thread413
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %.thread413, %bb.s
  %.1229425 = phi i32 [ %i.bg, %bb.s ], [ %.1229426, %.thread413 ] ; 5 uses
  %.0230422 = phi ptr [ null, %bb.s ], [ %.0230423, %.thread413 ] ; 6 uses
  %.1232421 = phi i64 [ %i.ac, %bb.s ], [ %.1232420, %.thread413 ] ; 15 uses
  %.1234418 = phi ptr [ %spec.select.i, %bb.s ], [ %.1234419, %.thread413 ]
  %.0224 = phi ptr [ null, %bb.s ], [ %i.bi, %.thread413 ] ; 25 uses
  %i.bk = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !179
  %i.bm = icmp eq i32 %i.bl, 4
  br i1 %i.bm, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %bb.x unwind label %bb.t

bb.x:                                             ; preds = %bb.w
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !179
  %i.bp = icmp eq i32 %i.bo, 8
  br i1 %i.bp, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %bb.z unwind label %bb.t

bb.z:                                             ; preds = %bb.y
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !179
  %i.bs = icmp eq i32 %i.br, 13
  br i1 %i.bs, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %bb.ab unwind label %bb.t

bb.ab:                                            ; preds = %bb.aa
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !179
  %i.bv = icmp eq i32 %i.bu, 9
  br i1 %i.bv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  %i.bw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.1232421) #24
          to label %bb.ad unwind label %bb.t

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0223 = phi ptr [ null, %bb.ab ], [ %i.bw, %bb.ac ] ; 12 uses
  %i.bx = icmp eq i32 %.1229425, 8                ; 2 uses
  br i1 %i.bx, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  switch i32 %.1229425, label %bb.ag [
    i32 16, label %bb.al
    i32 32, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.by = icmp eq ptr %.0224, null
  br i1 %i.by, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZdaPv(ptr noundef nonnull %.0224) #26
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bz = icmp eq ptr %.0223, null
  br i1 %i.bz, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZdaPv(ptr noundef nonnull %.0223) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ca = icmp eq ptr %.0230422, null
  br i1 %i.ca, label %.thread, label %.thread.sink.split

bb.al:                                            ; preds = %bb.ae, %bb.ad, %bb.af
  %.0221 = phi i32 [ 4, %bb.af ], [ 1, %bb.ad ], [ 2, %bb.ae ] ; 2 uses
  %i.cb = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !179
  %i.cd = icmp eq i32 %i.cc, 4
  br i1 %i.cd, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ce = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !179
  %i.cg = icmp eq i32 %i.cf, 8
  br i1 %i.cg, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ch = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !179
  %i.cj = icmp eq i32 %i.ci, 13
  br i1 %i.cj, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ck = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !179
  %i.cm = icmp eq i32 %i.cl, 9
  br i1 %i.cm, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ao, %bb.am
  %i.cn = mul nuw nsw i32 %.0221, 3
  br label %bb.av

bb.au:                                            ; preds = %.invoke, %bb.ay, %bb.ar, %bb.ap, %bb.an, %bb.al
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.at, %bb.as
  %.1222 = phi i32 [ %i.cn, %bb.at ], [ %.0221, %bb.as ] ; 4 uses
  %i.cp = icmp eq i32 %.1229425, 16               ; 2 uses
  %i.cq = icmp eq i32 %.1229425, 32               ; 2 uses
  switch i32 %.1229425, label %bb.aw [
    i32 32, label %bb.ay
    i32 16, label %bb.ay
    i32 8, label %bb.ay
  ]

bb.aw:                                            ; preds = %bb.av
  %i.cr = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 439, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cr) #25
  br label %.body

bb.ay:                                            ; preds = %bb.av, %bb.av, %bb.av
  %i.ct = invoke noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.ad)
          to label %bb.az unwind label %bb.au

bb.az:                                            ; preds = %bb.ay
  %i.cu = icmp ne i16 %i.ct, 3
  %.lhs.trunc = trunc nuw nsw i32 %.1222 to i8
  %i.cv = urem i8 %.lhs.trunc, 3
  %i.cw = icmp eq i8 %i.cv, 0
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %or.cond, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cx = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cx, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 442, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %bb.bb

.invoke:                                          ; preds = %bb.ba, %bb.aw
  %i.cy = phi ptr [ %i.cr, %bb.aw ], [ %i.cx, %bb.ba ]
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.cont unwind label %bb.au

.cont:                                            ; preds = %.invoke
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.cz = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cx) #25
  br label %.body

bb.bc:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i32 %.1222, ptr %4, align 4, !tbaa !63
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.6.0..sroa_idx, i8 0, i64 56, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 64, ptr %i.da, align 4
  %i.db = load i32, ptr %i.z, align 8, !tbaa !59
  %.not311596 = icmp eq i32 %i.db, 0
  br i1 %.not311596, label %_ZNK4gdcm12SmartPointerINS_19SequenceOfFragmentsEEdeEv.exit, label %.lr.ph600

.lr.ph600:                                        ; preds = %bb.bc
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dd = lshr i64 %.1232421, 2
  %i.de = trunc i64 %i.dd to i32
  %i.df = and i64 %.1232421, 3
  %.not299 = icmp eq i64 %i.df, 0
  %i.dg = lshr i64 %.1232421, 1
  %i.dh = trunc i64 %i.dg to i32
  %i.di = and i64 %.1232421, 1
  %.not295 = icmp eq i64 %i.di, 0
  %i.dj = trunc i64 %.1232421 to i32
  %i.dk = zext nneg i32 %.1222 to i64             ; 5 uses
  %13 = add nsw i32 %.1222, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 7 uses
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8 ; 2 uses
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), align 8
  %i.dq = getelementptr i8, ptr %i.do, i64 -24
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 32), align 8
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 40), align 8
  %i.du = getelementptr i8, ptr %i.ds, i64 -24
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 48), align 8
  %i.dx = getelementptr i8, ptr %i.dv, i64 -24
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.ep = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 4 uses
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8 ; 3 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 -24    ; 3 uses
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dk
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 128
  %14 = zext nneg i32 %13 to i64
  br label %bb.be

bb.bd:                                            ; preds = %.noexc395, %_ZNK4gdcm12SmartPointerINS_19SequenceOfFragmentsEEdeEv.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body393

bb.be:                                            ; preds = %.lr.ph600, %bb.gl
  %indvars.iv622 = phi i64 [ 0, %.lr.ph600 ], [ %indvars.iv.next623, %bb.gl ] ; 2 uses
  %i.fp = mul i64 %.1232421, %indvars.iv622
  %i.fq = getelementptr inbounds nuw i8, ptr %.1234418, i64 %i.fp ; 6 uses
  %i.fr = load i32, ptr %i.dc, align 4, !tbaa !64
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bf, label %bb.bp

bb.bf:                                            ; preds = %bb.be
  %i.ft = invoke noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.ad)
          to label %bb.bg unwind label %.loopexit465

bb.bg:                                            ; preds = %bb.bf
  %i.fu = icmp eq i16 %i.ft, 3
  br i1 %i.fu, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.bx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.fv = invoke noundef zeroext i1 @_ZN4gdcm27DoInvertPlanarConfigurationIcEEbPT_PKS1_j(ptr noundef %.0223, ptr noundef %i.fq, i32 noundef %i.dj)
          to label %.thread428.thread440 unwind label %.loopexit465 ; 0 uses

.loopexit465:                                     ; preds = %bb.bf, %bb.bi, %bb.bk, %bb.bo
  %lpad.loopexit467 = landingpad { ptr, i32 }
          cleanup
  br label %.body393

.loopexit.split-lp466:                            ; preds = %.invoke668
  %lpad.loopexit.split-lp468 = landingpad { ptr, i32 }
          cleanup
  br label %.body393

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.cp, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.fw = invoke noundef zeroext i1 @_ZN4gdcm27DoInvertPlanarConfigurationIsEEbPT_PKS1_j(ptr noundef %.0223, ptr noundef %i.fq, i32 noundef %i.dh)
          to label %.thread428.thread unwind label %.loopexit465 ; 0 uses

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.cq, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fx = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fx, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 470, ptr noundef nonnull @.str.2)
          to label %.invoke668 unwind label %bb.bn

.invoke668:                                       ; preds = %bb.ci, %bb.bz, %bb.bq, %bb.bm
  %i.fy = phi ptr [ %i.acl, %bb.bz ], [ %i.fx, %bb.bm ], [ %i.gb, %bb.bq ], [ %i.anv, %bb.ci ]
  invoke void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.cont669 unwind label %.loopexit.split-lp466

.cont669:                                         ; preds = %.invoke668
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fx) #25
  br label %.body393

bb.bo:                                            ; preds = %bb.bl
  %i.ga = invoke noundef zeroext i1 @_ZN4gdcm27DoInvertPlanarConfigurationIiEEbPT_PKS1_j(ptr noundef %.0223, ptr noundef %i.fq, i32 noundef %i.de)
          to label %.thread431 unwind label %.loopexit465 ; 0 uses

bb.bp:                                            ; preds = %bb.bg, %bb.be
  br i1 %i.cq, label %.thread431, label %.thread428

.thread431:                                       ; preds = %bb.bo, %bb.bp
  %.0218433 = phi ptr [ %i.fq, %bb.bp ], [ %.0223, %bb.bo ] ; 9 uses
  br i1 %.not299, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %.thread431
  %i.gb = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.gb, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 481, ptr noundef nonnull @.str.2)
          to label %.invoke668 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gb) #25
  br label %.body393

bb.bs:                                            ; preds = %.thread431
  %i.gd = invoke noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.ad)
          to label %bb.bt unwind label %bb.bu     ; 3 uses

bb.bt:                                            ; preds = %bb.bs
  %.not602.a = icmp eq i16 %i.gd, 0
  br i1 %.not602.a, label %.thread428.thread440, label %.lr.ph577

.lr.ph577:                                        ; preds = %bb.bt
  %i.ge = zext i16 %i.gd to i64                   ; 8 uses
  %i.gf = udiv i64 %.1232421, %i.ge               ; 25 uses
  %i.gg = and i64 %i.gf, 3
  %i.gh = icmp eq i64 %i.gg, 0
  %i.gi = lshr i64 %i.gf, 2                       ; 14 uses
  %.not603 = icmp ult i64 %.1232421, %i.ge
  %i.gj = lshr i64 %i.gf, 1
  %i.gk = and i64 %i.gj, 4611686018427387902      ; 3 uses
  %i.gl = mul i64 %i.gf, 3
  %i.gm = lshr i64 %i.gl, 2                       ; 3 uses
  br i1 %i.gh, label %.preheader448.preheader, label %bb.bv

.preheader448.preheader:                          ; preds = %.lr.ph577
  %wide.trip.count = zext i16 %i.gd to i64
  %scevgep724.a = getelementptr i8, ptr %.0224, i64 %i.gm
  %i.gn = add nsw i64 %i.ge, -1                   ; 2 uses
  %i.go = mul i64 %i.gf, %i.gn
  %scevgep727 = getelementptr i8, ptr %.0218433, i64 -3
  %scevgep757.a = getelementptr i8, ptr %.0224, i64 %i.gk
  %i.gp = mul i64 %i.gf, %i.gn
  %scevgep760 = getelementptr i8, ptr %.0218433, i64 1
  %scevgep761 = getelementptr i8, ptr %.0218433, i64 -2
  %scevgep791.a = getelementptr i8, ptr %.0224, i64 %i.gi
  %i.gq = add nsw i64 %i.ge, -1                   ; 2 uses
  %i.gr = mul i64 %i.gf, %i.gq
  %scevgep794 = getelementptr i8, ptr %.0218433, i64 2
  %scevgep795 = getelementptr i8, ptr %.0218433, i64 -1
  %i.gs = mul i64 %i.gf, %i.gq
  %scevgep827 = getelementptr i8, ptr %.0218433, i64 3
  %umax834 = call i64 @llvm.umax.i64(i64 %i.gi, i64 1) ; 4 uses
  %min.iters.check835 = icmp ult i64 %i.gf, 36
  %i.gt = getelementptr i8, ptr %.0224, i64 %i.gi
  %scevgep826 = getelementptr i8, ptr %i.gt, i64 %i.gs
  %i.gu = mul i64 %i.gf, %i.ge
  %scevgep828 = getelementptr i8, ptr %.0218433, i64 %i.gu
  %bound0829 = icmp ult ptr %.0224, %scevgep828
  %bound1830 = icmp ult ptr %scevgep827, %scevgep826
  %found.conflict831 = and i1 %bound0829, %bound1830
  %stride.check832 = icmp slt i64 %i.gf, 0
  %i.gv = or i1 %found.conflict831, %stride.check832
  %min.iters.check837 = icmp ult i64 %i.gf, 68
  %i.gw = and i64 %umax834, 15                    ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  %i.gy = select i1 %i.gx, i64 16, i64 %i.gw      ; 2 uses
  %n.vec839 = sub nsw i64 %umax834, %i.gy         ; 3 uses
  %min.epilog.iters.check848 = icmp samesign ult i64 %i.gy, 9
  %i.gz = and i64 %umax834, 7                     ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %i.hb = select i1 %i.ha, i64 8, i64 %i.gz
  %n.vec850 = sub nsw i64 %umax834, %i.hb         ; 2 uses
  %umax802 = call i64 @llvm.umax.i64(i64 %i.gi, i64 1) ; 4 uses
  %min.iters.check803 = icmp ult i64 %i.gf, 36
  %i.hc = shl nuw nsw i64 %i.gi, 1
  %i.hd = getelementptr i8, ptr %.0224, i64 %i.hc
  %scevgep793.a = getelementptr i8, ptr %i.hd, i64 %i.gr
  %i.he = mul i64 %i.gf, %i.ge
  %scevgep796 = getelementptr i8, ptr %scevgep795, i64 %i.he
  %bound0797 = icmp ult ptr %scevgep791.a, %scevgep796
  %bound1798 = icmp ult ptr %scevgep794, %scevgep793.a
  %found.conflict799 = and i1 %bound0797, %bound1798
  %stride.check800 = icmp slt i64 %i.gf, 0
  %i.hf = or i1 %found.conflict799, %stride.check800
  %min.iters.check805 = icmp ult i64 %i.gf, 68
  %i.hg = and i64 %umax802, 15                    ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 0
  %i.hi = select i1 %i.hh, i64 16, i64 %i.hg      ; 2 uses
  %n.vec807 = sub nsw i64 %umax802, %i.hi         ; 3 uses
  %min.epilog.iters.check816 = icmp samesign ult i64 %i.hi, 9
  %i.hj = and i64 %umax802, 7                     ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  %i.hl = select i1 %i.hk, i64 8, i64 %i.hj
  %n.vec818 = sub nsw i64 %umax802, %i.hl         ; 2 uses
  %umax768 = call i64 @llvm.umax.i64(i64 %i.gi, i64 1) ; 4 uses
  %min.iters.check769 = icmp ult i64 %i.gf, 36
  %i.hm = getelementptr i8, ptr %.0224, i64 %i.gi
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.gp
  %scevgep759.a = getelementptr i8, ptr %i.hn, i64 %i.gk
  %i.ho = mul i64 %i.gf, %i.ge
  %scevgep762 = getelementptr i8, ptr %scevgep761, i64 %i.ho
  %bound0763 = icmp ult ptr %scevgep757.a, %scevgep762
  %bound1764 = icmp ult ptr %scevgep760, %scevgep759.a
  %found.conflict765 = and i1 %bound0763, %bound1764
  %stride.check766 = icmp slt i64 %i.gf, 0
  %i.hp = or i1 %found.conflict765, %stride.check766
  %min.iters.check771 = icmp ult i64 %i.gf, 68
  %i.hq = and i64 %umax768, 15                    ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 0
  %i.hs = select i1 %i.hr, i64 16, i64 %i.hq      ; 2 uses
  %n.vec773 = sub nsw i64 %umax768, %i.hs         ; 3 uses
  %min.epilog.iters.check782 = icmp samesign ult i64 %i.hs, 9
  %i.ht = and i64 %umax768, 7                     ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  %i.hv = select i1 %i.hu, i64 8, i64 %i.ht
  %n.vec784 = sub nsw i64 %umax768, %i.hv         ; 2 uses
  %umax734 = call i64 @llvm.umax.i64(i64 %i.gi, i64 1) ; 4 uses
  %min.iters.check735 = icmp ult i64 %i.gf, 36
  %i.hw = getelementptr i8, ptr %.0224, i64 %i.gi
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.gm
  %scevgep726 = getelementptr i8, ptr %i.hx, i64 %i.go
  %i.hy = mul i64 %i.gf, %i.ge
end_hunk_1
begin_hunk_2_@_ZN4gdcm8RLECodec4CodeERKNS_11DataElementERS1_:_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEEC2EPS1_.exit
  %i.aiq = icmp samesign ult i64 %i.aip, %i.acs
  br i1 %i.aiq, label %vec.epilog.scalar.ph713, label %iter.check, !llvm.loop !147

.lr.ph583.us:                                     ; preds = %.lr.ph583.us.preheader, %.lr.ph583.us
  %.0210582.us = phi i64 [ %i.aiu, %.lr.ph583.us ], [ %.0210582.us.ph, %.lr.ph583.us.preheader ] ; 3 uses
  %i.air = shl nuw i64 %.0210582.us, 1
  %i.ais = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.air
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !47
  %gep581.us = getelementptr i8, ptr %invariant.gep580.us, i64 %.0210582.us
  store i8 %i.ait, ptr %gep581.us, align 1, !tbaa !47
  %i.aiu = add nuw nsw i64 %.0210582.us, 1        ; 2 uses
  %i.aiv = icmp samesign ult i64 %i.aiu, %i.acs
  br i1 %i.aiv, label %.lr.ph583.us, label %._crit_edge584.us, !llvm.loop !148

._crit_edge584.us:                                ; preds = %.lr.ph583.us
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1 ; 2 uses
  %exitcond616.not = icmp eq i64 %indvars.iv.next613, %wide.trip.count615
  br i1 %exitcond616.not, label %.thread428.thread440, label %iter.check712, !llvm.loop !149

iter.check:                                       ; preds = %vec.epilog.scalar.ph713
  %invariant.gep580.us = getelementptr i8, ptr %i.ado, i64 %i.acs ; 3 uses
  %brmerge878 = select i1 %min.iters.check, i1 true, i1 %i.adg
  br i1 %brmerge878, label %.lr.ph583.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check687, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 18 uses
  %i.aiw = shl nuw i64 %index, 1
  %i.aix = shl i64 %index, 1
  %i.aiy = shl i64 %index, 1
  %i.aiz = shl i64 %index, 1
  %i.aja = shl i64 %index, 1
  %i.ajb = shl i64 %index, 1
  %i.ajc = shl i64 %index, 1
  %i.ajd = shl i64 %index, 1
  %i.aje = shl i64 %index, 1
  %i.ajf = shl i64 %index, 1
  %i.ajg = shl i64 %index, 1
  %i.ajh = shl i64 %index, 1
  %i.aji = shl i64 %index, 1
  %i.ajj = shl i64 %index, 1
  %i.ajk = shl i64 %index, 1
  %i.ajl = shl i64 %index, 1
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.aiw
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.aix
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 2
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.aiy
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 4
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.aiz
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 6
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.aja
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ajb
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 10
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ajc
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 12
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ajd
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 14
  %i.akb = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.aje
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 16
  %i.akd = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ajf
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 18
  %i.akf = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ajg
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 20
  %i.akh = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ajh
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 22
  %i.akj = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.aji
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 24
  %i.akl = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ajj
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 26
  %i.akn = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ajk
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 28
  %i.akp = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ajl
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 30
  %i.akr = load i8, ptr %i.ajm, align 1, !tbaa !47, !alias.scope !191
  %i.aks = load i8, ptr %i.ajo, align 1, !tbaa !47, !alias.scope !191
  %i.akt = load i8, ptr %i.ajq, align 1, !tbaa !47, !alias.scope !191
  %i.aku = load i8, ptr %i.ajs, align 1, !tbaa !47, !alias.scope !191
  %i.akv = load i8, ptr %i.aju, align 1, !tbaa !47, !alias.scope !191
  %i.akw = load i8, ptr %i.ajw, align 1, !tbaa !47, !alias.scope !191
  %i.akx = load i8, ptr %i.ajy, align 1, !tbaa !47, !alias.scope !191
  %i.aky = load i8, ptr %i.aka, align 1, !tbaa !47, !alias.scope !191
  %i.akz = load i8, ptr %i.akc, align 1, !tbaa !47, !alias.scope !191
  %i.ala = load i8, ptr %i.ake, align 1, !tbaa !47, !alias.scope !191
  %i.alb = load i8, ptr %i.akg, align 1, !tbaa !47, !alias.scope !191
  %i.alc = load i8, ptr %i.aki, align 1, !tbaa !47, !alias.scope !191
  %i.ald = load i8, ptr %i.akk, align 1, !tbaa !47, !alias.scope !191
  %i.ale = load i8, ptr %i.akm, align 1, !tbaa !47, !alias.scope !191
  %i.alf = load i8, ptr %i.ako, align 1, !tbaa !47, !alias.scope !191
  %i.alg = load i8, ptr %i.akq, align 1, !tbaa !47, !alias.scope !191
  %i.alh = insertelement <16 x i8> poison, i8 %i.akr, i64 0
  %i.ali = insertelement <16 x i8> %i.alh, i8 %i.aks, i64 1
  %i.alj = insertelement <16 x i8> %i.ali, i8 %i.akt, i64 2
  %i.alk = insertelement <16 x i8> %i.alj, i8 %i.aku, i64 3
  %i.all = insertelement <16 x i8> %i.alk, i8 %i.akv, i64 4
  %i.alm = insertelement <16 x i8> %i.all, i8 %i.akw, i64 5
  %i.aln = insertelement <16 x i8> %i.alm, i8 %i.akx, i64 6
  %i.alo = insertelement <16 x i8> %i.aln, i8 %i.aky, i64 7
  %i.alp = insertelement <16 x i8> %i.alo, i8 %i.akz, i64 8
  %i.alq = insertelement <16 x i8> %i.alp, i8 %i.ala, i64 9
  %i.alr = insertelement <16 x i8> %i.alq, i8 %i.alb, i64 10
  %i.als = insertelement <16 x i8> %i.alr, i8 %i.alc, i64 11
  %i.alt = insertelement <16 x i8> %i.als, i8 %i.ald, i64 12
  %i.alu = insertelement <16 x i8> %i.alt, i8 %i.ale, i64 13
  %i.alv = insertelement <16 x i8> %i.alu, i8 %i.alf, i64 14
  %i.alw = insertelement <16 x i8> %i.alv, i8 %i.alg, i64 15
  %i.alx = getelementptr i8, ptr %invariant.gep580.us, i64 %index
  store <16 x i8> %i.alw, ptr %i.alx, align 1, !tbaa !47, !alias.scope !192, !noalias !191
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aly = icmp eq i64 %index.next, %n.vec
  br i1 %i.aly, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !153

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph583.us.preheader, label %vec.epilog.ph, !prof !182

.lr.ph583.us.preheader:                           ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.0210582.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec688, %vec.epilog.vector.body ]
  br label %.lr.ph583.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index689 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next690, %vec.epilog.vector.body ] ; 10 uses
  %i.alz = shl nuw i64 %index689, 1
  %i.ama = shl i64 %index689, 1
  %i.amb = shl i64 %index689, 1
  %i.amc = shl i64 %index689, 1
  %i.amd = shl i64 %index689, 1
  %i.ame = shl i64 %index689, 1
  %i.amf = shl i64 %index689, 1
  %i.amg = shl i64 %index689, 1
  %i.amh = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.alz
  %i.ami = getelementptr i8, ptr %i.adp, i64 %i.ama
  %i.amj = getelementptr i8, ptr %i.ami, i64 2
  %i.amk = getelementptr i8, ptr %i.adp, i64 %i.amb
  %i.aml = getelementptr i8, ptr %i.amk, i64 4
  %i.amm = getelementptr i8, ptr %i.adp, i64 %i.amc
  %i.amn = getelementptr i8, ptr %i.amm, i64 6
  %i.amo = getelementptr i8, ptr %i.adp, i64 %i.amd
  %i.amp = getelementptr i8, ptr %i.amo, i64 8
  %i.amq = getelementptr i8, ptr %i.adp, i64 %i.ame
  %i.amr = getelementptr i8, ptr %i.amq, i64 10
  %i.ams = getelementptr i8, ptr %i.adp, i64 %i.amf
  %i.amt = getelementptr i8, ptr %i.ams, i64 12
  %i.amu = getelementptr i8, ptr %i.adp, i64 %i.amg
  %i.amv = getelementptr i8, ptr %i.amu, i64 14
  %i.amw = load i8, ptr %i.amh, align 1, !tbaa !47, !alias.scope !191
  %i.amx = load i8, ptr %i.amj, align 1, !tbaa !47, !alias.scope !191
  %i.amy = load i8, ptr %i.aml, align 1, !tbaa !47, !alias.scope !191
  %i.amz = load i8, ptr %i.amn, align 1, !tbaa !47, !alias.scope !191
  %i.ana = load i8, ptr %i.amp, align 1, !tbaa !47, !alias.scope !191
  %i.anb = load i8, ptr %i.amr, align 1, !tbaa !47, !alias.scope !191
  %i.anc = load i8, ptr %i.amt, align 1, !tbaa !47, !alias.scope !191
  %i.and = load i8, ptr %i.amv, align 1, !tbaa !47, !alias.scope !191
  %i.ane = insertelement <8 x i8> poison, i8 %i.amw, i64 0
  %i.anf = insertelement <8 x i8> %i.ane, i8 %i.amx, i64 1
  %i.ang = insertelement <8 x i8> %i.anf, i8 %i.amy, i64 2
  %i.anh = insertelement <8 x i8> %i.ang, i8 %i.amz, i64 3
  %i.ani = insertelement <8 x i8> %i.anh, i8 %i.ana, i64 4
  %i.anj = insertelement <8 x i8> %i.ani, i8 %i.anb, i64 5
  %i.ank = insertelement <8 x i8> %i.anj, i8 %i.anc, i64 6
  %i.anl = insertelement <8 x i8> %i.ank, i8 %i.and, i64 7
  %i.anm = getelementptr i8, ptr %invariant.gep580.us, i64 %index689
  store <8 x i8> %i.anl, ptr %i.anm, align 1, !tbaa !47, !alias.scope !192, !noalias !191
  %index.next690 = add nuw i64 %index689, 8       ; 2 uses
  %i.ann = icmp eq i64 %index.next690, %n.vec688
  br i1 %i.ann, label %.lr.ph583.us.preheader, label %vec.epilog.vector.body, !llvm.loop !154

bb.cd:                                            ; preds = %bb.cb
  %i.ano = landingpad { ptr, i32 }
          cleanup
  br label %.body393

bb.ce:                                            ; preds = %.lr.ph587
  %i.anp = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.anp, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 535, ptr noundef nonnull @.str.2)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  invoke void @__cxa_throw(ptr nonnull %i.anp, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %bb.hi unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.anq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.anp) #25
  br label %.body393

bb.ch:                                            ; preds = %bb.cf
  %i.anr = landingpad { ptr, i32 }
          cleanup
  br label %.body393

.thread428.thread440:                             ; preds = %._crit_edge, %._crit_edge584.us, %.lr.ph587.split, %bb.bt, %bb.cc, %bb.bi, %.thread428
  %.1219 = phi ptr [ %i.fq, %.thread428 ], [ %.0224, %bb.cc ], [ %.0223, %bb.bi ], [ %.0224, %.lr.ph587.split ], [ %.0224, %bb.bt ], [ %.0224, %._crit_edge584.us ], [ %.0224, %._crit_edge ]
  %i.ans = urem i64 %.1232421, %i.dk
  %i.ant = udiv i64 %.1232421, %i.dk              ; 4 uses
  %i.anu = icmp eq i64 %i.ans, 0
  br i1 %i.anu, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %.thread428.thread440
  %i.anv = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.anv, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 555, ptr noundef nonnull @.str.2)
          to label %.invoke668 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.anw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.anv) #25
  br label %.body393

bb.ck:                                            ; preds = %.thread428.thread440
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %15 = mul i64 %i.ant, %i.dk
  %16 = icmp eq i64 %15, %.1232421
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ey
  %indvars.iv617 = phi i64 [ 0, %bb.ck ], [ %indvars.iv.next618, %bb.ey ] ; 5 uses
  %i.anx = mul i64 %i.ant, %indvars.iv617         ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %.1219, i64 %i.anx
  %i.anz = icmp samesign ult i64 %i.anx, %.1232421
  br i1 %i.anz, label %19, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aoa = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aoa, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 562, ptr noundef nonnull @.str.2)
          to label %.invoke670 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aob = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aoa) #25
  br label %bb.gr

17:                                               ; preds = %.invoke670
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

19:                                               ; preds = %bb.cl
  %20 = icmp ne i64 %indvars.iv617, %14
  %or.cond336 = select i1 %20, i1 true, i1 %16
  br i1 %or.cond336, label %bb.cp, label %21

21:                                               ; preds = %19
  %22 = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 566, ptr noundef nonnull @.str.2)
          to label %.invoke670 unwind label %bb.co

.invoke670:                                       ; preds = %bb.cm, %21
  %23 = phi ptr [ %22, %21 ], [ %i.aoa, %bb.cm ]
  invoke void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.cont671 unwind label %17

.cont671:                                         ; preds = %.invoke670
  unreachable

bb.co:                                            ; preds = %21
  %i.aoc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %22) #25
  br label %bb.gr

bb.cp:                                            ; preds = %19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 104), ptr %i.dl, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.dm, align 8, !tbaa !12
  store ptr %i.do, ptr %6, align 8, !tbaa !12
  %i.aod = load i64, ptr %i.dq, align 8
  %i.aoe = getelementptr inbounds i8, ptr %6, i64 %i.aod
  store ptr %i.dp, ptr %i.aoe, align 8, !tbaa !12
  store i64 0, ptr %i.dr, align 8, !tbaa !68
  %i.aof = load ptr, ptr %6, align 8, !tbaa !12
  %i.aog = getelementptr i8, ptr %i.aof, i64 -24
  %i.aoh = load i64, ptr %i.aog, align 8
  %i.aoi = getelementptr inbounds i8, ptr %6, i64 %i.aoh ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.aoi, ptr noundef nonnull %i.dn)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 136
  store ptr null, ptr %i.aoj, align 8, !tbaa !74
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoi, i64 144
  store i32 -1, ptr %i.aok, align 8, !tbaa !75
  %i.aol = load i64, ptr %i.du, align 8
  %i.aom = getelementptr inbounds i8, ptr %i.dm, i64 %i.aol
  store ptr %i.dt, ptr %i.aom, align 8, !tbaa !12
  %i.aon = load i64, ptr %i.dx, align 8
  %i.aoo = getelementptr inbounds i8, ptr %6, i64 %i.aon
  store ptr %i.dw, ptr %i.aoo, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %6, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 104), ptr %i.dl, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.dm, align 8, !tbaa !12
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.dn)
          to label %bb.cu unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.aop = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #25
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn.i = phi { ptr, i32 } [ %i.aoq, %bb.cs ], [ %i.aop, %bb.cr ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.dl) #25
  br label %.body343

bb.cu:                                            ; preds = %bb.cq
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.dn, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i8 0, i64 32, i1 false)
  store i32 24, ptr %i.dz, align 8, !tbaa !84
  %i.aor = load i32, ptr %i.ea, align 4, !tbaa !59 ; 3 uses
  %i.aos = zext i32 %i.aor to i64
  %i.aot = urem i64 %i.ant, %i.aos
  %i.aou = icmp eq i64 %i.aot, 0
  br i1 %i.aou, label %.preheader, label %bb.cv

.preheader:                                       ; preds = %bb.cu
  %.not303.not590.not = icmp eq i32 %i.aor, 0
  br i1 %.not303.not590.not, label %._crit_edge594, label %.lr.ph593

bb.cv:                                            ; preds = %bb.cu
  %i.aov = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aov, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 571, ptr noundef nonnull @.str.2)
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  invoke void @__cxa_throw(ptr nonnull %i.aov, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %bb.hi unwind label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.aow = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aov) #25
  br label %bb.fb

bb.cy:                                            ; preds = %bb.cw
  %i.aox = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.lr.ph593:                                        ; preds = %.preheader, %bb.dl
  %i.aoy = phi i32 [ %i.app, %bb.dl ], [ %i.aor, %.preheader ]
  %.0592 = phi i32 [ %i.apo, %bb.dl ], [ 0, %.preheader ] ; 2 uses
  %.0207591 = phi i64 [ %i.apn, %bb.dl ], [ 0, %.preheader ]
  %i.aoz = load i32, ptr %i.b, align 8, !tbaa !59
  %i.apa = mul i32 %i.aoz, %.0592
  %i.apb = zext i32 %i.apa to i64
  %i.apc = getelementptr inbounds nuw i8, ptr %i.any, i64 %i.apb
  %i.apd = zext i32 %i.aoy to i64
  %i.ape = udiv i64 %i.ant, %i.apd
  %i.apf = invoke noundef i64 @_ZN4gdcm10rle_encodeEPcmPKcm(ptr noundef nonnull %i.a, i64 noundef 65536, ptr noundef %i.apc, i64 noundef %i.ape)
          to label %bb.cz unwind label %.loopexit ; 4 uses

bb.cz:                                            ; preds = %.lr.ph593
  %i.apg = icmp sgt i64 %i.apf, -1
  br i1 %i.apg, label %bb.dg, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aph = icmp eq ptr %.0224, null
  br i1 %i.aph, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_ZdaPv(ptr noundef nonnull %.0224) #26
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.api = icmp eq ptr %.0223, null
  br i1 %i.api, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @_ZdaPv(ptr noundef nonnull %.0223) #26
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.apj = icmp eq ptr %.0230422, null
  br i1 %i.apj, label %.critedge, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_ZdaPv(ptr noundef nonnull %.0230422) #26
  br label %.critedge

.loopexit:                                        ; preds = %.lr.ph593, %bb.dk
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.loopexit.split-lp:                               ; preds = %bb.di
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.dg:                                            ; preds = %bb.cz
  %.not300 = icmp eq i64 %i.apf, 0
  br i1 %.not300, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.apk = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.apk, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 585, ptr noundef nonnull @.str.2)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  invoke void @__cxa_throw(ptr nonnull %i.apk, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %bb.hi unwind label %.loopexit.split-lp

bb.dj:                                            ; preds = %bb.dh
  %i.apl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.apk) #25
  br label %bb.fb

bb.dk:                                            ; preds = %bb.dg
  %i.apm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull %i.a, i64 noundef %i.apf)
          to label %bb.dl unwind label %.loopexit ; 0 uses

bb.dl:                                            ; preds = %bb.dk
  %i.apn = add i64 %i.apf, %.0207591              ; 2 uses
  %i.apo = add nuw i32 %.0592, 1                  ; 2 uses
  %i.app = load i32, ptr %i.ea, align 4, !tbaa !59 ; 2 uses
  %.not303.not = icmp ult i32 %i.apo, %i.app
  br i1 %.not303.not, label %.lr.ph593, label %._crit_edge594, !llvm.loop !155

._crit_edge594:                                   ; preds = %bb.dl, %.preheader
  %.0207.lcssa = phi i64 [ 0, %.preheader ], [ %i.apn, %bb.dl ] ; 2 uses
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617, 1 ; 3 uses
  %or.cond856 = icmp samesign ugt i64 %indvars.iv617, 13
  br i1 %or.cond856, label %_ZN4gdcm9RLEHeader9SetOffsetEmj.exit, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge594
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv617
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !59
  %i.aps = trunc i64 %.0207.lcssa to i32
  %i.apt = add i32 %i.apr, %i.aps
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next618
  store i32 %i.apt, ptr %i.apu, align 4, !tbaa !59
  br label %_ZN4gdcm9RLEHeader9SetOffsetEmj.exit

_ZN4gdcm9RLEHeader9SetOffsetEmj.exit:             ; preds = %._crit_edge594, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.apv = load i32, ptr %i.dz, align 8, !tbaa !84, !noalias !196 ; 2 uses
  %i.apw = and i32 %i.apv, 16
  %.not.i.i.i.i = icmp eq i32 %i.apw, 0
  br i1 %.not.i.i.i.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %_ZN4gdcm9RLEHeader9SetOffsetEmj.exit
  %i.apx = load ptr, ptr %i.eb, align 8, !tbaa !85, !noalias !196 ; 2 uses
  %i.apy = load ptr, ptr %i.ec, align 8, !tbaa !86, !noalias !196 ; 3 uses
  %i.apz = icmp ult ptr %i.apx, %i.apy
  br i1 %i.apz, label %bb.do, label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.do:                                            ; preds = %bb.dn
  store ptr %i.apy, ptr %i.eb, align 8, !tbaa !85, !noalias !196
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.dp:                                            ; preds = %_ZN4gdcm9RLEHeader9SetOffsetEmj.exit
  %i.aqa = and i32 %i.apv, 8
end_hunk_2
begin_hunk_3_@_ZN4gdcm8RLECodec4CodeERKNS_11DataElementERS1_:_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEEC2EPS1_.exit

.loopexit470:                                     ; preds = %.thread.i.i.i.i.i372
  %lpad.loopexit472 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit384

.loopexit.split-lp471:                            ; preds = %bb.fj
  %lpad.loopexit.split-lp473 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit384

bb.fu:                                            ; preds = %bb.fn
  %i.awe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.awf = load i8, ptr %11, align 8
  %i.awg = trunc i8 %i.awf to i1
  br i1 %i.awg, label %bb.fv, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit384

bb.fv:                                            ; preds = %bb.fu
  %i.awh = load ptr, ptr %i.fc, align 8, !tbaa !47
  %i.awi = load i64, ptr %11, align 8
  %i.awj = and i64 %i.awi, -2
  call void @_ZdlPvm(ptr noundef %i.awh, i64 noundef %i.awj) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit384

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit384: ; preds = %.loopexit470, %.loopexit.split-lp471, %bb.fv, %bb.fu
  %.pn307 = phi { ptr, i32 } [ %i.awe, %bb.fv ], [ %i.awe, %bb.fu ], [ %lpad.loopexit472, %.loopexit470 ], [ %lpad.loopexit.split-lp473, %.loopexit.split-lp471 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit388

bb.fw:                                            ; preds = %bb.fq
  %i.awk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.awb) #25
  br label %bb.gn

bb.fx:                                            ; preds = %bb.fr
  %i.awl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.fy:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit383
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store i32 -536805378, ptr %12, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fg, i8 0, i64 20, i1 false)
  %i.awm = trunc i64 %i.avz to i32
  %i.awn = load ptr, ptr %i.fh, align 8
  %i.awo = select i1 %i.avv, ptr %i.awn, ptr %i.fi
  invoke void @_ZN4gdcm11DataElement12SetByteValueEPKcNS_2VLE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %i.awo, i32 %i.awm)
          to label %bb.fz unwind label %bb.gm

bb.fz:                                            ; preds = %bb.fy
  %i.awp = load ptr, ptr %3, align 8, !tbaa !53   ; 2 uses
  invoke void @_ZN4gdcm19SequenceOfFragments11AddFragmentERKNS_8FragmentE(ptr noundef nonnull align 8 dereferenceable(72) %i.awp, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ga unwind label %bb.gm

bb.ga:                                            ; preds = %bb.fz
  %i.awq = load ptr, ptr %i.fj, align 8, !tbaa !58 ; 4 uses
  %.not.i.i401 = icmp eq ptr %i.awq, null
  br i1 %.not.i.i401, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 8 ; 2 uses
  %i.aws = load i64, ptr %i.awr, align 8, !tbaa !55 ; 2 uses
  %i.awt = icmp sgt i64 %i.aws, 0
  br i1 %i.awt, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.awu = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.awu, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.gd unwind label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  invoke void @__cxa_throw(ptr nonnull %i.awu, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.noexc.i404 unwind label %bb.gh

.noexc.i404:                                      ; preds = %bb.gd
  unreachable

bb.ge:                                            ; preds = %bb.gc
  %i.awv = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.awu) #25
  br label %.body.i402

bb.gf:                                            ; preds = %bb.gb
  %i.aww = add nsw i64 %i.aws, -1                 ; 2 uses
  store i64 %i.aww, ptr %i.awr, align 8, !tbaa !55
  %.not.i.i.i405 = icmp eq i64 %i.aww, 0
  br i1 %.not.i.i.i405, label %bb.gg, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit

bb.gg:                                            ; preds = %bb.gf
  %i.awx = load ptr, ptr %i.awq, align 8, !tbaa !12
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 8
  %i.awz = load ptr, ptr %i.awy, align 8
  call void %i.awz(ptr noundef nonnull align 8 dereferenceable(16) %i.awq) #25, !inline_history !0
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit

bb.gh:                                            ; preds = %bb.gd
  %i.axa = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i402

.body.i402:                                       ; preds = %bb.gh, %bb.ge
  %eh.lpad-body.i403 = phi { ptr, i32 } [ %i.axa, %bb.gh ], [ %i.awv, %bb.ge ]
  %i.axb = extractvalue { ptr, i32 } %eh.lpad-body.i403, 0
  call void @__clang_call_terminate(ptr %i.axb) #28
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit:      ; preds = %bb.ga, %bb.gf, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.axc = load i8, ptr %10, align 8
  %i.axd = trunc i8 %i.axc to i1
  br i1 %i.axd, label %bb.gi, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit385

bb.gi:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit
  %i.axe = load ptr, ptr %i.fh, align 8, !tbaa !47
  %i.axf = load i64, ptr %10, align 8
  %i.axg = and i64 %i.axf, -2
  call void @_ZdlPvm(ptr noundef %i.axe, i64 noundef %i.axg) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit385

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit385: ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store ptr %i.ep, ptr %9, align 8, !tbaa !12
  %i.axh = load i64, ptr %i.er, align 8
  %i.axi = getelementptr inbounds i8, ptr %9, i64 %i.axh
  store ptr %i.eq, ptr %i.axi, align 8, !tbaa !12
  store ptr %i.es, ptr %i.ev, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.fk, align 8, !tbaa !12
  %i.axj = load i8, ptr %i.fl, align 8
  %i.axk = trunc i8 %i.axj to i1
  br i1 %i.axk, label %bb.gj, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit386

bb.gj:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit385
  %i.axl = load ptr, ptr %i.fm, align 8, !tbaa !47
  %i.axm = load i64, ptr %i.fl, align 8
  %i.axn = and i64 %i.axm, -2
  call void @_ZdlPvm(ptr noundef %i.axl, i64 noundef %i.axn) #26
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit386

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit386: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit385, %bb.gj
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.fk) #25
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #25
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.fn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.axo = load i8, ptr %5, align 8
  %i.axp = trunc i8 %i.axo to i1
  br i1 %i.axp, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit386
  %i.axq = load ptr, ptr %i.en, align 8, !tbaa !47
  %i.axr = load i64, ptr %5, align 8
  %i.axs = and i64 %i.axr, -2
  call void @_ZdlPvm(ptr noundef %i.axq, i64 noundef %i.axs) #26
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit386
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %i.axt = load i32, ptr %i.z, align 8, !tbaa !59
  %i.axu = zext i32 %i.axt to i64
  %.not311.not = icmp samesign ult i64 %indvars.iv.next623, %i.axu
  br i1 %.not311.not, label %bb.be, label %_ZNK4gdcm12SmartPointerINS_19SequenceOfFragmentsEEdeEv.exit, !llvm.loop !177

bb.gm:                                            ; preds = %bb.fz, %bb.fy
  %i.axv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.fx, %bb.fw
  %.pn313 = phi { ptr, i32 } [ %i.awl, %bb.fx ], [ %i.awk, %bb.fw ], [ %i.axv, %bb.gm ] ; 2 uses
  %i.axw = load i8, ptr %10, align 8
  %i.axx = trunc i8 %i.axw to i1
  br i1 %i.axx, label %bb.go, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit388

bb.go:                                            ; preds = %bb.gn
  %i.axy = load ptr, ptr %i.fh, align 8, !tbaa !47
  %i.axz = load i64, ptr %10, align 8
  %i.aya = and i64 %i.axz, -2
  call void @_ZdlPvm(ptr noundef %i.axy, i64 noundef %i.aya) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit388

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit388: ; preds = %bb.go, %bb.gn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit384
  %.pn313.pn = phi { ptr, i32 } [ %.pn307, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit384 ], [ %.pn313, %bb.gn ], [ %.pn313, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.gp

bb.gp:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit388, %bb.ft
  %.pn313.pn.pn = phi { ptr, i32 } [ %.pn313.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit388 ], [ %i.awd, %bb.ft ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #25
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.fs
  %.pn313.pn.pn.pn = phi { ptr, i32 } [ %.pn313.pn.pn, %bb.gp ], [ %i.awc, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.gr

bb.gr:                                            ; preds = %bb.cn, %17, %bb.co, %.body343, %bb.gq
  %.merged332 = phi { ptr, i32 } [ %.pn313.pn.pn.pn, %bb.gq ], [ %.pn318.pn.pn, %.body343 ], [ %18, %17 ], [ %i.aob, %bb.cn ], [ %i.aoc, %bb.co ]
  %i.ayb = load i8, ptr %5, align 8
  %i.ayc = trunc i8 %i.ayb to i1
  br i1 %i.ayc, label %bb.gs, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit389

bb.gs:                                            ; preds = %bb.gr
  %i.ayd = load ptr, ptr %i.en, align 8, !tbaa !47
  %i.aye = load i64, ptr %5, align 8
  %i.ayf = and i64 %i.aye, -2
  call void @_ZdlPvm(ptr noundef %i.ayd, i64 noundef %i.ayf) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit389

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit389: ; preds = %bb.gr, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body393

.critedge340:                                     ; preds = %.critedge, %bb.fc
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.dn) #25
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #25
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.dl) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ayg = load i8, ptr %5, align 8
  %i.ayh = trunc i8 %i.ayg to i1
  br i1 %i.ayh, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %.critedge340
  %i.ayi = load ptr, ptr %i.en, align 8, !tbaa !47
  %i.ayj = load i64, ptr %5, align 8
  %i.ayk = and i64 %i.ayj, -2
  call void @_ZdlPvm(ptr noundef %i.ayi, i64 noundef %i.ayk) #26
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %.critedge340
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.hb

_ZNK4gdcm12SmartPointerINS_19SequenceOfFragmentsEEdeEv.exit: ; preds = %bb.gl, %bb.bc
  %i.ayl = phi ptr [ %i.c, %bb.bc ], [ %i.awp, %bb.gl ] ; 3 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ayn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4gdcm12SmartPointerINS_5ValueEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aym, ptr noundef nonnull align 8 dereferenceable(16) %i.ayl)
          to label %.noexc395 unwind label %bb.bd ; 0 uses

.noexc395:                                        ; preds = %_ZNK4gdcm12SmartPointerINS_19SequenceOfFragmentsEEdeEv.exit
  %i.ayo = load ptr, ptr %i.ayl, align 8, !tbaa !12
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 24
  %i.ayq = load ptr, ptr %i.ayp, align 8
  %i.ayr = invoke i32 %i.ayq(ptr noundef nonnull align 8 dereferenceable(16) %i.ayl)
          to label %bb.gv unwind label %bb.bd, !inline_history !1

bb.gv:                                            ; preds = %.noexc395
  %i.ays = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ayr, ptr %i.ays, align 4, !tbaa !59
  %i.ayt = icmp eq ptr %.0224, null
  br i1 %i.ayt, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_ZdaPv(ptr noundef nonnull %.0224) #26
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.ayu = icmp eq ptr %.0223, null
  br i1 %i.ayu, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @_ZdaPv(ptr noundef nonnull %.0223) #26
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.ayv = icmp eq ptr %.0230422, null
  br i1 %i.ayv, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @_ZdaPv(ptr noundef nonnull %.0230422) #26
  br label %bb.hb

.body393:                                         ; preds = %.loopexit465, %.loopexit.split-lp466, %bb.bd, %bb.bn, %bb.br, %bb.ca, %bb.cj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit389, %bb.bx, %bb.by, %bb.bu, %bb.cg, %bb.ch, %bb.cd
  %.merged330 = phi { ptr, i32 } [ %lpad.loopexit.split-lp468, %.loopexit.split-lp466 ], [ %i.anq, %bb.cg ], [ %i.fo, %bb.bd ], [ %i.gc, %bb.br ], [ %i.fz, %bb.bn ], [ %.merged332, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit389 ], [ %i.anw, %bb.cj ], [ %i.acm, %bb.ca ], [ %i.nf, %bb.bx ], [ %i.ig, %bb.bu ], [ %i.ng, %bb.by ], [ %i.ano, %bb.cd ], [ %i.anr, %bb.ch ], [ %lpad.loopexit467, %.loopexit465 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %bb.gu
  %.not311563 = phi i1 [ false, %bb.gu ], [ true, %bb.gz ], [ true, %bb.ha ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEED2Ev.exit, label %.thread

.thread.sink.split:                               ; preds = %bb.ak, %bb.m
  %.0230422.sink = phi ptr [ %i.az, %bb.m ], [ %.0230422, %bb.ak ]
  tail call void @_ZdaPv(ptr noundef nonnull %.0230422.sink) #26
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.ak, %bb.hb
  %.11280657.a = phi i1 [ %.not311563, %bb.hb ], [ false, %bb.ak ], [ false, %.thread.sink.split ] ; 2 uses
  %i.ayw = phi ptr [ %.pre, %bb.hb ], [ %i.c, %bb.ak ], [ %i.c, %.thread.sink.split ] ; 3 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 8 ; 2 uses
  %i.ayy = load i64, ptr %i.ayx, align 8, !tbaa !55 ; 2 uses
  %i.ayz = icmp sgt i64 %i.ayy, 0
  br i1 %i.ayz, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %.thread
  %i.aza = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aza, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.hd unwind label %bb.he

bb.hd:                                            ; preds = %bb.hc
  invoke void @__cxa_throw(ptr nonnull %i.aza, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.noexc.i unwind label %bb.hh

.noexc.i:                                         ; preds = %bb.hd
  unreachable

bb.he:                                            ; preds = %bb.hc
  %i.azb = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.aza) #25
  br label %.body.i

bb.hf:                                            ; preds = %.thread
  %i.azc = add nsw i64 %i.ayy, -1                 ; 2 uses
  store i64 %i.azc, ptr %i.ayx, align 8, !tbaa !55
  %.not.i.i.i = icmp eq i64 %i.azc, 0
  br i1 %.not.i.i.i, label %bb.hg, label %_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEED2Ev.exit

bb.hg:                                            ; preds = %bb.hf
  %i.azd = load ptr, ptr %i.ayw, align 8, !tbaa !12
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 8
  %i.azf = load ptr, ptr %i.aze, align 8
  call void %i.azf(ptr noundef nonnull align 8 dereferenceable(16) %i.ayw) #25, !inline_history !178
  br label %_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEED2Ev.exit

bb.hh:                                            ; preds = %bb.hd
  %i.azg = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.hh, %bb.he
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.azg, %bb.hh ], [ %i.azb, %bb.he ]
  %i.azh = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.azh) #28
  unreachable

_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEED2Ev.exit: ; preds = %bb.hb, %bb.hf, %bb.hg
  %.11280658 = phi i1 [ %.not311563, %bb.hb ], [ %.11280657.a, %bb.hf ], [ %.11280657.a, %bb.hg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %.11280658

.body:                                            ; preds = %bb.o, %bb.i, %bb.n, %bb.t, %.body393, %bb.bb, %bb.ax, %bb.au, %bb.p, %bb.r, %bb.q, %bb.c, %bb.b
  %.merged325 = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.n, %bb.b ], [ %i.bb, %bb.n ], [ %i.be, %bb.q ], [ %i.cs, %bb.ax ], [ %i.bd, %bb.p ], [ %i.bf, %bb.r ], [ %i.bj, %bb.t ], [ %.merged330, %.body393 ], [ %i.co, %bb.au ], [ %i.cz, %bb.bb ], [ %i.bc, %bb.o ], [ %i.ak, %bb.i ]
  call void @_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.merged325

bb.hi:                                            ; preds = %bb.fr, %bb.dy, %bb.di, %bb.cw, %bb.cf, %bb.bw, %bb.a
  unreachable
}

declare noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4gdcm14Unpacker12Bits6UnpackEPcPKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4gdcm27DoInvertPlanarConfigurationIcEEbPT_PKS1_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.d = udiv i32 %2, 3                           ; 4 uses
  %i.e = mul nuw i32 %i.d, 3                      ; 3 uses
  %i.f = icmp eq i32 %i.e, %2
  %i.g = add i32 %2, -1
  %i.h = icmp eq i32 %i.e, %i.g
  %or.cond = or i1 %i.f, %i.h
  br i1 %or.cond, label %.preheader63, label %bb.b

.preheader63:                                     ; preds = %bb.a
  %i.i = zext nneg i32 %i.d to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 3 uses
  %.not64 = icmp ult i32 %2, 3
  br i1 %.not64, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader63
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.066.prol = phi ptr [ %i.l, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.05165.prol = phi ptr [ %i.m, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.k = load i8, ptr %.05165.prol, align 1, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %.066.prol, i64 1 ; 2 uses
  store i8 %i.k, ptr %.066.prol, align 1, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %.05165.prol, i64 3 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !206

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa92.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %.066.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.05165.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %i.n = add nsw i32 %i.d, -1
  %i.o = icmp ult i32 %i.n, 7
  br i1 %i.o, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.066 = phi ptr [ %i.an, %.lr.ph ], [ %.066.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.05165 = phi ptr [ %i.ao, %.lr.ph ], [ %.05165.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.r = load i8, ptr %.05165, align 1, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %.066, i64 1
  store i8 %i.r, ptr %.066, align 1, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %.05165, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %.066, i64 2
  store i8 %i.u, ptr %i.s, align 1, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %.05165, i64 6
  %i.x = load i8, ptr %i.w, align 1, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %.066, i64 3
  store i8 %i.x, ptr %i.v, align 1, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %.05165, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %.066, i64 4
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %.05165, i64 12
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %.066, i64 5
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %.05165, i64 15
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %.066, i64 6
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %.05165, i64 18
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %.066, i64 7
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %.05165, i64 21
  %i.am = load i8, ptr %i.al, align 1, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %.066, i64 8 ; 2 uses
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %.05165, i64 24 ; 2 uses
  %.not.7 = icmp eq ptr %i.an, %i.j
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !207

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader63
  %.051.lcssa = phi ptr [ %1, %.preheader63 ], [ %.lcssa92.unr, %.lr.ph.prol.loopexit ], [ %i.ao, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %.preheader63 ], [ %i.j, %.lr.ph ], [ %i.j, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0.lcssa93 = ptrtoaddr ptr %.0.lcssa to i64    ; 2 uses
  %i.ap = zext i32 %i.e to i64                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = icmp eq ptr %.051.lcssa, %i.aq
  br i1 %i.ar, label %.preheader62, label %bb.e

.preheader62:                                     ; preds = %._crit_edge
  %i.as = shl nuw i32 %i.d, 1
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at ; 4 uses
  %.not5768 = icmp eq ptr %.0.lcssa, %i.au
  br i1 %.not5768, label %._crit_edge72, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %.preheader62
  %i.av = add i64 %i.a, %i.at                     ; 2 uses
  %i.aw = sub i64 %i.av, %.0.lcssa93
  %xtraiter94 = and i64 %i.aw, 7                  ; 2 uses
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol

.lr.ph71.prol:                                    ; preds = %.lr.ph71.preheader, %.lr.ph71.prol
  %.170.prol = phi ptr [ %i.ay, %.lr.ph71.prol ], [ %.0.lcssa, %.lr.ph71.preheader ] ; 2 uses
  %.05069.prol = phi ptr [ %i.az, %.lr.ph71.prol ], [ %i.b, %.lr.ph71.preheader ] ; 2 uses
  %prol.iter96 = phi i64 [ %prol.iter96.next, %.lr.ph71.prol ], [ 0, %.lr.ph71.preheader ]
  %i.ax = load i8, ptr %.05069.prol, align 1, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %.170.prol, i64 1 ; 2 uses
  store i8 %i.ax, ptr %.170.prol, align 1, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %.05069.prol, i64 3 ; 3 uses
  %prol.iter96.next = add i64 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i64 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol, !llvm.loop !208

.lr.ph71.prol.loopexit:                           ; preds = %.lr.ph71.prol, %.lr.ph71.preheader
  %.lcssa91.unr = phi ptr [ poison, %.lr.ph71.preheader ], [ %i.az, %.lr.ph71.prol ]
  %.170.unr = phi ptr [ %.0.lcssa, %.lr.ph71.preheader ], [ %i.ay, %.lr.ph71.prol ]
  %.05069.unr = phi ptr [ %i.b, %.lr.ph71.preheader ], [ %i.az, %.lr.ph71.prol ]
  %i.ba = sub i64 %.0.lcssa93, %i.av
  %i.bb = icmp ugt i64 %i.ba, -8
  br i1 %i.bb, label %._crit_edge72, label %.lr.ph71

bb.e:                                             ; preds = %._crit_edge
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 323, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph71:                                         ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71
  %.170 = phi ptr [ %i.ca, %.lr.ph71 ], [ %.170.unr, %.lr.ph71.prol.loopexit ] ; 9 uses
  %.05069 = phi ptr [ %i.cb, %.lr.ph71 ], [ %.05069.unr, %.lr.ph71.prol.loopexit ] ; 9 uses
  %i.be = load i8, ptr %.05069, align 1, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %.170, i64 1
  store i8 %i.be, ptr %.170, align 1, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %.05069, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %.170, i64 2
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %.05069, i64 6
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %.170, i64 3
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %.05069, i64 9
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %.170, i64 4
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %.05069, i64 12
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %.170, i64 5
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !47
  %i.bs = getelementptr inbounds nuw i8, ptr %.05069, i64 15
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %.170, i64 6
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %.05069, i64 18
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !47
end_hunk_3
begin_hunk_4_@_ZN4gdcm8RLECodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE:bb.a
  %i.ca = sext i8 %i.bz to i64
  %i.cb = add nsw i64 %i.ca, 1                    ; 2 uses
  %i.cc = add i64 %i.cb, %.098.us
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %i.b, i64 noundef %i.cb)
          to label %bb.aj unwind label %.split107.us ; 0 uses

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %bb.ad
  %.1.us = phi i64 [ %i.cc, %bb.ai ], [ %i.bw, %bb.ag ], [ %.098.us, %bb.ad ] ; 3 uses
  %i.ce = icmp ult i64 %.1.us, %i.aq
  br i1 %i.ce, label %bb.aa, label %._crit_edge.us, !llvm.loop !277

._crit_edge.us:                                   ; preds = %bb.aj
  %.not63.us = icmp eq i64 %.1.us, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br i1 %.not63.us, label %bb.y, label %.critedge

.split102.us:                                     ; preds = %.split.us
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.split102

.split104.us:                                     ; preds = %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80.us
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.split102

.split107.us:                                     ; preds = %bb.ai, %bb.ah, %bb.aa
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.split110.us:                                     ; preds = %bb.af, %bb.ae
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.am

.split:                                           ; preds = %bb.x
  %.not63 = icmp ult i64 %i.t, %i.r
  %.not63.fr = freeze i1 %.not63
  br i1 %.not63.fr, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %bb.al
  %.04499.us112 = phi i64 [ %i.cu, %bb.al ], [ 0, %.split ] ; 3 uses
  %i.cj = invoke { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ak unwind label %.split102.split.us

bb.ak:                                            ; preds = %.split.split.us
  %i.ck = extractvalue { i64, i64 } %i.cj, 1      ; 2 uses
  %i.cl = sub nsw i64 %i.ck, %i.f
  %i.cm = icmp samesign ult i64 %.04499.us112, 15
  br i1 %i.cm, label %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit.us115, label %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit76.us113

_ZNK4gdcm9RLEHeader9GetOffsetEm.exit76.us113:     ; preds = %bb.ak
  %.not62.us114 = icmp eq i64 %i.ck, %i.f
  br i1 %.not62.us114, label %bb.al, label %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80.us119

_ZNK4gdcm9RLEHeader9GetOffsetEm.exit.us115:       ; preds = %bb.ak
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.04499.us112
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !59
  %i.cp = zext i32 %i.co to i64                   ; 3 uses
  %i.cq = load i64, ptr %i.ar, align 8, !tbaa !92
  %i.cr = icmp ult i64 %i.cq, %i.cp
  br i1 %i.cr, label %.critedge, label %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit76.thread.us116

_ZNK4gdcm9RLEHeader9GetOffsetEm.exit76.thread.us116: ; preds = %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit.us115
  %.not6292.us117 = icmp eq i64 %i.cl, %i.cp
  br i1 %.not6292.us117, label %bb.al, label %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80.us119

_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80.us119:     ; preds = %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit76.thread.us116, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit76.us113
  %.0.i79.us120 = phi i64 [ 0, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit76.us113 ], [ %i.cp, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit76.thread.us116 ]
  %i.cs = add nsw i64 %.0.i79.us120, %i.f
  %i.ct = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.cs, i32 noundef 0)
          to label %bb.al unwind label %.split104.split.us ; 0 uses

bb.al:                                            ; preds = %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80.us119, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit76.thread.us116, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit76.us113
  %i.cu = add nuw nsw i64 %.04499.us112, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.r
  br i1 %exitcond.not, label %.critedge72, label %.split.split.us, !llvm.loop !276

.split102.split.us:                               ; preds = %.split.split.us
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.split102

.split104.split.us:                               ; preds = %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80.us119
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.split102

.split.split:                                     ; preds = %.split
  %i.cx = invoke { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit unwind label %.split102.split

_ZNK4gdcm9RLEHeader9GetOffsetEm.exit:             ; preds = %.split.split
  %i.cy = extractvalue { i64, i64 } %i.cx, 1
  %i.cz = sub nsw i64 %i.cy, %i.f
  %i.da = load i32, ptr %i.n, align 4, !tbaa !59
  %i.db = zext i32 %i.da to i64                   ; 3 uses
  %i.dc = load i64, ptr %i.ar, align 8, !tbaa !92
  %i.dd = icmp ult i64 %i.dc, %i.db
  %.not6292 = icmp eq i64 %i.cz, %i.db
  %or.cond = select i1 %i.dd, i1 true, i1 %.not6292
  br i1 %or.cond, label %.critedge, label %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80

.split102.split:                                  ; preds = %.split.split
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.split102

_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80:           ; preds = %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit
  %i.df = add nsw i64 %i.f, %i.db
  %i.dg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.df, i32 noundef 0)
          to label %.critedge unwind label %.split104.split ; 0 uses

.split104.split:                                  ; preds = %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.split102

bb.am:                                            ; preds = %.split110.us, %.split107.us
  %.pn = phi { ptr, i32 } [ %i.ch, %.split107.us ], [ %i.ci, %.split110.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %.split102

.critedge74:                                      ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %.critedge

.critedge72:                                      ; preds = %bb.al, %bb.y
  %i.di = invoke noundef zeroext i1 @_ZN4gdcm10ImageCodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.critedge unwind label %bb.i

.critedge:                                        ; preds = %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit.us115, %._crit_edge.us, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit.us, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit, %.critedge74, %.thread, %.critedge72
  %.5 = phi i1 [ false, %.thread ], [ %i.di, %.critedge72 ], [ false, %.critedge74 ], [ false, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit80 ], [ false, %._crit_edge.us ], [ false, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit ], [ false, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit.us ], [ false, %_ZNK4gdcm9RLEHeader9GetOffsetEm.exit.us115 ]
  %i.dj = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  store ptr %i.dj, ptr %3, align 8, !tbaa !12
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8
  %i.dl = getelementptr i8, ptr %i.dj, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %3, i64 %i.dm
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !12
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.dq, align 8, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8
  %i.dt = trunc i8 %i.ds to i1
  br i1 %i.dt, label %bb.an, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

bb.an:                                            ; preds = %.critedge
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !47
  %i.dw = load i64, ptr %i.dr, align 8
  %i.dx = and i64 %i.dw, -2
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dx) #26
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %.critedge, %bb.an
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.dq) #25
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #25
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.dy) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret i1 %.5

.split102:                                        ; preds = %.split104.us, %.split104.split.us, %.split104.split, %.split102.us, %.split102.split.us, %.split102.split, %bb.am, %bb.h, %bb.i, %bb.l, %bb.s, %bb.e
  %.pn68.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.w, %bb.i ], [ %i.v, %bb.h ], [ %i.aj, %bb.s ], [ %i.ab, %bb.l ], [ %.pn, %bb.am ], [ %i.cv, %.split102.split.us ], [ %i.cf, %.split102.us ], [ %i.de, %.split102.split ], [ %i.cg, %.split104.us ], [ %i.dh, %.split104.split ], [ %i.cw, %.split104.split.us ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  resume { ptr, i32 } %.pn68.pn
}

declare noundef zeroext i1 @_ZN4gdcm10ImageCodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZThn8_N4gdcm8RLECodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef zeroext i1 @_ZN4gdcm8RLECodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm8RLECodec13GetHeaderInfoERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS_14TransferSyntaxE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 64) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68
  %.not.i.i = icmp eq i64 %i.d, 64
  br i1 %.not.i.i, label %bb.a, label %.thread

bb.a:                                             ; preds = %.noexc
  %i.e = load i32, ptr %i.a, align 16, !tbaa !59  ; 5 uses
  %i.f = icmp ult i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not4.i.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i.i, label %.thread32, label %bb.c

.thread32:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 4, ptr %i.g, align 8, !tbaa !280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.h, align 4, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 3, ptr %i.i, align 4, !tbaa !281
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %_ZN4gdcm11PixelFormat16SetBitsAllocatedEt.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.7.4.copyload = load i32, ptr %i.k, align 4
  %.not5.i.i = icmp eq i32 %.sroa.7.4.copyload, 64
  br i1 %.not5.i.i, label %bb.d, label %.thread

.thread:                                          ; preds = %.noexc, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN4gdcm8RLEFrameD2Ev.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.lhs.trunc25 = trunc nuw nsw i32 %i.e to i8    ; 2 uses
  %i.l = urem i8 %.lhs.trunc25, 3
  %i.m = udiv i8 %.lhs.trunc25, 3
  %i.n = icmp eq i8 %i.l, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br i1 %i.n, label %bb.e, label %.thread28

.thread28:                                        ; preds = %bb.d
  store i32 2, ptr %i.o, align 8, !tbaa !280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 1, ptr %i.q, align 4, !tbaa !281
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 4, ptr %i.o, align 8, !tbaa !280
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.r, align 4, !tbaa !64
  store i16 3, ptr %i.p, align 4, !tbaa !281
  %.zext = zext nneg i8 %i.m to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %cond = icmp ult i32 %i.e, 3
  br i1 %cond, label %_ZN4gdcm11PixelFormat16SetBitsAllocatedEt.exit, label %bb.f

bb.f:                                             ; preds = %.thread28, %bb.e
  %i.t = phi ptr [ %i.p, %.thread28 ], [ %i.s, %bb.e ]
  %.031 = phi i32 [ %i.e, %.thread28 ], [ %.zext, %bb.e ]
  %.0.tr = trunc nuw nsw i32 %.031 to i16
  %i.u = shl nuw nsw i16 %.0.tr, 3                ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %i.u, ptr %i.v, align 8, !tbaa !61
  %i.w = add nsw i16 %i.u, -1
  br label %_ZN4gdcm11PixelFormat16SetBitsAllocatedEt.exit

_ZN4gdcm11PixelFormat16SetBitsAllocatedEt.exit:   ; preds = %bb.e, %.thread32, %bb.f
  %3 = phi ptr [ %i.t, %bb.f ], [ %i.j, %.thread32 ], [ %i.s, %bb.e ]
  %.sink = phi i16 [ %i.u, %bb.f ], [ 0, %.thread32 ], [ 0, %bb.e ]
  %.sink7.i = phi i64 [ 6, %bb.f ], [ 8, %.thread32 ], [ 8, %bb.e ]
  %.sink.i = phi i16 [ %i.w, %bb.f ], [ 0, %.thread32 ], [ 0, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sink, ptr %i.x, align 2, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.sink7.i
  store i16 %.sink.i, ptr %i.y, align 2, !tbaa !89
  store i32 18, ptr %2, align 4, !tbaa !282
  br label %_ZN4gdcm8RLEFrameD2Ev.exit

_ZN4gdcm8RLEFrameD2Ev.exit:                       ; preds = %_ZN4gdcm11PixelFormat16SetBitsAllocatedEt.exit, %.thread
  %.0.i.i23 = phi i1 [ false, %.thread ], [ true, %_ZN4gdcm11PixelFormat16SetBitsAllocatedEt.exit ]
  ret i1 %.0.i.i23
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK4gdcm8RLECodec5CloneEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 8 uses
  invoke void @_ZN4gdcm10ImageCodecC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %.noexc unwind label %bb.d, !inline_history !283

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4gdcm8RLECodecE, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4gdcm8RLECodecE, i64 176), ptr %i.b, align 8, !tbaa !12
  %i.c = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #24
          to label %bb.c unwind label %bb.b, !inline_history !283 ; 2 uses

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4gdcm10ImageCodecD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(96) %i.a) #25, !inline_history !283
  br label %.body

bb.c:                                             ; preds = %.noexc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, i8 0, i64 112, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.c, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.d, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm8RLECodec11StartEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #15 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm8RLECodec12IsRowEncoderEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #15 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm8RLECodec14IsFrameEncoderEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #15 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress noreturn uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm8RLECodec15AppendRowEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEEPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 1021, ptr noundef nonnull @.str.2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm8RLECodec17AppendFrameEncodeERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEEPKcm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rle::pixel_info", align 1   ; 5 uses
  %5 = alloca %"class.rle::image_info", align 4   ; 5 uses
  %6 = alloca %"class.gdcm::memsrc", align 8      ; 8 uses
  %7 = alloca %"class.rle::rle_encoder", align 8  ; 8 uses
  %8 = alloca %"class.gdcm::streamdest", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.c = load i16, ptr %i.b, align 2, !tbaa !60   ; 2 uses
  %i.d = trunc i16 %i.c to i8
  %i.e = icmp eq i16 %i.c, 12
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i16, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp ugt i16 %i.g, 12
  br i1 %.not.i, label %bb.c, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 131, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #25
  br label %.body

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit:     ; preds = %bb.b
  %i.j = icmp eq i16 %i.g, 12
  br i1 %i.j, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !59
  %i.o = invoke noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.a)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = zext i32 %i.l to i64
  %i.q = zext i32 %i.n to i64
  %i.r = zext i16 %i.o to i64
  %i.s = shl nuw nsw i64 %i.p, 1
  %i.t = mul i64 %i.s, %i.q
  %i.u = mul i64 %i.t, %i.r                       ; 2 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #24
          to label %bb.h unwind label %bb.l       ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.w = invoke noundef zeroext i1 @_ZN4gdcm14Unpacker12Bits6UnpackEPcPKcm(ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %i.w, label %.thread, label %bb.n

bb.j:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.k:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.l:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.m:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.n:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #26
  br label %bb.ai

.thread:                                          ; preds = %bb.i, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit, %bb.a
  %.169 = phi ptr [ %2, %bb.a ], [ %2, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit ], [ %i.v, %bb.i ] ; 2 uses
  %.167 = phi i64 [ %3, %bb.a ], [ %3, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit ], [ %i.u, %bb.i ]
  %.051 = phi ptr [ null, %bb.a ], [ null, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit ], [ %i.v, %bb.i ] ; 4 uses
  %.150 = phi i8 [ %i.d, %bb.a ], [ 12, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit ], [ 16, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !286, !range !97, !noundef !98
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = xor i1 %i.af, true
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ah = invoke noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.a)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %.thread
end_hunk_4
