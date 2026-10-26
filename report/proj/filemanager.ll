Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/filemanager?download=true
inline.NumInlined: 948
inline.NumDeleted: 275
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Dl_info = type { ptr, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%class.anon = type { ptr, ptr, ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.dropbox::oxygen::nn" = type { %"class.std::shared_ptr" }
%"class.std::tuple.20" = type { %"struct.std::_Tuple_impl.21" }
%"struct.std::_Tuple_impl.21" = type { %"struct.std::_Head_base.22" }
%"struct.std::_Head_base.22" = type { ptr }
%"class.std::tuple.23" = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_ = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKPKcEEERS5_DpOT_ = comdat any

$_ZN5osgeo4proj9FileStdio16reassign_contextEP6pj_ctx = comdat any

$_ZNK5osgeo4proj9FileStdio10hasChangedEv = comdat any

$_ZN5osgeo4proj14FileApiAdapter16reassign_contextEP6pj_ctx = comdat any

$_ZNK5osgeo4proj14FileApiAdapter10hasChangedEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKPKcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZTVN5osgeo4proj4FileE = hidden constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN5osgeo4proj4FileE, ptr @_ZN5osgeo4proj4FileD1Ev, ptr @_ZN5osgeo4proj4FileD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@_ZTVN5osgeo4proj9FileStdioE = hidden constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN5osgeo4proj9FileStdioE, ptr @_ZN5osgeo4proj9FileStdioD2Ev, ptr @_ZN5osgeo4proj9FileStdioD0Ev, ptr @_ZN5osgeo4proj9FileStdio4readEPvm, ptr @_ZN5osgeo4proj9FileStdio5writeEPKvm, ptr @_ZN5osgeo4proj9FileStdio4seekEyi, ptr @_ZN5osgeo4proj9FileStdio4tellEv, ptr @_ZN5osgeo4proj9FileStdio16reassign_contextEP6pj_ctx, ptr @_ZNK5osgeo4proj9FileStdio10hasChangedEv] }, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@_ZTVN5osgeo4proj14FileApiAdapterE = hidden constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN5osgeo4proj14FileApiAdapterE, ptr @_ZN5osgeo4proj14FileApiAdapterD2Ev, ptr @_ZN5osgeo4proj14FileApiAdapterD0Ev, ptr @_ZN5osgeo4proj14FileApiAdapter4readEPvm, ptr @_ZN5osgeo4proj14FileApiAdapter5writeEPKvm, ptr @_ZN5osgeo4proj14FileApiAdapter4seekEyi, ptr @_ZN5osgeo4proj14FileApiAdapter4tellEv, ptr @_ZN5osgeo4proj14FileApiAdapter16reassign_contextEP6pj_ctx, ptr @_ZNK5osgeo4proj14FileApiAdapter10hasChangedEv] }, align 8
@.str.7 = private unnamed_addr constant [126 x i8] c"Attempt at accessing remote resource not authorized. Either set PROJ_NETWORK=ON or proj_context_set_enable_network(ctx, TRUE)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"PROJ_DATA\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"PROJ_LIB\00", align 1
@.str.10 = private unnamed_addr constant [130 x i8] c"PROJ_LIB environment variable is deprecated, and will be removed in a future release. You are encouraged to set PROJ_DATA instead\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"PROJ_USER_WRITABLE_DIRECTORY\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"XDG_DATA_HOME\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"/.local/share\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"/proj\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZ26pj_get_relative_share_projB5cxx11P6pj_ctxE4pathB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZ26pj_get_relative_share_projB5cxx11P6pj_ctxE4pathB5cxx11 = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str.18 = private unnamed_addr constant [39 x i8] c"PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"/usr/local/share/proj\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"proj.db\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c".tif\00", align 1
@_ZTISt9exception = external constant ptr
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Using %s\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"PROJ_NETWORK\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"PROJ_NETWORK_ENDPOINT\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"PROJ_CURL_CA_BUNDLE\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"CURL_CA_BUNDLE\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"SSL_CERT_FILE\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"PROJ_ONLY_BEST_DEFAULT\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"PROJ_NATIVE_CA\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"proj.ini\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"poder_engsager\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"pj_load_ini(): Invalid value for tmerc_default_algo\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"only_best_default\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"native_ca\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [152 x i8] c"DeprecationWarning: PROJ_LIB environment variable is deprecated, and will be removed in a future release. You are encouraged to set PROJ_DATA instead.\0A\00", align 1
@_ZTIN5osgeo4proj4FileE = hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5osgeo4proj4FileE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5osgeo4proj4FileE = hidden constant [19 x i8] c"N5osgeo4proj4FileE\00", align 1
@_ZTIN5osgeo4proj9FileStdioE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5osgeo4proj9FileStdioE, ptr @_ZTIN5osgeo4proj4FileE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5osgeo4proj9FileStdioE = hidden constant [24 x i8] c"N5osgeo4proj9FileStdioE\00", align 1
@_ZTIN5osgeo4proj14FileApiAdapterE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5osgeo4proj14FileApiAdapterE, ptr @_ZTIN5osgeo4proj4FileE }, align 8
@_ZTSN5osgeo4proj14FileApiAdapterE = hidden constant [30 x i8] c"N5osgeo4proj14FileApiAdapterE\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"/\\\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"../share/proj\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"share/proj\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"/share/proj\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"pj_open_lib(%s): call fopen(%s) - %s\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"pj_open_lib(%s): out of memory\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.65 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.67 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1

@_ZN5osgeo4proj4FileD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5osgeo4proj4FileD2Ev
@_ZN5osgeo4proj9FileStdioD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5osgeo4proj9FileStdioD2Ev
@_ZN5osgeo4proj14FileApiAdapterD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5osgeo4proj14FileApiAdapterD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj4FileC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5osgeo4proj4FileE, i64 16), ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.f, ptr %i.a, align 8, !tbaa !22
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !20
  %i.i = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.i, ptr %i.c, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !23
  store i8 %i.k, ptr %i.j, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !21
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.r, align 8, !tbaa !21
  store i8 0, ptr %i.q, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.s, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5osgeo4proj4FileD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(73) dereferenceable(73) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5osgeo4proj4FileE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !23
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5osgeo4proj4FileD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj4File9read_lineB5cxx11EmRbS2_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(73) %1, i64 noundef %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 1048576) ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 25 uses
  %i.i = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 2) #29 ; 2 uses
  %.not117 = icmp eq i64 %i.i, -1
  br i1 %.not117, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ax, %bb.a
  %.lcssa = phi i64 [ %i.i, %bb.a ], [ %i.gk, %bb.ax ] ; 6 uses
  %i.l = icmp ugt i64 %.lcssa, %.sroa.speculated
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  br i1 %i.l, label %bb.b, label %bb.o

bb.b:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.o = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !119
  store ptr %i.n, ptr %0, align 8, !tbaa !17, !alias.scope !119
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !20, !noalias !119 ; 2 uses
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 %i.o) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29, !noalias !119
  store i64 %spec.select.i.i.i, ptr %i.g, align 8, !tbaa !22, !noalias !119
  %i.q = icmp samesign ugt i64 %spec.select.i.i.i, 15
  br i1 %i.q, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.b
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !20, !alias.scope !119
  %i.s = load i64, ptr %i.g, align 8, !tbaa !22, !noalias !119
  store i64 %i.s, ptr %i.n, align 8, !tbaa !23, !alias.scope !119
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.b
  %i.t = phi ptr [ %i.r, %.noexc10.i.i ], [ %i.n, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.p, align 1, !tbaa !23
  store i8 %i.u, ptr %i.t, align 1, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

end_hunk_0
begin_hunk_1_@_Z11pj_load_iniP6pj_ctx:bb.a

.noexc:                                           ; preds = %bb.ak
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.cc = phi ptr [ %.pre.i.i, %.noexc ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  store i8 10, ptr %i.cd, align 1, !tbaa !23
  store i64 %i.bv, ptr %i.aw, align 8, !tbaa !21
  %i.ce = load ptr, ptr %1, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bv
  store i8 0, ptr %i.cf, align 1, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %.not21.i = icmp eq ptr %4, %i.ck
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.cb
  %.072244 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.km, %bb.cb ] ; 7 uses
  %i.da = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, i64 noundef %.072244, i64 noundef 2) #29 ; 4 uses
  %i.db = icmp eq i64 %i.da, -1
  br i1 %i.db, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dc = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 61, i64 noundef %.072244) #29 ; 4 uses
  %i.dd = icmp ult i64 %i.dc, %i.da
  br i1 %i.dd, label %bb.an, label %bb.cb

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.de = load i64, ptr %i.aw, align 8, !tbaa !21, !noalias !158 ; 3 uses
  %i.df = icmp ugt i64 %.072244, %i.de
  br i1 %i.df, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i64 noundef %.072244, i64 noundef %i.de) #32
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.ao
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.an
  %i.dg = sub i64 %i.dc, %.072244
  store ptr %i.cg, ptr %3, align 8, !tbaa !17, !alias.scope !158
  %i.dh = load ptr, ptr %1, align 8, !tbaa !20, !noalias !158
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.072244 ; 2 uses
  %i.dj = sub nuw i64 %i.de, %.072244
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dg, i64 %i.dj) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !158
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !22, !noalias !158
  %i.dk = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.dk, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc117:                                        ; preds = %.noexc10.i.i
  store ptr %i.dl, ptr %3, align 8, !tbaa !20, !alias.scope !158
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !22, !noalias !158
  store i64 %i.dm, ptr %i.cg, align 8, !tbaa !23, !alias.scope !158
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dn = phi ptr [ %i.dl, %.noexc117 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i
  %i.do = load i8, ptr %i.di, align 1, !tbaa !23
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !23
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 1 %i.di, i64 %spec.select.i.i.i, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i.i
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !22, !noalias !158 ; 2 uses
  store i64 %i.dp, ptr %i.ch, align 8, !tbaa !21, !alias.scope !158
  %i.dq = load ptr, ptr %3, align 8, !tbaa !20, !alias.scope !158
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dp
  store i8 0, ptr %i.dr, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !158
  invoke fastcc void @_ZL4trimRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.as unwind label %bb.be

bb.as:                                            ; preds = %bb.ar
  %i.ds = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cg
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  %i.du = load i64, ptr %i.cg, align 8, !tbaa !23
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.dw = add nuw i64 %i.dc, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.dx = load i64, ptr %i.aw, align 8, !tbaa !21, !noalias !159 ; 3 uses
  %.not199 = icmp ult i64 %i.dc, %i.dx
  br i1 %.not199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i118, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i64 noundef %i.dw, i64 noundef %i.dx) #32
          to label %.noexc122 unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.at
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ci, ptr %5, align 8, !tbaa !17, !alias.scope !159
  %i.dy = load ptr, ptr %1, align 8, !tbaa !20, !noalias !159
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw ; 2 uses
  %i.ea = call i64 @llvm.umin.i64(i64 %i.da, i64 %i.dx)
  %spec.select.i.i.i119 = sub nuw i64 %i.ea, %i.dw ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !159
  store i64 %spec.select.i.i.i119, ptr %i.a, align 8, !tbaa !22, !noalias !159
  %i.eb = icmp ugt i64 %spec.select.i.i.i119, 15
  br i1 %i.eb, label %.noexc10.i.i121, label %._crit_edge.i.i.i120

.noexc10.i.i121:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i118
  %i.ec = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc123 unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc123:                                        ; preds = %.noexc10.i.i121
  store ptr %i.ec, ptr %5, align 8, !tbaa !20, !alias.scope !159
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !159
  store i64 %i.ed, ptr %i.ci, align 8, !tbaa !23, !alias.scope !159
  br label %._crit_edge.i.i.i120

._crit_edge.i.i.i120:                             ; preds = %.noexc123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i118
  %i.ee = phi ptr [ %i.ec, %.noexc123 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i118 ] ; 2 uses
  switch i64 %spec.select.i.i.i119, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i.i120
  %i.ef = load i8, ptr %i.dz, align 1, !tbaa !23
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !23
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i.i120
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr nonnull align 1 %i.dz, i64 %spec.select.i.i.i119, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i.i120
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !159 ; 2 uses
  store i64 %i.eg, ptr %i.cj, align 8, !tbaa !21, !alias.scope !159
  %i.eh = load ptr, ptr %5, align 8, !tbaa !20, !alias.scope !159
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 0, ptr %i.ei, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !159
  invoke fastcc void @_ZL4trimRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ax unwind label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %i.ej = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ci
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.ax
  %i.el = load i64, ptr %i.ci, align 8, !tbaa !23
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.en = load i64, ptr %i.cl, align 8, !tbaa !21
  %i.eo = icmp eq i64 %i.en, 0
  %.pre269.pre = load i64, ptr %i.cm, align 8, !tbaa !21 ; 4 uses
  %i.ep = icmp eq i64 %.pre269.pre, 12
  %or.cond339 = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond339, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.eq = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.er = load i64, ptr %i.eq, align 1
  %i.es = xor i64 %i.er, 8098719411590816867
  %i.et = getelementptr i8, ptr %i.eq, i64 8
  %i.eu = load i32, ptr %i.et, align 1
  %i.ev = zext i32 %i.eu to i64
  %i.ew = xor i64 %i.ev, 1953393007
  %i.ex = or i64 %i.es, %i.ew
  %i.ey = icmp ne i64 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread193

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fb = load ptr, ptr %i.ck, align 8, !tbaa !20 ; 6 uses
  %i.fc = icmp eq ptr %i.fb, %i.cx
  %i.fd = load ptr, ptr %4, align 8, !tbaa !20    ; 6 uses
  %i.fe = icmp eq ptr %i.fd, %i.cy                ; 2 uses
  br i1 %i.fc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.fe, label %bb.ay, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.fe, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ff = load i64, ptr %i.cn, align 8, !tbaa !21 ; 3 uses
  %i.fg = icmp ult i64 %i.ff, 16
  call void @llvm.assume(i1 %i.fg)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.az, !prof !79

bb.az:                                            ; preds = %bb.ay
  switch i64 %i.ff, label %bb.bb [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.fh = load i8, ptr %i.fd, align 1, !tbaa !23
  store i8 %i.fh, ptr %i.fb, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr align 1 %i.fd, i64 %i.ff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.fi = load i64, ptr %i.cn, align 8, !tbaa !21 ; 2 uses
  store i64 %i.fi, ptr %i.cl, align 8, !tbaa !21
  %i.fj = load ptr, ptr %i.ck, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fi
  store i8 0, ptr %i.fk, align 1, !tbaa !23
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.fd, ptr %i.ck, align 8, !tbaa !20
  %i.fl = load <2 x i64>, ptr %i.cn, align 8, !tbaa !23
  store <2 x i64> %i.fl, ptr %i.cl, align 8, !tbaa !23
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fm = load i64, ptr %i.cx, align 8, !tbaa !23
  store ptr %i.fd, ptr %i.ck, align 8, !tbaa !20
  %i.fn = load <2 x i64>, ptr %i.cn, align 8, !tbaa !23
  store <2 x i64> %i.fn, ptr %i.cl, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.fb, null
  br i1 %.not.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fb, ptr %4, align 8, !tbaa !20
  store i64 %i.fm, ptr %i.cy, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cy, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bc, %bb.bd
  %i.fo = phi ptr [ %i.fb, %bb.bc ], [ %i.cy, %bb.bd ], [ %i.fd, %bb.ay ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.cn, align 8, !tbaa !21
  store i8 0, ptr %i.fo, align 1, !tbaa !23
  br label %bb.ca

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc10.i.i, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.be:                                            ; preds = %bb.ar
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.cg
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.be
  %i.fs = load i64, ptr %i.cg, align 8, !tbaa !23
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.be, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  %.pn107 = phi { ptr, i32 } [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fp, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc10.i.i121, %bb.at
  %lpad.loopexit.split-lp367 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.bf:                                            ; preds = %bb.aw
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.ci
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.bf
  %i.fx = load i64, ptr %i.ci, align 8, !tbaa !23
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.bf, %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  %.pn109 = phi { ptr, i32 } [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %lpad.loopexit.split-lp367, %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fu, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.bg:                                            ; preds = %bb.bo
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.cy
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.bg
  %i.gc = load i64, ptr %i.cy, align 8, !tbaa !23
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.ge = icmp eq i64 %.pre269.pre, 7
  %or.cond340 = select i1 %.0, i1 %i.ge, i1 false
  br i1 %or.cond340, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread186

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread185
  %i.gf = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 1
  %i.gh = xor i32 %i.gg, 2004116846
  %i.gi = getelementptr i8, ptr %i.gf, i64 3
  %i.gj = load i32, ptr %i.gi, align 1
  %i.gk = xor i32 %i.gj, 1802661751
  %i.gl = or i32 %i.gh, %i.gk
  %i.gm = icmp ne i32 %i.gl, 0
  %i.gn = zext i1 %i.gm to i32
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread193

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138
  %i.gp = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.26) #29
  br i1 %i.gp, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread
  %i.gq = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.27) #29
  br i1 %i.gq, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gr = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.28) #29
  %i.gs = zext i1 %i.gr to i8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread
  %i.gt = phi i8 [ 1, %bb.bh ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread ], [ %i.gs, %bb.bi ]
  store i8 %i.gt, ptr %i.cw, align 8, !tbaa !154
  br label %bb.ca

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread186: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread185
  switch i64 %.pre269.pre, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread190 [
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140
    i64 18, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread186
  %i.gu = load ptr, ptr %2, align 8, !tbaa !20    ; 6 uses
  %i.gv = load i64, ptr %i.gu, align 1
  %i.gw = xor i64 %i.gv, 7954869205967528291
  %i.gx = getelementptr i8, ptr %i.gu, i64 5
  %i.gy = load i64, ptr %i.gx, align 1
  %i.gz = xor i64 %i.gy, 7234307546237789535
  %i.ha = or i64 %i.gw, %i.gz
  %i.hb = icmp ne i64 %i.ha, 0
  %i.hc = zext i1 %i.hb to i32
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140
  %i.he = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.26) #29
  br i1 %i.he, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread
  %i.hf = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.27) #29
  br i1 %i.hf, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hg = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.28) #29
  %i.hh = zext i1 %i.hg to i8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread
  %i.hi = phi i8 [ 1, %bb.bk ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread ], [ %i.hh, %bb.bl ]
  store i8 %i.hi, ptr %i.cr, align 8, !tbaa !160
  br label %bb.ca

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140
  %i.hj = load i64, ptr %i.gu, align 1
  %i.hk = xor i64 %i.hj, 7598521885451837795
  %i.hl = getelementptr i8, ptr %i.gu, i64 5
  %i.hm = load i64, ptr %i.hl, align 1
  %i.hn = xor i64 %i.hm, 4777579669160031071
  %i.ho = or i64 %i.hk, %i.hn
  %i.hp = icmp ne i64 %i.ho, 0
  %i.hq = zext i1 %i.hp to i32
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit144

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142
  %i.hs = load ptr, ptr %4, align 8, !tbaa !20
  %i.ht = call i64 @__isoc23_strtol(ptr noundef nonnull %i.hs, ptr noundef null, i32 noundef 10) #29, !inline_history !152 ; 2 uses
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = icmp sgt i32 %i.hu, 0
  %sext = shl i64 %i.ht, 32
  %i.hw = ashr exact i64 %sext, 12
  %i.hx = select i1 %i.hv, i64 %i.hw, i64 -1
  store i64 %i.hx, ptr %i.cq, align 8, !tbaa !161
  br label %bb.ca

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit144: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142
  %i.hy = load i64, ptr %i.gu, align 1
  %i.hz = xor i64 %i.hy, 8391436894845755747
  %i.ia = getelementptr i8, ptr %i.gu, i64 5
  %i.ib = load i64, ptr %i.ia, align 1
  %i.ic = xor i64 %i.ib, 7162257636081300575
  %i.id = or i64 %i.hz, %i.ic
  %i.ie = icmp ne i64 %i.id, 0
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit144.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread193

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit144.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit144
  %i.ih = load ptr, ptr %4, align 8, !tbaa !20
  %i.ii = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ih, ptr noundef null, i32 noundef 10) #29, !inline_history !152
  %i.ij = trunc i64 %i.ii to i32
  store i32 %i.ij, ptr %i.cp, align 8, !tbaa !162
  br label %bb.ca

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread186
  %.pre270 = load ptr, ptr %2, align 8, !tbaa !20 ; 2 uses
  %6 = load i128, ptr %.pre270, align 1
  %7 = xor i128 %6, 144062212392994276456955038780086381940
  %8 = getelementptr i8, ptr %.pre270, i64 16
  %9 = load i16, ptr %8, align 1
  %10 = zext i16 %9 to i128
  %11 = xor i128 %10, 28519
  %12 = or i128 %7, %11
  %13 = icmp ne i128 %12, 0
  %14 = zext i1 %13 to i32
  %i.ik = icmp eq i32 %14, 0
  br i1 %i.ik, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread193

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146
  %i.il = load i64, ptr %i.cn, align 8, !tbaa !21
  switch i64 %i.il, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150.thread192 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread
  %i.im = load ptr, ptr %4, align 8, !tbaa !20
  %i.in = load i32, ptr %i.im, align 1
  %i.io = icmp ne i32 %i.in, 1869903201
  %i.ip = zext i1 %i.io to i32
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150.thread192

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148
  store i32 0, ptr %i.co, align 8, !tbaa !163
  br label %bb.ca

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread
  %i.ir = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.is = load i64, ptr %i.ir, align 1
  %i.it = xor i64 %i.is, 6876545163064604261
  %i.iu = getelementptr i8, ptr %i.ir, i64 6
  %i.iv = load i64, ptr %i.iu, align 1
  %i.iw = xor i64 %i.iv, 8243105165678436206
  %i.ix = or i64 %i.it, %i.iw
  %i.iy = icmp ne i64 %i.ix, 0
  %i.iz = zext i1 %i.iy to i32
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150.thread192

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150
  store i32 1, ptr %i.co, align 8, !tbaa !163
  br label %bb.ca

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150.thread192: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150
  %i.jb = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.44)
  br i1 %i.jb, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150.thread192
  store i32 2, ptr %i.co, align 8, !tbaa !163
  br label %bb.ca

bb.bo:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150.thread192
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.45)
          to label %bb.ca unwind label %bb.bg

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread190: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread186
  %i.jc = icmp eq i64 %.pre269.pre, 14
  %or.cond200 = and i1 %.not99184, %i.jc
  br i1 %or.cond200, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread193

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread190
  %i.jd = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.je = load i64, ptr %i.jd, align 1
  %i.jf = xor i64 %i.je, 7810489104207929699
  %i.jg = getelementptr i8, ptr %i.jd, i64 6
  %i.jh = load i64, ptr %i.jg, align 1
  %i.ji = xor i64 %i.jh, 7526748012507655268
  %i.jj = or i64 %i.jf, %i.ji
  %i.jk = icmp ne i64 %i.jj, 0
  %i.jl = zext i1 %i.jk to i32
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread193

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152
  %i.jn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %4) #29 ; 0 uses
  br label %bb.ca

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread193: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit144, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread190
  br i1 %.not100, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread193
  %i.jo = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.47)
  br i1 %i.jo, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.ct, align 1, !tbaa !155
  %i.jp = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.26) #29
  br i1 %i.jp, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jq = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.27) #29
  br i1 %i.jq, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jr = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.28) #29
  %i.js = zext i1 %i.jr to i8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %i.jt = phi i8 [ 1, %bb.br ], [ 1, %bb.bq ], [ %i.js, %bb.bs ]
  store i8 %i.jt, ptr %i.cu, align 8, !tbaa !156
  br label %bb.ca

bb.bu:                                            ; preds = %bb.bp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread193
  br i1 %.085, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.ju = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.48)
  br i1 %i.ju, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.jv = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.26) #29
  br i1 %i.jv, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jw = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.27) #29
  br i1 %i.jw, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jx = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.28) #29
  %i.jy = zext i1 %i.jx to i8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.jz = phi i8 [ 1, %bb.bx ], [ 1, %bb.bw ], [ %i.jy, %bb.by ]
  store i8 %i.jz, ptr %i.cs, align 8, !tbaa !157
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit150.thread, %bb.bo, %bb.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148.thread, %bb.bt, %bb.bz, %bb.bv, %bb.bu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit144.thread, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ka = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.cy
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.ca
  %i.kc = load i64, ptr %i.cy, align 8, !tbaa !23
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ke = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.cz
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.kg = load i64, ptr %i.cz, align 8, !tbaa !23
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %.pn111 = phi { ptr, i32 } [ %.pn109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %i.fz, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ki = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.cz
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.kk = load i64, ptr %i.cz, align 8, !tbaa !23
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %.pn111.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %.pn111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %.pn111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.cd

bb.cb:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.km = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, i64 noundef %i.da, i64 noundef 2) #29 ; 2 uses
  %.not106 = icmp eq i64 %i.km, -1
  br i1 %.not106, label %.critedge, label %bb.al

.critedge:                                        ; preds = %bb.al, %bb.cb
  br i1 %.not198, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i: ; preds = %bb.ah, %bb.ad, %.critedge
  %i.kn = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(73) %i.ax) #29, !inline_history !0
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit: ; preds = %.critedge, %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i
  %i.kq = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.av
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit
  %i.ks = load i64, ptr %i.av, align 8, !tbaa !23
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.cc

bb.cc:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  ret void
end_hunk_1
