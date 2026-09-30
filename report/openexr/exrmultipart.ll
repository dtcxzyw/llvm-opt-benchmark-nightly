Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/exrmultipart?download=true
inline.NumInlined: 1843
inline.NumDeleted: 767
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKS5_SE_ = comdat any

$_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN7Imf_3_46HeaderEmEET_S5_T0_ = comdat any

$_ZNSt6vectorIcSaIcEE17_M_default_appendEm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"scanlineimage\00", align 1
@__dso_handle = external hidden global i8
@_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"tiledimage\00", align 1
@_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"deepscanline\00", align 1
@_ZN7Imf_3_4L8DEEPTILEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"deeptile\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".exr\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"part number must be a number\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@.str.12 = private unnamed_addr constant [50 x i8] c"Software Error: header does not have a valid name\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"input and output file names cannot be the same\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"can only convert one file at once - use 'combine' mode for multiple files\00", align 1
@.str.16 = private unnamed_addr constant [87 x i8] c"can only convert single part EXRs to multipart EXR-2.0 files: use 'split' mode instead\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"multiView\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"You asked for part \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c", which only has \00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c" parts\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"part \00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"deepscanlineimage\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Combine Success\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"-separate only take one input file\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"numOutputs: \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"outputfilename: \00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Separate Success\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"Usage: \00", align 1
@.str.33 = private unnamed_addr constant [111 x i8] c"-combine -i input.exr[:partnum][::partname] [input2.exr[:partnum]][::partname] [...] -o outfile.exr [options]\0A\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c"  or: exrmultipart -separate -i infile.exr -o outfileBaseName [options]\0A\00", align 1
@.str.35 = private unnamed_addr constant [68 x i8] c"  or: exrmultipart -convert -i infile.exr -o outfile.exr [options]\0A\00", align 1
@.str.36 = private unnamed_addr constant [485 x i8] c"\0ACombine or split multipart data\0A\0AOptions:\0A  -override [0/1]   0 = do not override conflicting shared                         attributes [default]\0A                    1 = override conflicting shared attributes\0A  -view name        (after specifying -i) assign following inputs to view 'name'\0A  -h, --help        print this message\0A\0A      --version     print version information\0A\0AReport bugs via https://github.com/AcademySoftwareFoundation/openexr/issues or email security@openexr.com\0A\00", align 1
@_ZTISt9exception = external constant ptr
@.str.38 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"exrmultipart\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"exrmultipart (OpenEXR) \00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"3.4.13\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"(OpenEXR version \00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c" https://openexr.com\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"Copyright (c) Contributors to the OpenEXR Project\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"License BSD-3-Clause\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"-override\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"-view\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"-view requires -i\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.53 = private unnamed_addr constant [7 x i8] c"input:\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c" in view \00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"No output file specified\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"output:\0A      \00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"override:\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"-combine\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"-combine multipart input \00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"-separate\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"-separate multipart input \00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"-convert\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"-convert input to EXR2 multipart\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.65 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.67 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.70 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.72 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_exrmultipart.cpp, ptr null }]

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
define dso_local void @_Z9copy_tileRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.Imf_3_4::TiledInputPart", align 8 ; 4 uses
  %5 = alloca %"class.Imf_3_4::TiledOutputPart", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN7Imf_3_414TiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN7Imf_3_415TiledOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3)
  call void @_ZN7Imf_3_415TiledOutputPart10copyPixelsERNS_14TiledInputPartE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

declare void @_ZN7Imf_3_414TiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

declare void @_ZN7Imf_3_415TiledOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #4

declare void @_ZN7Imf_3_415TiledOutputPart10copyPixelsERNS_14TiledInputPartE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13copy_tiledeepRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.Imf_3_4::DeepTiledInputPart", align 8 ; 4 uses
  %5 = alloca %"class.Imf_3_4::DeepTiledOutputPart", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN7Imf_3_418DeepTiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN7Imf_3_419DeepTiledOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3)
  call void @_ZN7Imf_3_419DeepTiledOutputPart10copyPixelsERNS_18DeepTiledInputPartE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

declare void @_ZN7Imf_3_418DeepTiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

declare void @_ZN7Imf_3_419DeepTiledOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #4

declare void @_ZN7Imf_3_419DeepTiledOutputPart10copyPixelsERNS_18DeepTiledInputPartE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13copy_scanlineRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.Imf_3_4::InputPart", align 8 ; 4 uses
  %5 = alloca %"class.Imf_3_4::OutputPart", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN7Imf_3_49InputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN7Imf_3_410OutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3)
  call void @_ZN7Imf_3_410OutputPart10copyPixelsERNS_9InputPartE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

declare void @_ZN7Imf_3_49InputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

declare void @_ZN7Imf_3_410OutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #4

declare void @_ZN7Imf_3_410OutputPart10copyPixelsERNS_9InputPartE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17copy_scanlinedeepRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.Imf_3_4::DeepScanLineInputPart", align 8 ; 4 uses
  %5 = alloca %"class.Imf_3_4::DeepScanLineOutputPart", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN7Imf_3_421DeepScanLineInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN7Imf_3_422DeepScanLineOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3)
  call void @_ZN7Imf_3_422DeepScanLineOutputPart10copyPixelsERNS_21DeepScanLineInputPartE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

declare void @_ZN7Imf_3_421DeepScanLineInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

declare void @_ZN7Imf_3_422DeepScanLineOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #4

declare void @_ZN7Imf_3_422DeepScanLineOutputPart10copyPixelsERNS_21DeepScanLineInputPartE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c     ; 3 uses
  %.not10 = icmp ne i64 %i.c, 0                   ; 2 uses
  br i1 %.not10, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.05.011 = phi ptr [ %i.g, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %.sroa.05.011, align 1, !tbaa !26
  %i.f = sext i8 %i.e to i32
  %isdigittmp = add nsw i32 %i.f, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.011, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.d
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !0

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.05.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.d, %bb.b ], [ %.sroa.05.011, %.lr.ph ]
  %i.h = icmp eq ptr %.sroa.05.0.lcssa, %i.d
  %spec.select = and i1 %.not10, %i.h
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14parse_partnameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, i64 noundef -1, i64 noundef 1) #26 ; 3 uses
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.f = add nuw i64 %i.e, 1                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25, !noalias !136 ; 3 uses
  %.not68 = icmp ult i64 %i.e, %i.h
  br i1 %.not68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i64 noundef %i.f, i64 noundef %i.h) #27, !noalias !136
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !28, !alias.scope !136
  %i.j = load ptr, ptr %0, align 8, !tbaa !24, !noalias !136
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 2 uses
  %i.l = sub nuw i64 %i.h, %i.f                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !136
  store i64 %i.l, ptr %i.d, align 8, !tbaa !29, !noalias !136
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !24, !alias.scope !136
  %i.o = load i64, ptr %i.d, align 8, !tbaa !29, !noalias !136
  store i64 %i.o, ptr %i.i, align 8, !tbaa !26, !alias.scope !136
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.p = phi ptr [ %i.n, %.noexc10.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.k, align 1, !tbaa !26
  store i8 %i.q, ptr %i.p, align 1, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.k, i64 %i.l, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.r = load i64, ptr %i.d, align 8, !tbaa !29, !noalias !136 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !25, !alias.scope !136
  %i.t = load ptr, ptr %1, align 8, !tbaa !24, !alias.scope !136
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !136
  %i.v = load ptr, ptr %0, align 8, !tbaa !24     ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !24     ; 5 uses
  %i.z = icmp eq ptr %i.y, %i.i                   ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.z, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !25  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  switch i64 %i.aa, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !26
  store i8 %i.ac, ptr %i.v, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !25  ; 2 uses
  store i64 %i.ad, ptr %i.g, align 8, !tbaa !25
  %i.ae = load ptr, ptr %0, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store i8 0, ptr %i.af, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.y, ptr %0, align 8, !tbaa !24
  %i.ag = load <2 x i64>, ptr %i.s, align 8, !tbaa !26
  store <2 x i64> %i.ag, ptr %i.g, align 8, !tbaa !26
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !26
  store ptr %i.y, ptr %0, align 8, !tbaa !24
  %i.ai = load <2 x i64>, ptr %i.s, align 8, !tbaa !26
  store <2 x i64> %i.ai, ptr %i.g, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.v, ptr %1, align 8, !tbaa !24
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.i, ptr %1, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.aj = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.v, %bb.i ], [ %i.i, %bb.j ]
  store i64 0, ptr %i.s, align 8, !tbaa !25
  store i8 0, ptr %i.aj, align 1, !tbaa !26
  %i.ak = load ptr, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.i
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.am = load i64, ptr %i.i, align 8, !tbaa !26
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.ao = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.8, i64 noundef -1, i64 noundef 4) #26 ; 3 uses
  %.not21 = icmp eq i64 %i.ao, -1
  br i1 %.not21, label %bb.ah, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25, !noalias !137
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !28, !alias.scope !137
  %i.as = load ptr, ptr %0, align 8, !tbaa !24, !noalias !137 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %i.aq) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !137
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !29, !noalias !137
  %i.at = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.at, label %.noexc10.i.i25, label %._crit_edge.i.i.i24

.noexc10.i.i25:                                   ; preds = %bb.l
  %i.au = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !24, !alias.scope !137
  %i.av = load i64, ptr %i.c, align 8, !tbaa !29, !noalias !137
  store i64 %i.av, ptr %i.ar, align 8, !tbaa !26, !alias.scope !137
  br label %._crit_edge.i.i.i24

._crit_edge.i.i.i24:                              ; preds = %.noexc10.i.i25, %bb.l
  %i.aw = phi ptr [ %i.au, %.noexc10.i.i25 ], [ %i.ar, %bb.l ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit26
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i24
  %i.ax = load i8, ptr %i.as, align 1, !tbaa !26
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit26

bb.n:                                             ; preds = %._crit_edge.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.as, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit26: ; preds = %._crit_edge.i.i.i24, %bb.m, %bb.n
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !29, !noalias !137 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !25, !alias.scope !137
  %i.ba = load ptr, ptr %2, align 8, !tbaa !24, !alias.scope !137
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !137
  %i.bc = load ptr, ptr %0, align 8, !tbaa !24    ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  %i.bf = load ptr, ptr %2, align 8, !tbaa !24    ; 5 uses
  %i.bg = icmp eq ptr %i.bf, %i.ar                ; 2 uses
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit26
  br i1 %i.bg, label %bb.o, label %.thread.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit26
  br i1 %i.bg, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !25 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  switch i64 %i.bh, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !26
  store i8 %i.bj, ptr %i.bc, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bf, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30: ; preds = %bb.q, %bb.p, %bb.o
  %i.bk = load i64, ptr %i.az, align 8, !tbaa !25 ; 2 uses
  store i64 %i.bk, ptr %i.ap, align 8, !tbaa !25
  %i.bl = load ptr, ptr %0, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1, !tbaa !26
  %.pre.i31 = load ptr, ptr %2, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34

.thread.i33:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32
  store ptr %i.bf, ptr %0, align 8, !tbaa !24
  %i.bn = load <2 x i64>, ptr %i.az, align 8, !tbaa !26
  store <2 x i64> %i.bn, ptr %i.ap, align 8, !tbaa !26
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27
  %i.bo = load i64, ptr %i.bd, align 8, !tbaa !26
  store ptr %i.bf, ptr %0, align 8, !tbaa !24
  %i.bp = load <2 x i64>, ptr %i.az, align 8, !tbaa !26
  store <2 x i64> %i.bp, ptr %i.ap, align 8, !tbaa !26
  %.not.i29 = icmp eq ptr %i.bc, null
  br i1 %.not.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28
  store ptr %i.bc, ptr %2, align 8, !tbaa !24
  store i64 %i.bo, ptr %i.ar, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28, %.thread.i33
  store ptr %i.ar, ptr %2, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30, %bb.r, %bb.s
  %i.bq = phi ptr [ %.pre.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30 ], [ %i.bc, %bb.r ], [ %i.ar, %bb.s ]
  store i64 0, ptr %i.az, align 8, !tbaa !25
  store i8 0, ptr %i.bq, align 1, !tbaa !26
  %i.br = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ar
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34
  %i.bt = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bv = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.9, i64 noundef -1, i64 noundef 1) #26 ; 4 uses
  %.not22 = icmp eq i64 %i.bv, -1
  br i1 %.not22, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bw = add nuw i64 %i.bv, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.bx = load i64, ptr %i.ap, align 8, !tbaa !25, !noalias !138 ; 3 uses
  %.not69 = icmp ult i64 %i.bv, %i.bx
  br i1 %.not69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i64 noundef %i.bw, i64 noundef %i.bx) #27, !noalias !138
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38: ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.by, ptr %3, align 8, !tbaa !28, !alias.scope !138
  %i.bz = load ptr, ptr %0, align 8, !tbaa !24, !noalias !138
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw ; 2 uses
  %i.cb = sub nuw i64 %i.bx, %i.bw
  %spec.select.i.i.i39 = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %i.cb) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !138
  store i64 %spec.select.i.i.i39, ptr %i.b, align 8, !tbaa !29, !noalias !138
  %i.cc = icmp ugt i64 %spec.select.i.i.i39, 15
  br i1 %i.cc, label %.noexc10.i.i41, label %._crit_edge.i.i.i40

.noexc10.i.i41:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38
  %i.cd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.cd, ptr %3, align 8, !tbaa !24, !alias.scope !138
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !29, !noalias !138
  store i64 %i.ce, ptr %i.by, align 8, !tbaa !26, !alias.scope !138
  br label %._crit_edge.i.i.i40

._crit_edge.i.i.i40:                              ; preds = %.noexc10.i.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38
  %i.cf = phi ptr [ %i.cd, %.noexc10.i.i41 ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38 ] ; 2 uses
  switch i64 %spec.select.i.i.i39, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit42
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i40
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !26
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit42

bb.w:                                             ; preds = %._crit_edge.i.i.i40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr nonnull align 1 %i.ca, i64 %spec.select.i.i.i39, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit42: ; preds = %._crit_edge.i.i.i40, %bb.v, %bb.w
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !29, !noalias !138 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !25, !alias.scope !138
  %i.cj = load ptr, ptr %3, align 8, !tbaa !24, !alias.scope !138
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !138
  %i.cl = load ptr, ptr %3, align 8, !tbaa !24    ; 4 uses
  %i.cm = load i64, ptr %i.ci, align 8, !tbaa !25 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cl, i64 %i.cm  ; 2 uses
  %.not10.i = icmp eq i64 %i.cm, 0
  br i1 %.not10.i, label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit42, %bb.x
  %.sroa.05.011.i = phi ptr [ %i.cq, %bb.x ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit42 ] ; 3 uses
  %i.co = load i8, ptr %.sroa.05.011.i, align 1, !tbaa !26
  %i.cp = sext i8 %i.co to i32
  %isdigittmp.i = add nsw i32 %i.cp, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.x, label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.x:                                             ; preds = %.lr.ph.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 1 ; 2 uses
  %.not.i43 = icmp eq ptr %i.cq, %i.cn
  br i1 %.not.i43, label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread112, label %.lr.ph.i, !llvm.loop !0

_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i
  %i.cr = icmp eq ptr %.sroa.05.011.i, %i.cn
  br i1 %i.cr, label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread112, label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread112: ; preds = %bb.x, %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.cs = load i64, ptr %i.ap, align 8, !tbaa !25, !noalias !139
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.ct, ptr %4, align 8, !tbaa !28, !alias.scope !139
  %i.cu = load ptr, ptr %0, align 8, !tbaa !24, !noalias !139 ; 2 uses
  %spec.select.i.i.i45 = call noundef i64 @llvm.umin.i64(i64 %i.bv, i64 %i.cs) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !139
  store i64 %spec.select.i.i.i45, ptr %i.a, align 8, !tbaa !29, !noalias !139
  %i.cv = icmp ugt i64 %spec.select.i.i.i45, 15
  br i1 %i.cv, label %.noexc10.i.i47, label %._crit_edge.i.i.i46

.noexc10.i.i47:                                   ; preds = %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread112
  %i.cw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ag    ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i47
  store ptr %i.cw, ptr %4, align 8, !tbaa !24, !alias.scope !139
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !139
  store i64 %i.cx, ptr %i.ct, align 8, !tbaa !26, !alias.scope !139
  br label %._crit_edge.i.i.i46

._crit_edge.i.i.i46:                              ; preds = %.noexc, %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread112
  %i.cy = phi ptr [ %i.cw, %.noexc ], [ %i.ct, %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread112 ] ; 2 uses
  switch i64 %spec.select.i.i.i45, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i46
  %i.cz = load i8, ptr %i.cu, align 1, !tbaa !26
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !26
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %i.cu, i64 %spec.select.i.i.i45, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i46
  %i.da = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !139 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.da, ptr %i.db, align 8, !tbaa !25, !alias.scope !139
  %i.dc = load ptr, ptr %4, align 8, !tbaa !24, !alias.scope !139
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  store i8 0, ptr %i.dd, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !139
  %i.de = load ptr, ptr %0, align 8, !tbaa !24    ; 6 uses
  %i.df = icmp eq ptr %i.de, %i.bd
  %i.dg = load ptr, ptr %4, align 8, !tbaa !24    ; 5 uses
  %i.dh = icmp eq ptr %i.dg, %i.ct                ; 2 uses
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i54: ; preds = %bb.aa
  br i1 %i.dh, label %bb.ab, label %.thread.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i49: ; preds = %bb.aa
  br i1 %i.dh, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i54
  %i.di = load i64, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  %i.dj = icmp ult i64 %i.di, 16
  call void @llvm.assume(i1 %i.dj)
  switch i64 %i.di, label %bb.ad [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i52
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !26
  store i8 %i.dk, ptr %i.de, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i52

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %i.dg, i64 %i.di, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i52: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.dl = load i64, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  store i64 %i.dl, ptr %i.ap, align 8, !tbaa !25
  %i.dm = load ptr, ptr %0, align 8, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dl
  store i8 0, ptr %i.dn, align 1, !tbaa !26
  %.pre.i53 = load ptr, ptr %4, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit56

.thread.i55:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i54
  store ptr %i.dg, ptr %0, align 8, !tbaa !24
  %i.do = load <2 x i64>, ptr %i.db, align 8, !tbaa !26
  store <2 x i64> %i.do, ptr %i.ap, align 8, !tbaa !26
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i49
  %i.dp = load i64, ptr %i.bd, align 8, !tbaa !26
  store ptr %i.dg, ptr %0, align 8, !tbaa !24
  %i.dq = load <2 x i64>, ptr %i.db, align 8, !tbaa !26
  store <2 x i64> %i.dq, ptr %i.ap, align 8, !tbaa !26
  %.not.i51 = icmp eq ptr %i.de, null
  br i1 %.not.i51, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50
  store ptr %i.de, ptr %4, align 8, !tbaa !24
  store i64 %i.dp, ptr %i.ct, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit56

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50, %.thread.i55
  store ptr %i.ct, ptr %4, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i52, %bb.ae, %bb.af
  %i.dr = phi ptr [ %.pre.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i52 ], [ %i.de, %bb.ae ], [ %i.ct, %bb.af ]
  store i64 0, ptr %i.db, align 8, !tbaa !25
  store i8 0, ptr %i.dr, align 1, !tbaa !26
  %i.ds = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ct
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit56
  %i.du = load i64, ptr %i.ct, align 8, !tbaa !26
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pre = load ptr, ptr %3, align 8, !tbaa !24
  br label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.ag:                                            ; preds = %.noexc10.i.i47
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.dx = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.by
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ag
  %i.dz = load i64, ptr %i.by, align 8, !tbaa !26
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.dw

_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eb = phi ptr [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit42 ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.cl, %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.by
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ed = load i64, ptr %i.by, align 8, !tbaa !26
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14parse_filenameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_RbRi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  store i8 0, ptr %2, align 1, !tbaa !148
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.10, i64 noundef -1, i64 noundef 2) #26 ; 3 uses
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.r, label %bb.b
end_hunk_0
begin_hunk_1_@_Z14parse_filenameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_RbRi:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.as = load i64, ptr %i.g, align 8, !tbaa !25, !noalias !150
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.at, ptr %5, align 8, !tbaa !28, !alias.scope !150
  %i.au = load ptr, ptr %0, align 8, !tbaa !24, !noalias !150 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.as) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !150
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !29, !noalias !150
  %i.av = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.av, label %.noexc10.i.i29, label %._crit_edge.i.i.i28

.noexc10.i.i29:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !24, !alias.scope !150
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !29, !noalias !150
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !26, !alias.scope !150
  br label %._crit_edge.i.i.i28

._crit_edge.i.i.i28:                              ; preds = %.noexc10.i.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = phi ptr [ %i.aw, %.noexc10.i.i29 ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit30
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i28
  %i.az = load i8, ptr %i.au, align 1, !tbaa !26
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit30

bb.l:                                             ; preds = %._crit_edge.i.i.i28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.au, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit30: ; preds = %._crit_edge.i.i.i28, %bb.k, %bb.l
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !29, !noalias !150 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !25, !alias.scope !150
  %i.bc = load ptr, ptr %5, align 8, !tbaa !24, !alias.scope !150
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !150
  %i.be = load ptr, ptr %0, align 8, !tbaa !24    ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  %i.bh = load ptr, ptr %5, align 8, !tbaa !24    ; 5 uses
  %i.bi = icmp eq ptr %i.bh, %i.at                ; 2 uses
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit30
  br i1 %i.bi, label %bb.m, label %.thread.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit30
  br i1 %i.bi, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i36
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !25 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  switch i64 %i.bj, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !26
  store i8 %i.bl, ptr %i.be, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bh, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34: ; preds = %bb.o, %bb.n, %bb.m
  %i.bm = load i64, ptr %i.bb, align 8, !tbaa !25 ; 2 uses
  store i64 %i.bm, ptr %i.g, align 8, !tbaa !25
  %i.bn = load ptr, ptr %0, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  store i8 0, ptr %i.bo, align 1, !tbaa !26
  %.pre.i35 = load ptr, ptr %5, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

.thread.i37:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i36
  store ptr %i.bh, ptr %0, align 8, !tbaa !24
  %i.bp = load <2 x i64>, ptr %i.bb, align 8, !tbaa !26
  store <2 x i64> %i.bp, ptr %i.g, align 8, !tbaa !26
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i31
  %i.bq = load i64, ptr %i.bf, align 8, !tbaa !26
  store ptr %i.bh, ptr %0, align 8, !tbaa !24
  %i.br = load <2 x i64>, ptr %i.bb, align 8, !tbaa !26
  store <2 x i64> %i.br, ptr %i.g, align 8, !tbaa !26
  %.not.i33 = icmp eq ptr %i.be, null
  br i1 %.not.i33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32
  store ptr %i.be, ptr %5, align 8, !tbaa !24
  store i64 %i.bq, ptr %i.at, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32, %.thread.i37
  store ptr %i.at, ptr %5, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34, %bb.p, %bb.q
  %i.bs = phi ptr [ %.pre.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34 ], [ %i.be, %bb.p ], [ %i.at, %bb.q ]
  store i64 0, ptr %i.bb, align 8, !tbaa !25
  store i8 0, ptr %i.bs, align 1, !tbaa !26
  %i.bt = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.at
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38
  %i.bv = load i64, ptr %i.at, align 8, !tbaa !26
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store i8 1, ptr %2, align 1, !tbaa !148
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  tail call void @_Z14parse_partnameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.bx = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 58, i64 noundef -1) #26 ; 4 uses
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 -1, ptr %3, align 4, !tbaa !31
  br label %bb.am

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bz = add nuw i64 %i.bx, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !25, !noalias !151 ; 3 uses
  %.not72 = icmp ult i64 %i.bx, %i.cb
  br i1 %.not72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i42, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i64 noundef %i.bz, i64 noundef %i.cb) #27, !noalias !151
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i42: ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.cc, ptr %6, align 8, !tbaa !28, !alias.scope !151
  %i.cd = load ptr, ptr %0, align 8, !tbaa !24, !noalias !151
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bz ; 2 uses
  %i.cf = sub nuw i64 %i.cb, %i.bz                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !151
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !29, !noalias !151
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc10.i.i45, label %._crit_edge.i.i.i44

.noexc10.i.i45:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i42
  %i.ch = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ch, ptr %6, align 8, !tbaa !24, !alias.scope !151
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !29, !noalias !151
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !26, !alias.scope !151
  br label %._crit_edge.i.i.i44

._crit_edge.i.i.i44:                              ; preds = %.noexc10.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i42
  %i.cj = phi ptr [ %i.ch, %.noexc10.i.i45 ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i42 ] ; 2 uses
  switch i64 %i.cf, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit46
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i44
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !26
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit46

bb.x:                                             ; preds = %._crit_edge.i.i.i44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr nonnull align 1 %i.ce, i64 %i.cf, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit46: ; preds = %._crit_edge.i.i.i44, %bb.w, %bb.x
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !29, !noalias !151 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !25, !alias.scope !151
  %i.cn = load ptr, ptr %6, align 8, !tbaa !24, !alias.scope !151
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !151
  %i.cp = load ptr, ptr %6, align 8, !tbaa !24    ; 3 uses
  %i.cq = load i64, ptr %i.cm, align 8, !tbaa !25 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 %i.cq  ; 2 uses
  %.not10.i = icmp eq i64 %i.cq, 0
  br i1 %.not10.i, label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit46, %bb.y
  %.sroa.05.011.i = phi ptr [ %i.cu, %bb.y ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit46 ] ; 3 uses
  %i.cs = load i8, ptr %.sroa.05.011.i, align 1, !tbaa !26
  %i.ct = sext i8 %i.cs to i32
  %isdigittmp.i = add nsw i32 %i.ct, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.y, label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.y:                                             ; preds = %.lr.ph.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 1 ; 2 uses
  %.not.i47 = icmp eq ptr %i.cu, %i.cr
  br i1 %.not.i47, label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread117, label %.lr.ph.i, !llvm.loop !0

_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i
  %i.cv = icmp eq ptr %.sroa.05.011.i, %i.cr
  br i1 %i.cv, label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread117, label %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread117: ; preds = %bb.y, %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cw = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cp, ptr noundef null, i32 noundef 10) #26, !inline_history !1
  %i.cx = trunc i64 %i.cw to i32
  store i32 %i.cx, ptr %3, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.cy = load i64, ptr %i.ca, align 8, !tbaa !25, !noalias !152
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.cz, ptr %7, align 8, !tbaa !28, !alias.scope !152
  %i.da = load ptr, ptr %0, align 8, !tbaa !24, !noalias !152 ; 2 uses
  %spec.select.i.i.i49 = call noundef i64 @llvm.umin.i64(i64 %i.bx, i64 %i.cy) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !152
  store i64 %spec.select.i.i.i49, ptr %i.a, align 8, !tbaa !29, !noalias !152
  %i.db = icmp ugt i64 %spec.select.i.i.i49, 15
  br i1 %i.db, label %.noexc10.i.i51, label %._crit_edge.i.i.i50

.noexc10.i.i51:                                   ; preds = %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread117
  %i.dc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ah    ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i51
  store ptr %i.dc, ptr %7, align 8, !tbaa !24, !alias.scope !152
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !152
  store i64 %i.dd, ptr %i.cz, align 8, !tbaa !26, !alias.scope !152
  br label %._crit_edge.i.i.i50

._crit_edge.i.i.i50:                              ; preds = %.noexc, %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread117
  %i.de = phi ptr [ %i.dc, %.noexc ], [ %i.cz, %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread117 ] ; 2 uses
  switch i64 %spec.select.i.i.i49, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i50
  %i.df = load i8, ptr %i.da, align 1, !tbaa !26
  store i8 %i.df, ptr %i.de, align 1, !tbaa !26
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %i.da, i64 %spec.select.i.i.i49, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i50
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !152 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !25, !alias.scope !152
  %i.di = load ptr, ptr %7, align 8, !tbaa !24, !alias.scope !152
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dg
  store i8 0, ptr %i.dj, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !152
  %i.dk = load ptr, ptr %0, align 8, !tbaa !24    ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  %i.dn = load ptr, ptr %7, align 8, !tbaa !24    ; 5 uses
  %i.do = icmp eq ptr %i.dn, %i.cz                ; 2 uses
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i58: ; preds = %bb.ab
  br i1 %i.do, label %bb.ac, label %.thread.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i53: ; preds = %bb.ab
  br i1 %i.do, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i54

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i58
  %i.dp = load i64, ptr %i.dh, align 8, !tbaa !25 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  switch i64 %i.dp, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dr = load i8, ptr %i.dn, align 1, !tbaa !26
  store i8 %i.dr, ptr %i.dk, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dn, i64 %i.dp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ds = load i64, ptr %i.dh, align 8, !tbaa !25 ; 2 uses
  store i64 %i.ds, ptr %i.ca, align 8, !tbaa !25
  %i.dt = load ptr, ptr %0, align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store i8 0, ptr %i.du, align 1, !tbaa !26
  %.pre.i57 = load ptr, ptr %7, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60

.thread.i59:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i58
  store ptr %i.dn, ptr %0, align 8, !tbaa !24
  %i.dv = load <2 x i64>, ptr %i.dh, align 8, !tbaa !26
  store <2 x i64> %i.dv, ptr %i.ca, align 8, !tbaa !26
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i53
  %i.dw = load i64, ptr %i.dl, align 8, !tbaa !26
  store ptr %i.dn, ptr %0, align 8, !tbaa !24
  %i.dx = load <2 x i64>, ptr %i.dh, align 8, !tbaa !26
  store <2 x i64> %i.dx, ptr %i.ca, align 8, !tbaa !26
  %.not.i55 = icmp eq ptr %i.dk, null
  br i1 %.not.i55, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i54
  store ptr %i.dk, ptr %7, align 8, !tbaa !24
  store i64 %i.dw, ptr %i.cz, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i54, %.thread.i59
  store ptr %i.cz, ptr %7, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56, %bb.af, %bb.ag
  %i.dy = phi ptr [ %.pre.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56 ], [ %i.dk, %bb.af ], [ %i.cz, %bb.ag ]
  store i64 0, ptr %i.dh, align 8, !tbaa !25
  store i8 0, ptr %i.dy, align 1, !tbaa !26
  %i.dz = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.cz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60
  %i.eb = load i64, ptr %i.cz, align 8, !tbaa !26
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ed = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.cc
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.ef = load i64, ptr %i.cc, align 8, !tbaa !26
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.am

bb.ah:                                            ; preds = %.noexc10.i.i51
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.al

_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit46, %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ei = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull @.str.11)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  invoke void @__cxa_throw(ptr nonnull %i.ei, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #27
          to label %bb.an unwind label %bb.ak

bb.aj:                                            ; preds = %_Z9is_numberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ei) #26
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.ah ], [ %i.ek, %bb.ak ], [ %i.ej, %bb.aj ]
  %i.el = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.cc
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.al
  %i.en = load i64, ptr %i.cc, align 8, !tbaa !26
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

end_hunk_1
