Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/mdoutf?download=true
inline.NumInlined: 418
inline.NumDeleted: 239
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr.79" }
%"class.std::unique_ptr.79" = type { %"struct.std::__uniq_ptr_data.80" }
%"struct.std::__uniq_ptr_data.80" = type { %"class.std::__uniq_ptr_impl.81" }
%"class.std::__uniq_ptr_impl.81" = type { %"class.std::tuple.82" }
%"class.std::tuple.82" = type { %"struct.std::_Tuple_impl.83" }
%"struct.std::_Tuple_impl.83" = type { %"struct.std::_Head_base.86" }
%"struct.std::_Head_base.86" = type { ptr }
%"class.std::allocator.76" = type { i8 }
%"class.std::vector.242" = type { %"struct.std::_Vector_base.243" }
%"struct.std::_Vector_base.243" = type { %"struct.std::_Vector_base<gmx_file_position_t, std::allocator<gmx_file_position_t>>::_Vector_impl" }
%"struct.std::_Vector_base<gmx_file_position_t, std::allocator<gmx_file_position_t>>::_Vector_impl" = type { %"struct.std::_Vector_base<gmx_file_position_t, std::allocator<gmx_file_position_t>>::_Vector_impl_data" }
%"struct.std::_Vector_base<gmx_file_position_t, std::allocator<gmx_file_position_t>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.CheckpointHeaderContents = type <{ i32, [1024 x i8], [1024 x i8], [1024 x i8], [1024 x i8], i32, [1024 x i8], [1024 x i8], i32, i32, i64, double, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8] }>
%"class.gmx::FileIOError" = type { %"class.gmx::GromacsException" }
%"class.gmx::GromacsException" = type { %"class.std::exception", %"class.std::shared_ptr.291" }
%"class.std::exception" = type { ptr }
%"class.std::shared_ptr.291" = type { %"class.std::__shared_ptr.292" }
%"class.std::__shared_ptr.292" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.294" }
%"class.std::vector.294" = type { %"struct.std::_Vector_base.295" }
%"struct.std::_Vector_base.295" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr.299" = type { %"struct.std::__uniq_ptr_data.300" }
%"struct.std::__uniq_ptr_data.300" = type { %"class.std::__uniq_ptr_impl.301" }
%"class.std::__uniq_ptr_impl.301" = type { %"class.std::tuple.302" }
%"class.std::tuple.302" = type { %"struct.std::_Tuple_impl.303" }
%"struct.std::_Tuple_impl.303" = type { %"struct.std::_Head_base.306" }
%"struct.std::_Head_base.306" = type { ptr }
%"struct.std::type_index" = type { ptr }
%"class.gmx::ArrayRef" = type { %"struct.gmx::ArrayRefIter", %"struct.gmx::ArrayRefIter" }
%"struct.gmx::ArrayRefIter" = type { ptr }
%"class.gmx::ArrayRef.308" = type { %"struct.gmx::ArrayRefIter.309", %"struct.gmx::ArrayRefIter.309" }
%"struct.gmx::ArrayRefIter.309" = type { ptr }

$_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10filesystem7__cxx114pathC2IPcS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA1024_cS1_EERKT_NS1_6formatE = comdat any

$_ZN3gmxlsINS_11FileIOErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerC2EPKc = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@.str = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/mdlib/mdoutf.cpp\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"incons\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Invalid reduced precision file format\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Invalid full precision file format\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"-cpo\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-dhdl\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"of->f_global\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Lundborg2014\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"!simulationsShareState || ms != nullptr\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"Need valid multisim object when simulations share state\00", align 1
@"__PRETTY_FUNCTION__._ZZ11init_mdoutfP8_IO_FILEiPK8t_filenmRKN3gmx12MdrunOptionsEPK9t_commrecPNS4_17IMDOutputProviderERKNS4_18MDModulesNotifiersEPK10t_inputrecRK10gmx_mtop_tPK16gmx_output_env_tP13gmx_wallcycleNS4_16StartingBehaviorEbPK14gmx_multisim_tENK3$_0clEv" = private unnamed_addr constant [325 x i8] c"auto init_mdoutf(FILE *, int, const t_filenm *, const gmx::MdrunOptions &, const t_commrec *, gmx::IMDOutputProvider *, const gmx::MDModulesNotifiers &, const t_inputrec *, const gmx_mtop_t &, const gmx_output_env_t *, gmx_wallcycle *, const gmx::StartingBehavior, bool, const gmx_multisim_t *)::(lambda)::operator()() const\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"fntemp\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"_%s%s\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Writing checkpoint, step %s at %s\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"Cannot fsync '%s'; maybe you are out of disk space?\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"GMX_IGNORE_FSYNC_FAILURE\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"_prev\00", align 1
@.str.23 = private unnamed_addr constant [78 x i8] c"Cannot rename checkpoint file from %s to %s; maybe you are out of disk space?\00", align 1
@__PRETTY_FUNCTION__._ZL16write_checkpointPKcbP8_IO_FILEPK9t_commrecPii20IntegrationAlgorithmib23LambdaWeightCalculationldP7t_stateP18ObservablesHistoryRKN3gmx18MDModulesNotifiersEPNSD_25WriteCheckpointDataHolderEbP10tmpi_comm_ = private unnamed_addr constant [280 x i8] c"void write_checkpoint(const char *, gmx_bool, FILE *, const t_commrec *, int *, int, IntegrationAlgorithm, int, gmx_bool, LambdaWeightCalculation, int64_t, double, t_state *, ObservablesHistory *, const gmx::MDModulesNotifiers &, gmx::WriteCheckpointDataHolder *, bool, MPI_Comm)\00", align 1
@_ZTIN3gmx11FileIOErrorE = external constant ptr
@.str.24 = private unnamed_addr constant [64 x i8] c"Cannot rename checkpoint file; maybe you are out of disk space?\00", align 1
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx11FileIOErrorE = external constant { [6 x ptr] }, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"Cannot write trajectory; maybe you are out of disk space?\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"xxtc\00", align 1
@.str.27 = private unnamed_addr constant [183 x i8] c"XTC error. This indicates you are out of disk space, or a simulation with major instabilities resulting in coordinates that are NaN or too large to be represented in the XTC format.\0A\00", align 1

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z11init_mdoutfP8_IO_FILEiPK8t_filenmRKN3gmx12MdrunOptionsEPK9t_commrecPNS4_17IMDOutputProviderERKNS4_18MDModulesNotifiersEPK10t_inputrecRK10gmx_mtop_tPK16gmx_output_env_tP13gmx_wallcycleNS4_16StartingBehaviorEbPK14gmx_multisim_t(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef nonnull align 1 %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(768) %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, i1 noundef zeroext %12, ptr nofree noundef readonly captures(address_is_null) %13) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.76", align 1 ; 3 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %20 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %21 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %22 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator.76", align 1 ; 3 uses
  %25 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %26 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %27 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = icmp eq i32 %11, 0                       ; 5 uses
  %i.f = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 145, i64 noundef 1, i64 noundef 160) ; 25 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  store ptr null, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  %i.n = load i32, ptr %i.m, align 4, !tbaa !210  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %i.n, ptr %i.o, align 4, !tbaa !211
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 448
  %i.q = load i8, ptr %i.p, align 8, !tbaa !212, !range !36, !noundef !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i8 %i.q, ptr %i.r, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 456
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !213
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !217
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 %i.v, ptr %i.w, align 4, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !218
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i32 %i.y, ptr %i.z, align 8, !tbaa !219
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 132
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !220
  %i.ac = fptosi float %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr %10, ptr %i.ae, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %5, ptr %i.ag, align 8, !tbaa !47
  %i.ah = icmp eq ptr %13, null
  %or.cond.not = and i1 %12, %i.ah
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ11init_mdoutfP8_IO_FILEiPK8t_filenmRKN3gmx12MdrunOptionsEPK9t_commrecPNS4_17IMDOutputProviderERKNS4_18MDModulesNotifiersEPK10t_inputrecRK10gmx_mtop_tPK16gmx_output_env_tP13gmx_wallcycleNS4_16StartingBehaviorEbPK14gmx_multisim_tENK3$_0clEv", ptr noundef nonnull @.str.3, i32 noundef 165) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ai = zext i1 %12 to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store i8 %i.ai, ptr %i.aj, align 8, !tbaa !48
  br i1 %12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !222
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store ptr %i.al, ptr %i.am, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53, !nonnull !37, !align !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !63
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !228, !range !36, !noundef !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 %i.at, ptr %i.au, align 8, !tbaa !64
  %i.av = select i1 %i.e, ptr @.str, ptr @.str.1  ; 6 uses
  switch i32 %i.n, label %bb.ab [
    i32 0, label %bb.g
    i32 10, label %bb.g
    i32 11, label %bb.g
    i32 12, label %bb.g
    i32 9, label %bb.g
    i32 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !229
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.ab

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.az = tail call noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 5, i32 noundef %1, ptr noundef %2) ; 2 uses
  store ptr %i.az, ptr %i.a, align 8, !tbaa !65
  %i.ba = tail call noundef i32 @_Z6fn2ftpPKc(ptr noundef %i.az)
  switch i32 %i.ba, label %bb.r [
    i32 6, label %bb.i
    i32 7, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext 2)
  %i.bb = invoke noundef ptr @_Z8open_xtcRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull %i.av)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.bd) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.k, %bb.j
  %i.be = load ptr, ptr %14, align 8, !tbaa !71   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !72
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.z

bb.l:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.aa

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext 2)
  %28 = load i8, ptr %i.av, align 1, !tbaa !72    ; 2 uses
  invoke void @_Z12gmx_tng_openRKNSt10filesystem7__cxx114pathEcPP18gmx_tng_trajectory(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 noundef signext %28, ptr noundef nonnull %i.j)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i149, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i150, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull %i.bl) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i150

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i150: ; preds = %bb.o, %bb.n
  %i.bm = load ptr, ptr %15, align 8, !tbaa !71   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i150
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !72
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit153

_ZNSt10filesystem7__cxx114pathD2Ev.exit153:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %29 = icmp eq i8 %28, 119
  br i1 %29, label %bb.p, label %bb.z

bb.p:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit153
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !73
  call void @_Z32gmx_tng_prepare_low_prec_writingP18gmx_tng_trajectoryPK10gmx_mtop_tPK10t_inputrec(ptr noundef %i.br, ptr noundef nonnull %8, ptr noundef nonnull %7)
  br label %bb.z

bb.q:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.aa

bb.r:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(61) @.str.3, i8 noundef zeroext 2)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 193) #23
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.w:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn144 = phi { ptr, i32 } [ %i.bv, %bb.x ], [ %i.bu, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.bw = load ptr, ptr %16, align 8, !tbaa !71   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !72
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.v
  %.pn144.pn = phi { ptr, i32 } [ %i.bt, %bb.v ], [ %.pn144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn144, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit153, %bb.p, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %.0125 = phi i1 [ false, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ], [ true, %bb.p ], [ true, %_ZNSt10filesystem7__cxx114pathD2Ev.exit153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.pre = load i32, ptr %i.m, align 4, !tbaa !210
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q, %bb.l
  %.pn144.pn.pn = phi { ptr, i32 } [ %.pn144.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bj, %bb.l ], [ %i.bs, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.cj

bb.ab:                                            ; preds = %bb.f, %bb.z, %bb.g
  %i.cb = phi i32 [ %.pre, %bb.z ], [ %i.n, %bb.g ], [ %i.n, %bb.f ] ; 3 uses
  %.1126 = phi i1 [ %.0125, %bb.z ], [ false, %bb.g ], [ false, %bb.f ] ; 6 uses
  switch i32 %i.cb, label %thread-pre-split [
    i32 0, label %bb.ac
    i32 10, label %bb.ac
    i32 11, label %bb.ac
    i32 12, label %bb.ac
    i32 9, label %bb.ac
    i32 3, label %bb.ac
    i32 1, label %bb.af
    i32 2, label %bb.af
    i32 6, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !230
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !231
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !232
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %thread-pre-split, label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.cl = call noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 3, i32 noundef %1, ptr noundef %2) ; 2 uses
  store ptr %i.cl, ptr %i.b, align 8, !tbaa !65
  %i.cm = call noundef i32 @_Z6fn2ftpPKc(ptr noundef %i.cl)
  switch i32 %i.cm, label %bb.bd [
    i32 4, label %bb.ag
    i32 3, label %bb.ag
    i32 7, label %bb.an
    i32 8, label %bb.as
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !230
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !229
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cs = load ptr, ptr %i.j, align 8, !tbaa !73
  %.not137 = icmp eq ptr %i.cs, null
  br i1 %.not137, label %bb.aj, label %bb.bl

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2)
  %i.ct = invoke noundef ptr @_Z12gmx_trr_openRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull %i.av)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ct, ptr %i.f, align 8, !tbaa !74
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i154, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i155, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull %i.cv) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i155

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i155: ; preds = %bb.al, %bb.ak
  %i.cw = load ptr, ptr %19, align 8, !tbaa !71   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i155
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !72
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit158

_ZNSt10filesystem7__cxx114pathD2Ev.exit158:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.bl

bb.am:                                            ; preds = %bb.aj
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.bm

bb.an:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2)
  %30 = load i8, ptr %i.av, align 1, !tbaa !72    ; 2 uses
  invoke void @_Z12gmx_tng_openRKNSt10filesystem7__cxx114pathEcPP18gmx_tng_trajectory(ptr noundef nonnull align 8 dereferenceable(40) %20, i8 noundef signext %30, ptr noundef nonnull %i.i)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i159, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i160, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull %i.dd) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i160

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i160: ; preds = %bb.ap, %bb.ao
  %i.de = load ptr, ptr %20, align 8, !tbaa !71   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i160
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !72
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit163

_ZNSt10filesystem7__cxx114pathD2Ev.exit163:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %31 = icmp eq i8 %30, 119
  br i1 %31, label %bb.aq, label %bb.bl

bb.aq:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit163
  %i.dj = load ptr, ptr %i.i, align 8, !tbaa !75
  call void @_Z26gmx_tng_prepare_md_writingP18gmx_tng_trajectoryPK10gmx_mtop_tPK10t_inputrec(ptr noundef %i.dj, ptr noundef nonnull %8, ptr noundef nonnull %7)
  br label %bb.bl

bb.ar:                                            ; preds = %bb.an
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.bm

bb.as:                                            ; preds = %bb.af
  br i1 %i.e, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2)
  invoke void @_Z11make_backupRKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %21)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i164, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i165, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull %i.dm) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i165

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i165: ; preds = %bb.av, %bb.au
  %i.dn = load ptr, ptr %21, align 8, !tbaa !71   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i165
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !72
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit168

_ZNSt10filesystem7__cxx114pathD2Ev.exit168:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.bm

bb.ax:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit168, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2)
  %32 = load i8, ptr %i.av, align 1, !tbaa !72
  %i.dt = invoke noundef ptr @_ZN3gmx8makeH5mdERKNSt10filesystem7__cxx114pathENS_12H5mdFileModeE(ptr noundef nonnull align 8 dereferenceable(40) %22, i8 noundef signext %32)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.dt, ptr %i.k, align 8, !tbaa !76
  %i.du = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i169 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i169, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i170, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull %i.dv) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i170

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i170: ; preds = %bb.az, %bb.ay
  %i.dw = load ptr, ptr %22, align 8, !tbaa !71   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i170
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !72
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit173

_ZNSt10filesystem7__cxx114pathD2Ev.exit173:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.eb = load ptr, ptr %i.k, align 8, !tbaa !76  ; 2 uses
  br i1 %i.e, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit173
  call void @_ZN3gmx18setupFileFromInputEPNS_4H5mdERK10gmx_mtop_tRK10t_inputrec(ptr noundef %i.eb, ptr noundef nonnull align 8 dereferenceable(768) %8, ptr noundef nonnull align 8 dereferenceable(888) %7)
  br label %bb.bl

bb.bb:                                            ; preds = %bb.ax
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.bm

bb.bc:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit173
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !233
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !285
  %i.eh = sext i32 %i.eg to i64
  call void @_ZN3gmx33setupFromExistingFileForAppendingEPNS_4H5mdEll(ptr noundef %i.eb, i64 noundef %i.ee, i64 noundef %i.eh)
  br label %bb.bl

bb.bd:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 1 dereferenceable(61) @.str.3, i8 noundef zeroext 2)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef 237) #23
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  unreachable

bb.bh:                                            ; preds = %bb.bd
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.bi:                                            ; preds = %bb.be
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bf
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %25) #24
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.bj ], [ %i.ej, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.el = load ptr, ptr %23, align 8, !tbaa !71   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.bk
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !72
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.bh
  %.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.bh ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %.pn, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.bm

bb.bl:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit163, %bb.aq, %bb.ba, %bb.bc, %bb.ai, %_ZNSt10filesystem7__cxx114pathD2Ev.exit158
  %.2127 = phi i1 [ %.1126, %_ZNSt10filesystem7__cxx114pathD2Ev.exit158 ], [ %.1126, %bb.ai ], [ %.1126, %bb.ba ], [ %.1126, %bb.bc ], [ true, %bb.aq ], [ true, %_ZNSt10filesystem7__cxx114pathD2Ev.exit163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.pr.pre = load i32, ptr %i.m, align 4, !tbaa !210
  br label %thread-pre-split

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %bb.bb, %bb.aw, %bb.ar, %bb.am
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.db, %bb.am ], [ %i.dk, %bb.ar ], [ %i.ec, %bb.bb ], [ %i.ds, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.cj

thread-pre-split:                                 ; preds = %bb.bl, %bb.ae, %bb.ab
  %i.eq = phi i32 [ %i.cb, %bb.ab ], [ %.pr.pre, %bb.bl ], [ %i.cb, %bb.ae ]
  %.3128 = phi i1 [ %.1126, %bb.ab ], [ %.2127, %bb.bl ], [ %.1126, %bb.ae ]
  switch i32 %i.eq, label %bb.br [
    i32 0, label %bb.bn
    i32 10, label %bb.bn
    i32 11, label %bb.bn
    i32 12, label %bb.bn
    i32 9, label %bb.bn
    i32 3, label %bb.bn
    i32 1, label %bb.bn
    i32 2, label %bb.bn
    i32 6, label %bb.bn
  ]

bb.bn:                                            ; preds = %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.er = call noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 9, i32 noundef %1, ptr noundef %2)
  store ptr %i.er, ptr %i.c, align 8, !tbaa !65
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 2)
  %i.es = invoke noundef ptr @_Z8open_enxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull %i.av)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.es, ptr %i.g, align 8, !tbaa !26
  %i.et = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i177 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i177, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i178, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %i.eu) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i178

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i178: ; preds = %bb.bp, %bb.bo
  %i.ev = load ptr, ptr %26, align 8, !tbaa !71   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i178
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !72
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit181

_ZNSt10filesystem7__cxx114pathD2Ev.exit181:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.cj

bb.br:                                            ; preds = %thread-pre-split, %_ZNSt10filesystem7__cxx114pathD2Ev.exit181
  %i.fb = call noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.7, i32 noundef %1, ptr noundef %2)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !81
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 420
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !286
  %.not141 = icmp eq i32 %i.fe, 0
  br i1 %.not141, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 432
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !287, !range !36, !noundef !37
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.bt, label %bb.cc

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 424
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !288 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !296
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %bb.bu, label %bb.cc

bb.bu:                                            ; preds = %bb.bt
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 268
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !297
end_hunk_0
