Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DngOpcodes?download=true
inline.NumInlined: 1596
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0

$_ZTIN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = comdat any

$_ZTSN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = comdat any

$_ZTVN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = comdat any

$_ZTIN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = comdat any

$_ZTSN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = comdat any

@.str = private unnamed_addr constant [43 x i8] c"%s, line 711: Unknown unhandled Opcode: %u\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodesC2ERKNS_8RawImageENS_10ByteStreamE = private unnamed_addr constant [63 x i8] c"rawspeed::DngOpcodes::DngOpcodes(const RawImage &, ByteStream)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s, line 720: Unsupported Opcode: %u (%s)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s, line 724: Inconsistent length of opcode\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"WarpRectilinear\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"WarpFisheye\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"FixVignetteRadial\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"FixBadPixelsConstant\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"FixBadPixelsList\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"TrimBounds\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"MapTable\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"MapPolynomial\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"GainMap\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"DeltaPerRow\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"DeltaPerColumn\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ScalePerRow\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"ScalePerColumn\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"WarpRectilinear2\00", align 1
@_ZTVN8rawspeed10DngOpcodes9DngOpcodeE = hidden local_unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes9DngOpcodeE, ptr @_ZNK8rawspeed10DngOpcodes9DngOpcode6anchorEv, ptr @_ZN8rawspeed10DngOpcodes9DngOpcodeD2Ev, ptr @_ZN8rawspeed10DngOpcodes9DngOpcodeD0Ev, ptr @_ZN8rawspeed10DngOpcodes9DngOpcode5setupERKNS_8RawImageE, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN8rawspeed10DngOpcodes9DngOpcodeE = hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes9DngOpcodeE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN8rawspeed10DngOpcodes9DngOpcodeE = hidden constant [34 x i8] c"N8rawspeed10DngOpcodes9DngOpcodeE\00", align 1
@_ZTVN8rawspeed10DngOpcodes20FixBadPixelsConstantE = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes20FixBadPixelsConstantE, ptr @_ZNK8rawspeed10DngOpcodes20FixBadPixelsConstant6anchorEv, ptr @_ZN8rawspeed10DngOpcodes9DngOpcodeD2Ev, ptr @_ZN8rawspeed10DngOpcodes20FixBadPixelsConstantD0Ev, ptr @_ZN8rawspeed10DngOpcodes20FixBadPixelsConstant5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes20FixBadPixelsConstant5applyERKNS_8RawImageE] }, align 8
@_ZTIN8rawspeed10DngOpcodes20FixBadPixelsConstantE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes20FixBadPixelsConstantE, ptr @_ZTIN8rawspeed10DngOpcodes9DngOpcodeE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8rawspeed10DngOpcodes20FixBadPixelsConstantE = hidden constant [46 x i8] c"N8rawspeed10DngOpcodes20FixBadPixelsConstantE\00", align 1
@_ZTVN8rawspeed10DngOpcodes9ROIOpcodeE = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes9ROIOpcodeE, ptr @_ZNK8rawspeed10DngOpcodes9ROIOpcode6anchorEv, ptr @_ZN8rawspeed10DngOpcodes9DngOpcodeD2Ev, ptr @_ZN8rawspeed10DngOpcodes9ROIOpcodeD0Ev, ptr @_ZN8rawspeed10DngOpcodes9DngOpcode5setupERKNS_8RawImageE, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN8rawspeed10DngOpcodes9ROIOpcodeE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes9ROIOpcodeE, ptr @_ZTIN8rawspeed10DngOpcodes9DngOpcodeE }, align 8
@_ZTSN8rawspeed10DngOpcodes9ROIOpcodeE = hidden constant [34 x i8] c"N8rawspeed10DngOpcodes9ROIOpcodeE\00", align 1
@_ZTVN8rawspeed10DngOpcodes14DummyROIOpcodeE = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes14DummyROIOpcodeE, ptr @_ZNK8rawspeed10DngOpcodes14DummyROIOpcode6anchorEv, ptr @_ZN8rawspeed10DngOpcodes9DngOpcodeD2Ev, ptr @_ZN8rawspeed10DngOpcodes14DummyROIOpcodeD0Ev, ptr @_ZN8rawspeed10DngOpcodes9DngOpcode5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes14DummyROIOpcode5applyERKNS_8RawImageE] }, align 8
@_ZTIN8rawspeed10DngOpcodes14DummyROIOpcodeE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes14DummyROIOpcodeE, ptr @_ZTIN8rawspeed10DngOpcodes9ROIOpcodeE }, align 8
@_ZTSN8rawspeed10DngOpcodes14DummyROIOpcodeE = hidden constant [40 x i8] c"N8rawspeed10DngOpcodes14DummyROIOpcodeE\00", align 1
@_ZTVN8rawspeed10DngOpcodes16FixBadPixelsListE = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes16FixBadPixelsListE, ptr @_ZNK8rawspeed10DngOpcodes16FixBadPixelsList6anchorEv, ptr @_ZN8rawspeed10DngOpcodes16FixBadPixelsListD2Ev, ptr @_ZN8rawspeed10DngOpcodes16FixBadPixelsListD0Ev, ptr @_ZN8rawspeed10DngOpcodes9DngOpcode5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes16FixBadPixelsList5applyERKNS_8RawImageE] }, align 8
@_ZTIN8rawspeed10DngOpcodes16FixBadPixelsListE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes16FixBadPixelsListE, ptr @_ZTIN8rawspeed10DngOpcodes9DngOpcodeE }, align 8
@_ZTSN8rawspeed10DngOpcodes16FixBadPixelsListE = hidden constant [42 x i8] c"N8rawspeed10DngOpcodes16FixBadPixelsListE\00", align 1
@_ZTVN8rawspeed10DngOpcodes10TrimBoundsE = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes10TrimBoundsE, ptr @_ZNK8rawspeed10DngOpcodes10TrimBounds6anchorEv, ptr @_ZN8rawspeed10DngOpcodes9DngOpcodeD2Ev, ptr @_ZN8rawspeed10DngOpcodes10TrimBoundsD0Ev, ptr @_ZN8rawspeed10DngOpcodes9DngOpcode5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes10TrimBounds5applyERKNS_8RawImageE] }, align 8
@_ZTIN8rawspeed10DngOpcodes10TrimBoundsE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes10TrimBoundsE, ptr @_ZTIN8rawspeed10DngOpcodes9ROIOpcodeE }, align 8
@_ZTSN8rawspeed10DngOpcodes10TrimBoundsE = hidden constant [36 x i8] c"N8rawspeed10DngOpcodes10TrimBoundsE\00", align 1
@_ZTVN8rawspeed10DngOpcodes11PixelOpcodeE = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes11PixelOpcodeE, ptr @_ZNK8rawspeed10DngOpcodes11PixelOpcode6anchorEv, ptr @_ZN8rawspeed10DngOpcodes9DngOpcodeD2Ev, ptr @_ZN8rawspeed10DngOpcodes11PixelOpcodeD0Ev, ptr @_ZN8rawspeed10DngOpcodes9DngOpcode5setupERKNS_8RawImageE, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN8rawspeed10DngOpcodes11PixelOpcodeE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes11PixelOpcodeE, ptr @_ZTIN8rawspeed10DngOpcodes9ROIOpcodeE }, align 8
@_ZTSN8rawspeed10DngOpcodes11PixelOpcodeE = hidden constant [37 x i8] c"N8rawspeed10DngOpcodes11PixelOpcodeE\00", align 1
@_ZTVN8rawspeed10DngOpcodes12LookupOpcodeE = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes12LookupOpcodeE, ptr @_ZNK8rawspeed10DngOpcodes12LookupOpcode6anchorEv, ptr @_ZN8rawspeed10DngOpcodes12LookupOpcodeD2Ev, ptr @_ZN8rawspeed10DngOpcodes12LookupOpcodeD0Ev, ptr @_ZN8rawspeed10DngOpcodes12LookupOpcode5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes12LookupOpcode5applyERKNS_8RawImageE] }, align 8
@_ZTIN8rawspeed10DngOpcodes12LookupOpcodeE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes12LookupOpcodeE, ptr @_ZTIN8rawspeed10DngOpcodes11PixelOpcodeE }, align 8
@_ZTSN8rawspeed10DngOpcodes12LookupOpcodeE = hidden constant [38 x i8] c"N8rawspeed10DngOpcodes12LookupOpcodeE\00", align 1
@_ZTVN8rawspeed10DngOpcodes8TableMapE = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes8TableMapE, ptr @_ZNK8rawspeed10DngOpcodes8TableMap6anchorEv, ptr @_ZN8rawspeed10DngOpcodes12LookupOpcodeD2Ev, ptr @_ZN8rawspeed10DngOpcodes8TableMapD0Ev, ptr @_ZN8rawspeed10DngOpcodes12LookupOpcode5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes12LookupOpcode5applyERKNS_8RawImageE] }, align 8
@_ZTIN8rawspeed10DngOpcodes8TableMapE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes8TableMapE, ptr @_ZTIN8rawspeed10DngOpcodes12LookupOpcodeE }, align 8
@_ZTSN8rawspeed10DngOpcodes8TableMapE = hidden constant [33 x i8] c"N8rawspeed10DngOpcodes8TableMapE\00", align 1
@_ZTVN8rawspeed10DngOpcodes13PolynomialMapE = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes13PolynomialMapE, ptr @_ZNK8rawspeed10DngOpcodes13PolynomialMap6anchorEv, ptr @_ZN8rawspeed10DngOpcodes12LookupOpcodeD2Ev, ptr @_ZN8rawspeed10DngOpcodes13PolynomialMapD0Ev, ptr @_ZN8rawspeed10DngOpcodes12LookupOpcode5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes12LookupOpcode5applyERKNS_8RawImageE] }, align 8
@_ZTIN8rawspeed10DngOpcodes13PolynomialMapE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes13PolynomialMapE, ptr @_ZTIN8rawspeed10DngOpcodes12LookupOpcodeE }, align 8
@_ZTSN8rawspeed10DngOpcodes13PolynomialMapE = hidden constant [39 x i8] c"N8rawspeed10DngOpcodes13PolynomialMapE\00", align 1
@_ZTVN8rawspeed10DngOpcodes17DeltaRowOrColBaseE = hidden local_unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes17DeltaRowOrColBaseE, ptr @_ZNK8rawspeed10DngOpcodes17DeltaRowOrColBase6anchorEv, ptr @_ZN8rawspeed10DngOpcodes9DngOpcodeD2Ev, ptr @_ZN8rawspeed10DngOpcodes17DeltaRowOrColBaseD0Ev, ptr @_ZN8rawspeed10DngOpcodes9DngOpcode5setupERKNS_8RawImageE, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN8rawspeed10DngOpcodes17DeltaRowOrColBaseE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes17DeltaRowOrColBaseE, ptr @_ZTIN8rawspeed10DngOpcodes11PixelOpcodeE }, align 8
@_ZTSN8rawspeed10DngOpcodes17DeltaRowOrColBaseE = hidden constant [43 x i8] c"N8rawspeed10DngOpcodes17DeltaRowOrColBaseE\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array" zeroinitializer, comdat, align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.19 = private unnamed_addr constant [48 x i8] c"%s, line 65: Out of bounds access in ByteStream\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj = private unnamed_addr constant [55 x i8] c"size_type rawspeed::ByteStream::check(size_type) const\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"%s, line 166: Only 16 bit images supported\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes20FixBadPixelsConstant5setupERKNS_8RawImageE = private unnamed_addr constant [81 x i8] c"virtual void rawspeed::DngOpcodes::FixBadPixelsConstant::setup(const RawImage &)\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"%s, line 169: Only 1 component images supported\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"%s, line 430: Only 16 bit images supported\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes12LookupOpcode5setupERKNS_8RawImageE = private unnamed_addr constant [73 x i8] c"virtual void rawspeed::DngOpcodes::LookupOpcode::setup(const RawImage &)\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@.str.27 = private unnamed_addr constant [42 x i8] c"%s, line 294: Bad point not inside image.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes16FixBadPixelsListC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE = private unnamed_addr constant [111 x i8] c"rawspeed::DngOpcodes::FixBadPixelsList::FixBadPixelsList(const RawImage &, ByteStream &, const iRectangle2D &)\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"%s, line 74: Integer overflow when calculating stream length\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEjj = private unnamed_addr constant [66 x i8] c"size_type rawspeed::ByteStream::check(size_type, size_type) const\00", align 1
@.str.29 = private unnamed_addr constant [76 x i8] c"%s, line 218: Rectangle (%d, %d, %d, %d) not inside image (%d, %d, %d, %d).\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes9ROIOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE = private unnamed_addr constant [97 x i8] c"rawspeed::DngOpcodes::ROIOpcode::ROIOpcode(const RawImage &, ByteStream &, const iRectangle2D &)\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"%s, line 457: Invalid size of lookup table\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes8TableMapC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE = private unnamed_addr constant [95 x i8] c"rawspeed::DngOpcodes::TableMap::TableMap(const RawImage &, ByteStream &, const iRectangle2D &)\00", align 1
@.str.31 = private unnamed_addr constant [67 x i8] c"%s, line 370: Bad plane params (first %u, num %u), got planes = %u\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes11PixelOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE = private unnamed_addr constant [101 x i8] c"rawspeed::DngOpcodes::PixelOpcode::PixelOpcode(const RawImage &, ByteStream &, const iRectangle2D &)\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"%s, line 380: Invalid pitch\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"%s, line 486: A polynomial with more than 8 degrees not allowed\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes13PolynomialMapC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE = private unnamed_addr constant [105 x i8] c"rawspeed::DngOpcodes::PolynomialMap::PolynomialMap(const RawImage &, ByteStream &, const iRectangle2D &)\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE, ptr @_ZNK8rawspeed10DngOpcodes17DeltaRowOrColBase6anchorEv, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEED2Ev, ptr @_ZN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEED0Ev, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEE5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEE5applyERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEE9valueIsOkEf] }, comdat, align 8
@_ZTIN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE, ptr @_ZTIN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEE }, comdat, align 8
@_ZTSN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = linkonce_odr hidden constant [77 x i8] c"N8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE\00", comdat, align 1
@_ZTIN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEE, ptr @_ZTIN8rawspeed10DngOpcodes17DeltaRowOrColBaseE }, comdat, align 8
@_ZTSN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = linkonce_odr hidden constant [73 x i8] c"N8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEE\00", comdat, align 1
@_ZTVN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEE, ptr @_ZNK8rawspeed10DngOpcodes17DeltaRowOrColBase6anchorEv, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEED2Ev, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEED0Ev, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEE5setupERKNS_8RawImageE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.36 = private unnamed_addr constant [68 x i8] c"%s, line 577: Got unexpected number of elements (%lu), expected %u.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DEf = private unnamed_addr constant [217 x i8] c"rawspeed::DngOpcodes::DeltaRowOrCol<rawspeed::DngOpcodes::DeltaRowOrColBase::SelectY>::DeltaRowOrCol(const RawImage &, ByteStream &, const iRectangle2D &, float) [S = rawspeed::DngOpcodes::DeltaRowOrColBase::SelectY]\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"%s, line 589: Got bad float %f.\00", align 1
@__PRETTY_FUNCTION__._ZZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEC1ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DEfENKUlvE_clEv = private unnamed_addr constant [252 x i8] c"auto rawspeed::DngOpcodes::DeltaRowOrCol<rawspeed::DngOpcodes::DeltaRowOrColBase::SelectY>::DeltaRowOrCol(const RawImage &, ByteStream &, const iRectangle2D &, float)::(lambda)::operator()() const [S = rawspeed::DngOpcodes::DeltaRowOrColBase::SelectY]\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"%s, line 550: Got float %f which is unacceptable.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEE5setupERKNS_8RawImageE = private unnamed_addr constant [179 x i8] c"virtual void rawspeed::DngOpcodes::DeltaRowOrCol<rawspeed::DngOpcodes::DeltaRowOrColBase::SelectY>::setup(const RawImage &) [S = rawspeed::DngOpcodes::DeltaRowOrColBase::SelectY]\00", align 1
@_ZTVN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE, ptr @_ZNK8rawspeed10DngOpcodes17DeltaRowOrColBase6anchorEv, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEED2Ev, ptr @_ZN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEED0Ev, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEE5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEE5applyERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEE9valueIsOkEf] }, comdat, align 8
@_ZTIN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE, ptr @_ZTIN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEE }, comdat, align 8
@_ZTSN8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = linkonce_odr hidden constant [77 x i8] c"N8rawspeed10DngOpcodes17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE\00", comdat, align 1
@_ZTIN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEE, ptr @_ZTIN8rawspeed10DngOpcodes17DeltaRowOrColBaseE }, comdat, align 8
@_ZTSN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = linkonce_odr hidden constant [73 x i8] c"N8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEE\00", comdat, align 1
@_ZTVN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEE, ptr @_ZNK8rawspeed10DngOpcodes17DeltaRowOrColBase6anchorEv, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEED2Ev, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEED0Ev, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEE5setupERKNS_8RawImageE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DEf = private unnamed_addr constant [217 x i8] c"rawspeed::DngOpcodes::DeltaRowOrCol<rawspeed::DngOpcodes::DeltaRowOrColBase::SelectX>::DeltaRowOrCol(const RawImage &, ByteStream &, const iRectangle2D &, float) [S = rawspeed::DngOpcodes::DeltaRowOrColBase::SelectX]\00", align 1
@__PRETTY_FUNCTION__._ZZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEC1ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DEfENKUlvE_clEv = private unnamed_addr constant [252 x i8] c"auto rawspeed::DngOpcodes::DeltaRowOrCol<rawspeed::DngOpcodes::DeltaRowOrColBase::SelectX>::DeltaRowOrCol(const RawImage &, ByteStream &, const iRectangle2D &, float)::(lambda)::operator()() const [S = rawspeed::DngOpcodes::DeltaRowOrColBase::SelectX]\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEE5setupERKNS_8RawImageE = private unnamed_addr constant [179 x i8] c"virtual void rawspeed::DngOpcodes::DeltaRowOrCol<rawspeed::DngOpcodes::DeltaRowOrColBase::SelectX>::setup(const RawImage &) [S = rawspeed::DngOpcodes::DeltaRowOrColBase::SelectX]\00", align 1
@_ZTVN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE, ptr @_ZNK8rawspeed10DngOpcodes17DeltaRowOrColBase6anchorEv, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEED2Ev, ptr @_ZN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEED0Ev, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEE5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEE5applyERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEE9valueIsOkEf] }, comdat, align 8
@_ZTIN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE, ptr @_ZTIN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEE }, comdat, align 8
@_ZTSN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE = linkonce_odr hidden constant [76 x i8] c"N8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEEE\00", comdat, align 1
@_ZTVN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE, ptr @_ZNK8rawspeed10DngOpcodes17DeltaRowOrColBase6anchorEv, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEED2Ev, ptr @_ZN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEED0Ev, ptr @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEE5setupERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEE5applyERKNS_8RawImageE, ptr @_ZN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEE9valueIsOkEf] }, comdat, align 8
@_ZTIN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE, ptr @_ZTIN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEE }, comdat, align 8
@_ZTSN8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE = linkonce_odr hidden constant [76 x i8] c"N8rawspeed10DngOpcodes16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEE\00", comdat, align 1
@switch.table._ZN8rawspeed10DngOpcodes3MapEj = private unnamed_addr constant [14 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 8
@switch.table._ZN8rawspeed10DngOpcodes3MapEj.4 = private unnamed_addr constant [14 x ptr] [ptr null, ptr null, ptr null, ptr @_ZN8rawspeed10DngOpcodes11constructorINS0_20FixBadPixelsConstantEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS4_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, ptr @_ZN8rawspeed10DngOpcodes11constructorINS0_16FixBadPixelsListEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS4_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, ptr @_ZN8rawspeed10DngOpcodes11constructorINS0_10TrimBoundsEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS4_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, ptr @_ZN8rawspeed10DngOpcodes11constructorINS0_8TableMapEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS4_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, ptr @_ZN8rawspeed10DngOpcodes11constructorINS0_13PolynomialMapEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS4_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, ptr null, ptr @_ZN8rawspeed10DngOpcodes11constructorINS0_17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEEEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS7_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, ptr @_ZN8rawspeed10DngOpcodes11constructorINS0_17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEEEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS7_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, ptr @_ZN8rawspeed10DngOpcodes11constructorINS0_16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEEEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS7_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, ptr @_ZN8rawspeed10DngOpcodes11constructorINS0_16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS7_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, ptr null], align 8

@_ZN8rawspeed10DngOpcodesC1ERKNS_8RawImageENS_10ByteStreamE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN8rawspeed10DngOpcodesC2ERKNS_8RawImageENS_10ByteStreamE
@_ZN8rawspeed10DngOpcodesD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN8rawspeed10DngOpcodesD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes9DngOpcode6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes20FixBadPixelsConstant6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes9ROIOpcode6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes14DummyROIOpcode6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes16FixBadPixelsList6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes10TrimBounds6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes11PixelOpcode6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes12LookupOpcode6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes8TableMap6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes13PolynomialMap6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZNK8rawspeed10DngOpcodes17DeltaRowOrColBase6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10DngOpcodesC2ERKNS_8RawImageENS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rawspeed::iRectangle2D", align 8 ; 6 uses
  %4 = alloca %"class.rawspeed::ByteStream", align 8 ; 7 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !117  ; 13 uses
  %i.g = zext i32 %i.f to i64                     ; 10 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.d, %i.g
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !118    ; 6 uses
  %i.i = icmp sgt i32 %i.f, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i32 %i.b, 4                  ; 3 uses
  %i.k = icmp samesign ule i32 %i.j, %i.f
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.l, align 1 ; 2 uses
  %i.m = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i) ; 3 uses
  %invariant.op = add nsw i64 %i.g, -4            ; 2 uses
  %.not = icmp eq i32 %.0.copyload.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.e:                                             ; preds = %._crit_edge
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.018129 = phi i32 [ %i.ao, %bb.j ], [ 0, %bb.c ]
  %i.q = phi i32 [ %i.al, %bb.j ], [ %i.j, %bb.c ] ; 5 uses
  %i.r = zext nneg i32 %i.q to i64                ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 4
  %.not.i.i46 = icmp samesign ugt i64 %i.s, %i.g
  br i1 %.not.i.i46, label %.invoke, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.t = add nuw nsw i32 %i.q, 4
  %i.u = icmp samesign ule i32 %i.t, %i.f
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.r, 8
  %.not.i.i48 = icmp samesign ugt i64 %i.v, %i.g
  br i1 %.not.i.i48, label %.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw nsw i32 %i.q, 8
  %i.x = icmp samesign ule i32 %i.w, %i.f
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.r, 12
  %.not.i.i51 = icmp samesign ugt i64 %i.y, %i.g
  br i1 %.not.i.i51, label %.invoke, label %bb.h

.invoke:                                          ; preds = %bb.g, %bb.f, %.lr.ph
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #13
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw nsw i32 %i.q, 12                 ; 2 uses
  %i.aa = icmp samesign ule i32 %i.z, %i.f
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = zext nneg i32 %i.z to i64               ; 2 uses
  %.not.i.i.i.i.i.i54 = icmp ult i64 %invariant.op, %i.ab
  br i1 %.not.i.i.i.i.i.i54, label %.invoke266, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nuw nsw i32 %i.q, 16                ; 3 uses
  %i.ad = icmp samesign ule i32 %i.ac, %i.f
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ab
  %.0.copyload.i.i.i.i.i.i55 = load i32, ptr %i.ae, align 1
  %i.af = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i55) ; 3 uses
  %i.ag = zext nneg i32 %i.ac to i64
  %i.ah = zext i32 %i.af to i64
  %i.ai = add nuw nsw i64 %i.ah, %i.ag
  %.not.i.i59 = icmp samesign ugt i64 %i.ai, %i.g
  br i1 %.not.i.i59, label %.invoke266, label %bb.j

.invoke266:                                       ; preds = %bb.i, %bb.h
  %i.aj = phi ptr [ @.str.17, %bb.h ], [ @.str.19, %bb.i ]
  %i.ak = phi ptr [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.h ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj, %bb.i ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak) #13
          to label %.cont267 unwind label %bb.l

.cont267:                                         ; preds = %.invoke266
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = add nuw nsw i32 %i.af, %i.ac            ; 2 uses
  %i.am = icmp samesign ule i32 %i.al, %i.f
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp sgt i32 %i.af, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw i32 %.018129, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3066

bb.k:                                             ; preds = %.invoke
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.l:                                             ; preds = %.invoke266
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

._crit_edge:                                      ; preds = %bb.j
  %i.ar = zext i32 %i.m to i64                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = shl nuw nsw i64 %i.ar, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #26
          to label %.noexc62 unwind label %bb.e   ; 11 uses

.noexc62:                                         ; preds = %._crit_edge
  %i.aw = load ptr, ptr %0, align 8, !tbaa !122   ; 13 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64              ; 2 uses
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !123 ; 3 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %iter.check

iter.check:                                       ; preds = %.noexc62
  %i.ba = add i64 %i.az, -8
  %i.bb = sub i64 %i.ba, %i.ax                    ; 3 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bb, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.be = add i64 %i.az, -8
  %i.bf = sub i64 %i.be, %i.ax
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.bh
  %scevgep280 = getelementptr i8, ptr %i.aw, i64 %i.bh
  %bound0 = icmp ult ptr %i.av, %scevgep280
  %bound1 = icmp ult ptr %i.aw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check281 = icmp ult i64 %i.bb, 120
  br i1 %min.iters.check281, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %i.bd, 12
  %n.vec = and i64 %i.bd, 4611686018427387888     ; 4 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.aw, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bm ; 4 uses
  %next.gep282 = getelementptr i8, ptr %i.aw, i64 %i.bm ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %i.bn = getelementptr i8, ptr %next.gep282, i64 32
  %i.bo = getelementptr i8, ptr %next.gep282, i64 64
  %i.bp = getelementptr i8, ptr %next.gep282, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep282, align 8, !tbaa !125, !alias.scope !3095, !noalias !3093
  %wide.load283 = load <4 x i64>, ptr %i.bn, align 8, !tbaa !125, !alias.scope !3095, !noalias !3093
  %wide.load284 = load <4 x i64>, ptr %i.bo, align 8, !tbaa !125, !alias.scope !3095, !noalias !3093
  %wide.load285 = load <4 x i64>, ptr %i.bp, align 8, !tbaa !125, !alias.scope !3095, !noalias !3093
  %i.bq = getelementptr i8, ptr %next.gep, i64 32
  %i.br = getelementptr i8, ptr %next.gep, i64 64
  %i.bs = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !125, !alias.scope !3096, !noalias !3095
  store <4 x i64> %wide.load283, ptr %i.bq, align 8, !tbaa !125, !alias.scope !3096, !noalias !3095
  store <4 x i64> %wide.load284, ptr %i.br, align 8, !tbaa !125, !alias.scope !3096, !noalias !3095
  store <4 x i64> %wide.load285, ptr %i.bs, align 8, !tbaa !125, !alias.scope !3096, !noalias !3095
  %i.bt = getelementptr i8, ptr %next.gep282, i64 32
  %i.bu = getelementptr i8, ptr %next.gep282, i64 64
  %i.bv = getelementptr i8, ptr %next.gep282, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep282, align 8, !tbaa !125, !alias.scope !3095, !noalias !3093
  store <4 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !125, !alias.scope !3095, !noalias !3093
  store <4 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !125, !alias.scope !3095, !noalias !3093
  store <4 x ptr> splat (ptr null), ptr %i.bv, align 8, !tbaa !125, !alias.scope !3095, !noalias !3093
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !3073

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !128

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec287 = and i64 %i.bd, 4611686018427387900  ; 3 uses
  %i.bx = shl i64 %n.vec287, 3                    ; 2 uses
  %i.by = getelementptr i8, ptr %i.av, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aw, i64 %i.bx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index288 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next292, %vec.epilog.vector.body ] ; 2 uses
  %i.ca = shl i64 %index288, 3                    ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.av, i64 %i.ca
  %next.gep290 = getelementptr i8, ptr %i.aw, i64 %i.ca ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %wide.load291 = load <4 x i64>, ptr %next.gep290, align 8, !tbaa !125, !alias.scope !3095, !noalias !3093
  store <4 x i64> %wide.load291, ptr %next.gep289, align 8, !tbaa !125, !alias.scope !3096, !noalias !3095
  store <4 x ptr> splat (ptr null), ptr %next.gep290, align 8, !tbaa !125, !alias.scope !3095, !noalias !3093
  %index.next292 = add nuw i64 %index288, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next292, %n.vec287
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3074

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n293 = icmp eq i64 %i.bd, %n.vec287
  br i1 %cmp.n293, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.av, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aw, %iter.check ], [ %i.aw, %vector.memcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %i.cc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !125, !alias.scope !3094, !noalias !3093
  store i64 %i.cc, ptr %.012.i.i.i.i, align 8, !tbaa !125, !alias.scope !3093, !noalias !3094
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !125, !alias.scope !3094, !noalias !3093
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cd, %i.ay
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3075

_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc62
  %.not.i8.i = icmp eq ptr %i.aw, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.cf = load ptr, ptr %i.as, align 8, !tbaa !129
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.aw to i64
  %i.ci = sub i64 %i.cg, %i.ch
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ci) #27
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.av, ptr %0, align 8, !tbaa !122
  store ptr %i.av, ptr %i.at, align 8, !tbaa !123
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ar
  store ptr %i.cj, ptr %i.as, align 8, !tbaa !129
  br label %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %._crit_edge.thread, %_ZNSt12_Vector_baseISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.ck = phi ptr [ %i.n, %._crit_edge.thread ], [ %i.as, %_ZNSt12_Vector_baseISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.val = load ptr, ptr %1, align 8, !tbaa !134   ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 553
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !204
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 592
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !205 ; 4 uses
  %switch = icmp ult i8 %i.cm, 2
  br i1 %switch, label %._crit_edge.sink.split.i, label %bb.n

._crit_edge.sink.split.i:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.val, i64 600
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !206, !noalias !207
  %i.cp = mul nsw i32 %i.co, %.pre.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.val, i64 604
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !208, !noalias !207
  %i.cs = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !209, !noalias !207
  %i.cu = mul nsw i32 %i.ct, %.pre.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !210, !noalias !207
  %.sroa.10.40.insert.ext.i = zext i32 %i.cw to i64
  %.sroa.10.40.insert.shift.i = shl nuw i64 %.sroa.10.40.insert.ext.i, 32
  %.sroa.8.40.insert.ext.i = zext i32 %i.cu to i64
  %.sroa.8.40.insert.insert.i = or disjoint i64 %.sroa.10.40.insert.shift.i, %.sroa.8.40.insert.ext.i
  %i.cx = zext i32 %i.cr to i64
  %i.cy = shl nuw i64 %i.cx, 32
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %._crit_edge.sink.split.i
  %.sroa.0.sroa.0.0.i = phi i32 [ 0, %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ], [ %i.cp, %._crit_edge.sink.split.i ]
  %.sroa.0.sroa.6.0.i = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ], [ %i.cy, %._crit_edge.sink.split.i ]
  %.sroa.6.0.i = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ], [ %.sroa.8.40.insert.insert.i, %._crit_edge.sink.split.i ] ; 2 uses
  %6 = udiv i32 %.sroa.0.sroa.0.0.i, %.pre.i
  %.sroa.6.8.extract.trunc.i = trunc i64 %.sroa.6.0.i to i32
  %7 = udiv i32 %.sroa.6.8.extract.trunc.i, %.pre.i
  %.sroa.6.8.insert.ext.i = zext i32 %7 to i64
  %.sroa.6.8.insert.mask.i = and i64 %.sroa.6.0.i, -4294967296
  %.sroa.6.8.insert.insert.i = or disjoint i64 %.sroa.6.8.insert.mask.i, %.sroa.6.8.insert.ext.i
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %6 to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.6.0.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %3, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.6.8.insert.insert.i, ptr %8, align 8
  br i1 %.not, label %._crit_edge147, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.n
  %.sroa.2.0..0..sroa_idx.i4.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.o

._crit_edge147:                                   ; preds = %bb.bc, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.o:                                             ; preds = %.lr.ph146, %bb.bc
  %.0144 = phi i32 [ 0, %.lr.ph146 ], [ %i.gy, %bb.bc ]
  %i.db = phi i32 [ %i.j, %.lr.ph146 ], [ %i.ea, %bb.bc ] ; 5 uses
  %i.dc = zext nneg i32 %i.db to i64              ; 3 uses
  %i.dd = add nuw nsw i64 %i.dc, 4
  %.not.i.i.i.i.i.i63 = icmp samesign ugt i64 %i.dd, %i.g
  br i1 %.not.i.i.i.i.i.i63, label %.invoke268, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = add nuw nsw i32 %i.db, 4
  %i.df = icmp samesign ule i32 %i.de, %i.f
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dc
  %.0.copyload.i.i.i.i.i.i64 = load i32, ptr %i.dg, align 1
  %i.dh = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i64) ; 3 uses
  %i.di = add nuw nsw i64 %i.dc, 8
  %.not.i.i68 = icmp samesign ugt i64 %i.di, %i.g
  br i1 %.not.i.i68, label %.invoke268, label %bb.q

.invoke268:                                       ; preds = %bb.p, %bb.o
  %i.dj = phi ptr [ @.str.17, %bb.o ], [ @.str.19, %bb.p ]
  %i.dk = phi ptr [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.o ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj, %bb.p ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dk) #13
          to label %.cont269 unwind label %bb.ai

.cont269:                                         ; preds = %.invoke268
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.dl = add nuw nsw i32 %i.db, 8                ; 2 uses
  %i.dm = icmp samesign ule i32 %i.dl, %i.f
  call void @llvm.assume(i1 %i.dm)
  %i.dn = zext nneg i32 %i.dl to i64              ; 2 uses
  %.not.i.i.i.i.i.i71 = icmp ult i64 %invariant.op, %i.dn
  br i1 %.not.i.i.i.i.i.i71, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc74 unwind label %bb.aj

.noexc74:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.do = add nuw nsw i32 %i.db, 12               ; 2 uses
  %i.dp = icmp samesign ule i32 %i.do, %i.f
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dn
  %.0.copyload.i.i.i.i.i.i72 = load i32, ptr %i.dq, align 1
  %i.dr = zext nneg i32 %i.do to i64              ; 2 uses
  %i.ds = add nuw nsw i64 %i.dr, 4
  %.not.i.i.i.i.i.i76 = icmp samesign ugt i64 %i.ds, %i.g
  br i1 %.not.i.i.i.i.i.i76, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc79 unwind label %bb.ak

.noexc79:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.dt = add nuw nsw i32 %i.db, 16               ; 3 uses
  %i.du = icmp samesign ule i32 %i.dt, %i.f
  call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dr
  %.0.copyload.i.i.i.i.i.i77 = load i32, ptr %i.dv, align 1
  %i.dw = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i77) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.dx = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dy = zext i32 %i.dw to i64                   ; 2 uses
  %i.dz = add nuw nsw i64 %i.dy, %i.dx
  %.not.i.i.i.i81 = icmp samesign ugt i64 %i.dz, %i.g
  br i1 %.not.i.i.i.i81, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc82 unwind label %bb.al

.noexc82:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ea = add nuw nsw i32 %i.dw, %i.dt            ; 2 uses
  %i.eb = icmp samesign ule i32 %i.ea, %i.f
  call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dx
  %i.ed = icmp sgt i32 %i.dw, -1
  call void @llvm.assume(i1 %i.ed)
  %.sroa.2.8.insert.insert.i.i.i = or disjoint i64 %i.dy, 209933706461184
  store ptr %i.ec, ptr %4, align 8, !alias.scope !3097
  store i64 %.sroa.2.8.insert.insert.i.i.i, ptr %.sroa.2.0..0..sroa_idx.i4.i.i.i, align 8, !alias.scope !3097
  store i32 0, ptr %i.cz, align 8, !tbaa !116, !alias.scope !3097
  switch i32 %i.dh, label %_ZN8rawspeed10DngOpcodes3MapEj.exit [
    i32 1, label %.sink.split.i
    i32 2, label %bb.av
    i32 3, label %bb.x
    i32 4, label %bb.ao
    i32 5, label %bb.y
    i32 6, label %bb.z
    i32 7, label %bb.aa
    i32 8, label %bb.ab
    i32 9, label %bb.ac
    i32 10, label %bb.ad
    i32 11, label %bb.ae
    i32 12, label %bb.af
    i32 13, label %bb.ag
    i32 14, label %bb.ah
  ]

bb.x:                                             ; preds = %bb.w
  br label %bb.av

bb.y:                                             ; preds = %bb.w
  br label %bb.ao

bb.z:                                             ; preds = %bb.w
  br label %bb.ao

bb.aa:                                            ; preds = %bb.w
  br label %bb.ao

bb.ab:                                            ; preds = %bb.w
  br label %bb.ao

bb.ac:                                            ; preds = %bb.w
  br label %bb.av

bb.ad:                                            ; preds = %bb.w
  br label %bb.ao

bb.ae:                                            ; preds = %bb.w
  br label %bb.ao

bb.af:                                            ; preds = %bb.w
  br label %bb.ao

bb.ag:                                            ; preds = %bb.w
  br label %bb.ao

bb.ah:                                            ; preds = %bb.w
  br label %bb.av

.sink.split.i:                                    ; preds = %bb.w
  br label %bb.av

bb.ai:                                            ; preds = %.invoke268
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.aj:                                            ; preds = %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ak:                                            ; preds = %bb.t
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.al:                                            ; preds = %bb.v
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.am:                                            ; preds = %_ZN8rawspeed10DngOpcodes3MapEj.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZN8rawspeed10DngOpcodes3MapEj.exit:              ; preds = %bb.w
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodesC2ERKNS_8RawImageENS_10ByteStreamE, i32 noundef %i.dh) #13
          to label %bb.an unwind label %bb.am

bb.an:                                            ; preds = %_ZN8rawspeed10DngOpcodes3MapEj.exit
  unreachable

bb.ao:                                            ; preds = %bb.w, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %.sroa.5.0.ph.ph = phi ptr [ @_ZN8rawspeed10DngOpcodes11constructorINS0_16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEEEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS7_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, %bb.ag ], [ @_ZN8rawspeed10DngOpcodes11constructorINS0_16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEEEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS7_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, %bb.af ], [ @_ZN8rawspeed10DngOpcodes11constructorINS0_17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEEEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS7_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, %bb.ae ], [ @_ZN8rawspeed10DngOpcodes11constructorINS0_17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEEEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS7_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, %bb.ad ], [ @_ZN8rawspeed10DngOpcodes11constructorINS0_13PolynomialMapEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS4_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, %bb.ab ], [ @_ZN8rawspeed10DngOpcodes11constructorINS0_8TableMapEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS4_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, %bb.aa ], [ @_ZN8rawspeed10DngOpcodes11constructorINS0_10TrimBoundsEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS4_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, %bb.z ], [ @_ZN8rawspeed10DngOpcodes11constructorINS0_16FixBadPixelsListEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS4_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, %bb.y ], [ @_ZN8rawspeed10DngOpcodes11constructorINS0_20FixBadPixelsConstantEEESt10unique_ptrINS0_9DngOpcodeESt14default_deleteIS4_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DE, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void %.sroa.5.0.ph.ph(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.ej = load ptr, ptr %i.da, align 8, !tbaa !123 ; 6 uses
  %i.ek = load ptr, ptr %i.ck, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.ej, %i.ek
end_hunk_0
