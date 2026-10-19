Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/TempFile?download=true
inline.NumInlined: 691
inline.NumDeleted: 315
begin_hunk_0
$_ZTIN7openvdb5v13_07IoErrorE = comdat any

$_ZTSN7openvdb5v13_07IoErrorE = comdat any

$_ZTIN7openvdb5v13_09ExceptionE = comdat any

$_ZTSN7openvdb5v13_09ExceptionE = comdat any

$_ZTVN7openvdb5v13_07IoErrorE = comdat any

$_ZTVN7openvdb5v13_09ExceptionE = comdat any

@_ZTVN7openvdb5v13_02io8TempFileE = constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 16 to ptr), ptr null, ptr @_ZTIN7openvdb5v13_02io8TempFileE, ptr @_ZN7openvdb5v13_02io8TempFileD1Ev, ptr @_ZN7openvdb5v13_02io8TempFileD0Ev], [5 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN7openvdb5v13_02io8TempFileE, ptr @_ZTv0_n24_N7openvdb5v13_02io8TempFileD1Ev, ptr @_ZTv0_n24_N7openvdb5v13_02io8TempFileD0Ev] }, align 8
@_ZTTN7openvdb5v13_02io8TempFileE = unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN7openvdb5v13_02io8TempFileE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN7openvdb5v13_02io8TempFileE0_So, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN7openvdb5v13_02io8TempFileE0_So, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN7openvdb5v13_02io8TempFileE, i32 0, i32 1, i32 3)], align 8
@_ZTCN7openvdb5v13_02io8TempFileE0_So = constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 16 to ptr), ptr null, ptr @_ZTISo, ptr @_ZNSoD1Ev, ptr @_ZNSoD0Ev], [5 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr inttoptr (i64 -16 to ptr), ptr @_ZTISo, ptr @_ZTv0_n24_NSoD1Ev, ptr @_ZTv0_n24_NSoD0Ev] }, align 8
@_ZTISo = external constant ptr
@_ZTIN7openvdb5v13_02io8TempFileE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7openvdb5v13_02io8TempFileE, ptr @_ZTISo }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7openvdb5v13_02io8TempFileE = constant [29 x i8] c"N7openvdb5v13_02io8TempFileE\00", align 1
@_ZTVN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE = linkonce_odr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE, ptr @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev, ptr @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED0Ev, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5imbueERKSt6locale, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6setbufEPcl, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE7seekposESt4fposI11__mbstate_tESt13_Ios_Openmode, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE4syncEv, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE9showmanycEv, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6xsgetnEPcl, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9underflowEv, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9pbackfailEi, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6xsputnEPKcl, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE8overflowEi, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE8set_nextEPNS1_16linked_streambufIcS5_EE, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE10close_implESt13_Ios_Openmode, ptr @_ZNK5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE10auto_closeEv, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE14set_auto_closeEb, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE11strict_syncEv, ptr @_ZNK5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE14component_typeEv, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE14component_implEv, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE13init_get_areaEv, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE13init_put_areaEv] }, comdat, align 8
@_ZTIN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE, ptr @_ZTIN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE }, comdat, align 8
@_ZTSN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE = linkonce_odr constant [108 x i8] c"N5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE\00", comdat, align 1
@_ZTIN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE, ptr @_ZTIN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEEE }, comdat, align 8
@_ZTSN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE = linkonce_odr constant [120 x i8] c"N5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE\00", comdat, align 1
@_ZTIN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEEE, ptr @_ZTISt15basic_streambufIcSt11char_traitsIcEE }, comdat, align 8
@_ZTSN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEEE = linkonce_odr constant [65 x i8] c"N5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEEE\00", comdat, align 1
@_ZTISt15basic_streambufIcSt11char_traitsIcEE = external constant ptr
@_ZTVN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE = linkonce_odr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED0Ev, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5imbueERKSt6locale, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6setbufEPcl, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE7seekposESt4fposI11__mbstate_tESt13_Ios_Openmode, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE4syncEv, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE9showmanycEv, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6xsgetnEPcl, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9underflowEv, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9pbackfailEi, ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6xsputnEPKcl, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE8overflowEi, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE8set_nextEPNS1_16linked_streambufIcS5_EE, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE10close_implESt13_Ios_Openmode, ptr @_ZNK5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE10auto_closeEv, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE14set_auto_closeEb, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE11strict_syncEv, ptr @_ZNK5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE14component_typeEv, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE14component_implEv, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE13init_get_areaEv, ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE13init_put_areaEv] }, comdat, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTIN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, i32 0, i32 3, ptr @_ZTIN5boost16exception_detail10clone_baseE, i64 2, ptr @_ZTINSt8ios_base7failureB5cxx11E, i64 2050, ptr @_ZTIN5boost9exceptionE, i64 10242 }, comdat, align 8
@_ZTSN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE = linkonce_odr constant [51 x i8] c"N5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE\00", comdat, align 1
@_ZTIN5boost16exception_detail10clone_baseE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost16exception_detail10clone_baseE }, comdat, align 8
@_ZTSN5boost16exception_detail10clone_baseE = linkonce_odr constant [39 x i8] c"N5boost16exception_detail10clone_baseE\00", comdat, align 1
@_ZTINSt8ios_base7failureB5cxx11E = external constant ptr
@_ZTIN5boost9exceptionE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost9exceptionE }, comdat, align 8
@_ZTSN5boost9exceptionE = linkonce_odr constant [19 x i8] c"N5boost9exceptionE\00", comdat, align 1
@_ZTVN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE = linkonce_odr constant { [6 x ptr], [5 x ptr], [4 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, ptr @_ZNK5boost10wrapexceptINSt8ios_base7failureB5cxx11EE5cloneEv, ptr @_ZNK5boost10wrapexceptINSt8ios_base7failureB5cxx11EE7rethrowEv, ptr @_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EED2Ev, ptr @_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EED0Ev], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, ptr @_ZThn8_N5boost10wrapexceptINSt8ios_base7failureB5cxx11EED1Ev, ptr @_ZThn8_N5boost10wrapexceptINSt8ios_base7failureB5cxx11EED0Ev, ptr @_ZNKSt8ios_base7failureB5cxx114whatEv], [4 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr @_ZTIN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, ptr @_ZThn40_N5boost10wrapexceptINSt8ios_base7failureB5cxx11EED1Ev, ptr @_ZThn40_N5boost10wrapexceptINSt8ios_base7failureB5cxx11EED0Ev] }, comdat, align 8
@_ZTVN5boost16exception_detail10clone_baseE = linkonce_odr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN5boost16exception_detail10clone_baseE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5boost16exception_detail10clone_baseD2Ev, ptr @_ZN5boost16exception_detail10clone_baseD0Ev] }, comdat, align 8
@_ZTVNSt8ios_base7failureB5cxx11E = external constant { [5 x ptr] }, align 8
@_ZTVSt12system_error = external constant { [5 x ptr] }, align 8
@_ZTVN5boost9exceptionE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5boost9exceptionE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"no read access\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"putback buffer full\00", align 1
@_ZTIN5boost9iostreams20file_descriptor_sinkE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5boost9iostreams20file_descriptor_sinkE, i32 0, i32 1, ptr @_ZTIN5boost9iostreams15file_descriptorE, i64 0 }, comdat, align 8
@_ZTSN5boost9iostreams20file_descriptor_sinkE = linkonce_odr constant [41 x i8] c"N5boost9iostreams20file_descriptor_sinkE\00", comdat, align 1
@_ZTIN5boost9iostreams15file_descriptorE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost9iostreams15file_descriptorE }, comdat, align 8
@_ZTSN5boost9iostreams15file_descriptorE = linkonce_odr constant [36 x i8] c"N5boost9iostreams15file_descriptorE\00", comdat, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"/openvdb_temp_XXXXXX\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to generate temporary file\00", align 1
@_ZTIN7openvdb5v13_07IoErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7openvdb5v13_07IoErrorE, ptr @_ZTIN7openvdb5v13_09ExceptionE }, comdat, align 8
@_ZTSN7openvdb5v13_07IoErrorE = linkonce_odr constant [25 x i8] c"N7openvdb5v13_07IoErrorE\00", comdat, align 1
@_ZTIN7openvdb5v13_09ExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7openvdb5v13_09ExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN7openvdb5v13_09ExceptionE = linkonce_odr constant [27 x i8] c"N7openvdb5v13_09ExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to open temporary file \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"OPENVDB_TEMP_DIR\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to create OPENVDB_TEMP_DIR (\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"IoError\00", align 1
@_ZTVN7openvdb5v13_07IoErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7openvdb5v13_07IoErrorE, ptr @_ZN7openvdb5v13_09ExceptionD2Ev, ptr @_ZN7openvdb5v13_07IoErrorD0Ev, ptr @_ZNK7openvdb5v13_09Exception4whatEv] }, comdat, align 8
@_ZTVN7openvdb5v13_09ExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7openvdb5v13_09ExceptionE, ptr @_ZN7openvdb5v13_09ExceptionD2Ev, ptr @_ZN7openvdb5v13_09ExceptionD0Ev, ptr @_ZNK7openvdb5v13_09Exception4whatEv] }, comdat, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"already open\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io8TempFileC2Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !14
  %i.h = load ptr, ptr %0, align 8, !tbaa !14
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.k, ptr noundef null)
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.l, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  store ptr %i.n, ptr %i.q, align 8, !tbaa !14
  %i.r = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #27 ; 3 uses
  invoke void @_ZN7openvdb5v13_02io8TempFile12TempFileImplC2ERSo(ptr noundef nonnull align 8 dereferenceable(188) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 192) #28
  resume { ptr, i32 } %i.t
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io8TempFile12TempFileImplC2ERSo(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !23
  store i8 0, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZN5boost9iostreams15file_descriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  store i32 4, ptr %i.j, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE, i64 16), ptr %i.d, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 -1, ptr %i.k, align 8, !tbaa !48
  invoke void @_ZN7openvdb5v13_02io8TempFile12TempFileImpl4initERSo(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %i.d) #29
  tail call void @_ZN5boost9iostreams15file_descriptorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.a, align 8, !tbaa !24
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io8TempFileC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.c, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 0, ptr %i.d, align 1, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN7openvdb5v13_02io8TempFileE0_So, i64 24), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN7openvdb5v13_02io8TempFileE0_So, i64 64), ptr %i.a, align 8, !tbaa !14
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef null)
          to label %_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit unwind label %1

_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN7openvdb5v13_02io8TempFileE, i64 24), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN7openvdb5v13_02io8TempFileE, i64 64), ptr %i.a, align 8, !tbaa !14
  %i.f = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #27
          to label %bb.b unwind label %bb.d       ; 3 uses

bb.b:                                             ; preds = %_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  invoke void @_ZN7openvdb5v13_02io8TempFile12TempFileImplC2ERSo(ptr noundef nonnull align 8 dereferenceable(188) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !17
  ret void

1:                                                ; preds = %bb.a
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 192) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %1
  %.pn.pn = phi { ptr, i32 } [ %2, %1 ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7openvdb5v13_02io8TempFileD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 2 uses
  %i.l = invoke noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_NS1_15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSH_vEE4typeEE11result_typeESH_T0_T1_(ptr nonnull align 8 dereferenceable(132) %i.i, i32 8, ptr nonnull align 8 dereferenceable(132) %i.i, i32 16, ptr nonnull %i.j)
          to label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i.i unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #29 ; 0 uses
  store i32 0, ptr %i.k, align 4, !tbaa !56
  invoke void @__cxa_rethrow() #30
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i.i: ; preds = %bb.a
  store i32 0, ptr %i.k, align 4, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.t = load i32, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.f, label %_ZN7openvdb5v13_02io8TempFile5closeEv.exit

bb.f:                                             ; preds = %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i.i
  %i.v = invoke i32 @close(i32 noundef %i.t)
          to label %_ZN7openvdb5v13_02io8TempFile5closeEv.exit unwind label %bb.l ; 0 uses

_ZN7openvdb5v13_02io8TempFile5closeEv.exit:       ; preds = %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i.i, %bb.f
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !17   ; 6 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_02io8TempFile12TempFileImplESt14default_deleteIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_02io8TempFile5closeEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  tail call void @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %i.x) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = atomicrmw sub ptr %i.aa, i32 1 acq_rel, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !0

.noexc.i.i.i.i.i.i:                               ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.j, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i unwind label %bb.k, !inline_history !0

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #31
  unreachable

_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i: ; preds = %bb.j, %.noexc.i.i.i.i.i.i, %bb.h, %bb.g
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !49  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt14default_deleteIN7openvdb5v13_02io8TempFile12TempFileImplEEclEPS4_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #28
  br label %_ZNKSt14default_deleteIN7openvdb5v13_02io8TempFile12TempFileImplEEclEPS4_.exit.i

_ZNKSt14default_deleteIN7openvdb5v13_02io8TempFile12TempFileImplEEclEPS4_.exit.i: ; preds = %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 192) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_02io8TempFile12TempFileImplESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_02io8TempFile12TempFileImplESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZN7openvdb5v13_02io8TempFile5closeEv.exit, %_ZNKSt14default_deleteIN7openvdb5v13_02io8TempFile12TempFileImplEEclEPS4_.exit.i
  ret void

bb.l:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.c, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.p, %bb.c ]
  %i.au = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.au) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io8TempFile5closeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.f = invoke noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_NS1_15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSH_vEE4typeEE11result_typeESH_T0_T1_(ptr nonnull align 8 dereferenceable(132) %i.c, i32 8, ptr nonnull align 8 dereferenceable(132) %i.c, i32 16, ptr nonnull %i.d)
          to label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #29 ; 0 uses
  store i32 0, ptr %i.e, align 4, !tbaa !56
  invoke void @__cxa_rethrow() #30
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i: ; preds = %bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.n = load i32, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.g, label %_ZN7openvdb5v13_02io8TempFile12TempFileImpl5closeEv.exit

bb.g:                                             ; preds = %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i
  %i.p = tail call i32 @close(i32 noundef %i.n)   ; 0 uses
  br label %_ZN7openvdb5v13_02io8TempFile12TempFileImpl5closeEv.exit

_ZN7openvdb5v13_02io8TempFile12TempFileImpl5closeEv.exit: ; preds = %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i, %bb.g
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}
end_hunk_0
