Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/correlationhistory?download=true
inline.NumInlined: 479
inline.NumDeleted: 325
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gmx::CorrelationGridHistory" = type { i32, i32, i32, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<gmx::CorrelationBlockDataHistory, std::allocator<gmx::CorrelationBlockDataHistory>>::_Vector_impl" }
%"struct.std::_Vector_base<gmx::CorrelationBlockDataHistory, std::allocator<gmx::CorrelationBlockDataHistory>>::_Vector_impl" = type { %"struct.std::_Vector_base<gmx::CorrelationBlockDataHistory, std::allocator<gmx::CorrelationBlockDataHistory>>::_Vector_impl_data" }
%"struct.std::_Vector_base<gmx::CorrelationBlockDataHistory, std::allocator<gmx::CorrelationBlockDataHistory>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::InvalidInputError" = type { %"class.gmx::UserInputError" }
%"class.gmx::UserInputError" = type { %"class.gmx::GromacsException" }
%"class.gmx::GromacsException" = type { %"class.std::exception", %"class.std::shared_ptr" }
%"class.std::exception" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.35" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.35" = type { %"struct.std::_Vector_base.36" }
%"struct.std::_Vector_base.36" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.41" }
%"struct.std::_Head_base.41" = type { ptr }
%"struct.std::type_index" = type { ptr }

$_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EEaSERKS4_ = comdat any

$_ZNSt6vectorIdSaIdEEaSERKS1_ = comdat any

$_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2EPKc = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"!tensors_.empty()\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Should only call tensorSize on a valid grid\00", align 1
@__PRETTY_FUNCTION__._ZZNK3gmx15CorrelationGrid10tensorSizeEvENKUlvE_clEv = private unnamed_addr constant [70 x i8] c"auto gmx::CorrelationGrid::tensorSize()::(lambda)::operator()() const\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/applied_forces/awh/correlationgrid.h\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"correlationGridHistory != nullptr\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"We need a valid history object\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx28updateCorrelationGridHistoryEPNS_22CorrelationGridHistoryERKNS_15CorrelationGridEENK3$_0clEv" = private unnamed_addr constant [120 x i8] c"auto gmx::updateCorrelationGridHistory(CorrelationGridHistory *, const CorrelationGrid &)::(lambda)::operator()() const\00", align 1
@.str.6 = private unnamed_addr constant [86 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/applied_forces/awh/correlationhistory.cpp\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"bufferIndex == blockDataBuffer.ssize()\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"We should store exactly as many elements as the buffer size\00", align 1
@.str.9 = private unnamed_addr constant [168 x i8] c"Mismatch of the correlation tensor size for the force correlation between checkpoint and simulation. Likely you have provided a checkpoint from a different simulation.\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx17CorrelationTensor18restoreFromHistoryERKSt6vectorINS_27CorrelationBlockDataHistoryESaIS2_EEPm = private unnamed_addr constant [108 x i8] c"void gmx::CorrelationTensor::restoreFromHistory(const std::vector<CorrelationBlockDataHistory> &, size_t *)\00", align 1
@_ZTIN3gmx17InvalidInputErrorE = external constant ptr
@.str.10 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx17InvalidInputErrorE = external constant { [6 x ptr] }, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.12 = private unnamed_addr constant [154 x i8] c"Mismatch of the grid size for the force correlation between checkpoint and simulation. Likely you have provided a checkpoint from a different simulation.\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx15CorrelationGrid23restoreStateFromHistoryERKNS_22CorrelationGridHistoryE = private unnamed_addr constant [83 x i8] c"void gmx::CorrelationGrid::restoreStateFromHistory(const CorrelationGridHistory &)\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx26initCorrelationGridHistoryEPNS_22CorrelationGridHistoryEiii(ptr noundef initializes((0, 12)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = mul nsw i32 %2, %1
  %i.e = mul nsw i32 %i.d, %3
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 88                  ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.o)
  br label %_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [88 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN3gmx27CorrelationBlockDataHistoryES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3gmx27CorrelationBlockDataHistoryES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.q, ptr %i.g, align 8, !tbaa !20
  br label %_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN3gmx27CorrelationBlockDataHistoryES1_EvT_S3_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 88                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 88                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 104811045873349726
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 104811045873349725, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN3gmx27CorrelationBlockDataHistoryEmS1_ET_S3_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.q, 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !tbaa.struct !82
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN3gmx27CorrelationBlockDataHistoryEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !81

_ZSt27__uninitialized_default_n_aIPN3gmx27CorrelationBlockDataHistoryEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !20
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.u = icmp ult i64 %i.n, %1
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.v = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 104811045873349725) ; 2 uses
  %i.x = mul nuw nsw i64 %i.w, 88
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #17 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, i8 0, i64 88, i1 false)
  %i.aa = add nsw i64 %1, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPN3gmx27CorrelationBlockDataHistoryEmS1_ET_S3_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 88 ; 2 uses
  %.idx.i.i.i.i.i30 = mul nuw nsw i64 %i.aa, 88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i30
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31, %bb.g
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.ac, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(88) %i.z, i64 88, i1 false), !tbaa.struct !82
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN3gmx27CorrelationBlockDataHistoryEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !81

_ZSt27__uninitialized_default_n_aIPN3gmx27CorrelationBlockDataHistoryEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE12_M_check_lenEmPKc.exit
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx27CorrelationBlockDataHistoryEmS1_ET_S3_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx27CorrelationBlockDataHistoryEmS1_ET_S3_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN3gmx27CorrelationBlockDataHistoryESaIS1_EE13_M_deallocateEPS1_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #18
  br label %_ZNSt12_Vector_baseIN3gmx27CorrelationBlockDataHistoryESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseIN3gmx27CorrelationBlockDataHistoryESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.y, ptr %0, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %1
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw [88 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx27CorrelationBlockDataHistoryEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3gmx27CorrelationBlockDataHistoryESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx35initCorrelationGridHistoryFromStateERKNS_15CorrelationGridE(ptr dead_on_unwind noalias writable sret(%"struct.gmx::CorrelationGridHistory") align 8 initializes((0, 12), (16, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK3gmx15CorrelationGrid10tensorSizeEvENKUlvE_clEv, ptr noundef nonnull @.str.3, i32 noundef 121) #16
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !33   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 3                   ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 96                ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.m, ptr %0, align 8, !tbaa !17
  store i32 %i.w, ptr %i.a, align 4, !tbaa !18
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !19
  %i.ae = shl i64 %i.l, 32
  %i.af = mul i64 %i.ae, %i.v
  %sext = mul i64 %i.af, %i.ac                    ; 2 uses
  %.not = icmp eq i64 %sext, 0
  br i1 %.not, label %_ZN3gmx26initCorrelationGridHistoryEPNS_22CorrelationGridHistoryEiii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = ashr exact i64 %sext, 32
  invoke void @_ZNSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ag)
          to label %_ZN3gmx26initCorrelationGridHistoryEPNS_22CorrelationGridHistoryEiii.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !21  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZN3gmx22CorrelationGridHistoryD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #18
  br label %_ZN3gmx22CorrelationGridHistoryD2Ev.exit

_ZN3gmx22CorrelationGridHistoryD2Ev.exit:         ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.ah

_ZN3gmx26initCorrelationGridHistoryEPNS_22CorrelationGridHistoryEiii.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx28updateCorrelationGridHistoryEPNS_22CorrelationGridHistoryERKNS_15CorrelationGridE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx28updateCorrelationGridHistoryEPNS_22CorrelationGridHistoryERKNS_15CorrelationGridEENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 95) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.fr83 = freeze i64 %i.o
  %i.p = lshr i64 %.fr83, 3                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 2 uses
  %.not6677 = icmp ne ptr %i.g, %i.r
  %i.s = trunc i64 %i.p to i32
  %i.t = icmp sgt i32 %i.s, 0
  %or.cond = and i1 %.not6677, %i.t
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %bb.c
  %i.u = add nuw nsw i64 %i.p, 4294967295
  %i.v = and i64 %i.u, 4294967295
  %wide.trip.count = and i64 %i.p, 2147483647
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge75.split.us.us
  %.05079.us = phi i64 [ %.151.lcssa.us, %._crit_edge75.split.us.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %.sroa.061.078.us = phi ptr [ %i.bk, %._crit_edge75.split.us.us ], [ %i.g, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.w = load ptr, ptr %.sroa.061.078.us, align 8, !tbaa !38 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.061.078.us, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38   ; 2 uses
  %.not6772.us = icmp eq ptr %i.w, %i.y
  br i1 %.not6772.us, label %._crit_edge75.split.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph.split.us, %._crit_edge.us.us
  %.15174.us.us = phi i64 [ %i.bg, %._crit_edge.us.us ], [ %.05079.us, %.lr.ph.split.us ]
  %.sroa.057.073.us.us = phi ptr [ %i.bj, %._crit_edge.us.us ], [ %i.w, %.lr.ph.split.us ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.057.073.us.us, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.057.073.us.us, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.057.073.us.us, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.057.073.us.us, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.057.073.us.us, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader.us.us ] ; 3 uses
  %.04770.us.us = phi i32 [ %spec.select55.us.us, %bb.f ], [ 0, %.preheader.us.us ] ; 3 uses
  %.04869.us.us = phi i32 [ %spec.select.us.us, %bb.f ], [ 0, %.preheader.us.us ] ; 3 uses
  %.268.us.us = phi i64 [ %i.bg, %bb.f ], [ %.15174.us.us, %.preheader.us.us ] ; 2 uses
  %i.ag = zext nneg i32 %.04869.us.us to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ag ; 2 uses
  %i.ai = sext i32 %.04770.us.us to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds [88 x i8], ptr %i.b, i64 %.268.us.us ; 9 uses
  %i.al = load double, ptr %i.ah, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store double %i.al, ptr %i.am, align 8, !tbaa !45
  %i.an = load double, ptr %i.aj, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store double %i.an, ptr %i.ao, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store double %i.aq, ptr %i.ar, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store double %i.at, ptr %i.au, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.aw = load double, ptr %i.av, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store double %i.aw, ptr %i.ax, align 8, !tbaa !50
  %i.ay = icmp eq i64 %indvars.iv, %i.v
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = load <2 x double>, ptr %.sroa.057.073.us.us, align 8, !tbaa !24
  store <2 x double> %i.az, ptr %i.ak, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.bb = load <2 x double>, ptr %i.ad, align 8, !tbaa !24
  store <2 x double> %i.bb, ptr %i.ba, align 8, !tbaa !24
  %i.bc = load i32, ptr %i.ae, align 8, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !59
  %i.be = load double, ptr %i.af, align 8, !tbaa !60
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store double %i.be, ptr %i.bf, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bg = add nsw i64 %.268.us.us, 1              ; 3 uses
  %i.bh = add nsw i32 %.04770.us.us, 1
  %.not54.us.us = icmp sge i32 %.04770.us.us, %.04869.us.us ; 2 uses
  %i.bi = zext i1 %.not54.us.us to i32
  %spec.select.us.us = add nuw nsw i32 %.04869.us.us, %i.bi
  %spec.select55.us.us = select i1 %.not54.us.us, i32 0, i32 %i.bh
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.d, !llvm.loop !84

._crit_edge.us.us:                                ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.057.073.us.us, i64 96 ; 2 uses
  %.not67.us.us = icmp eq ptr %i.bj, %i.y
  br i1 %.not67.us.us, label %._crit_edge75.split.us.us, label %.preheader.us.us

._crit_edge75.split.us.us:                        ; preds = %._crit_edge.us.us, %.lr.ph.split.us
  %.151.lcssa.us = phi i64 [ %.05079.us, %.lr.ph.split.us ], [ %i.bg, %._crit_edge.us.us ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.061.078.us, i64 24 ; 2 uses
  %.not66.us = icmp eq ptr %i.bk, %i.r
  br i1 %.not66.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %._crit_edge75.split.us.us, %bb.c
  %.050.lcssa = phi i64 [ 0, %bb.c ], [ %.151.lcssa.us, %._crit_edge75.split.us.us ]
  %i.bl = ptrtoint ptr %i.d to i64
  %i.bm = sub i64 %i.bl, %i.e
  %i.bn = sdiv exact i64 %i.bm, 88
  %i.bo = icmp eq i64 %.050.lcssa, %i.bn
  br i1 %i.bo, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx28updateCorrelationGridHistoryEPNS_22CorrelationGridHistoryERKNS_15CorrelationGridEENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 149) #16
  unreachable

bb.h:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 44)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <6 x double>, ptr %1, align 8, !tbaa !24
  %i.b = shufflevector <6 x double> %i.a, <6 x double> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.b, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.d, ptr %i.e, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load double, ptr %i.f, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.g, ptr %i.h, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !41     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = load ptr, ptr %0, align 8, !tbaa !41     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE11_M_allocateEm.exit.i, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #18
  br label %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !63
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 16
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !65

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 16
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !66
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 16
  br i1 %i.af, label %bb.l, label %bb.m, !prof !65

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 16
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !66
  br label %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !41
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !62  ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !41
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !66
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !62
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = load ptr, ptr %1, align 8, !tbaa !37     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !65

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load double, ptr %i.c, align 8, !tbaa !24
  store double %i.r, ptr %i.o, align 8, !tbaa !24
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #18
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !67
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !65

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load double, ptr %i.c, align 8, !tbaa !24
  store double %i.ae, ptr %i.i, align 8, !tbaa !24
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !65

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !37
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !36 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !37
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !36
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load double, ptr %i.c, align 8, !tbaa !24
  store double %i.ah, ptr %i.i, align 8, !tbaa !24
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !65

bb.r:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !24
  store double %i.ap, ptr %i.ai, align 8, !tbaa !24
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !36
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx17CorrelationTensor18restoreFromHistoryERKSt6vectorINS_27CorrelationBlockDataHistoryESaIS2_EEPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.15", align 8    ; 11 uses
  %4 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %5 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %6 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not8295 = icmp eq ptr %i.a, %i.c
  br i1 %.not8295, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge99:                                    ; preds = %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph98, %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EED2Ev.exit
  %.sroa.073.096 = phi ptr [ %i.a, %.lr.ph98 ], [ %i.bk, %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EED2Ev.exit ] ; 8 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 3                         ; 3 uses
  %i.w = trunc i64 %i.v to i32
  %sext = shl i64 %i.n, 28                        ; 3 uses
  %i.x = ashr exact i64 %sext, 32                 ; 2 uses
  %i.y = icmp ugt i64 %i.x, 576460752303423487
  br i1 %i.y, label %.noexc, label %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #16
  unreachable

_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.z = ashr exact i64 %sext, 28                 ; 3 uses
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #17 ; 4 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.x
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.z, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = ptrtoint ptr %i.ab to i64
  br label %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.0.0 = phi ptr [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 16 uses
  %.sink.i = phi i64 [ %i.ac, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %sext48 = shl i64 %i.u, 29                      ; 3 uses
  %i.ad = ashr exact i64 %sext48, 32              ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 1152921504606846975
  br i1 %i.ae, label %bb.c, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EEC2EmRKS3_.exit.thread.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #16
          to label %.noexc58 unwind label %.loopexit.split-lp84

.noexc58:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EEC2EmRKS3_.exit.thread.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i57 = icmp eq i64 %sext48, 0
  br i1 %.not.i.i.i.i57, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.af = ashr exact i64 %sext48, 29
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #17
          to label %.noexc59 unwind label %.loopexit83 ; 6 uses

.noexc59:                                         ; preds = %bb.d
  store ptr %i.ag, ptr %3, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ad
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !67
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !24
  %i.ai = getelementptr i8, ptr %i.ag, i64 8      ; 3 uses
  %i.aj = add nsw i64 %i.ad, -1                   ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc59
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aj, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc59
  %i.am = phi ptr [ %i.ag, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ag, %.noexc59 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.0.i.i.i.i.i = phi ptr [ %i.al, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ai, %.noexc59 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  store ptr %.0.i.i.i.i.i, ptr %i.e, align 8, !tbaa !36
  %i.an = icmp sgt i32 %i.w, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.ao = add nuw nsw i64 %i.v, 4294967295
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.073.096, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.073.096, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.073.096, i64 48 ; 5 uses
  %i.as = ptrtoint ptr %.sroa.0.0 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.073.096, i64 64 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.073.096, i64 56 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.073.096, i64 72
  %i.aw = and i64 %i.ao, 4294967295
  %wide.trip.count = and i64 %i.v, 2147483647
  %.pre = load i64, ptr %2, align 8, !tbaa !69
  %i.ax = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.ay = sub i64 %i.ax, %i.as                    ; 10 uses
  %i.az = icmp sgt i64 %i.ay, 16
  %i.ba = icmp eq i64 %i.ay, 16
  %i.bb = icmp ugt i64 %i.ay, 9223372036854775792
  %.not7.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0, %.0.lcssa.i.i.i.i.i
  %i.bc = and i64 %i.ay, 9223372036854775792
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %_ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit
  %.pre105 = load ptr, ptr %3, align 8, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.bd = phi ptr [ %.pre105, %._crit_edge.loopexit ], [ %i.am, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not.i.i.i60 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.bi = ptrtoint ptr %.sroa.0.0 to i64
  %i.bj = sub i64 %.sink.i, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EED2Ev.exit

_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.073.096, i64 96 ; 2 uses
  %.not82 = icmp eq ptr %i.bk, %i.c
  br i1 %.not82, label %._crit_edge99, label %bb.b

.loopexit83:                                      ; preds = %bb.d
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit65

.loopexit.split-lp84:                             ; preds = %bb.c
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit65

bb.g:                                             ; preds = %.lr.ph, %_ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit
  %i.bl = phi i64 [ %.pre, %.lr.ph ], [ %i.dz, %_ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit ] ; 3 uses
  %.04293 = phi i32 [ 0, %.lr.ph ], [ %spec.select55, %_ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit ] ; 3 uses
  %.04492 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %_ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit ] ; 3 uses
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bn = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 88
  %.not = icmp ult i64 %i.bl, %i.br
  br i1 %.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = call ptr @__cxa_allocate_exception(i64 24) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull @.str.9)
          to label %bb.i unwind label %.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.j unwind label %.thread79

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %4, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %6, align 8, !tbaa !71
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx17CorrelationTensor18restoreFromHistoryERKSt6vectorINS_27CorrelationBlockDataHistoryESaIS2_EEPm, ptr %i.bt, align 8, !tbaa !73
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.6, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !73
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 189, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !25
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.bs, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr %i.bs, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #16
          to label %bb.ae unwind label %bb.l

.thread:                                          ; preds = %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread79:                                        ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #19
  br label %.sink.split

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %.0, label %bb.m, label %bb.ab

.sink.split:                                      ; preds = %.thread, %.thread79
  %.pn.pn78.ph = phi { ptr, i32 } [ %i.bv, %.thread79 ], [ %i.bu, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.pn.pn78 = phi { ptr, i32 } [ %i.bw, %bb.l ], [ %.pn.pn78.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bs) #19
  br label %bb.ab

bb.n:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw [88 x i8], ptr %i.bn, i64 %i.bl ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !45
  %i.ca = zext nneg i32 %.04492 to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %i.ca ; 2 uses
  store double %i.bz, ptr %i.cb, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !46
  %i.ce = sext i32 %.04293 to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %i.ce ; 2 uses
  store double %i.cd, ptr %i.cf, align 8, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store double %i.ch, ptr %i.ci, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store double %i.ck, ptr %i.cl, align 8, !tbaa !47
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !50
  %i.co = load ptr, ptr %3, align 8, !tbaa !37
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  store double %i.cn, ptr %i.cp, align 8, !tbaa !24
  %i.cq = icmp eq i64 %indvars.iv, %i.aw
  br i1 %i.cq, label %bb.o, label %_ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit

bb.o:                                             ; preds = %bb.n
  %7 = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %8 = load <2 x double>, ptr %i.bx, align 8, !tbaa !24
  %9 = load <2 x double>, ptr %7, align 8, !tbaa !24
  %10 = shufflevector <2 x double> %8, <2 x double> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %10, ptr %.sroa.073.096, align 8, !tbaa !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !59
  store i32 %i.cs, ptr %i.ap, align 8, !tbaa !58
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !61
  store double %i.cu, ptr %i.aq, align 8, !tbaa !60
  %i.cv = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.cw = load ptr, ptr %i.ar, align 8, !tbaa !41 ; 5 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp ugt i64 %i.ay, %i.cz
  br i1 %i.da, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.bb, label %bb.q, label %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE11_M_allocateEm.exit.i.i, !prof !64

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc68 unwind label %.loopexit.split-lp

.noexc68:                                         ; preds = %bb.q
  unreachable

_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #17
          to label %.noexc69 unwind label %.loopexit ; 3 uses

.noexc69:                                         ; preds = %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE11_M_allocateEm.exit.i.i
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.noexc69
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.db, ptr nonnull align 8 %.sroa.0.0, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i

_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.noexc69
  %i.dc = load ptr, ptr %i.ar, align 8, !tbaa !41 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  %i.dd = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #18
  br label %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  store ptr %i.db, ptr %i.ar, align 8, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ay
  store ptr %i.dh, ptr %i.at, align 8, !tbaa !63
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.s:                                             ; preds = %bb.o
  %i.di = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.cy                    ; 4 uses
  %.not24.i = icmp ult i64 %i.dk, %i.ay
  br i1 %.not24.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.az, label %bb.u, label %bb.v, !prof !65

bb.u:                                             ; preds = %bb.t
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr nonnull align 8 %.sroa.0.0, i64 %i.ay, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.v:                                             ; preds = %bb.t
  br i1 %i.ba, label %bb.w, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0, i64 16, i1 false), !tbaa.struct !66
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.x:                                             ; preds = %bb.s
  %i.dl = icmp sgt i64 %i.dk, 16
  br i1 %i.dl, label %bb.y, label %bb.z, !prof !65

bb.y:                                             ; preds = %bb.x
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr nonnull align 8 %.sroa.0.0, i64 %i.dk, i1 false)
  br label %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.dm = icmp eq i64 %i.dk, 16
  br i1 %i.dm, label %bb.aa, label %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0, i64 16, i1 false), !tbaa.struct !66
  br label %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit.i

_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.dn = load ptr, ptr %i.au, align 8, !tbaa !62 ; 2 uses
  %i.do = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.dr ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.ds, %.0.lcssa.i.i.i.i.i
  br i1 %.not9.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i ], [ %i.dn, %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i ], [ %i.ds, %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !66
  %i.dt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt4copyIPN3gmx20CorrelationBlockData9CoordDataES3_ET0_T_S5_S4_.exit.i, %bb.w, %bb.v, %bb.u, %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.dv = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ay
  store ptr %i.dw, ptr %i.au, align 8, !tbaa !62
  %i.dx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i._ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit_crit_edge unwind label %.loopexit ; 0 uses

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i._ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit_crit_edge: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i
  %.pre104 = load i64, ptr %2, align 8, !tbaa !69
  br label %_ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit

.loopexit:                                        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i._ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit_crit_edge, %bb.n
  %i.dy = phi i64 [ %.pre104, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i._ZN3gmx20CorrelationBlockData18restoreFromHistoryERKNS_27CorrelationBlockDataHistoryERKSt6vectorINS0_9CoordDataESaIS5_EERKS4_IdSaIdEE.exit_crit_edge ], [ %i.bl, %bb.n ]
  %i.dz = add i64 %i.dy, 1                        ; 2 uses
  store i64 %i.dz, ptr %2, align 8, !tbaa !69
  %i.ea = add nsw i32 %.04293, 1
  %.not49 = icmp sge i32 %.04293, %.04492         ; 2 uses
  %i.eb = zext i1 %.not49 to i32
  %spec.select = add nuw nsw i32 %.04492, %i.eb
  %spec.select55 = select i1 %.not49, i32 0, i32 %i.ea
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.g, !llvm.loop !85

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.l, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn78, %bb.m ], [ %i.bw, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ec = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIdSaIdEED2Ev.exit65, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit65

_ZNSt6vectorIdSaIdEED2Ev.exit65:                  ; preds = %.loopexit83, %.loopexit.split-lp84, %bb.ac, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ac ], [ %.pn.pn.pn, %bb.ab ], [ %lpad.loopexit85, %.loopexit83 ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not.i.i.i66 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EED2Ev.exit67, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit65
  %i.eh = ptrtoint ptr %.sroa.0.0 to i64
  %i.ei = sub i64 %.sink.i, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ei) #18
  br label %_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EED2Ev.exit67

_ZNSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EED2Ev.exit67: ; preds = %bb.ad, %_ZNSt6vectorIdSaIdEED2Ev.exit65
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.ae:                                            ; preds = %bb.k
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::InvalidInputError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.a, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !87
  store ptr %i.a, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %4, align 8, !tbaa !92
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.d = load ptr, ptr %3, align 8, !tbaa !89     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19, !inline_history !86
  br label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.i = load ptr, ptr %3, align 8, !tbaa !89     ; 3 uses
  %.not.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #19, !inline_history !86
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.h

_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !93
  store ptr null, ptr %i.o, align 8, !tbaa !76
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !93
  store ptr null, ptr %i.n, align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !97
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #16
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !69
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !79
  %i.g = load i64, ptr %i.a, align 8, !tbaa !69
  store i64 %i.g, ptr %i.b, align 8, !tbaa !80
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !80
  store i8 %i.i, ptr %i.h, align 1, !tbaa !80
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !98
  %i.l = load ptr, ptr %0, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !102
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !99
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !99
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !80
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !64

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !109
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i) #19
  br label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !103

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #18
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !80
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !111
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !80
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !111
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

declare void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx15CorrelationGrid23restoreStateFromHistoryERKNS_22CorrelationGridHistoryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %6 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %7 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = load i32, ptr %1, align 8, !tbaa !17
  %i.k = sext i32 %i.j to i64
  %.not = icmp eq i64 %i.i, %i.k
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 24) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.12)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.d unwind label %.thread40

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx15CorrelationGrid23restoreStateFromHistoryERKNS_22CorrelationGridHistoryE, ptr %i.m, align 8, !tbaa !73
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.6, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !73
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 233, ptr %.sroa.535.0..sroa_idx, align 8, !tbaa !25
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.l, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.l, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #16
          to label %bb.s unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread40:                                        ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #19
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
  %.013 = phi i1 [ false, %bb.e ], [ true, %bb.d ]
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %.013, label %bb.g, label %bb.r

.sink.split:                                      ; preds = %.thread, %.thread40
  %.pn24.pn39.ph = phi { ptr, i32 } [ %i.o, %.thread40 ], [ %i.n, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %.pn24.pn39 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %.pn24.pn39.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.l) #19
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !69
  %.not5152 = icmp eq ptr %i.e, %i.d
  br i1 %.not5152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %i.r = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 88
  %.not21 = icmp eq i64 %i.r, %i.z
  br i1 %.not21, label %bb.q, label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.030.053 = phi ptr [ %i.e, %.lr.ph ], [ %i.aa, %bb.i ] ; 2 uses
  call void @_ZN3gmx17CorrelationTensor18restoreFromHistoryERKSt6vectorINS_27CorrelationBlockDataHistoryESaIS2_EEPm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.030.053, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.030.053, i64 24 ; 2 uses
  %.not51 = icmp eq ptr %i.aa, %i.d
  br i1 %.not51, label %._crit_edge.loopexit, label %bb.i

bb.j:                                             ; preds = %._crit_edge
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 24) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull @.str.9)
          to label %bb.k unwind label %.thread43

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.l unwind label %.thread48

bb.l:                                             ; preds = %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %5, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %7, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx15CorrelationGrid23restoreStateFromHistoryERKNS_22CorrelationGridHistoryE, ptr %i.ac, align 8, !tbaa !73
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.6, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !73
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 248, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !25
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.ab, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr %i.ab, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #16
          to label %bb.s unwind label %bb.n

.thread43:                                        ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split56

.thread48:                                        ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #19
  br label %.sink.split56

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0 = phi i1 [ false, %bb.m ], [ true, %bb.l ]
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %.0, label %bb.o, label %bb.p

.sink.split56:                                    ; preds = %.thread43, %.thread48
  %.pn.pn47.ph = phi { ptr, i32 } [ %i.ae, %.thread48 ], [ %i.ad, %.thread43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.o

bb.o:                                             ; preds = %.sink.split56, %bb.n
  %.pn.pn47 = phi { ptr, i32 } [ %i.af, %bb.n ], [ %.pn.pn47.ph, %.sink.split56 ]
  call void @__cxa_free_exception(ptr %i.ab) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.pn46 = phi { ptr, i32 } [ %.pn.pn47, %bb.o ], [ %i.af, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.r:                                             ; preds = %bb.f, %bb.g, %bb.p
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn39, %bb.g ], [ %i.p, %bb.f ], [ %.pn.pn46, %bb.p ]
  resume { ptr, i32 } %.pn24.pn.pn

bb.s:                                             ; preds = %bb.m, %bb.e
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold noreturn }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !26}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN3gmx27CorrelationBlockDataHistoryE", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIN3gmx27CorrelationBlockDataHistoryESaIS1_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!"_ZTSNSt12_Vector_baseIN3gmx27CorrelationBlockDataHistoryESaIS1_EE12_Vector_implE", !12, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseIN3gmx27CorrelationBlockDataHistoryESaIS1_EE", !13, i64 0}
!15 = !{!"_ZTSSt6vectorIN3gmx27CorrelationBlockDataHistoryESaIS1_EE", !14, i64 0}
!16 = !{!"_ZTSN3gmx22CorrelationGridHistoryE", !7, i64 0, !7, i64 4, !7, i64 8, !15, i64 16}
!17 = !{!16, !7, i64 0}
!18 = !{!16, !7, i64 4}
!19 = !{!16, !7, i64 8}
!20 = !{!12, !11, i64 8}
!21 = !{!12, !11, i64 0}
!22 = !{!12, !11, i64 16}
!23 = !{!"double", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"p1 _ZTSN3gmx17CorrelationTensorE", !10, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN3gmx17CorrelationTensorESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !27, i64 0}
!30 = !{!27, !27, i64 0}
!31 = !{!"p1 _ZTSN3gmx20CorrelationBlockDataE", !10, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN3gmx20CorrelationBlockDataESaIS1_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!32, !31, i64 0}
!34 = !{!"p1 double", !10, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!35, !34, i64 0}
!38 = !{!31, !31, i64 0}
!39 = !{!"p1 _ZTSN3gmx20CorrelationBlockData9CoordDataE", !10, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!40, !39, i64 0}
!42 = !{!"_ZTSN3gmx20CorrelationBlockData9CoordDataE", !23, i64 0, !23, i64 8}
!43 = !{!42, !23, i64 0}
!44 = !{!"_ZTSN3gmx27CorrelationBlockDataHistoryE", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !7, i64 72, !23, i64 80}
!45 = !{!44, !23, i64 16}
!46 = !{!44, !23, i64 24}
!47 = !{!42, !23, i64 8}
!48 = !{!44, !23, i64 48}
!49 = !{!44, !23, i64 56}
!50 = !{!44, !23, i64 80}
!51 = !{!"_ZTSNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE12_Vector_implE", !40, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE", !52, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !35, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIdSaIdEE", !55, i64 0}
!57 = !{!"_ZTSN3gmx20CorrelationBlockDataE", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !7, i64 40, !53, i64 48, !56, i64 72}
!58 = !{!57, !7, i64 40}
!59 = !{!44, !7, i64 72}
!60 = !{!57, !23, i64 32}
!61 = !{!44, !23, i64 64}
!62 = !{!40, !39, i64 8}
!63 = !{!40, !39, i64 16}
!64 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{i64 0, i64 8, !24, i64 8, i64 8, !24}
!67 = !{!35, !34, i64 16}
!68 = !{!"long", !6, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"vtable pointer", !5, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"p1 omnipotent char", !10, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!75 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !74, i64 0}
!76 = !{!75, !74, i64 0}
!77 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !72, i64 0}
!78 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !77, i64 0, !68, i64 8, !6, i64 16}
!79 = !{!78, !72, i64 0}
!80 = !{!6, !6, i64 0}
!81 = distinct !{!81, !26}
!82 = !{i64 0, i64 8, !24, i64 8, i64 8, !24, i64 16, i64 8, !24, i64 24, i64 8, !24, i64 32, i64 8, !24, i64 40, i64 8, !24, i64 48, i64 8, !24, i64 56, i64 8, !24, i64 64, i64 8, !24, i64 72, i64 4, !25, i64 80, i64 8, !24}
!83 = !{!32, !31, i64 8}
!84 = distinct !{!84, !26}
!85 = distinct !{!85, !26}
!86 = distinct !{null, null, null}
!87 = !{i64 0, i64 8, !73, i64 8, i64 8, !73, i64 16, i64 4, !25}
!88 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !10, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"p1 _ZTSSt9type_info", !10, i64 0}
!91 = !{!"_ZTSSt10type_index", !90, i64 0}
!92 = !{!91, !90, i64 0}
!93 = !{!10, !10, i64 0}
!94 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !10, i64 0}
!95 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !75, i64 8}
!96 = !{!95, !94, i64 0}
!97 = !{!77, !72, i64 0}
!98 = !{!78, !68, i64 8}
!99 = distinct !{null, null, null}
!100 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!101 = !{!100, !7, i64 8}
!102 = !{!100, !7, i64 12}
!103 = distinct !{!103, !26}
!104 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !10, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!106 = !{!105, !104, i64 0}
!107 = !{!105, !104, i64 8}
!108 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !10, i64 0}
!109 = !{!108, !10, i64 0}
!110 = !{!105, !104, i64 16}
!111 = distinct !{null}
!112 = !{!28, !27, i64 8}
end_hunk_0
