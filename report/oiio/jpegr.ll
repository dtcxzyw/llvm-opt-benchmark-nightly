inline.NumInlined: 1678
inline.NumDeleted: 808
begin_hunk_0
%"struct.std::_Vector_base.37" = type { %"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl" }
%"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%class.anon = type <{ ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i8, [3 x i8] }>
%class.anon.33 = type <{ ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i8, [3 x i8] }>
%"struct.ultrahdr::uhdr_gainmap_metadata_frac" = type { [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i32, i8, i8 }
%"class.ultrahdr::JpegDecoderHelper" = type { [3 x %"class.std::unique_ptr.22"], %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i64 }
%struct.uhdr_mem_block = type { ptr, i64, i64 }
%struct.uhdr_raw_image = type { i32, i32, i32, i32, i32, i32, [3 x ptr], [3 x i32] }
%"struct.ultrahdr::uhdr_memory_block" = type { %"class.std::unique_ptr.22", i64 }
%"class.photos_editing_formats::image_io::MessageHandler" = type { %"class.std::unique_ptr.43", %"class.std::unique_ptr.51", %"class.std::shared_ptr.59" }
%"class.std::unique_ptr.43" = type { %"struct.std::__uniq_ptr_data.44" }
%"struct.std::__uniq_ptr_data.44" = type { %"class.std::__uniq_ptr_impl.45" }
%"class.std::__uniq_ptr_impl.45" = type { %"class.std::tuple.46" }
%"class.std::tuple.46" = type { %"struct.std::_Tuple_impl.47" }
%"struct.std::_Tuple_impl.47" = type { %"struct.std::_Head_base.50" }
%"struct.std::_Head_base.50" = type { ptr }
%"class.std::unique_ptr.51" = type { %"struct.std::__uniq_ptr_data.52" }
%"struct.std::__uniq_ptr_data.52" = type { %"class.std::__uniq_ptr_impl.53" }
%"class.std::__uniq_ptr_impl.53" = type { %"class.std::tuple.54" }
%"class.std::tuple.54" = type { %"struct.std::_Tuple_impl.55" }
%"struct.std::_Tuple_impl.55" = type { %"struct.std::_Head_base.58" }
%"struct.std::_Head_base.58" = type { ptr }
%"class.std::shared_ptr.59" = type { %"class.std::__shared_ptr.60" }
%"class.std::__shared_ptr.60" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.70" = type { %"class.std::__shared_ptr.71" }
%"class.std::__shared_ptr.71" = type { ptr, %"class.std::__shared_count" }
%"class.photos_editing_formats::image_io::DataRange" = type { i64, i64 }
%"class.photos_editing_formats::image_io::DataSegmentDataSource" = type { %"class.photos_editing_formats::image_io::DataSource", %"class.std::shared_ptr.70" }
%"class.photos_editing_formats::image_io::DataSource" = type { ptr }
%"class.photos_editing_formats::image_io::JpegInfoBuilder" = type { %"class.photos_editing_formats::image_io::JpegSegmentProcessor", i32, i32, %"class.std::vector.73", %"class.std::vector.73", %"class.std::vector.73", %"class.photos_editing_formats::image_io::DataRange", %"class.std::__cxx11::basic_string", %"class.photos_editing_formats::image_io::JpegXmpInfoBuilder", %"class.photos_editing_formats::image_io::JpegXmpInfoBuilder", %"class.photos_editing_formats::image_io::JpegInfo", %"class.std::set" }
%"class.photos_editing_formats::image_io::JpegSegmentProcessor" = type { ptr }
%"class.std::vector.73" = type { %"struct.std::_Vector_base.74" }
%"struct.std::_Vector_base.74" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.photos_editing_formats::image_io::JpegXmpInfoBuilder" = type { i32, %"class.std::vector.78", %"class.photos_editing_formats::image_io::DataRange" }
%"class.std::vector.78" = type { %"struct.std::_Vector_base.79" }
%"struct.std::_Vector_base.79" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::DataRange, std::allocator<photos_editing_formats::image_io::DataRange>>::_Vector_impl" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::DataRange, std::allocator<photos_editing_formats::image_io::DataRange>>::_Vector_impl" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::DataRange, std::allocator<photos_editing_formats::image_io::DataRange>>::_Vector_impl_data" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::DataRange, std::allocator<photos_editing_formats::image_io::DataRange>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.photos_editing_formats::image_io::JpegInfo" = type { %"class.std::vector.78", %"class.std::vector.83", %"class.photos_editing_formats::image_io::DataRange", %"class.photos_editing_formats::image_io::DataRange", %"class.std::vector.88" }
%"class.std::vector.83" = type { %"struct.std::_Vector_base.84" }
%"struct.std::_Vector_base.84" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::JpegSegmentInfo, std::allocator<photos_editing_formats::image_io::JpegSegmentInfo>>::_Vector_impl" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::JpegSegmentInfo, std::allocator<photos_editing_formats::image_io::JpegSegmentInfo>>::_Vector_impl" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::JpegSegmentInfo, std::allocator<photos_editing_formats::image_io::JpegSegmentInfo>>::_Vector_impl_data" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::JpegSegmentInfo, std::allocator<photos_editing_formats::image_io::JpegSegmentInfo>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.88" = type { %"struct.std::_Vector_base.89" }
%"struct.std::_Vector_base.89" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::JpegXmpInfo, std::allocator<photos_editing_formats::image_io::JpegXmpInfo>>::_Vector_impl" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::JpegXmpInfo, std::allocator<photos_editing_formats::image_io::JpegXmpInfo>>::_Vector_impl" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::JpegXmpInfo, std::allocator<photos_editing_formats::image_io::JpegXmpInfo>>::_Vector_impl_data" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::JpegXmpInfo, std::allocator<photos_editing_formats::image_io::JpegXmpInfo>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.photos_editing_formats::image_io::JpegScanner" = type <{ ptr, ptr, ptr, %"class.std::bitset", %"class.std::shared_ptr.70", %"class.std::shared_ptr.70", i64, i8, i8, [6 x i8] }>
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [4 x i64] }
%"class.std::vector.96" = type { %"struct.std::_Vector_base.97" }
%"struct.std::_Vector_base.97" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::Message, std::allocator<photos_editing_formats::image_io::Message>>::_Vector_impl" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::Message, std::allocator<photos_editing_formats::image_io::Message>>::_Vector_impl" = type { %"struct.std::_Vector_base<photos_editing_formats::image_io::Message, std::allocator<photos_editing_formats::image_io::Message>>::_Vector_impl_data" }
%"struct.std::_Vector_base<photos_editing_formats::image_io::Message, std::allocator<photos_editing_formats::image_io::Message>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.photos_editing_formats::image_io::Message" = type { i32, i32, %"class.std::__cxx11::basic_string" }
%"struct.ultrahdr::ShepardsIDW" = type { i32, ptr, ptr, ptr, ptr }
%"struct.ultrahdr::GainLUT" = type <{ [3 x ptr], [3 x ptr], [3 x float], [4 x i8] }>
%"class.std::unique_ptr.131" = type { %"struct.std::__uniq_ptr_data.132" }
%"struct.std::__uniq_ptr_data.132" = type { %"class.std::__uniq_ptr_impl.133" }
%"class.std::__uniq_ptr_impl.133" = type { %"class.std::tuple.134" }
%"class.std::tuple.134" = type { %"struct.std::_Tuple_impl.135" }
%"struct.std::_Tuple_impl.135" = type { %"struct.std::_Head_base.138" }
%"struct.std::_Head_base.138" = type { ptr }
%"struct.ultrahdr::GlobalTonemapOutputs" = type { %"struct.std::array.102", float, float }
%"struct.std::array.102" = type { [3 x float] }
%"struct.ultrahdr::jpeg_info_struct" = type <{ %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", i32, i32, i32, [4 x i8] }>
%"struct.ultrahdr::jpegr_info_struct" = type { i32, i32, ptr, ptr }
%"struct.ultrahdr::Color" = type { %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { float, float, float }

@_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"http://ns.adobe.com/xap/1.0/\00", align 1
@__dso_handle = external hidden global i8
@_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"urn:iso:std:iso:ts:21496:-1\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"unsupported hdr intent color format %d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"sdr intent resolution %dx%d and compressed image sdr intent resolution %dx%d do not match\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"configured color gamut %d does not match with color gamut specified in icc box %d\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Unrecognized 420 color gamut %d\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"sdr intent resolution %dx%d and hdr intent resolution %dx%d do not match\00", align 1
@.str.9 = private unnamed_addr constant [187 x i8] c"For gainmap application space to be alternate image space, gainmap image is expected to contain alternate image color space in the form of ICC. The ICC marker in gainmap jpeg is missing.\00", align 1
@_ZN8ultrahdr16kYuvBt709ToBt601E = external global %"struct.std::array", align 4
@_ZN8ultrahdr17kYuvBt709ToBt2100E = external global %"struct.std::array", align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Unrecognized dest color gamut %d\00", align 1
@_ZN8ultrahdr16kYuvBt601ToBt709E = external global %"struct.std::array", align 4
@_ZN8ultrahdr17kYuvBt601ToBt2100E = external global %"struct.std::array", align 4
@_ZN8ultrahdr17kYuvBt2100ToBt709E = external global %"struct.std::array", align 4
@_ZN8ultrahdr17kYuvBt2100ToBt601E = external global %"struct.std::array", align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Unrecognized src color gamut %d\00", align 1
@.str.12 = private unnamed_addr constant [80 x i8] c"No implementation available for performing gamut conversion for color format %d\00", align 1
@.str.13 = private unnamed_addr constant [195 x i8] c"generate gainmap method expects sdr intent color format to be one of {UHDR_IMG_FMT_24bppYCbCr444, UHDR_IMG_FMT_16bppYCbCr422, UHDR_IMG_FMT_12bppYCbCr420, UHDR_IMG_FMT_32bppRGBA8888}. Received %d\00", align 1
@.str.14 = private unnamed_addr constant [204 x i8] c"generate gainmap method expects hdr intent color format to be one of {UHDR_IMG_FMT_24bppYCbCrP010, UHDR_IMG_FMT_30bppYCbCr444, UHDR_IMG_FMT_32bppRGBA1010102, UHDR_IMG_FMT_64bppRGBAHalfFloat}. Received %d\00", align 1
@.str.15 = private unnamed_addr constant [81 x i8] c"No implementation available for converting transfer characteristics %d to linear\00", align 1
@.str.16 = private unnamed_addr constant [73 x i8] c"No implementation available for calculating luminance for color gamut %d\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"No implementation available for calculating Ootf for color transfer %d\00", align 1
@.str.18 = private unnamed_addr constant [91 x i8] c"received invalid peak brightness %f nits for hdr reference display with color transfer %d \00", align 1
@.str.19 = private unnamed_addr constant [63 x i8] c"No implementation available for gamut conversion from %d to %d\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c"No implementation available for converting yuv to rgb for color gamut %d\00", align 1
@.str.21 = private unnamed_addr constant [71 x i8] c"No implementation available for computing luminance for color gamut %d\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"No implementation available for reading pixels for color format %d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [176 x i8] c"configured gainmap scale factor is resulting in gainmap width and/or height to be zero, image width %u, image height %u, scale factor %d. Modifying gainmap scale factor to %d \00", align 1
@.str.25 = private unnamed_addr constant [119 x i8] c"received exif from uhdr_enc_set_exif_data() while the base image intent already contains exif, unsure which one to use\00", align 1
@_ZN22photos_editing_formats8image_io10JpegMarker6kStartE = external constant i8, align 1
@_ZN22photos_editing_formats8image_io10JpegMarker4kSOIE = external constant i8, align 1
@_ZN22photos_editing_formats8image_io10JpegMarker5kAPP1E = external constant i8, align 1
@_ZN22photos_editing_formats8image_io10JpegMarker5kAPP2E = external constant i8, align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"iso block size needs to be atleast %zd but got %zd\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"received no valid buffer to parse gainmap metadata\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"Unsupported gainmap metadata, version. Expected %s, Got %s\00", align 1
@.str.29 = private unnamed_addr constant [164 x i8] c"apply gainmap method expects base image color format to be one of {UHDR_IMG_FMT_24bppYCbCr444, UHDR_IMG_FMT_16bppYCbCr422, UHDR_IMG_FMT_12bppYCbCr420}. Received %d\00", align 1
@.str.30 = private unnamed_addr constant [164 x i8] c"apply gainmap method expects gainmap image color format to be one of {UHDR_IMG_FMT_8bppYCbCr400, UHDR_IMG_FMT_24bppRGB888, UHDR_IMG_FMT_32bppRGBA8888}. Received %d\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"No implementation available for converting from gamut %d to %d\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"encountered error while resizing the gainmap image from %ux%u to %ux%u\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"input uhdr image does not any valid images\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"input uhdr image does not contain gainmap image\00", align 1
@.str.36 = private unnamed_addr constant [87 x i8] c"Number of jpeg images present %d, primary, gain map images may not be correctly chosen\00", align 1
@.str.37 = private unnamed_addr constant [195 x i8] c"tonemap method expects hdr intent color format to be one of {UHDR_IMG_FMT_24bppYCbCrP010, UHDR_IMG_FMT_30bppYCbCr444, UHDR_IMG_FMT_32bppRGBA1010102, UHDR_IMG_FMT_64bppRGBAHalfFloat}. Received %d\00", align 1
@.str.38 = private unnamed_addr constant [152 x i8] c"tonemap method expects sdr intent color format to be UHDR_IMG_FMT_12bppYCbCr420, if hdr intent color format is UHDR_IMG_FMT_24bppYCbCrP010. Received %d\00", align 1
@.str.39 = private unnamed_addr constant [151 x i8] c"tonemap method expects sdr intent color format to be UHDR_IMG_FMT_24bppYCbCr444, if hdr intent color format is UHDR_IMG_FMT_30bppYCbCr444. Received %d\00", align 1
@.str.40 = private unnamed_addr constant [189 x i8] c"tonemap method expects sdr intent color format to be UHDR_IMG_FMT_32bppRGBA8888, if hdr intent color format is UHDR_IMG_FMT_32bppRGBA1010102 or UHDR_IMG_FMT_64bppRGBAHalfFloat. Received %d\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"No implementation available for writing pixels for color format %d\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"Received nullptr for input p010 image\00", align 1
@.str.43 = private unnamed_addr constant [55 x i8] c"Image dimensions cannot be odd, image dimensions %ux%u\00", align 1
@_ZN8ultrahdr9kMinWidthE = external local_unnamed_addr constant i32, align 4
@_ZN8ultrahdr10kMinHeightE = external local_unnamed_addr constant i32, align 4
@.str.44 = private unnamed_addr constant [67 x i8] c"Image dimensions cannot be less than %dx%d, image dimensions %ux%u\00", align 1
@_ZN8ultrahdr9kMaxWidthE = external local_unnamed_addr constant i32, align 4
@_ZN8ultrahdr10kMaxHeightE = external local_unnamed_addr constant i32, align 4
@.str.45 = private unnamed_addr constant [69 x i8] c"Image dimensions cannot be larger than %dx%d, image dimensions %ux%u\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"Unrecognized p010 color gamut %d\00", align 1
@.str.47 = private unnamed_addr constant [64 x i8] c"Luma stride must not be smaller than width, stride=%u, width=%u\00", align 1
@.str.48 = private unnamed_addr constant [66 x i8] c"Chroma stride must not be smaller than width, stride=%u, width=%u\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Received nullptr for destination\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"Invalid hdr transfer function %d\00", align 1
@.str.51 = private unnamed_addr constant [70 x i8] c"gainmap scale factor is ecpected to be in range (0, 128], received %d\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"invalid quality factor %d, expects in range [0-100]\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"unsupported gainmap gamma %f, expects to be > 0\00", align 1
@.str.54 = private unnamed_addr constant [81 x i8] c"invalid preset %d, expects one of {UHDR_USAGE_REALTIME, UHDR_USAGE_BEST_QUALITY}\00", align 1
@.str.55 = private unnamed_addr constant [83 x i8] c"Invalid min boost / max boost configuration. Configured max boost %f, min boost %f\00", align 1
@.str.56 = private unnamed_addr constant [87 x i8] c"unexpected target display peak brightness nits %f, expects to be with in range [%f %f]\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"Received nullptr for uncompressed 420 image\00", align 1
@.str.58 = private unnamed_addr constant [72 x i8] c"Chroma stride must not be smaller than (width / 2), stride=%u, width=%u\00", align 1
@.str.59 = private unnamed_addr constant [55 x i8] c"Image resolutions mismatch: P010: %ux%u, YUV420: %ux%u\00", align 1
@.str.60 = private unnamed_addr constant [62 x i8] c"quality factor is out side range [0-100], quality factor : %d\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"received nullptr for exif metadata\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"received nullptr for uncompressed 420 image\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"received nullptr for compressed jpeg image\00", align 1
@.str.64 = private unnamed_addr constant [41 x i8] c"received nullptr for compressed gain map\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"received nullptr for destination\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"received nullptr for compressed jpegr image\00", align 1
@.str.67 = private unnamed_addr constant [50 x i8] c"received nullptr for compressed jpegr info struct\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"received nullptr for dest image\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"received bad value for max_display_boost %f\00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"received nullptr address for exif data\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"received nullptr address for gainmap data\00", align 1
@.str.72 = private unnamed_addr constant [40 x i8] c"received bad value for output format %d\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@"_ZTIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_0clEvEUlvE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_0clEvEUlvE_" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_0clEvEUlvE_" = internal constant [172 x i8] c"ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_0clEvEUlvE_\00", align 1
@"__const._ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEv.gainmap_min" = private unnamed_addr constant [3 x float] [float 1.270000e+02, float 1.270000e+02, float 1.270000e+02], align 4
@"__const._ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEv.gainmap_max" = private unnamed_addr constant [3 x float] [float -1.280000e+02, float -1.280000e+02, float -1.280000e+02], align 4
@"_ZTIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEvEUlvE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEvEUlvE_" }, align 8
@"_ZTSZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEvEUlvE_" = internal constant [172 x i8] c"ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEvEUlvE_\00", align 1
@"_ZTIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEvEUlvE0_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEvEUlvE0_" }, align 8
@"_ZTSZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEvEUlvE0_" = internal constant [173 x i8] c"ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEvEUlvE0_\00", align 1
@_ZTVN8ultrahdr17AlogMessageWriterE = linkonce_odr unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN8ultrahdr17AlogMessageWriterE, ptr @_ZN22photos_editing_formats8image_io13MessageWriterD2Ev, ptr @_ZN8ultrahdr17AlogMessageWriterD0Ev, ptr @_ZN8ultrahdr17AlogMessageWriter12WriteMessageERKN22photos_editing_formats8image_io7MessageE, ptr @_ZNK22photos_editing_formats8image_io13MessageWriter19GetFormattedMessageB5cxx11ERKNS0_7MessageE, ptr @_ZNK22photos_editing_formats8image_io13MessageWriter15GetTypeCategoryB5cxx11ENS0_7Message4TypeE, ptr @_ZNK22photos_editing_formats8image_io13MessageWriter18GetTypeDescriptionB5cxx11ENS0_7Message4TypeEi] }, align 8
@_ZTIN8ultrahdr17AlogMessageWriterE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8ultrahdr17AlogMessageWriterE, ptr @_ZTIN22photos_editing_formats8image_io13MessageWriterE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8ultrahdr17AlogMessageWriterE = linkonce_odr constant [31 x i8] c"N8ultrahdr17AlogMessageWriterE\00", align 1
@_ZTIN22photos_editing_formats8image_io13MessageWriterE = external constant ptr
@_ZTVN22photos_editing_formats8image_io21DataSegmentDataSourceE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN22photos_editing_formats8image_io15JpegInfoBuilderE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.75 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEE, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEED2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEE6_M_runEv] }, align 8
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEE, ptr @_ZTINSt6thread6_StateE }, align 8
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEE = linkonce_odr constant [71 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFvvEEEEEEEE\00", align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.76 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@"_ZTIZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS2_E3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS2_E3$_0" }, align 8
@"_ZTSZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS2_E3$_0" = internal constant [129 x i8] c"ZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS2_E3$_0\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@"_ZTIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS2_E3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS2_E3$_0" }, align 8
@"_ZTSZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS2_E3$_0" = internal constant [52 x i8] c"ZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS2_E3$_0\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_jpegr.cpp, ptr null }]
@switch.table._ZN8ultrahdr5JpegR11decodeJPEGREPNS_23jpegr_compressed_structEPNS_25jpegr_uncompressed_structEfPNS_17jpegr_exif_structENS_22ultrahdr_output_formatES4_PNS_24ultrahdr_metadata_structE = private unnamed_addr constant [3 x i32] [i32 0, i32 2, i32 1], align 4
@switch.table._ZN8ultrahdr5JpegR11decodeJPEGREPNS_23jpegr_compressed_structEPNS_25jpegr_uncompressed_structEfPNS_17jpegr_exif_structENS_22ultrahdr_output_formatES4_PNS_24ultrahdr_metadata_structE.29 = private unnamed_addr constant [3 x i32] [i32 4, i32 5, i32 5], align 4

@_ZN8ultrahdr5JpegRC1EPviibf15uhdr_enc_presetfff = unnamed_addr alias void (ptr, ptr, i32, i32, i1, float, i32, float, float, float), ptr @_ZN8ultrahdr5JpegRC2EPviibf15uhdr_enc_presetfff

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8ultrahdr8JobQueue10dequeueJobERjS1_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %.lr.ph, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
  unreachable

bb.c:                                             ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.i = load i8, ptr %0, align 8, !tbaa !13, !range !25, !noundef !26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #28
  %i.l = add nsw i64 %i.k, 100000000              ; 2 uses
  %i.m = sdiv i64 %i.l, 1000000000                ; 2 uses
  %.neg.i.i.i.i.i = mul nsw i64 %i.m, -1000000000
  %i.n = add i64 %.neg.i.i.i.i.i, %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 %i.m, ptr %4, align 8, !tbaa !27
  store i64 %i.n, ptr %i.h, align 8, !tbaa !29
  %i.o = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit unwind label %bb.e ; 0 uses

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.d
  %i.p = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %.not26 = icmp eq ptr %i.q, %i.r
  br i1 %.not26, label %bb.c, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit._crit_edge, !llvm.loop !30

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit9

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit._crit_edge: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader
  %.lcssa22 = phi ptr [ %i.f, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader ], [ %i.r, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32, !noalias !33 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa22, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  store i32 %i.x, ptr %1, align 4, !tbaa !3
  %i.y = load i32, ptr %.lcssa22, align 4, !tbaa !3
  store i32 %i.y, ptr %2, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  store ptr %.lcssa22, ptr %3, align 8, !tbaa !7, !alias.scope !36, !noalias !39
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !42, !noalias !43 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !44, !alias.scope !36, !noalias !39
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !45, !alias.scope !36, !noalias !39
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.v, ptr %i.ad, align 8, !tbaa !32, !alias.scope !36, !noalias !39
  invoke void @_ZNSt5dequeISt5tupleIJjjEESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull dead_on_return %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.g:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit._crit_edge
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit9

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.c, %bb.f
  %i.af = phi i1 [ true, %bb.f ], [ false, %bb.c ]
  %i.ag = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  ret i1 %i.af

_ZNSt11unique_lockISt5mutexED2Ev.exit9:           ; preds = %bb.e, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.ae, %bb.g ]
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr8JobQueue10enqueueJobEjj(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 %2, ptr %3, align 4, !tbaa !46, !alias.scope !48
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %i.c, align 4, !tbaa !51, !alias.scope !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %.not.i.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  store i32 %2, ptr %i.e, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %1, ptr %i.i, align 4, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !53
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.d:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt5dequeISt5tupleIJjjEESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit7

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.l = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m) #28
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit7:           ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.o = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  resume { ptr, i32 } %i.n
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr8JobQueue15markQueueForEndEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
  unreachable

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.a
  store i8 1, ptr %0, align 8, !tbaa !13
  %i.c = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #28
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr8JobQueue5resetEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !42, !noalias !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32, !noalias !55 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !58, !noalias !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59   ; 2 uses
  %i.k = icmp ult ptr %i.g, %i.j
  br i1 %i.k, label %.lr.ph.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.lr.ph.i.i.i
  %.06.i.pn.i.i = phi ptr [ %.06.i.i.i, %.lr.ph.i.i.i ], [ %i.g, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ]
  %.06.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %.06.i.i.i, align 8, !tbaa !42
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef 512) #30
  %i.m = icmp ult ptr %.06.i.i.i, %i.j
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, !llvm.loop !60

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.lr.ph.i.i.i, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x ptr> %i.d, ptr %i.n, align 8, !tbaa !42
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x ptr> %i.h, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !58
  store i8 0, ptr %0, align 8, !tbaa !13
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 1, 0) i32 @_ZN8ultrahdr15GetCPUCoreCountEv() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #28
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.a, i32 1)
  ret i32 %.sroa.speculated
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8ultrahdr5JpegRC2EPviibf15uhdr_enc_presetfff(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 17), (20, 40)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, float noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9) unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  store ptr %1, ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.c, align 4, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %5, ptr %i.e, align 4, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %6, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %7, ptr %i.g, align 4, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %8, ptr %i.h, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %9, ptr %i.i, align 4, !tbaa !72
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr5JpegR11encodeJPEGREP14uhdr_raw_imageP21uhdr_compressed_imageiP14uhdr_mem_block(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly captures(address) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %7 = alloca %"struct.ultrahdr::uhdr_gainmap_metadata_ext", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %10 = alloca %"class.ultrahdr::JpegEncoderHelper", align 8 ; 11 uses
  %11 = alloca %struct.uhdr_compressed_image, align 8 ; 5 uses
  %12 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %14 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %15 = alloca %"class.ultrahdr::JpegEncoderHelper", align 8 ; 11 uses
  %16 = alloca %struct.uhdr_compressed_image, align 8 ; 6 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !73     ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.c
    i32 12, label %17
    i32 5, label %18
    i32 4, label %18
  ]

17:                                               ; preds = %bb.a
  br label %bb.c

18:                                               ; preds = %bb.a, %bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 4, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %i.a) #28 ; 0 uses
  br label %bb.bc

bb.c:                                             ; preds = %bb.a, %17, %18
  %.090 = phi i32 [ 3, %18 ], [ 6, %17 ], [ 1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.g = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #31, !noalias !83 ; 10 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !3, !noalias !83
  %i.i = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !83
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i32 noundef %.090, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 64)
          to label %_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangeRjS7_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.d, !noalias !83

common.resume:                                    ; preds = %bb.bb, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn31.pn.pn.pn.pn.pn.pn.pn, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 72) #30, !noalias !83
  br label %common.resume

_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangeRjS7_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.c
  store ptr %i.g, ptr %6, align 8, !tbaa !86, !alias.scope !83
  invoke void @_ZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS2_(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %i.g)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangeRjS7_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = load i32, ptr %0, align 4, !tbaa !79
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.thread

bb.f:                                             ; preds = %_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangeRjS7_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.m, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.n, ptr %8, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.n, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 3, ptr %i.o, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.p, align 1, !tbaa !93
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 6 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.r, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i64 3, ptr %i.s, align 8, !tbaa !91
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 91
  store i8 0, ptr %i.t, align 1, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr null, ptr %9, align 8, !tbaa !94
  invoke void @_ZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbb(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.g, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(8) %9, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i32, ptr %0, align 4, !tbaa !79
  %.not28 = icmp eq i32 %i.u, 0
  br i1 %.not28, label %bb.i, label %bb.aw

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  %i.x = load ptr, ptr %9, align 8, !tbaa !86
  invoke void @_ZN8ultrahdr5JpegR15compressGainMapEP14uhdr_raw_imagePNS_17JpegEncoderHelperE(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.x, ptr noundef nonnull %10)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr %0, align 4, !tbaa !79
  %.not29 = icmp eq i32 %i.y, 0
  br i1 %.not29, label %bb.l, label %bb.at

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN8ultrahdr17JpegEncoderHelper18getCompressedImageEv(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_compressed_image) align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !96
  invoke void @_ZN8ultrahdr9IccHelper15writeIccProfileE19uhdr_color_transfer16uhdr_color_gamut(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %12, i32 noundef 3, i32 noundef %i.ab)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  store ptr null, ptr %13, align 8, !tbaa !94
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !73
  %i.ad = invoke noundef zeroext i1 @_ZN8ultrahdr16isPixelFormatRgbE12uhdr_img_fmt(i32 noundef %i.ac)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.ad, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZN8ultrahdr26convert_raw_input_to_ycbcrEP14uhdr_raw_imageb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %14, ptr noundef nonnull %i.g, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit unwind label %bb.t

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.p
  %i.ae = load ptr, ptr %14, align 8, !tbaa !86   ; 3 uses
  store ptr %i.ae, ptr %13, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.r:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.s:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.t:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.aq

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit, %bb.o
  %i.aj = phi ptr [ %i.ae, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit ], [ null, %bb.o ] ; 3 uses
  %.0 = phi ptr [ %i.ae, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit ], [ %i.g, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i8 0, i64 48, i1 false)
  %i.al = load ptr, ptr %12, align 8, !tbaa !97
  %i.am = invoke noundef ptr @_ZN8ultrahdr10DataStruct7getDataEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.an = load ptr, ptr %12, align 8, !tbaa !97
  %i.ao = invoke noundef i64 @_ZN8ultrahdr10DataStruct9getLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN8ultrahdr17JpegEncoderHelper13compressImageEPK14uhdr_raw_imageiPKvm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %15, ptr noundef %.0, i32 noundef %4, ptr noundef %i.am, i64 noundef %i.ao)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ap = load i32, ptr %0, align 4, !tbaa !79
  %.not30 = icmp eq i32 %i.ap, 0
  br i1 %.not30, label %bb.z, label %bb.af

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN8ultrahdr17JpegEncoderHelper18getCompressedImageEv(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_compressed_image) align 8 %16, ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %i.as, ptr %i.at, align 8, !tbaa !102
  invoke void @_ZN8ultrahdr5JpegR13appendGainMapEP21uhdr_compressed_imageS2_P14uhdr_mem_blockPvmPNS_25uhdr_gainmap_metadata_extES2_(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr nonnull align 8 poison, ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef %5, ptr noundef null, i64 noundef 0, ptr noundef nonnull %7, ptr noundef %3)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.au = load i32, ptr %0, align 4, !tbaa !79
  %.not40 = icmp eq i32 %i.au, 0
  br i1 %.not40, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.ap

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.x, %bb.ae
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.aw = load ptr, ptr %.ptr1.i, align 8, !tbaa !104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

end_hunk_0
