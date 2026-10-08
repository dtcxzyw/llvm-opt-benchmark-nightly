Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/draco_encoder?download=true
inline.NumInlined: 427
inline.NumDeleted: 245
begin_hunk_0
%"class.draco::EncoderOptionsBase.55" = type { %"class.draco::DracoOptions.56", %"class.draco::Options" }
%"class.draco::DracoOptions.56" = type { %"class.draco::Options", %"class.std::map.57" }
%"class.std::map.57" = type { %"class.std::_Rb_tree.58" }
%"class.std::_Rb_tree.58" = type { %"struct.std::_Rb_tree<int, std::pair<const int, draco::Options>, std::_Select1st<std::pair<const int, draco::Options>>, std::less<int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<int, std::pair<const int, draco::Options>, std::_Select1st<std::pair<const int, draco::Options>>, std::less<int>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.draco::DracoTimer" = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%"class.draco::EncoderBuffer" = type <{ %"class.std::vector.86", %"class.std::unique_ptr.88", i64, i8, [7 x i8] }>
%"class.std::vector.86" = type { %"struct.std::_Vector_base.87" }
%"struct.std::_Vector_base.87" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.88" = type { %"struct.std::__uniq_ptr_data.89" }
%"struct.std::__uniq_ptr_data.89" = type { %"class.std::__uniq_ptr_impl.90" }
%"class.std::__uniq_ptr_impl.90" = type { %"class.std::tuple.91" }
%"class.std::tuple.91" = type { %"struct.std::_Tuple_impl.92" }
%"struct.std::_Tuple_impl.92" = type { %"struct.std::_Head_base.95" }
%"struct.std::_Head_base.95" = type { ptr }

$_ZN5draco7OptionsD2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZN5draco18EncoderOptionsBaseIiED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN5draco7OptionsEESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZN5draco13EncoderBufferD2Ev = comdat any

$_ZN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEED2Ev = comdat any

$_ZN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEED0Ev = comdat any

$_ZNSt8_Rb_treeIN5draco17GeometryAttribute4TypeESt4pairIKS2_NS0_7OptionsEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZTVN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEEE = comdat any

$_ZTIN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEEE = comdat any

$_ZTSN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEEE = comdat any

@.str.4 = private unnamed_addr constant [13 x i8] c"-point_cloud\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"-qp\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-qt\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"-qn\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"-qg\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"-cl\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"--skip\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"TEX_COORD\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"GENERIC\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"--metadata\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"-preserve_polygons\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"use_metadata\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"preserve_polygons\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Failed loading the input mesh: %s.\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"Failed loading the input point cloud: %s.\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c".drc\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"added_edges\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"  Compression level = %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"  Positions: Quantization = %d bits\0A\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"  Texture coordinates: Quantization = %d bits\0A\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"  Normals: Quantization = %d bits\0A\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"  Generic: Quantization = %d bits\0A\00", align 1
@.str.62 = private unnamed_addr constant [46 x i8] c"Encoded mesh saved to %s (%ld ms to encode).\0A\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"\0AEncoded size = %zu bytes\0A\0A\00", align 1
@.str.66 = private unnamed_addr constant [53 x i8] c"Encoded point cloud saved to %s (%ld ms to encode).\0A\00", align 1
@_ZTVN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEEE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEEE, ptr @_ZN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEED2Ev, ptr @_ZN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEED0Ev] }, comdat, align 8
@_ZTIN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEEE = linkonce_odr dso_local constant [78 x i8] c"N5draco11EncoderBaseINS_18EncoderOptionsBaseINS_17GeometryAttribute4TypeEEEEE\00", comdat, align 1
@.str.67 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@str = private unnamed_addr constant [81 x i8] c"Error: The maximum number of quantization bits for the position attribute is 30.\00", align 1
@str.1 = private unnamed_addr constant [91 x i8] c"Error: The maximum number of quantization bits for the texture coordinate attribute is 30.\00", align 1
@str.2 = private unnamed_addr constant [79 x i8] c"Error: The maximum number of quantization bits for the normal attribute is 30.\00", align 1
@str.3 = private unnamed_addr constant [77 x i8] c"Error: The maximum number of quantization bits for generic attributes is 30.\00", align 1
@str.4 = private unnamed_addr constant [43 x i8] c"Error: Invalid attribute name after --skip\00", align 1
@str.5 = private unnamed_addr constant [73 x i8] c"For better compression, increase the compression level up to '-cl 10' .\0A\00", align 1
@str.6 = private unnamed_addr constant [45 x i8] c"Error: Position attribute cannot be skipped.\00", align 1
@str.7 = private unnamed_addr constant [40 x i8] c"Usage: draco_encoder [options] -i input\00", align 1
@str.8 = private unnamed_addr constant [14 x i8] c"Main options:\00", align 1
@str.9 = private unnamed_addr constant [35 x i8] c"  -h | -?               show help.\00", align 1
@str.10 = private unnamed_addr constant [41 x i8] c"  -i <input>            input file name.\00", align 1
@str.11 = private unnamed_addr constant [42 x i8] c"  -o <output>           output file name.\00", align 1
@str.12 = private unnamed_addr constant [73 x i8] c"  -point_cloud          forces the input to be encoded as a point cloud.\00", align 1
@str.13 = private unnamed_addr constant [82 x i8] c"  -qp <value>           quantization bits for the position attribute, default=11.\00", align 1
@str.14 = private unnamed_addr constant [92 x i8] c"  -qt <value>           quantization bits for the texture coordinate attribute, default=10.\00", align 1
@str.15 = private unnamed_addr constant [86 x i8] c"  -qn <value>           quantization bits for the normal vector attribute, default=8.\00", align 1
@str.16 = private unnamed_addr constant [80 x i8] c"  -qg <value>           quantization bits for any generic attribute, default=8.\00", align 1
@str.17 = private unnamed_addr constant [79 x i8] c"  -cl <value>           compression level [0-10], most=10, least=0, default=7.\00", align 1
@str.18 = private unnamed_addr constant [76 x i8] c"  --skip ATTRIBUTE_NAME skip a given attribute (NORMAL, TEX_COORD, GENERIC)\00", align 1
@str.19 = private unnamed_addr constant [80 x i8] c"  --metadata            use metadata to encode extra information in mesh files.\00", align 1
@str.20 = private unnamed_addr constant [61 x i8] c"  -preserve_polygons    encode polygon info as an attribute.\00", align 1
@str.21 = private unnamed_addr constant [66 x i8] c"\0AUse negative quantization values to skip the specified attribute\00", align 1
@str.22 = private unnamed_addr constant [17 x i8] c"Encoder options:\00", align 1
@str.23 = private unnamed_addr constant [29 x i8] c"  Positions: No quantization\00", align 1
@str.24 = private unnamed_addr constant [31 x i8] c"  Texture coordinates: Skipped\00", align 1
@str.25 = private unnamed_addr constant [39 x i8] c"  Texture coordinates: No quantization\00", align 1
@str.26 = private unnamed_addr constant [19 x i8] c"  Normals: Skipped\00", align 1
@str.27 = private unnamed_addr constant [27 x i8] c"  Normals: No quantization\00", align 1
@str.28 = private unnamed_addr constant [19 x i8] c"  Generic: Skipped\00", align 1
@str.29 = private unnamed_addr constant [27 x i8] c"  Generic: No quantization\00", align 1
@str.30 = private unnamed_addr constant [27 x i8] c"Failed to encode the mesh.\00", align 1
@str.31 = private unnamed_addr constant [34 x i8] c"Failed to create the output file.\00", align 1
@str.32 = private unnamed_addr constant [34 x i8] c"Failed to encode the point cloud.\00", align 1
@str.33 = private unnamed_addr constant [33 x i8] c"Failed to write the output file.\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 -1, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.(anonymous namespace)::Options", align 8 ; 23 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.draco::Options", align 8    ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.draco::StatusOr", align 8  ; 10 uses
  %12 = alloca %"class.draco::StatusOr.13", align 8 ; 10 uses
  %13 = alloca %"class.draco::Encoder", align 8   ; 18 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.draco::EncoderOptionsBase.55", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.draco::Status", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i8 0, ptr %2, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  store i32 11, ptr %i.l, align 4, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 10, ptr %i.m, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i8 0, ptr %i.n, align 4, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store i32 8, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  store i8 0, ptr %i.p, align 4, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store i32 8, ptr %i.q, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  store i8 0, ptr %i.r, align 4, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store i32 7, ptr %i.s, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  store i8 0, ptr %i.t, align 4, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 37 ; 3 uses
  store i8 0, ptr %i.u, align 1, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i64 0, ptr %i.x, align 8, !tbaa !15
  store i8 0, ptr %i.w, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !15
  store i8 0, ptr %i.z, align 8, !tbaa !16
  %i.ab = add nsw i32 %0, -1                      ; 2 uses
  %.not145402 = icmp sgt i32 %0, 1
  br i1 %.not145402, label %sub_0.lr.ph, label %._crit_edge.thread

sub_0.lr.ph:                                      ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.0115403 = phi i32 [ 1, %sub_0.lr.ph ], [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 15 uses
  %i.am = sext i32 %.0115403 to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59 ; 18 uses
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %.not404 = icmp eq i8 %i.ap, 45
  br i1 %.not404, label %sub_1, label %.tail361.thread

sub_1:                                            ; preds = %sub_0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 104, %i.as
  %.not405 = icmp eq i8 %i.ar, 104
  br i1 %.not405, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = sub nsw i32 0, %i.aw
  br label %.tail

.tail:                                            ; preds = %sub_1, %sub_2
  %i.ay = phi i32 [ %i.ax, %sub_2 ], [ %i.at, %sub_1 ]
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.b, label %sub_1358

sub_1358:                                         ; preds = %.tail
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sub nsw i32 63, %i.bb
  %.not407 = icmp eq i8 %i.ba, 63
  br i1 %.not407, label %sub_2359, label %.tail356

sub_2359:                                         ; preds = %sub_1358
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  %i.bg = sub nsw i32 0, %i.bf
  br label %.tail356

.tail356:                                         ; preds = %sub_1358, %sub_2359
  %19 = phi i32 [ %i.bg, %sub_2359 ], [ %i.bc, %sub_1358 ]
  %.not127 = icmp eq i32 %19, 0
  br i1 %.not127, label %bb.b, label %sub_1363

bb.b:                                             ; preds = %.tail356, %.tail
  call fastcc void @_ZN12_GLOBAL__N_15UsageEv()
  br label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.e, %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit282

sub_1363:                                         ; preds = %.tail356
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = sub nsw i32 105, %i.bk
  %.not409 = icmp eq i8 %i.bj, 105
  br i1 %.not409, label %sub_2364, label %.tail361

sub_2364:                                         ; preds = %sub_1363
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = sub nsw i32 0, %i.bo
  br label %.tail361

.tail361:                                         ; preds = %sub_1363, %sub_2364
  %i.bq = phi i32 [ %i.bp, %sub_2364 ], [ %i.bl, %sub_1363 ]
  %.not128 = icmp eq i32 %i.bq, 0
  %i.br = icmp slt i32 %.0115403, %i.ab           ; 3 uses
  %or.cond173 = select i1 %.not128, i1 %i.br, i1 false
  br i1 %or.cond173, label %bb.d, label %sub_1368

.tail361.thread:                                  ; preds = %sub_0
  %20 = zext i8 %i.ap to i32
  %21 = sub nsw i32 45, %20
  %i.bs = icmp slt i32 %.0115403, %i.ab
  br label %.tail366

bb.d:                                             ; preds = %.tail361
  %i.bt = add nsw i32 %.0115403, 1                ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !59 ; 2 uses
  %i.bx = load i64, ptr %i.x, align 8, !tbaa !15
  %i.by = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bw) #18
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef 0, i64 noundef %i.bx, ptr noundef nonnull %i.bw, i64 noundef %i.by)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

sub_1368:                                         ; preds = %.tail361
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.cb = load i8, ptr %i.ca, align 1             ; 2 uses
  %i.cc = zext i8 %i.cb to i32
  %i.cd = sub nsw i32 111, %i.cc
  %.not411 = icmp eq i8 %i.cb, 111
  br i1 %.not411, label %sub_2369, label %.tail366

sub_2369:                                         ; preds = %sub_1368
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i32
  %i.ch = sub nsw i32 0, %i.cg
  br label %.tail366

.tail366:                                         ; preds = %.tail361.thread, %sub_1368, %sub_2369
  %i.ci = phi i1 [ %i.bs, %.tail361.thread ], [ %i.br, %sub_1368 ], [ %i.br, %sub_2369 ] ; 7 uses
  %i.cj = phi i32 [ %21, %.tail361.thread ], [ %i.cd, %sub_1368 ], [ %i.ch, %sub_2369 ]
  %.not129 = icmp eq i32 %i.cj, 0
  %or.cond174 = select i1 %.not129, i1 %i.ci, i1 false
  br i1 %or.cond174, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.tail366
  %i.ck = add nsw i32 %.0115403, 1                ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !59 ; 2 uses
  %i.co = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.cp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cn) #18
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef 0, i64 noundef %i.co, ptr noundef nonnull %i.cn, i64 noundef %i.cp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

bb.f:                                             ; preds = %.tail366
  %i.cr = call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.4, ptr noundef nonnull dereferenceable(1) %i.ao) #19
  %.not130 = icmp eq i32 %i.cr, 0
  br i1 %.not130, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %2, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.h:                                             ; preds = %bb.f
  %i.cs = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.5, ptr noundef nonnull dereferenceable(1) %i.ao) #19
  %.not131 = icmp eq i32 %i.cs, 0
  %or.cond175 = select i1 %.not131, i1 %i.ci, i1 false
  br i1 %or.cond175, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ct = add nsw i32 %.0115403, 1                ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !59 ; 4 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !14
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.67) #20
          to label %.noexc unwind label %.loopexit.split-lp398

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cw) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i64 %i.cy, ptr %i.k, align 8, !tbaa !60
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc186 unwind label %.loopexit397 ; 2 uses

.noexc186:                                        ; preds = %.noexc.i
  store ptr %i.da, ptr %3, align 8, !tbaa !17
  %i.db = load i64, ptr %i.k, align 8, !tbaa !60
  store i64 %i.db, ptr %i.ak, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc186, %bb.k
  %i.dc = phi ptr [ %i.da, %.noexc186 ], [ %i.ak, %bb.k ] ; 2 uses
  switch i64 %i.cy, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.dd = load i8, ptr %i.cw, align 1, !tbaa !16
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !16
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr nonnull align 1 %i.cw, i64 %i.cy, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.de = load i64, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  store i64 %i.de, ptr %i.al, align 8, !tbaa !15
  %i.df = load ptr, ptr %3, align 8, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store i8 0, ptr %i.dg, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  %.val184 = load ptr, ptr %3, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.dh = call i64 @__isoc23_strtol(ptr noundef %.val184, ptr noundef nonnull %i.j, i32 noundef 10) #18
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  store i32 %i.di, ptr %i.l, align 4, !tbaa !49
  %i.dj = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ak
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.dl = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #21
  %.pre414 = load i32, ptr %i.l, align 4, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dn = phi i32 [ %.pre414, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.di, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.do = icmp sgt i32 %i.dn, 30
  br i1 %i.do, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit

.loopexit397:                                     ; preds = %.noexc.i
  %lpad.loopexit399 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp398:                            ; preds = %bb.j
  %lpad.loopexit.split-lp400 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp398, %.loopexit397
  %lpad.phi401 = phi { ptr, i32 } [ %lpad.loopexit399, %.loopexit397 ], [ %lpad.loopexit.split-lp400, %.loopexit.split-lp398 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt10unique_ptrIN5draco10PointCloudESt14default_deleteIS1_EED2Ev.exit282

bb.q:                                             ; preds = %bb.h
  %i.dp = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.7, ptr noundef nonnull dereferenceable(1) %i.ao) #19
  %.not132 = icmp eq i32 %i.dp, 0
  %or.cond176 = select i1 %.not132, i1 %i.ci, i1 false
  br i1 %or.cond176, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.dq = add nsw i32 %.0115403, 1                ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !59 ; 4 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !14
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.67) #20
          to label %.noexc189 unwind label %.loopexit.split-lp393

.noexc189:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dt) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store i64 %i.dv, ptr %i.i, align 8, !tbaa !60
  %i.dw = icmp ugt i64 %i.dv, 15
  br i1 %i.dw, label %.noexc.i188, label %._crit_edge.i.i187

.noexc.i188:                                      ; preds = %bb.t
  %i.dx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc190 unwind label %.loopexit392 ; 2 uses

.noexc190:                                        ; preds = %.noexc.i188
  store ptr %i.dx, ptr %4, align 8, !tbaa !17
  %i.dy = load i64, ptr %i.i, align 8, !tbaa !60
  store i64 %i.dy, ptr %i.ai, align 8, !tbaa !16
  br label %._crit_edge.i.i187

._crit_edge.i.i187:                               ; preds = %.noexc190, %bb.t
  %i.dz = phi ptr [ %i.dx, %.noexc190 ], [ %i.ai, %bb.t ] ; 2 uses
  switch i64 %i.dv, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i187
  %i.ea = load i8, ptr %i.dt, align 1, !tbaa !16
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !16
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i187
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr nonnull align 1 %i.dt, i64 %i.dv, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i187
  %i.eb = load i64, ptr %i.i, align 8, !tbaa !60  ; 2 uses
  store i64 %i.eb, ptr %i.aj, align 8, !tbaa !15
  %i.ec = load ptr, ptr %4, align 8, !tbaa !17
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb
  store i8 0, ptr %i.ed, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %.val183 = load ptr, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.ee = call i64 @__isoc23_strtol(ptr noundef %.val183, ptr noundef nonnull %i.h, i32 noundef 10) #18
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  store i32 %i.ef, ptr %i.m, align 8, !tbaa !50
  %i.eg = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ai
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
end_hunk_0
