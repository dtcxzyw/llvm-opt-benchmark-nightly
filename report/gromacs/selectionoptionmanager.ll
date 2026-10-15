Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/selectionoptionmanager?download=true
inline.NumInlined: 486
inline.NumDeleted: 282
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::InvalidInputError" = type { %"class.gmx::UserInputError" }
%"class.gmx::UserInputError" = type { %"class.gmx::GromacsException" }
%"class.gmx::GromacsException" = type { %"class.std::exception", %"class.std::shared_ptr" }
%"class.std::exception" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.17" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<gmx::Selection, std::allocator<gmx::Selection>>::_Vector_impl" }
%"struct.std::_Vector_base<gmx::Selection, std::allocator<gmx::Selection>>::_Vector_impl" = type { %"struct.std::_Vector_base<gmx::Selection, std::allocator<gmx::Selection>>::_Vector_impl_data" }
%"struct.std::_Vector_base<gmx::Selection, std::allocator<gmx::Selection>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.39" = type { %"struct.std::__uniq_ptr_data.40" }
%"struct.std::__uniq_ptr_data.40" = type { %"class.std::__uniq_ptr_impl.41" }
%"class.std::__uniq_ptr_impl.41" = type { %"class.std::tuple.42" }
%"class.std::tuple.42" = type { %"struct.std::_Tuple_impl.43" }
%"struct.std::_Tuple_impl.43" = type { %"struct.std::_Head_base.46" }
%"struct.std::_Head_base.46" = type { ptr }
%"struct.std::type_index" = type { ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr.59" }
%"class.std::unique_ptr.59" = type { %"struct.std::__uniq_ptr_data.60" }
%"struct.std::__uniq_ptr_data.60" = type { %"class.std::__uniq_ptr_impl.61" }
%"class.std::__uniq_ptr_impl.61" = type { %"class.std::tuple.62" }
%"class.std::tuple.62" = type { %"struct.std::_Tuple_impl.63" }
%"struct.std::_Tuple_impl.63" = type { %"struct.std::_Head_base.66" }
%"struct.std::_Head_base.66" = type { ptr }

$_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@_ZTVN3gmx22SelectionOptionManagerE = constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx22SelectionOptionManagerE, ptr @_ZN3gmx22SelectionOptionManagerD1Ev, ptr @_ZN3gmx22SelectionOptionManagerD0Ev] }, align 8
@_ZTIN3gmx22SelectionOptionManagerE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx22SelectionOptionManagerE, ptr @_ZTIN3gmx14IOptionManagerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx22SelectionOptionManagerE = constant [31 x i8] c"N3gmx22SelectionOptionManagerE\00", align 1
@_ZTIN3gmx14IOptionManagerE = external constant ptr
@.str = private unnamed_addr constant [129 x i8] c"Too few selections provided for '%s': Expected %d selections, but only %d left after assigning the first %d to other selections.\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx22SelectionOptionManager4Impl25placeSelectionsInRequestsERKSt6vectorINS_9SelectionESaIS3_EE = private unnamed_addr constant [89 x i8] c"void gmx::SelectionOptionManager::Impl::placeSelectionsInRequests(const SelectionList &)\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/selection/selectionoptionmanager.cpp\00", align 1
@_ZTIN3gmx17InvalidInputErrorE = external constant ptr
@.str.2 = private unnamed_addr constant [227 x i8] c"Ambiguous selections for '%s' and '%s': Any number of selections is acceptable for '%s', but you have requested subsequent selections to be assigned to '%s'. Resolution for such cases is not implemented, and may be impossible.\00", align 1
@.str.3 = private unnamed_addr constant [127 x i8] c"Too many selections provided: Expected %d selections, but %d provided. Last %d selections could not be assigned to any option.\00", align 1
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx17InvalidInputErrorE = external constant { [6 x ptr] }, align 8
@_ZTIN3gmx16GromacsExceptionE = external constant ptr
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"for option '%s'\0A(%s)\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Error in adding selections from file '%s'\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN3gmx22SelectionOptionManager4ImplC1EPNS_19SelectionCollectionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx22SelectionOptionManager4ImplC2EPNS_19SelectionCollectionE
@_ZN3gmx22SelectionOptionManagerC1EPNS_19SelectionCollectionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx22SelectionOptionManagerC2EPNS_19SelectionCollectionE
@_ZN3gmx22SelectionOptionManagerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx22SelectionOptionManagerD2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx22SelectionOptionManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN3gmx22SelectionOptionManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx22SelectionOptionManager4ImplC2EPNS_19SelectionCollectionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx22SelectionOptionManager4Impl25placeSelectionsInRequestsERKSt6vectorINS_9SelectionESaIS3_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %6 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %7 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %10 = alloca %"class.std::vector.7", align 8    ; 11 uses
  %11 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %12 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx22SelectionOptionManager4Impl27requestUnsetRequiredOptionsEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  %.pre222.a = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %15 = phi ptr [ %.pre222.a, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %16 = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  %.not201 = icmp eq ptr %16, %15
  br i1 %.not201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit
  %i.j = phi ptr [ %15, %.lr.ph ], [ %i.cp, %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit ]
  %.sroa.0124.0203 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.0124.1, %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit ] ; 5 uses
  %.sroa.0121.0202 = phi ptr [ %16, %.lr.ph ], [ %i.co, %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit ] ; 5 uses
  %i.k = load ptr, ptr %.sroa.0121.0202, align 8, !tbaa !16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 92
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25   ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.sroa.0124.0203 to i64     ; 3 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 3
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = icmp sgt i32 %i.m, %i.t
  br i1 %i.u, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8, !tbaa !72
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.q, %i.w
  %i.y = lshr exact i64 %i.x, 3
  %i.z = trunc i64 %i.y to i32
  %i.aa = call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ab = load ptr, ptr %.sroa.0121.0202, align 8, !tbaa !16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 92
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str, ptr noundef %i.ad, i32 noundef %i.af, i32 noundef %i.t, i32 noundef %i.z)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx22SelectionOptionManager4Impl25placeSelectionsInRequestsERKSt6vectorINS_9SelectionESaIS3_EE, ptr %i.ag, align 8, !tbaa !29
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.1, ptr %.sroa.4113.0..sroa_idx, align 8, !tbaa !29
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 186, ptr %.sroa.5114.0..sroa_idx, align 8, !tbaa !30
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.aa, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr %i.aa, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #24
          to label %bb.as unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %.057 = phi i1 [ false, %bb.j ], [ true, %bb.i ]
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.158 = phi i1 [ %.057, %bb.l ], [ true, %bb.k ] ; 2 uses
  %.pn73 = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ai, %bb.k ] ; 4 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #22
  %i.ak = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

.thread:                                          ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.thread
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #23
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread141: ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !32
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !31
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ax) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.158, label %bb.n, label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.158, label %bb.n, label %bb.ar

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread
  %.pn73.pn.pn134.ph = phi { ptr, i32 } [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread141 ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn73.pn.pn134 = phi { ptr, i32 } [ %.pn73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn73.pn.pn134.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.aa) #22
  br label %bb.ar

bb.o:                                             ; preds = %bb.e
  %i.ay = zext nneg i32 %i.m to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0124.0203, i64 %i.ay
  br label %bb.aa

bb.p:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0121.0202, i64 8 ; 2 uses
  %.not177 = icmp eq ptr %i.ba, %i.j
  br i1 %.not177, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !26 ; 2 uses
  %i.bg = call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.2, ptr noundef %i.bc, ptr noundef %i.bf, ptr noundef %i.bc, ptr noundef %i.bf)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.s unwind label %.thread147

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %6, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %9, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx22SelectionOptionManager4Impl25placeSelectionsInRequestsERKSt6vectorINS_9SelectionESaIS3_EE, ptr %i.bh, align 8, !tbaa !29
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.1, ptr %.sroa.4105.0..sroa_idx, align 8, !tbaa !29
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 208, ptr %.sroa.5106.0..sroa_idx, align 8, !tbaa !30
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.bg, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr %i.bg, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #24
          to label %bb.as unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread: ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split271

bb.v:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.t
  %.053 = phi i1 [ false, %bb.u ], [ true, %bb.t ]
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.154 = phi i1 [ %.053, %bb.w ], [ true, %bb.v ] ; 2 uses
  %.pn65 = phi { ptr, i32 } [ %i.bk, %bb.w ], [ %i.bj, %bb.v ] ; 4 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #22
  %i.bl = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

.thread147:                                       ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.thread: ; preds = %.thread147
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !31
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #23
  br label %.sink.split271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread154: ; preds = %.thread147
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !32
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  br label %.sink.split271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.x
  %i.bx = load i64, ptr %i.bm, align 8, !tbaa !31
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.by) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.154, label %bb.y, label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.154, label %bb.y, label %bb.ar

.sink.split271:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.thread
  %.pn65.pn.pn146.ph = phi { ptr, i32 } [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.thread ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread154 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.y

bb.y:                                             ; preds = %.sink.split271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.pn65.pn.pn146 = phi { ptr, i32 } [ %.pn65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn65.pn.pn146.ph, %.sink.split271 ]
  call void @__cxa_free_exception(ptr %i.bg) #22
  br label %bb.ar

bb.z:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.g, align 8, !tbaa !72
  %.pre223 = ptrtoint ptr %.sroa.0124.0203 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o
  %.pre-phi = phi i64 [ %.pre223, %bb.z ], [ %i.q, %bb.o ]
  %.sroa.0124.1 = phi ptr [ %i.bz, %bb.z ], [ %i.az, %bb.o ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.ca = ptrtoint ptr %.sroa.0124.1 to i64
  %i.cb = sub i64 %i.ca, %.pre-phi                ; 5 uses
  %i.cc = icmp ugt i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.ab, label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.ab
  unreachable

_ZNSt6vectorIN3gmx9SelectionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.aa
  %.not.i.i.i = icmp eq ptr %.sroa.0124.1, %.sroa.0124.0203
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN3gmx9SelectionESaIS1_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN3gmx9SelectionESaIS1_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN3gmx9SelectionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr null, i64 %i.cb
  store ptr %i.cd, ptr %i.h, align 8, !tbaa !34
  br label %bb.ad

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN3gmx9SelectionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #25
          to label %.noexc5.i unwind label %.loopexit ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  store ptr %i.ce, ptr %10, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cb
  store ptr %i.cf, ptr %i.h, align 8, !tbaa !34
  %i.cg = and i64 %i.cb, 9223372036854775800      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %.sroa.0124.0203, i64 %i.cg, i1 false), !tbaa !74
  %scevgep.i.i = getelementptr i8, ptr %i.ce, i64 %i.cg
  br label %bb.ad

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ch = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i6.i, label %.body, label %.body.sink.split

bb.ad:                                            ; preds = %.noexc5.i, %_ZNSt12_Vector_baseIN3gmx9SelectionESaIS1_EE11_M_allocateEm.exit.thread.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN3gmx9SelectionESaIS1_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.noexc5.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !75
  %i.ci = load ptr, ptr %.sroa.0121.0202, align 8, !tbaa !16
  invoke void @_ZN3gmx22SelectionOptionStorage13addSelectionsERKSt6vectorINS_9SelectionESaIS2_EEb(ptr noundef nonnull align 8 dereferenceable(208) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext true)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cj = load ptr, ptr %10, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cn) #23
  br label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit:   ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0121.0202, i64 8 ; 3 uses
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %.not = icmp eq ptr %i.co, %i.cp
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !71

bb.ag:                                            ; preds = %bb.ad
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i86, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ag, %bb.ac
  %.sink275 = phi ptr [ %i.ch, %bb.ac ], [ %i.cr, %bb.ag ] ; 2 uses
  %.pn71.ph = phi { ptr, i32 } [ %lpad.phi, %bb.ac ], [ %i.cq, %bb.ag ]
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %.sink275 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.sink275, i64 noundef %i.cv) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ag, %bb.ac
  %.pn71 = phi { ptr, i32 } [ %lpad.phi, %bb.ac ], [ %i.cq, %bb.ag ], [ %.pn71.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ar

._crit_edge:                                      ; preds = %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit, %bb.c
  %.sroa.0124.0.lcssa = phi ptr [ %i.f, %bb.c ], [ %.sroa.0124.1, %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit ] ; 2 uses
  %.lcssa180 = phi ptr [ %15, %bb.c ], [ %i.co, %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit ]
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !72 ; 2 uses
  %.not176 = icmp eq ptr %.sroa.0124.0.lcssa, %i.cx
  br i1 %.not176, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.cy = load ptr, ptr %1, align 8, !tbaa !72
  %i.cz = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr exact i64 %i.db, 3
  %i.dd = trunc i64 %i.dc to i32
  %i.de = ptrtoint ptr %.sroa.0124.0.lcssa to i64 ; 2 uses
  %i.df = sub i64 %i.cz, %i.de
  %i.dg = lshr exact i64 %i.df, 3
  %i.dh = trunc i64 %i.dg to i32
  %i.di = sub i64 %i.de, %i.da
  %i.dj = lshr exact i64 %i.di, 3
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.3, i32 noundef %i.dk, i32 noundef %i.dd, i32 noundef %i.dh)
          to label %bb.ai unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.aj unwind label %.thread160

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %11, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %14, align 8, !tbaa !28
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx22SelectionOptionManager4Impl25placeSelectionsInRequestsERKSt6vectorINS_9SelectionESaIS3_EE, ptr %i.dm, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 227, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !30
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.dl, ptr noundef nonnull align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr %i.dl, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #24
          to label %bb.as unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread: ; preds = %bb.ah
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split277

bb.am:                                            ; preds = %bb.aj
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.ak
  %.0 = phi i1 [ false, %bb.al ], [ true, %bb.ak ]
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.an ], [ %i.do, %bb.am ] ; 4 uses
  %.1 = phi i1 [ %.0, %bb.an ], [ true, %bb.am ]  ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #22
  %i.dq = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

.thread160:                                       ; preds = %bb.ai
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.thread: ; preds = %.thread160
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !31
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #23
  br label %.sink.split277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread167: ; preds = %.thread160
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !32
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
  br label %.sink.split277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ao
  %i.ec = load i64, ptr %i.dr, align 8, !tbaa !31
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.ed) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.1, label %bb.ap, label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.1, label %bb.ap, label %bb.ar

.sink.split277:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.thread
  %.pn.pn.pn159.ph = phi { ptr, i32 } [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.thread ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread167 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn.pn.pn159 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pn.pn.pn159.ph, %.sink.split277 ]
  call void @__cxa_free_exception(ptr %i.dl) #22
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %.lcssa180, %i.ee
  br i1 %.not.i.i.i93, label %_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit, label %_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.aq
  store ptr %i.ee, ptr %i.c, align 8, !tbaa !39
  br label %_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit

_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit: ; preds = %bb.aq, %_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i
  ret void

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.ap, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %.pn73.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.pn71, %.body ], [ %.pn73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.pn65.pn.pn146, %bb.y ], [ %.pn73.pn.pn134, %bb.n ], [ %.pn.pn.pn159, %bb.ap ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !39
  %.not.i.i.i94 = icmp eq ptr %i.eg, %i.ef
  br i1 %.not.i.i.i94, label %_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit96, label %_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i95

_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i95: ; preds = %bb.ar
  store ptr %i.ef, ptr %i.c, align 8, !tbaa !39
  br label %_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit96

_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit96: ; preds = %bb.ar, %_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i95
  resume { ptr, i32 } %.pn73.pn.pn.pn.pn.pn

bb.as:                                            ; preds = %bb.al, %bb.u, %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx22SelectionOptionManager4Impl27requestUnsetRequiredOptionsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not10 = icmp eq ptr %i.b, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE12emplace_backIJPNS0_22SelectionOptionStorageEEEERS3_DpOT_.exit
  %i.h = phi ptr [ %i.d, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE12emplace_backIJPNS0_22SelectionOptionStorageEEEERS3_DpOT_.exit ] ; 2 uses
  %.sroa.07.011 = phi ptr [ %i.b, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE12emplace_backIJPNS0_22SelectionOptionStorageEEEERS3_DpOT_.exit ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.07.011, align 8, !tbaa !43 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !83
  %i.l = and i64 %i.k, 17
  %or.cond.not = icmp eq i64 %i.l, 16
  br i1 %or.cond.not, label %bb.c, label %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE12emplace_backIJPNS0_22SelectionOptionStorageEEEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !39   ; 6 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.f, align 8, !tbaa !39
  br label %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE12emplace_backIJPNS0_22SelectionOptionStorageEEEERS3_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !38   ; 9 uses
  %i.q = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 4 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
end_hunk_0
