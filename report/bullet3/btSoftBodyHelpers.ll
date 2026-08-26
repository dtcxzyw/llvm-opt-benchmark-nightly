Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyHelpers?download=true
inline.NumInlined: 1764
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 51
begin_hunk_0

%class.btVector3 = type { [4 x float] }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }
%class.btAlignedObjectArray.4 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.btConvexHullComputer = type { %class.btAlignedObjectArray.4, %class.btAlignedObjectArray.52, %class.btAlignedObjectArray.56, %class.btAlignedObjectArray.52 }
%class.btAlignedObjectArray.56 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.btAlignedObjectArray.52 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.HullDesc = type { i32, i32, ptr, i32, float, i32, i32 }
%class.HullResult = type { i8, i32, %class.btAlignedObjectArray.4, i32, i32, %class.btAlignedObjectArray.64 }
%class.btAlignedObjectArray.64 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.HullLibrary = type { %class.btAlignedObjectArray.66, %class.btAlignedObjectArray.52 }
%class.btAlignedObjectArray.66 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.btAlignedObjectArray.50 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.68 }
%union.anon.68 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.69 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.69 = type { i64, [8 x i8] }
%class.btAlignedObjectArray.70 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"struct.std::_Rb_tree<std::vector<int>, std::pair<const std::vector<int>, std::vector<int>>, std::_Select1st<std::pair<const std::vector<int>, std::vector<int>>>, std::less<std::vector<int>>>::_Auto_node" = type { ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::vector<int>, std::pair<const std::vector<int>, std::vector<int>>, std::_Select1st<std::pair<const std::vector<int>, std::vector<int>>>, std::less<std::vector<int>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::vector<int>, std::pair<const std::vector<int>, std::vector<int>>, std::_Select1st<std::pair<const std::vector<int>, std::vector<int>>>, std::less<std::vector<int>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::pair.78" = type { %"class.std::vector", %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::map.82" = type { %"class.std::_Rb_tree.83" }
%"class.std::_Rb_tree.83" = type { %"struct.std::_Rb_tree<int, std::pair<const int, int>, std::_Select1st<std::pair<const int, int>>, std::less<int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<int, std::pair<const int, int>, std::_Select1st<std::pair<const int, int>>, std::less<int>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%class.btAlignedObjectArray.89 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZN20btConvexHullComputerD2Ev = comdat any

$_ZN20btAlignedObjectArrayI9btVector3ED2Ev = comdat any

$_ZN20btAlignedObjectArrayIbED2Ev = comdat any

$_ZN11HullLibraryD2Ev = comdat any

$_ZN10HullResultD2Ev = comdat any

$_ZN20btAlignedObjectArrayIS_IiEE6resizeEiRKS0_ = comdat any

$_ZN20btAlignedObjectArrayIiED2Ev = comdat any

$_ZN20btAlignedObjectArrayIS_IiEED2Ev = comdat any

$_ZNSt4pairISt6vectorIiSaIiEES2_ED2Ev = comdat any

$_ZNSt3mapISt6vectorIiSaIiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev = comdat any

$_ZN20btAlignedObjectArrayIS_IPKN10btSoftBody4NodeEEE6resizeEiRKS4_ = comdat any

$_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11btTransform11getIdentityEv = comdat any

$_ZN11btMatrix3x311getIdentityEv = comdat any

$_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZN20btAlignedObjectArrayIS_IiEE7reserveEi = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_ = comdat any

$_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_ = comdat any

$_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_ = comdat any

$_ZN20btAlignedObjectArrayIS_IPKN10btSoftBody4NodeEEE7reserveEi = comdat any

$_ZZNK10btSoftBody4Body5xformEvE8identity = comdat any

$_ZGVZNK10btSoftBody4Body5xformEvE8identity = comdat any

$_ZZN11btTransform11getIdentityEvE17identityTransform = comdat any

$_ZGVZN11btTransform11getIdentityEvE17identityTransform = comdat any

$_ZZN11btMatrix3x311getIdentityEvE14identityMatrix = comdat any

$_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix = comdat any

@_ZZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis = internal global [3 x %class.btVector3] zeroinitializer, align 16
@_ZGVZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawiE4axis = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c" M(%.2f)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" A(%.2f)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%d %f %f %f\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%d %d %d %d %d\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Nodes:  %u\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Links:  %u\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Faces:  %u\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Tetras: %u\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"POINTS\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"CELLS\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"CELL_TYPES\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@_ZZNK10btSoftBody4Body5xformEvE8identity = linkonce_odr dso_local global %class.btTransform zeroinitializer, comdat, align 4
@_ZGVZNK10btSoftBody4Body5xformEvE8identity = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN11btTransform11getIdentityEvE17identityTransform = linkonce_odr dso_local global %class.btTransform zeroinitializer, comdat, align 4
@_ZGVZN11btTransform11getIdentityEvE17identityTransform = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN11btMatrix3x311getIdentityEvE14identityMatrix = linkonce_odr dso_local global %class.btMatrix3x3 zeroinitializer, comdat, align 4
@_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@str = private unnamed_addr constant [67 x i8] c"Load deformable failed: Only Tetrahedra are supported in VTK file.\00", align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 8          ; 5 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 8          ; 5 uses
  %15 = alloca %class.btVector3, align 16         ; 4 uses
  %16 = alloca %class.btVector3, align 16         ; 4 uses
  %17 = alloca %class.btVector3, align 16         ; 4 uses
  %18 = alloca %class.btVector3, align 16         ; 4 uses
  %19 = alloca %class.btVector3, align 16         ; 4 uses
  %20 = alloca %class.btVector3, align 16         ; 4 uses
  %21 = alloca %class.btVector3, align 8          ; 5 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  %23 = alloca %class.btVector3, align 8          ; 5 uses
  %24 = alloca %class.btVector3, align 8          ; 5 uses
  %25 = alloca %class.btVector3, align 8          ; 5 uses
  %26 = alloca %class.btVector3, align 8          ; 5 uses
  %27 = alloca %class.btVector3, align 8          ; 5 uses
  %28 = alloca %class.btVector3, align 8          ; 5 uses
  %29 = alloca %class.btVector3, align 8          ; 5 uses
  %30 = alloca %class.btVector3, align 8          ; 5 uses
  %31 = alloca %class.btVector3, align 8          ; 5 uses
  %32 = alloca %class.btVector3, align 8          ; 5 uses
  %33 = alloca %class.btVector3, align 8          ; 5 uses
  %34 = alloca %class.btVector3, align 8          ; 5 uses
  %35 = alloca %class.btVector3, align 8          ; 5 uses
  %36 = alloca %class.btVector3, align 8          ; 5 uses
  %37 = alloca %class.btVector3, align 8          ; 5 uses
  %38 = alloca %class.btVector3, align 8          ; 5 uses
  %39 = alloca %class.btVector3, align 4          ; 5 uses
  %40 = alloca %class.btVector3, align 16         ; 7 uses
  %41 = alloca %class.btVector3, align 16         ; 6 uses
  %42 = alloca %class.btVector3, align 16         ; 8 uses
  %43 = alloca %class.btAlignedObjectArray.4, align 8 ; 8 uses
  %44 = alloca %class.btConvexHullComputer, align 8 ; 22 uses
  %45 = alloca %class.btVector3, align 8          ; 5 uses
  %46 = alloca %class.btVector3, align 8          ; 5 uses
  %47 = alloca %class.btVector3, align 16         ; 4 uses
  %48 = alloca %class.btVector3, align 8          ; 5 uses
  %49 = alloca %class.btVector3, align 8          ; 5 uses
  %50 = alloca %class.btVector3, align 16         ; 4 uses
  %51 = alloca %class.btVector3, align 8          ; 5 uses
  %52 = alloca %class.btVector3, align 8          ; 5 uses
  %53 = alloca %class.btVector3, align 16         ; 4 uses
  %54 = alloca %class.btVector3, align 8          ; 5 uses
  %55 = alloca %class.btVector3, align 8          ; 5 uses
  %56 = alloca %class.btVector3, align 8          ; 5 uses
  %57 = alloca %class.btVector3, align 8          ; 7 uses
  %58 = alloca %class.btVector3, align 8          ; 5 uses
  %59 = alloca %class.btVector3, align 8          ; 5 uses
  %60 = alloca %class.btVector3, align 8          ; 5 uses
  %61 = alloca %class.btVector3, align 8          ; 5 uses
  %62 = alloca %class.btVector3, align 8          ; 5 uses
  %63 = alloca %class.btVector3, align 16         ; 4 uses
  %64 = alloca %class.btVector3, align 16         ; 4 uses
  %65 = alloca %class.btVector3, align 8          ; 5 uses
  %66 = alloca %class.btVector3, align 8          ; 5 uses
  %67 = alloca %class.btVector3, align 8          ; 5 uses
  %68 = alloca %class.btVector3, align 16         ; 7 uses
  %69 = alloca %class.btVector3, align 8          ; 5 uses
  %70 = alloca %class.btVector3, align 8          ; 5 uses
  %71 = alloca %class.btVector3, align 8          ; 5 uses
  %72 = alloca %class.btVector3, align 8          ; 5 uses
  %73 = alloca %class.btVector3, align 8          ; 5 uses
  %74 = alloca %class.btVector3, align 8          ; 5 uses
  %75 = alloca %class.btVector3, align 8          ; 5 uses
  %76 = alloca %class.btVector3, align 8          ; 5 uses
  %77 = alloca %class.btVector3, align 8          ; 5 uses
  %78 = alloca %class.btVector3, align 8          ; 5 uses
  %79 = alloca %class.btVector3, align 8          ; 5 uses
  %80 = alloca %class.btVector3, align 8          ; 5 uses
  %81 = alloca %class.btVector3, align 8          ; 8 uses
  %82 = alloca %class.btVector3, align 16         ; 6 uses
  %83 = alloca %class.btVector3, align 16         ; 6 uses
  %84 = alloca %class.btVector3, align 16         ; 4 uses
  %85 = alloca %class.btVector3, align 16         ; 6 uses
  %86 = alloca %class.btVector3, align 8          ; 9 uses
  %87 = alloca %class.btVector3, align 8          ; 8 uses
  %88 = alloca %class.btVector3, align 8          ; 8 uses
  %89 = alloca %class.btVector3, align 16         ; 4 uses
  %90 = alloca %class.btVector3, align 16         ; 4 uses
  %91 = alloca %class.btVector3, align 16         ; 6 uses
  %92 = alloca %class.btVector3, align 16         ; 6 uses
  %93 = alloca %class.btVector3, align 8          ; 8 uses
  %94 = alloca %class.btVector3, align 8          ; 8 uses
  %95 = alloca %class.btVector3, align 8          ; 5 uses
  %96 = alloca %class.btVector3, align 16         ; 4 uses
  %97 = alloca %class.btVector3, align 8          ; 5 uses
  %98 = alloca %class.btVector3, align 16         ; 4 uses
  %99 = alloca %class.btVector3, align 8          ; 5 uses
  %100 = alloca %class.btVector3, align 16        ; 4 uses
  %101 = alloca %class.btVector3, align 8         ; 5 uses
  %102 = alloca %class.btVector3, align 16        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  %i.a = getelementptr inbounds nuw i8, ptr %40, i64 8
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %40, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %41, align 16, !tbaa !9
  %i.b = and i32 %2, 256
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @srand(i32 noundef 1806) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1748 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph1366, label %.loopexit1353

.lr.ph1366:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %43, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %43, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %44, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %44, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %44, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %44, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %44, i64 80 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %44, i64 68
  %i.w = getelementptr inbounds nuw i8, ptr %44, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %44, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %44, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %44, i64 100 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %44, i64 104
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1366, %bb.l
  %i.ab = phi i32 [ %i.d, %.lr.ph1366 ], [ %i.ed, %bb.l ]
  %indvars.iv1403 = phi i64 [ 0, %.lr.ph1366 ], [ %indvars.iv.next1404, %bb.l ] ; 6 uses
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv1403
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 417
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !21, !range !36, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  %i.ai = call i32 @rand() #25
  %103 = sitofp i32 %i.ai to float
  %i.aj = call i32 @rand() #25
  %i.ak = call i32 @rand() #25
  %104 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %105 = insertelement <4 x i32> %104, i32 %i.ak, i64 1
  %106 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %103, i64 0
  %107 = sitofp <4 x i32> %105 to <4 x float>
  %108 = shufflevector <4 x float> %106, <4 x float> %107, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %109 = fmul nnan <4 x float> %108, <float f0x30000000, float f0x30000000, float f0x30000000, float 0.000000e+00>
  store <4 x float> %109, ptr %42, align 16, !tbaa !9
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %42, align 16 ; 4 uses
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %i.g, align 8, !tbaa !38
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i, %.sroa.0.0.copyload3.i
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.am = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.al)
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0 ; 3 uses
  %i.an = call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.am)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.an)
  %i.ao = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.ap = fmul float %.sroa.8.8.vec.extract.i, %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x float> %.sroa.0.0.copyload3.i, %i.ar
  %i.at = fmul <2 x float> %i.as, splat (float 7.500000e-01)
  %i.au = fmul float %i.ap, 7.500000e-01
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  store <2 x float> %i.at, ptr %42, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.g, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  store i8 1, ptr %i.h, align 8, !tbaa !39
  store ptr null, ptr %i.i, align 8, !tbaa !40
  store i32 0, ptr %i.j, align 4, !tbaa !41
  store i32 0, ptr %i.k, align 8, !tbaa !42
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv1403
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !43 ; 8 uses
  %i.ba = icmp sgt i32 %i.az, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = shl nuw nsw i64 %i.bb, 4
  %i.bd = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bc, i32 noundef 16)
          to label %.lr.ph.preheader unwind label %bb.e ; 6 uses

.lr.ph.preheader:                                 ; preds = %bb.d
  store i8 1, ptr %i.h, align 8, !tbaa !39
  store ptr %i.bd, ptr %i.i, align 8, !tbaa !40
  store i32 %i.az, ptr %i.k, align 8, !tbaa !42
  store i32 %i.az, ptr %i.j, align 4, !tbaa !41
  %wide.trip.count = zext nneg i32 %i.az to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.be = icmp eq i32 %i.az, 1
  br i1 %i.be, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1403
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !47
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv1403
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !44
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !45
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !48

bb.e:                                             ; preds = %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod1475 = trunc i32 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod1475)
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv1403
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !44
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.epil.init
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false), !tbaa.struct !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  store i8 1, ptr %i.l, align 8, !tbaa !39
  store ptr null, ptr %i.m, align 8, !tbaa !40
  store i32 0, ptr %i.n, align 4, !tbaa !41
  store i32 0, ptr %i.o, align 8, !tbaa !42
  store i8 1, ptr %i.p, align 8, !tbaa !50
  store ptr null, ptr %i.q, align 8, !tbaa !54
  store i32 0, ptr %i.r, align 4, !tbaa !55
  store i32 0, ptr %i.s, align 8, !tbaa !56
  store i8 1, ptr %i.t, align 8, !tbaa !57
  store ptr null, ptr %i.u, align 8, !tbaa !61
  store i32 0, ptr %i.v, align 4, !tbaa !62
  store i32 0, ptr %i.w, align 8, !tbaa !63
  store i8 1, ptr %i.x, align 8, !tbaa !50
  store ptr null, ptr %i.y, align 8, !tbaa !54
  store i32 0, ptr %i.z, align 4, !tbaa !55
  store i32 0, ptr %i.aa, align 8, !tbaa !56
  %i.ch = invoke noundef float @_ZN20btConvexHullComputer7computeEPKvbiiff(ptr noundef nonnull align 8 dereferenceable(128) %44, ptr noundef nonnull %i.bd, i1 noundef zeroext false, i32 noundef 16, i32 noundef %i.az, float noundef 0.000000e+00, float noundef 0.000000e+00)
          to label %_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader unwind label %bb.g ; 0 uses

_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader: ; preds = %._crit_edge
  %i.ci = load i32, ptr %i.z, align 4, !tbaa !55  ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph1363, label %.loopexit1467

.loopexit1467:                                    ; preds = %_ZN20btConvexHullComputer7computeEPKfiiff.exit, %_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader
  call void @_ZN20btConvexHullComputerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %44) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bd)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %.loopexit1467
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %.loopexit1467
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  %.pre1441 = load i32, ptr %i.c, align 4, !tbaa !11
  br label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.lr.ph1363:                                       ; preds = %_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader, %_ZN20btConvexHullComputer7computeEPKfiiff.exit
  %i.cn = phi i32 [ %i.ea, %_ZN20btConvexHullComputer7computeEPKfiiff.exit ], [ %i.ci, %_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader ]
  %indvars.iv1400 = phi i64 [ %indvars.iv.next1401, %_ZN20btConvexHullComputer7computeEPKfiiff.exit ], [ 0, %_ZN20btConvexHullComputer7computeEPKfiiff.exit.preheader ] ; 2 uses
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv1400
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !64
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %i.cs ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !65
  %i.cw = sext i32 %i.cv to i64
  %.idx = mul nsw i64 %i.cw, 12                   ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %.idx ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !67
  %i.cz = sext i32 %i.cy to i64
  %.idx1398 = mul nsw i64 %i.cz, 12               ; 2 uses
  %i.da = sub nsw i64 0, %.idx1398
  %.not2241355 = icmp eq i64 %.idx, %i.da
  br i1 %.not2241355, label %_ZN20btConvexHullComputer7computeEPKfiiff.exit, label %.lr.ph1360.preheader

.lr.ph1360.preheader:                             ; preds = %.lr.ph1363
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !68
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !68
  %i.df = getelementptr inbounds i8, ptr %i.cx, i64 %.idx1398
  br label %.lr.ph1360

.lr.ph1360:                                       ; preds = %.lr.ph1360.preheader, %bb.h
  %.02071358 = phi ptr [ %i.dy, %bb.h ], [ %i.df, %.lr.ph1360.preheader ] ; 3 uses
  %.02091357 = phi i32 [ %.02101356, %bb.h ], [ %i.de, %.lr.ph1360.preheader ]
  %.02101356 = phi i32 [ %i.dh, %bb.h ], [ %i.dc, %.lr.ph1360.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02071358, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !68 ; 2 uses
  %i.di = load ptr, ptr %i.m, align 8, !tbaa !40  ; 3 uses
  %i.dj = sext i32 %.02091357 to i64
  %i.dk = getelementptr inbounds [16 x i8], ptr %i.di, i64 %i.dj
  %i.dl = sext i32 %.02101356 to i64
  %i.dm = getelementptr inbounds [16 x i8], ptr %i.di, i64 %i.dl
  %i.dn = sext i32 %i.dh to i64
  %i.do = getelementptr inbounds [16 x i8], ptr %i.di, i64 %i.dn
  %i.dp = load ptr, ptr %1, align 8, !tbaa !69
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.dk, ptr noundef nonnull align 4 dereferenceable(16) %i.dm, ptr noundef nonnull align 4 dereferenceable(16) %i.do, ptr noundef nonnull align 4 dereferenceable(16) %42, float noundef 1.000000e+00)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph1360
  %i.ds = getelementptr inbounds nuw i8, ptr %.02071358, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !65
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [12 x i8], ptr %.02071358, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !67
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [12 x i8], ptr %i.dv, i64 %i.dx ; 2 uses
  %.not224 = icmp eq ptr %i.dy, %i.ct
  br i1 %.not224, label %_ZN20btConvexHullComputer7computeEPKfiiff.exit.loopexit, label %.lr.ph1360

bb.i:                                             ; preds = %.lr.ph1360
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

end_hunk_0
