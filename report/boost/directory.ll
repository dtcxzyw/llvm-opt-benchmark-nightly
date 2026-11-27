Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/directory?download=true
inline.NumInlined: 734
inline.NumDeleted: 307
begin_hunk_0

$_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi = comdat any

$_ZNK5boost6system14error_category6failedEi = comdat any

$_ZNK5boost6system6detail22generic_error_category4nameEv = comdat any

$_ZNK5boost6system6detail22generic_error_category7messageEiPcm = comdat any

$_ZNK5boost6system6detail21system_error_category4nameEv = comdat any

$_ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei = comdat any

$_ZNK5boost6system6detail21system_error_category7messageEiPcm = comdat any

$_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev = comdat any

$_ZN5boost6systemeqERKNS0_10error_codeERKNS0_15error_conditionE = comdat any

$_ZNK5boost6system14error_categorycvRKNSt3_V214error_categoryEEv = comdat any

$_ZN5boost6system6detail12std_categoryD0Ev = comdat any

$_ZNK5boost6system6detail12std_category4nameEv = comdat any

$_ZNK5boost6system6detail12std_category7messageB5cxx11Ei = comdat any

$_ZNK5boost6system6detail12std_category23default_error_conditionEi = comdat any

$_ZNK5boost6system6detail12std_category10equivalentEiRKSt15error_condition = comdat any

$_ZNK5boost6system6detail12std_category10equivalentERKSt10error_codei = comdat any

$_ZN5boost10filesystem6detail25directory_iterator_paramsD2Ev = comdat any

$_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZTIN5boost6system14error_categoryE = comdat any

$_ZTSN5boost6system14error_categoryE = comdat any

$_ZTVN5boost6system6detail22generic_error_categoryE = comdat any

$_ZTIN5boost6system6detail22generic_error_categoryE = comdat any

$_ZTSN5boost6system6detail22generic_error_categoryE = comdat any

$_ZTVN5boost6system6detail21system_error_categoryE = comdat any

$_ZTIN5boost6system6detail21system_error_categoryE = comdat any

$_ZTSN5boost6system6detail21system_error_categoryE = comdat any

$_ZN5boost6system6detail17system_cat_holderIvE8instanceE = comdat any

$_ZZNK5boost6system14error_category11init_stdcatEvE3mx_ = comdat any

$_ZTVN5boost6system6detail12std_categoryE = comdat any

$_ZTIN5boost6system6detail12std_categoryE = comdat any

$_ZTSN5boost6system6detail12std_categoryE = comdat any

$_ZN5boost6system6detail18generic_cat_holderIvE8instanceE = comdat any

@.str = private unnamed_addr constant [28 x i8] c"boost::filesystem::is_empty\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"boost::filesystem::directory_iterator::construct\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTIN5boost10filesystem16filesystem_errorE = external constant ptr
@.str.2 = private unnamed_addr constant [50 x i8] c"boost::filesystem::directory_iterator::operator++\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"boost::filesystem::recursive_directory_iterator::pop\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"filesystem::recursive_directory_iterator increment error\00", align 1
@_ZTIN5boost6system14error_categoryE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost6system14error_categoryE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5boost6system14error_categoryE = linkonce_odr constant [32 x i8] c"N5boost6system14error_categoryE\00", comdat, align 1
@_ZTVN5boost6system6detail22generic_error_categoryE = linkonce_odr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN5boost6system6detail22generic_error_categoryE, ptr @_ZNK5boost6system6detail22generic_error_category4nameEv, ptr @_ZNK5boost6system14error_category23default_error_conditionEi, ptr @_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE, ptr @_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi, ptr @_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei, ptr @_ZNK5boost6system6detail22generic_error_category7messageEiPcm, ptr @_ZNK5boost6system14error_category6failedEi] }, comdat, align 8
@_ZTIN5boost6system6detail22generic_error_categoryE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost6system6detail22generic_error_categoryE, ptr @_ZTIN5boost6system14error_categoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost6system6detail22generic_error_categoryE = linkonce_odr constant [47 x i8] c"N5boost6system6detail22generic_error_categoryE\00", comdat, align 1
@_ZTVN5boost6system6detail21system_error_categoryE = linkonce_odr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN5boost6system6detail21system_error_categoryE, ptr @_ZNK5boost6system6detail21system_error_category4nameEv, ptr @_ZNK5boost6system6detail21system_error_category23default_error_conditionEi, ptr @_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE, ptr @_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi, ptr @_ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei, ptr @_ZNK5boost6system6detail21system_error_category7messageEiPcm, ptr @_ZNK5boost6system14error_category6failedEi] }, comdat, align 8
@_ZTIN5boost6system6detail21system_error_categoryE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost6system6detail21system_error_categoryE, ptr @_ZTIN5boost6system14error_categoryE }, comdat, align 8
@_ZTSN5boost6system6detail21system_error_categoryE = linkonce_odr constant [46 x i8] c"N5boost6system6detail21system_error_categoryE\00", comdat, align 1
@_ZN5boost6system6detail17system_cat_holderIvE8instanceE = linkonce_odr global { ptr, i64, { [32 x i8] }, { i32 } } { ptr getelementptr inbounds inrange(-16, 56) ({ [9 x ptr] }, ptr @_ZTVN5boost6system6detail21system_error_categoryE, i32 0, i32 0, i32 2), i64 -5572340897628102703, { [32 x i8] } zeroinitializer, { i32 } zeroinitializer }, comdat, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZZNK5boost6system14error_category11init_stdcatEvE3mx_ = linkonce_odr global { %union.pthread_mutex_t } zeroinitializer, comdat, align 8
@_ZTVN5boost6system6detail12std_categoryE = linkonce_odr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN5boost6system6detail12std_categoryE, ptr @_ZNSt3_V214error_categoryD2Ev, ptr @_ZN5boost6system6detail12std_categoryD0Ev, ptr @_ZNK5boost6system6detail12std_category4nameEv, ptr @_ZNKSt3_V214error_category10_M_messageB5cxx11Ei, ptr @_ZNK5boost6system6detail12std_category7messageB5cxx11Ei, ptr @_ZNK5boost6system6detail12std_category23default_error_conditionEi, ptr @_ZNK5boost6system6detail12std_category10equivalentEiRKSt15error_condition, ptr @_ZNK5boost6system6detail12std_category10equivalentERKSt10error_codei] }, comdat, align 8
@_ZTIN5boost6system6detail12std_categoryE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost6system6detail12std_categoryE, ptr @_ZTINSt3_V214error_categoryE }, comdat, align 8
@_ZTSN5boost6system6detail12std_categoryE = linkonce_odr constant [37 x i8] c"N5boost6system6detail12std_categoryE\00", comdat, align 1
@_ZTINSt3_V214error_categoryE = external constant ptr
@_ZN5boost6system6detail18generic_cat_holderIvE8instanceE = linkonce_odr global { ptr, i64, { [32 x i8] }, { i32 } } { ptr getelementptr inbounds inrange(-16, 56) ({ [9 x ptr] }, ptr @_ZTVN5boost6system6detail22generic_error_categoryE, i32 0, i32 0, i32 2), i64 -5572340897628102704, { [32 x i8] } zeroinitializer, { i32 } zeroinitializer }, comdat, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN5boost10filesystem6detail11dir_itr_impD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5boost10filesystem6detail11dir_itr_impD2Ev

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !91
  %i.c = call ptr @strerror_r(i32 noundef %2, ptr noundef nonnull %i.b, i64 noundef 128) #29, !noalias !91 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !18, !alias.scope !91
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !91
  store i64 %i.f, ptr %i.a, align 8, !tbaa !20, !noalias !91
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !22, !alias.scope !91
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !91
  store i64 %i.i, ptr %i.d, align 8, !tbaa !23, !alias.scope !91
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !23
  store i8 %i.k, ptr %i.j, align 1, !tbaa !23
  br label %_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei.exit

_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !91 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !24, !alias.scope !91
  %i.n = load ptr, ptr %0, align 8, !tbaa !22, !alias.scope !91
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !91
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, ptr } @_ZNK5boost6system6detail21system_error_category23default_error_conditionEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr null, 1
  ret { i32, ptr } %.fca.1.insert
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, ptr } @_ZNK5boost6system14error_category23default_error_conditionEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5boost10filesystem15directory_entry12refresh_implEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(48) initializes((32, 48)) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.boost::filesystem::file_status", align 4 ; 5 uses
  %3 = alloca %"class.boost::filesystem::file_status", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <4 x i32> <i32 0, i32 65535, i32 0, i32 65535>, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN5boost10filesystem6detail14symlink_statusERKNS0_4pathEPNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::file_status") align 4 %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  %i.d = load i32, ptr %2, align 4, !tbaa !28     ; 3 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29   ; 2 uses
  store i32 %i.f, ptr %i.c, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.g = icmp eq i32 %i.d, 4
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN5boost10filesystem6detail6statusERKNS0_4pathEPNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::file_status") align 4 %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  %i.h = load i32, ptr %3, align 4, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink6 = phi i32 [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.sink = phi i32 [ %i.j, %bb.b ], [ %i.f, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sink6, ptr %i.a, align 8, !tbaa !28
  store i32 %.sink, ptr %i.k, align 4, !tbaa !29
  ret void
}

declare void @_ZN5boost10filesystem6detail14symlink_statusERKNS0_4pathEPNS_6system10error_codeE(ptr dead_on_unwind writable sret(%"class.boost::filesystem::file_status") align 4, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

declare void @_ZN5boost10filesystem6detail6statusERKNS0_4pathEPNS_6system10error_codeE(ptr dead_on_unwind writable sret(%"class.boost::filesystem::file_status") align 4, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost10filesystem6detail14open_directoryERKNS0_4pathENS0_17directory_optionsERNS_6system10error_codeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::scope::unique_resource") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = and i32 %2, 16
  %.not = icmp eq i32 %i.a, 0
  %spec.select = select i1 %.not, i32 591872, i32 722944
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !22
  %i.c = tail call i32 (ptr, i32, ...) @open64(ptr noundef %i.b, i32 noundef %spec.select) ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.loopexit, !prof !30

bb.b:                                             ; preds = %.critedge
  %i.e = tail call ptr @__errno_location() #32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31   ; 4 uses
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %.critedge, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !37
  %i.i = and i64 %i.h, -2
  %switch.i.i = icmp eq i64 %i.i, -5572340897628102704
  br i1 %switch.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ne i32 %i.f, 0
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.f) #29, !inline_history !1
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i1 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = select i1 %.0.i.i, i64 3, i64 2
  store i32 %i.f, ptr %3, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !23
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.510.0..sroa_idx, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.o, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  %storemerge = phi i32 [ -1, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit ], [ %i.c, %.critedge ]
  store i32 %storemerge, ptr %0, align 4, !tbaa !41
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost10filesystem6detail16openat_directoryEiRKNS0_4pathENS0_17directory_optionsERNS_6system10error_codeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::scope::unique_resource") align 4 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = and i32 %3, 16
  %.not = icmp eq i32 %i.a, 0
  %spec.select = select i1 %.not, i32 591872, i32 722944
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !22
  %i.c = tail call i32 (i32, ptr, i32, ...) @openat64(i32 noundef %1, ptr noundef %i.b, i32 noundef %spec.select) ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.loopexit, !prof !30

bb.b:                                             ; preds = %.critedge
  %i.e = tail call ptr @__errno_location() #32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31   ; 4 uses
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %.critedge, label %bb.c, !llvm.loop !2

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !37
  %i.i = and i64 %i.h, -2
  %switch.i.i = icmp eq i64 %i.i, -5572340897628102704
  br i1 %switch.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ne i32 %i.f, 0
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.f) #29, !inline_history !1
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i1 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = select i1 %.0.i.i, i64 3, i64 2
  store i32 %i.f, ptr %4, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !23
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.511.0..sroa_idx, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.o, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  %storemerge = phi i32 [ -1, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit ], [ %i.c, %.critedge ]
  store i32 %storemerge, ptr %0, align 4, !tbaa !41
  ret void
}

declare i32 @openat64(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_ZN5boost10filesystem6detail11dir_itr_impnwEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %i.a = add i64 %0, 15
  %i.b = and i64 %i.a, -16
  %.0 = select i1 %.not, i64 %0, i64 %i.b
  %i.c = add i64 %.0, %1
  %calloc = tail call ptr @calloc(i64 1, i64 %i.c)
  ret ptr %calloc
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN5boost10filesystem6detail11dir_itr_impdlEPvm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  tail call void @free(ptr noundef %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN5boost10filesystem6detail11dir_itr_impdlEPv(ptr noundef captures(none) %0) local_unnamed_addr #11 align 2 {
bb.a:
  tail call void @free(ptr noundef %0) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN5boost10filesystem6detail18is_empty_directoryEONS_5scope15unique_resourceIiNS2_10fd_deleterENS2_18fd_resource_traitsEEERKNS0_4pathEPNS_6system10error_codeE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %_ZNSt10unique_ptrI11__dirstreamZN5boost10filesystem6detail18is_empty_directoryEONS1_5scope15unique_resourceIiNS4_10fd_deleterENS4_18fd_resource_traitsEEERKNS2_4pathEPNS1_6system10error_codeEE16closedir_deleterE5resetEPS0_.exit

_ZNSt10unique_ptrI11__dirstreamZN5boost10filesystem6detail18is_empty_directoryEONS1_5scope15unique_resourceIiNS4_10fd_deleterENS4_18fd_resource_traitsEEERKNS2_4pathEPNS1_6system10error_codeEE16closedir_deleterE5resetEPS0_.exit: ; preds = %bb.b, %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !31
  %i.b = tail call noalias ptr @fdopendir(i32 noundef %i.a) ; 6 uses
  %.not45 = icmp eq ptr %i.b, null
  br i1 %.not45, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %_ZNSt10unique_ptrI11__dirstreamZN5boost10filesystem6detail18is_empty_directoryEONS1_5scope15unique_resourceIiNS4_10fd_deleterENS4_18fd_resource_traitsEEERKNS2_4pathEPNS1_6system10error_codeEE16closedir_deleterE5resetEPS0_.exit
end_hunk_0
begin_hunk_1_@_ZN5boost10filesystem6detail18is_empty_directoryEONS_5scope15unique_resourceIiNS2_10fd_deleterENS2_18fd_resource_traitsEEERKNS0_4pathEPNS_6system10error_codeE:bb.a
  %i.g = invoke ptr @readdir64(ptr noundef nonnull %i.b)
          to label %bb.e unwind label %.thread    ; 4 uses

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.g, null                  ; 5 uses
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.f, align 4, !tbaa !31   ; 2 uses
  switch i32 %i.h, label %.thread41 [
    i32 4, label %.backedge
    i32 0, label %.thread37
  ]

.thread:                                          ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %.thread41
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI11__dirstreamZN5boost10filesystem6detail18is_empty_directoryEONS1_5scope15unique_resourceIiNS4_10fd_deleterENS4_18fd_resource_traitsEEERKNS2_4pathEPNS1_6system10error_codeEE16closedir_deleterED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %lpad.phi60 = phi { ptr, i32 } [ %lpad.loopexit, %.thread ], [ %lpad.loopexit.split-lp, %bb.g ]
  %i.i = tail call i32 @closedir(ptr noundef nonnull %i.b) ; 0 uses
  br label %_ZNSt10unique_ptrI11__dirstreamZN5boost10filesystem6detail18is_empty_directoryEONS1_5scope15unique_resourceIiNS4_10fd_deleterENS4_18fd_resource_traitsEEERKNS2_4pathEPNS1_6system10error_codeEE16closedir_deleterED2Ev.exit

_ZNSt10unique_ptrI11__dirstreamZN5boost10filesystem6detail18is_empty_directoryEONS1_5scope15unique_resourceIiNS4_10fd_deleterENS4_18fd_resource_traitsEEERKNS2_4pathEPNS1_6system10error_codeEE16closedir_deleterED2Ev.exit: ; preds = %bb.g, %bb.h
  %lpad.phi61 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %bb.g ], [ %lpad.phi60, %bb.h ]
  resume { ptr, i32 } %lpad.phi61

bb.i:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %i.l = icmp eq i8 %i.k, 46
  br i1 %i.l, label %bb.j, label %.thread37

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.n = load i8, ptr %i.m, align 1, !tbaa !23
  switch i8 %i.n, label %.thread37 [
    i8 0, label %.backedge
    i8 46, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 21
  %i.p = load i8, ptr %i.o, align 1, !tbaa !23
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.backedge, label %.thread37

.backedge:                                        ; preds = %bb.k, %bb.j, %bb.f
  br label %bb.d

.thread37:                                        ; preds = %bb.f, %bb.i, %bb.k, %bb.j, %.thread41
  %.221 = phi i1 [ false, %.thread41 ], [ %.not, %bb.j ], [ %.not, %bb.k ], [ %.not, %bb.i ], [ %.not, %bb.f ]
  %.not.i31 = icmp eq ptr %i.b, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrI11__dirstreamZN5boost10filesystem6detail18is_empty_directoryEONS1_5scope15unique_resourceIiNS4_10fd_deleterENS4_18fd_resource_traitsEEERKNS2_4pathEPNS1_6system10error_codeEE16closedir_deleterED2Ev.exit32, label %bb.l

bb.l:                                             ; preds = %.thread37
  %i.r = tail call i32 @closedir(ptr noundef nonnull %i.b) ; 0 uses
  br label %_ZNSt10unique_ptrI11__dirstreamZN5boost10filesystem6detail18is_empty_directoryEONS1_5scope15unique_resourceIiNS4_10fd_deleterENS4_18fd_resource_traitsEEERKNS2_4pathEPNS1_6system10error_codeEE16closedir_deleterED2Ev.exit32

_ZNSt10unique_ptrI11__dirstreamZN5boost10filesystem6detail18is_empty_directoryEONS1_5scope15unique_resourceIiNS4_10fd_deleterENS4_18fd_resource_traitsEEERKNS2_4pathEPNS1_6system10error_codeEE16closedir_deleterED2Ev.exit32: ; preds = %.thread37, %bb.l
  ret i1 %.221
}

declare noalias ptr @fdopendir(i32 noundef) local_unnamed_addr #6

declare void @_ZN5boost10filesystem10emit_errorEiRKNS0_4pathEPNS_6system10error_codeEPKc(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @readdir64(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost10filesystem6detail11dir_itr_impD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49, !noalias !95 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !49, !noalias !95
  %i.c = tail call i32 @closedir(ptr noundef nonnull %i.b), !noalias !95
  %.not6.not.i = icmp eq i32 %i.c, 0
  br i1 %.not6.not.i, label %_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE.exit, label %bb.c, !prof !50

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !37, !noalias !95
  %i.e = and i64 %i.d, -2
  %switch.i.i.i = icmp eq i64 %i.e, -5572340897628102704
  br i1 %switch.i.i.i, label %_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__errno_location() #32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31, !noalias !95
  %i.h = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !39, !noalias !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !noalias !95
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.g) #29, !noalias !95, !inline_history !3 ; 0 uses
  br label %_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE.exit

_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE.exit: ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN5boost10filesystem15directory_entryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !23
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #33
  br label %_ZN5boost10filesystem15directory_entryD2Ev.exit

_ZN5boost10filesystem15directory_entryD2Ev.exit:  ; preds = %_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost10filesystem6detail28directory_iterator_constructERNS0_18directory_iteratorERKNS0_4pathENS0_17directory_optionsEPNS1_25directory_iterator_paramsEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.boost::scope::unique_resource", align 4 ; 10 uses
  %6 = alloca %"class.boost::filesystem::path", align 8 ; 12 uses
  %7 = alloca %"class.boost::filesystem::file_status", align 8 ; 7 uses
  %8 = alloca %"class.boost::filesystem::file_status", align 8 ; 7 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 22 uses
  %10 = alloca %"class.boost::system::error_condition", align 8 ; 6 uses
  %11 = alloca %"class.boost::filesystem::path", align 8 ; 17 uses
  %12 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost10filesystem10emit_errorEiRKNS0_4pathEPNS_6system10error_codeEPKc(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %4, ptr noundef nonnull @.str.1)
  br label %_ZN5boost13intrusive_ptrINS_10filesystem6detail11dir_itr_impEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null                    ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !24
  store i8 0, ptr %i.e, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i32 0, ptr %7, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 65535, ptr %i.g, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 0, ptr %8, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 65535, ptr %i.h, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %calloc.i.i = call noalias noundef dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64), !noalias !109 ; 14 uses
  %i.i = icmp eq ptr %calloc.i.i, null
  br i1 %i.i, label %bb.f, label %bb.g, !prof !110

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  store i64 12, ptr %9, align 8, !alias.scope !112
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !37, !noalias !112
  %i.k = and i64 %i.j, -2
  %switch.i.i.i.i = icmp eq i64 %i.k, -5572340897628102704
  br i1 %switch.i.i.i.i, label %.thread.i, label %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit.i

_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit.i: ; preds = %bb.f
  %i.l = load ptr, ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, align 8, !tbaa !39, !noalias !112
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !noalias !112
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, i32 noundef 12) #29, !noalias !112, !inline_history !100
  %spec.select.i = select i1 %i.o, i64 3, i64 2
  br label %.thread.i

.thread.i:                                        ; preds = %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit.i, %bb.f
  %i.p = phi i64 [ %spec.select.i, %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit.i ], [ 3, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !52, !alias.scope !112
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, ptr %i.r, align 8, !tbaa !23, !alias.scope !112
  br label %_ZN5boost10filesystem6detail12_GLOBAL__N_114dir_itr_createERNS_13intrusive_ptrINS1_11dir_itr_impEEERKNS0_4pathENS0_17directory_optionsEPNS1_25directory_iterator_paramsERS7_RNS0_11file_statusESF_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 24
  store ptr %i.t, ptr %i.s, align 8, !tbaa !18, !noalias !109
  %i.u = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 44
  store i32 65535, ptr %i.u, align 4, !tbaa !29, !noalias !109
  %i.v = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 52
  store i32 65535, ptr %i.v, align 4, !tbaa !29, !noalias !109
  %i.w = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 56
  %i.x = atomicrmw add ptr %calloc.i.i, i32 1 acq_rel, align 4, !noalias !109 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29, !noalias !109
  store i32 -1, ptr %5, align 4, !tbaa !41, !noalias !109
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %3, align 4, !tbaa !31, !noalias !109 ; 3 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEEaSILb1EEENSt9enable_ifIXT_ERS4_E4typeEOS4_.exit.i, label %bb.i

_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEEaSILb1EEENSt9enable_ifIXT_ERS4_E4typeEOS4_.exit.i: ; preds = %bb.h
  store i32 %i.y, ptr %5, align 4, !tbaa !31, !noalias !109
  store i32 -1, ptr %3, align 4, !tbaa !31, !noalias !109
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread10.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = and i32 %2, 16
  %.not.i.i = icmp eq i32 %i.aa, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 591872, i32 722944
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !109
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.j, %bb.i
  %i.ab = load ptr, ptr %1, align 8, !tbaa !22, !noalias !113
  %i.ac = invoke i32 (ptr, i32, ...) @open64(ptr noundef %i.ab, i32 noundef %spec.select.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !113 ; 3 uses

.noexc.i:                                         ; preds = %.critedge.i.i
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit.thread.i, !prof !30

_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit.thread.i: ; preds = %.noexc.i
  store i32 %i.ac, ptr %5, align 4, !tbaa !31, !noalias !109
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread10.i

bb.j:                                             ; preds = %.noexc.i
  %i.ae = tail call ptr @__errno_location() #32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31, !noalias !113 ; 4 uses
  %i.ag = icmp eq i32 %i.af, 4
  br i1 %i.ag, label %.critedge.i.i, label %bb.k, !llvm.loop !0

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !37, !noalias !113
  %i.ai = and i64 %i.ah, -2
  %switch.i.i.i19.i = icmp eq i64 %i.ai, -5572340897628102704
  br i1 %switch.i.i.i19.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = icmp ne i32 %i.af, 0
  br label %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !39, !noalias !113
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !noalias !113
  %i.an = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.af) #29, !noalias !113, !inline_history !103
  br label %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit.i

_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i20.i = phi i1 [ %i.aj, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = select i1 %.0.i.i.i20.i, i64 3, i64 2   ; 2 uses
  store i32 %i.af, ptr %9, align 8, !tbaa !23, !alias.scope !109, !noalias !114
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !23, !alias.scope !109, !noalias !114
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !tbaa !23, !alias.scope !109, !noalias !114
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !20, !alias.scope !109, !noalias !114
  %i.ap = and i64 %i.ao, 1
  %i.aq = icmp eq i64 %i.ap, 0
  store i32 -1, ptr %5, align 4, !tbaa !31, !noalias !109
  br i1 %i.aq, label %_ZNK5boost6system10error_codecvbEv.exit.thread10.i, label %.thread36.i

_ZNK5boost6system10error_codecvbEv.exit.thread10.i: ; preds = %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit.i, %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit.thread.i, %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEEaSILb1EEENSt9enable_ifIXT_ERS4_E4typeEOS4_.exit.i
  %i.ar = phi i32 [ %i.y, %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEEaSILb1EEENSt9enable_ifIXT_ERS4_E4typeEOS4_.exit.i ], [ -1, %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit.i ], [ %i.ac, %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit.thread.i ] ; 3 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.o, %_ZNK5boost6system10error_codecvbEv.exit.thread10.i
  %i.as = invoke noalias ptr @fdopendir(i32 noundef %i.ar)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !109 ; 2 uses

bb.n:                                             ; preds = %.critedge.i
  store ptr %i.as, ptr %i.w, align 8, !tbaa !49, !noalias !109
  %.not17.i = icmp eq ptr %i.as, null
  br i1 %.not17.i, label %bb.o, label %bb.s, !prof !30

bb.o:                                             ; preds = %bb.n
  %i.at = tail call ptr @__errno_location() #32
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31, !noalias !109 ; 4 uses
  %i.av = icmp eq i32 %i.au, 4
  br i1 %i.av, label %.critedge.i, label %bb.p, !llvm.loop !104

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i, %.critedge.i.i, %bb.s
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 2 uses
  call void @_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #29, !noalias !109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !109
  %i.aw = atomicrmw add ptr %calloc.i.i, i32 -1 acq_rel, align 4, !noalias !109
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.v, label %.body

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr %9, align 8, !alias.scope !109
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !37, !noalias !109
  %i.az = and i64 %i.ay, -2
  %switch.i.i.i = icmp eq i64 %i.az, -5572340897628102704
  br i1 %switch.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp ne i32 %i.au, 0
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread.i

bb.r:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !39, !noalias !109
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !109
  %i.be = call noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.au) #29, !noalias !109, !inline_history !105
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread.i

bb.s:                                             ; preds = %bb.n
  store i32 -1, ptr %5, align 4, !tbaa !31, !noalias !109
  %i.bf = load i64, ptr %i.f, align 8, !tbaa !24, !noalias !109
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %i.bf, ptr noundef nonnull align 1 dereferenceable(2) @.str.6, i64 noundef 1)
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !109 ; 0 uses

.thread:                                          ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !109
  br label %_ZN5boost10filesystem6detail12_GLOBAL__N_114dir_itr_createERNS_13intrusive_ptrINS1_11dir_itr_impEEERKNS0_4pathENS0_17directory_optionsEPNS1_25directory_iterator_paramsERS7_RNS0_11file_statusESF_.exit

_ZNK5boost6system10error_codecvbEv.exit.thread.i: ; preds = %bb.r, %bb.q
  %.0.i.i23.i = phi i1 [ %i.ba, %bb.q ], [ %i.be, %bb.r ]
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bi = select i1 %.0.i.i23.i, i64 3, i64 2
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !52, !alias.scope !109
  store i32 %i.au, ptr %9, align 8, !tbaa !23, !alias.scope !109
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.bj, align 8, !tbaa !23, !alias.scope !109
  %i.bk = icmp sgt i32 %i.ar, -1
  br i1 %i.bk, label %bb.t, label %.thread36.i, !prof !115

bb.t:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i
  %i.bl = invoke i32 @close(i32 noundef %i.ar)
          to label %.thread36.i unwind label %bb.u, !noalias !109 ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #31, !noalias !109
  unreachable

bb.v:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN5boost10filesystem6detail11dir_itr_impD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %calloc.i.i) #29, !noalias !109
  call void @free(ptr noundef nonnull %calloc.i.i) #29, !noalias !109
  br label %.body

.thread36.i:                                      ; preds = %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit.i, %_ZNK5boost6system10error_codecvbEv.exit.thread.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !109
  %i.bo = atomicrmw add ptr %calloc.i.i, i32 -1 acq_rel, align 4, !noalias !109
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.w, label %_ZN5boost10filesystem6detail12_GLOBAL__N_114dir_itr_createERNS_13intrusive_ptrINS1_11dir_itr_impEEERKNS0_4pathENS0_17directory_optionsEPNS1_25directory_iterator_paramsERS7_RNS0_11file_statusESF_.exit

bb.w:                                             ; preds = %.thread36.i
  call void @_ZN5boost10filesystem6detail11dir_itr_impD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %calloc.i.i) #29, !noalias !109
  call void @free(ptr noundef nonnull %calloc.i.i) #29, !noalias !109
  br label %_ZN5boost10filesystem6detail12_GLOBAL__N_114dir_itr_createERNS_13intrusive_ptrINS1_11dir_itr_impEEERKNS0_4pathENS0_17directory_optionsEPNS1_25directory_iterator_paramsERS7_RNS0_11file_statusESF_.exit

_ZN5boost10filesystem6detail12_GLOBAL__N_114dir_itr_createERNS_13intrusive_ptrINS1_11dir_itr_impEEERKNS0_4pathENS0_17directory_optionsEPNS1_25directory_iterator_paramsERS7_RNS0_11file_statusESF_.exit: ; preds = %.thread, %.thread.i, %.thread36.i, %bb.w
  %.sroa.060.5 = phi ptr [ null, %.thread.i ], [ null, %bb.w ], [ null, %.thread36.i ], [ %calloc.i.i, %.thread ] ; 16 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.060.5, i64 56
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost10filesystem6detail12_GLOBAL__N_114dir_itr_createERNS_13intrusive_ptrINS1_11dir_itr_impEEERKNS0_4pathENS0_17directory_optionsEPNS1_25directory_iterator_paramsERS7_RNS0_11file_statusESF_.exit, %.critedge40
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !52 ; 2 uses
  %i.bt = and i64 %i.bs, 1
  %.not.i.i41 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i41, label %_ZNK5boost6system10error_codecvbEv.exit.thread71, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = icmp ne i64 %i.bs, 1
  %i.bv = load i32, ptr %9, align 8
  %i.bw = icmp ne i32 %i.bv, 0
  %or.cond = select i1 %i.bu, i1 true, i1 %i.bw
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread71

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store i32 13, ptr %10, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, ptr %i.bx, align 8
  %i.by = call noundef zeroext i1 @_ZN5boost6systemeqERKNS0_10error_codeERKNS0_15error_conditionE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(16) %10) #29
  br i1 %i.by, label %bb.z, label %.critedge

bb.z:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.bz = and i32 %2, 1
end_hunk_1
