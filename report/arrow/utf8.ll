inline.NumInlined: 486
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0
%"class.std::allocator.11" = type { i8 }
%"class.arrow::Result.2" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.5" }
%"class.arrow::internal::AlignedStorage.5" = type { [32 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.arrow::Result.6" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.9" }
%"class.arrow::internal::AlignedStorage.9" = type { [32 x i8] }
%"class.arrow::Result.16" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.19" }
%"class.arrow::internal::AlignedStorage.19" = type { [32 x i8] }
%"class.std::__cxx11::basic_string.20" = type { %"struct.std::__cxx11::basic_string<char16_t>::_Alloc_hider", i64, %union.anon.24 }
%"struct.std::__cxx11::basic_string<char16_t>::_Alloc_hider" = type { ptr }
%union.anon.24 = type { i64, [8 x i8] }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr", ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.32" }
%"struct.std::_Head_base.32" = type { ptr }

$_ZN5arrow6ResultIPKhEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6Status7InvalidIJPKcEEES0_DpOT_ = comdat any

$_ZN5arrow6ResultINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEC2ERKNS_6StatusE = comdat any

$__clang_call_terminate = comdat any

$_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6ResultINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN4utf84nextIPKcEEjRT_S3_ = comdat any

$_ZN4utf88internal13validate_nextIPKcEENS0_9utf_errorERT_S5_Rj = comdat any

$_ZN4utf815not_enough_roomD0Ev = comdat any

$_ZNK4utf815not_enough_room4whatEv = comdat any

$_ZN4utf812invalid_utf8D0Ev = comdat any

$_ZNK4utf812invalid_utf84whatEv = comdat any

$_ZN4utf818invalid_code_pointD0Ev = comdat any

$_ZNK4utf818invalid_code_point4whatEv = comdat any

$_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm = comdat any

$_ZN4utf86appendISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_jS9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN4utf88utf16to8IPKDsSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET0_T_SC_SB_ = comdat any

$_ZN4utf813invalid_utf16D0Ev = comdat any

$_ZNK4utf813invalid_utf164whatEv = comdat any

$_ZN4utf88utf8to16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEPKcEET_T0_SC_SB_ = comdat any

$_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv = comdat any

$_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZN5arrow8internal12JoinToStringIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZTIN4utf815not_enough_roomE = comdat any

$_ZTSN4utf815not_enough_roomE = comdat any

$_ZTIN4utf89exceptionE = comdat any

$_ZTSN4utf89exceptionE = comdat any

$_ZTIN4utf812invalid_utf8E = comdat any

$_ZTSN4utf812invalid_utf8E = comdat any

$_ZTIN4utf818invalid_code_pointE = comdat any

$_ZTSN4utf818invalid_code_pointE = comdat any

$_ZTVN4utf815not_enough_roomE = comdat any

$_ZTVN4utf812invalid_utf8E = comdat any

$_ZTVN4utf818invalid_code_pointE = comdat any

$_ZTIN4utf813invalid_utf16E = comdat any

$_ZTSN4utf813invalid_utf16E = comdat any

$_ZTVN4utf813invalid_utf16E = comdat any

@_ZN5arrow4util8internal16utf8_small_tableE = local_unnamed_addr constant [364 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08\00\0C\18$<`T\0C\0C\0C0H\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\00\0C\0C\0C\0C\0C\00\0C\00\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C", align 16
@_ZN5arrow4util8internal16utf8_large_tableE = local_unnamed_addr global <{ i16, [2303 x i16] }> <{ i16 -1, [2303 x i16] zeroinitializer }>, align 16
@_ZN5arrow4util8internal20utf8_byte_size_tableE = local_unnamed_addr constant [16 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\02\02\03\04", align 16
@_ZN5arrow4utilL16utf8_initializedE = internal global %"struct.std::once_flag" zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"UTF8 string too short (truncated byte order mark?)\00", align 1
@_ZTISt9exception = external constant ptr
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTIN4utf815not_enough_roomE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf815not_enough_roomE, ptr @_ZTIN4utf89exceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4utf815not_enough_roomE = linkonce_odr constant [25 x i8] c"N4utf815not_enough_roomE\00", comdat, align 1
@_ZTIN4utf89exceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf89exceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN4utf89exceptionE = linkonce_odr constant [18 x i8] c"N4utf89exceptionE\00", comdat, align 1
@_ZTIN4utf812invalid_utf8E = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf812invalid_utf8E, ptr @_ZTIN4utf89exceptionE }, comdat, align 8
@_ZTSN4utf812invalid_utf8E = linkonce_odr constant [22 x i8] c"N4utf812invalid_utf8E\00", comdat, align 1
@_ZTIN4utf818invalid_code_pointE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf818invalid_code_pointE, ptr @_ZTIN4utf89exceptionE }, comdat, align 8
@_ZTSN4utf818invalid_code_pointE = linkonce_odr constant [28 x i8] c"N4utf818invalid_code_pointE\00", comdat, align 1
@_ZTVN4utf815not_enough_roomE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4utf815not_enough_roomE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN4utf815not_enough_roomD0Ev, ptr @_ZNK4utf815not_enough_room4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Not enough space\00", align 1
@_ZTVN4utf812invalid_utf8E = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4utf812invalid_utf8E, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN4utf812invalid_utf8D0Ev, ptr @_ZNK4utf812invalid_utf84whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Invalid UTF-8\00", align 1
@_ZTVN4utf818invalid_code_pointE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4utf818invalid_code_pointE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN4utf818invalid_code_pointD0Ev, ptr @_ZNK4utf818invalid_code_point4whatEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Invalid code point\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTIN4utf813invalid_utf16E = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4utf813invalid_utf16E, ptr @_ZTIN4utf89exceptionE }, comdat, align 8
@_ZTSN4utf813invalid_utf16E = linkonce_odr constant [23 x i8] c"N4utf813invalid_utf16E\00", comdat, align 1
@_ZTVN4utf813invalid_utf16E = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4utf813invalid_utf16E, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN4utf813invalid_utf16D0Ev, ptr @_ZNK4utf813invalid_utf164whatEv] }, comdat, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"Invalid UTF-16\00", align 1
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow4util8internal20CheckUTF8InitializedEv() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util14InitializeUTF8Ev() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.anon, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store ptr @_ZN5arrow4util8internalL20InitializeLargeTableEv, ptr %0, align 8, !tbaa !7
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !7
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !7
  %i.c = invoke noundef i32 @pthread_once(ptr noundef nonnull @_ZN5arrow4utilL16utf8_initializedE, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i:                ; preds = %bb.a
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8, !tbaa !7
  store ptr null, ptr %i.b, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %i.d

_ZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !7
  store ptr null, ptr %i.b, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN5arrow4util8internalL20InitializeLargeTableEv() #3 {
.preheader:
  br label %bb.b

.preheader.1:                                     ; preds = %bb.b, %.preheader.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %.preheader.1 ], [ 0, %bb.b ] ; 4 uses
  %0 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.1
  %1 = load i8, ptr %0, align 2, !tbaa !9
  %2 = zext i8 %1 to i64
  %3 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %2
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 268
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %6 = udiv i8 %5, 12
  %7 = zext nneg i8 %6 to i16
  %8 = shl nuw nsw i16 %7, 8
  %9 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.1
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 512
  store i16 %8, ptr %10, align 4, !tbaa !10
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !9
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = udiv i8 %i.f, 12
  %i.h = zext nneg i8 %i.g to i16
  %i.i = shl nuw nsw i16 %i.h, 8
  %i.j = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  store i16 %i.i, ptr %i.k, align 2, !tbaa !10
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, 256
  br i1 %exitcond.1.not.1, label %.preheader.2, label %.preheader.1, !llvm.loop !12

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %.preheader.2 ], [ 0, %.preheader.1 ] ; 4 uses
  %11 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.2
  %12 = load i8, ptr %11, align 2, !tbaa !9
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 280
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = udiv i8 %16, 12
  %18 = zext nneg i8 %17 to i16
  %19 = shl nuw nsw i16 %18, 8
  %20 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.2
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 1024
  store i16 %19, ptr %21, align 4, !tbaa !10
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %i.r = udiv i8 %i.q, 12
  %i.s = zext nneg i8 %i.r to i16
  %i.t = shl nuw nsw i16 %i.s, 8
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.2
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1024
  store i16 %i.t, ptr %i.v, align 2, !tbaa !10
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %exitcond.2.not.1 = icmp eq i64 %indvars.iv.next.2.1, 256
  br i1 %exitcond.2.not.1, label %.preheader.3, label %.preheader.2, !llvm.loop !12

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.1, %.preheader.3 ], [ 0, %.preheader.2 ] ; 4 uses
  %22 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.3
  %23 = load i8, ptr %22, align 2, !tbaa !9
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %24
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 292
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = udiv i8 %27, 12
  %29 = zext nneg i8 %28 to i16
  %30 = shl nuw nsw i16 %29, 8
  %31 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.3
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 1536
  store i16 %30, ptr %32, align 4, !tbaa !10
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv.3, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 292
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = udiv i8 %i.ab, 12
  %i.ad = zext nneg i8 %i.ac to i16
  %i.ae = shl nuw nsw i16 %i.ad, 8
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1536
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !10
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2 ; 2 uses
  %exitcond.3.not.1 = icmp eq i64 %indvars.iv.next.3.1, 256
  br i1 %exitcond.3.not.1, label %.preheader.4, label %.preheader.3, !llvm.loop !12

.preheader.4:                                     ; preds = %.preheader.3, %.preheader.4
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4.1, %.preheader.4 ], [ 0, %.preheader.3 ] ; 4 uses
  %33 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.4
  %34 = load i8, ptr %33, align 2, !tbaa !9
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 304
  %38 = load i8, ptr %37, align 1, !tbaa !9
  %39 = udiv i8 %38, 12
  %40 = zext nneg i8 %39 to i16
  %41 = shl nuw nsw i16 %40, 8
  %42 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.4
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 2048
  store i16 %41, ptr %43, align 4, !tbaa !10
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv.4, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.4
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 304
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = udiv i8 %i.am, 12
  %i.ao = zext nneg i8 %i.an to i16
  %i.ap = shl nuw nsw i16 %i.ao, 8
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2048
  store i16 %i.ap, ptr %i.ar, align 2, !tbaa !10
  %indvars.iv.next.4.1 = add nuw nsw i64 %indvars.iv.4, 2 ; 2 uses
  %exitcond.4.not.1 = icmp eq i64 %indvars.iv.next.4.1, 256
  br i1 %exitcond.4.not.1, label %.preheader.5, label %.preheader.4, !llvm.loop !12

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %indvars.iv.5 = phi i64 [ %indvars.iv.next.5.1, %.preheader.5 ], [ 0, %.preheader.4 ] ; 4 uses
  %44 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.5
  %45 = load i8, ptr %44, align 2, !tbaa !9
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 316
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = udiv i8 %49, 12
  %51 = zext nneg i8 %50 to i16
  %52 = shl nuw nsw i16 %51, 8
  %53 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.5
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 2560
  store i16 %52, ptr %54, align 4, !tbaa !10
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv.5, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.5
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 316
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = udiv i8 %i.ax, 12
  %i.az = zext nneg i8 %i.ay to i16
  %i.ba = shl nuw nsw i16 %i.az, 8
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2560
  store i16 %i.ba, ptr %i.bc, align 2, !tbaa !10
  %indvars.iv.next.5.1 = add nuw nsw i64 %indvars.iv.5, 2 ; 2 uses
  %exitcond.5.not.1 = icmp eq i64 %indvars.iv.next.5.1, 256
  br i1 %exitcond.5.not.1, label %.preheader.6, label %.preheader.5, !llvm.loop !12

.preheader.6:                                     ; preds = %.preheader.5, %.preheader.6
  %indvars.iv.6 = phi i64 [ %indvars.iv.next.6.1, %.preheader.6 ], [ 0, %.preheader.5 ] ; 4 uses
  %55 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.6
  %56 = load i8, ptr %55, align 2, !tbaa !9
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %57
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 328
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = udiv i8 %60, 12
  %62 = zext nneg i8 %61 to i16
  %63 = shl nuw nsw i16 %62, 8
  %64 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.6
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 3072
  store i16 %63, ptr %65, align 4, !tbaa !10
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv.6, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.6
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 328
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = udiv i8 %i.bi, 12
  %i.bk = zext nneg i8 %i.bj to i16
  %i.bl = shl nuw nsw i16 %i.bk, 8
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 3072
  store i16 %i.bl, ptr %i.bn, align 2, !tbaa !10
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2 ; 2 uses
  %exitcond.6.not.1 = icmp eq i64 %indvars.iv.next.6.1, 256
  br i1 %exitcond.6.not.1, label %.preheader.7, label %.preheader.6, !llvm.loop !12

.preheader.7:                                     ; preds = %.preheader.6, %.preheader.7
  %indvars.iv.7 = phi i64 [ %indvars.iv.next.7.1, %.preheader.7 ], [ 0, %.preheader.6 ] ; 4 uses
  %66 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.7
  %67 = load i8, ptr %66, align 2, !tbaa !9
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %68
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 340
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = udiv i8 %71, 12
  %73 = zext nneg i8 %72 to i16
  %74 = shl nuw nsw i16 %73, 8
  %75 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.7
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 3584
  store i16 %74, ptr %76, align 4, !tbaa !10
  %indvars.iv.next.7 = or disjoint i64 %indvars.iv.7, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 340
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bu = udiv i8 %i.bt, 12
  %i.bv = zext nneg i8 %i.bu to i16
  %i.bw = shl nuw nsw i16 %i.bv, 8
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 3584
  store i16 %i.bw, ptr %i.by, align 2, !tbaa !10
  %indvars.iv.next.7.1 = add nuw nsw i64 %indvars.iv.7, 2 ; 2 uses
  %exitcond.7.not.1 = icmp eq i64 %indvars.iv.next.7.1, 256
  br i1 %exitcond.7.not.1, label %.preheader.8, label %.preheader.7, !llvm.loop !12

.preheader.8:                                     ; preds = %.preheader.7, %.preheader.8
  %indvars.iv.8 = phi i64 [ %indvars.iv.next.8.1, %.preheader.8 ], [ 0, %.preheader.7 ] ; 4 uses
  %77 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.8
  %78 = load i8, ptr %77, align 2, !tbaa !9
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 352
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = udiv i8 %82, 12
  %84 = zext nneg i8 %83 to i16
  %85 = shl nuw nsw i16 %84, 8
  %86 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.8
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 4096
  store i16 %85, ptr %87, align 4, !tbaa !10
  %indvars.iv.next.8 = or disjoint i64 %indvars.iv.8, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.8
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 352
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cf = udiv i8 %i.ce, 12
  %i.cg = zext nneg i8 %i.cf to i16
  %i.ch = shl nuw nsw i16 %i.cg, 8
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4096
  store i16 %i.ch, ptr %i.cj, align 2, !tbaa !10
  %indvars.iv.next.8.1 = add nuw nsw i64 %indvars.iv.8, 2 ; 2 uses
  %exitcond.8.not.1 = icmp eq i64 %indvars.iv.next.8.1, 256
  br i1 %exitcond.8.not.1, label %bb.a, label %.preheader.8, !llvm.loop !12

bb.a:                                             ; preds = %.preheader.8
  ret void

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 256
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !9
  %i.cq = udiv i8 %i.cp, 12
  %i.cr = zext nneg i8 %i.cq to i16
  %i.cs = shl nuw nsw i16 %i.cr, 8
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.preheader.1, label %bb.b, !llvm.loop !12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5arrow4util12ValidateUTF8EPKhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN5arrow4utilL18ValidateUTF8InlineEPKhl(ptr noundef %0, i64 noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow4utilL18ValidateUTF8InlineEPKhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i64 %1, 7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %select.unfold
  %.07998 = phi ptr [ %.281, %select.unfold ], [ %0, %bb.a ] ; 6 uses
  %.08297 = phi i64 [ %.284, %select.unfold ], [ %1, %bb.a ] ; 5 uses
  %i.b = load i64, ptr %.07998, align 1           ; 9 uses
  %i.c = and i64 %i.b, -9187201950435737472
  %i.d = icmp eq i64 %i.c, 0
  %i.e = lshr i64 %i.b, 40
  %i.f = lshr i64 %i.b, 48
  %i.g = lshr i64 %i.b, 56
  br i1 %i.d, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nsw i64 %.08297, -8
  %i.i = getelementptr inbounds nuw i8, ptr %.07998, i64 8
  br label %select.unfold, !llvm.loop !15

bb.c:                                             ; preds = %.lr.ph
  %i.j = lshr i64 %i.b, 32
  %i.k = lshr i64 %i.b, 24
  %i.l = lshr i64 %i.b, 16
  %i.m = lshr i64 %i.b, 8
  %i.n = and i64 %i.b, 255
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !10
  %i.q = zext i16 %i.p to i64
  %i.r = and i64 %i.m, 255
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.q
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.r
  %i.u = load i16, ptr %i.t, align 2, !tbaa !10
  %i.v = zext i16 %i.u to i64
  %i.w = and i64 %i.l, 255
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.v
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.w
  %i.z = load i16, ptr %i.y, align 2, !tbaa !10
  %i.aa = zext i16 %i.z to i64
  %i.ab = and i64 %i.k, 255
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.aa
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !10
  %i.af = zext i16 %i.ae to i64
  %i.ag = and i64 %i.j, 255
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.af
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !10 ; 2 uses
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.07998, i64 5
  %i.am = add nsw i64 %.08297, -5
  br label %select.unfold, !llvm.loop !15

bb.e:                                             ; preds = %bb.c
  %i.an = zext i16 %i.aj to i64
  %i.ao = and i64 %i.e, 255
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.an
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !10 ; 2 uses
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.07998, i64 6
  %i.au = add nsw i64 %.08297, -6
  br label %select.unfold, !llvm.loop !15

bb.g:                                             ; preds = %bb.e
  %i.av = zext i16 %i.ar to i64
  %i.aw = and i64 %i.f, 255
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.av
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !10 ; 2 uses
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.07998, i64 7
  %i.bc = add nsw i64 %.08297, -7
  br label %select.unfold, !llvm.loop !15

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.07998, i64 8
  %i.be = zext i16 %i.az to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.be
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.g
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !10
  %i.bi = add nsw i64 %.08297, -8
  %i.bj = icmp eq i16 %i.bh, 0
  br i1 %i.bj, label %select.unfold, label %.thread, !llvm.loop !15

select.unfold:                                    ; preds = %bb.i, %bb.d, %bb.f, %bb.h, %bb.b
  %.284 = phi i64 [ %i.h, %bb.b ], [ %i.am, %bb.d ], [ %i.au, %bb.f ], [ %i.bc, %bb.h ], [ %i.bi, %bb.i ] ; 3 uses
  %.281 = phi ptr [ %i.i, %bb.b ], [ %i.al, %bb.d ], [ %i.at, %bb.f ], [ %i.bb, %bb.h ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bk = icmp sgt i64 %.284, 7
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %select.unfold, %bb.a
  %.082.lcssa = phi i64 [ %1, %bb.a ], [ %.284, %select.unfold ] ; 10 uses
  %.079.lcssa = phi ptr [ %0, %bb.a ], [ %.281, %select.unfold ] ; 9 uses
  %i.bl = icmp sgt i64 %.082.lcssa, 3
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.lcssa, i64 %.082.lcssa
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 1            ; 3 uses
  %i.bp = load i32, ptr %.079.lcssa, align 1      ; 2 uses
  %i.bq = or i32 %i.bp, %i.bo
  %i.br = and i32 %i.bq, -2139062144
  %.not93 = icmp eq i32 %i.br, 0
  %i.bs = zext i32 %i.bp to i64
  %i.bt = lshr i32 %i.bo, 16
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = lshr i32 %i.bo, 24
  %i.bw = trunc nuw i32 %i.bv to i8
  br i1 %.not93, label %.thread, label %bb.o

bb.k:                                             ; preds = %._crit_edge
  %i.bx = icmp sgt i64 %.082.lcssa, 1
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %.079.lcssa, i64 %.082.lcssa
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -2
  %i.ca = load i16, ptr %i.bz, align 1            ; 3 uses
  %i.cb = load i16, ptr %.079.lcssa, align 1      ; 2 uses
  %i.cc = or i16 %i.cb, %i.ca
  %i.cd = and i16 %i.cc, -32640
  %.not = icmp eq i16 %i.cd, 0
  %i.ce = zext i16 %i.cb to i64
  %i.cf = zext i16 %i.ca to i64
  %i.cg = lshr i16 %i.ca, 8
  %i.ch = trunc nuw i16 %i.cg to i8
  br i1 %.not, label %.thread, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ci = icmp eq i64 %.082.lcssa, 1
  br i1 %i.ci, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cj = load i8, ptr %.079.lcssa, align 1, !tbaa !9 ; 2 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %.thread, label %.thread92, !prof !14

bb.o:                                             ; preds = %bb.l, %bb.j
  %i.cl = phi i8 [ %i.ch, %bb.l ], [ %i.bw, %bb.j ]
  %i.cm = phi i64 [ %i.cf, %bb.l ], [ %i.bu, %bb.j ]
  %i.cn = phi i64 [ %i.ce, %bb.l ], [ %i.bs, %bb.j ]
  switch i64 %.082.lcssa, label %default.unreachable [
    i64 7, label %bb.p
    i64 6, label %bb.q
    i64 5, label %bb.r
    i64 4, label %bb.s
    i64 3, label %bb.t
    i64 2, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.co = and i64 %i.cn, 255
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !10
  %i.cr = zext i16 %i.cq to i64
  br label %bb.q
end_hunk_0
