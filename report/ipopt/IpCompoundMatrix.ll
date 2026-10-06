Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCompoundMatrix?download=true
inline.NumInlined: 1065
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector.25" = type { %"struct.std::_Vector_base.26" }
%"struct.std::_Vector_base.26" = type { %"struct.std::_Vector_base<Ipopt::SmartPtr<Ipopt::Matrix>, std::allocator<Ipopt::SmartPtr<Ipopt::Matrix>>>::_Vector_impl" }
%"struct.std::_Vector_base<Ipopt::SmartPtr<Ipopt::Matrix>, std::allocator<Ipopt::SmartPtr<Ipopt::Matrix>>>::_Vector_impl" = type { %"struct.std::_Vector_base<Ipopt::SmartPtr<Ipopt::Matrix>, std::allocator<Ipopt::SmartPtr<Ipopt::Matrix>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Ipopt::SmartPtr<Ipopt::Matrix>, std::allocator<Ipopt::SmartPtr<Ipopt::Matrix>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.30" = type { %"struct.std::_Vector_base.31" }
%"struct.std::_Vector_base.31" = type { %"struct.std::_Vector_base<Ipopt::SmartPtr<const Ipopt::Matrix>, std::allocator<Ipopt::SmartPtr<const Ipopt::Matrix>>>::_Vector_impl" }
%"struct.std::_Vector_base<Ipopt::SmartPtr<const Ipopt::Matrix>, std::allocator<Ipopt::SmartPtr<const Ipopt::Matrix>>>::_Vector_impl" = type { %"struct.std::_Vector_base<Ipopt::SmartPtr<const Ipopt::Matrix>, std::allocator<Ipopt::SmartPtr<const Ipopt::Matrix>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Ipopt::SmartPtr<const Ipopt::Matrix>, std::allocator<Ipopt::SmartPtr<const Ipopt::Matrix>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.Ipopt::SmartPtr.58" = type { ptr }
%"class.std::vector.59" = type { %"struct.std::_Vector_base.60" }
%"struct.std::_Vector_base.60" = type { %"struct.std::_Vector_base<Ipopt::SmartPtr<const Ipopt::MatrixSpace>, std::allocator<Ipopt::SmartPtr<const Ipopt::MatrixSpace>>>::_Vector_impl" }
%"struct.std::_Vector_base<Ipopt::SmartPtr<const Ipopt::MatrixSpace>, std::allocator<Ipopt::SmartPtr<const Ipopt::MatrixSpace>>>::_Vector_impl" = type { %"struct.std::_Vector_base<Ipopt::SmartPtr<const Ipopt::MatrixSpace>, std::allocator<Ipopt::SmartPtr<const Ipopt::MatrixSpace>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Ipopt::SmartPtr<const Ipopt::MatrixSpace>, std::allocator<Ipopt::SmartPtr<const Ipopt::MatrixSpace>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.64" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>

$_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev = comdat any

$_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EED2Ev = comdat any

$_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EED2Ev = comdat any

$_ZNSt6vectorIS_IN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EESaIS5_EED2Ev = comdat any

$_ZN5Ipopt6MatrixD2Ev = comdat any

$_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EED2Ev = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EED2Ev = comdat any

$_ZN5Ipopt19CompoundMatrixSpaceD2Ev = comdat any

$_ZN5Ipopt19CompoundMatrixSpaceD0Ev = comdat any

$_ZNK5Ipopt19CompoundMatrixSpace7MakeNewEv = comdat any

$_ZN5Ipopt12TaggedObjectD2Ev = comdat any

$_ZN5Ipopt12TaggedObjectD0Ev = comdat any

$_ZThn16_N5Ipopt12TaggedObjectD1Ev = comdat any

$_ZThn16_N5Ipopt12TaggedObjectD0Ev = comdat any

$_ZN5Ipopt7SubjectD2Ev = comdat any

$_ZN5Ipopt7SubjectD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_ = comdat any

$_ZNSt6vectorIS_IN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_ = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIbSaIbEEC2ERKS1_ = comdat any

$_ZTVN5Ipopt19CompoundMatrixSpaceE = comdat any

$_ZTIN5Ipopt19CompoundMatrixSpaceE = comdat any

$_ZTSN5Ipopt19CompoundMatrixSpaceE = comdat any

$_ZTIN5Ipopt11MatrixSpaceE = comdat any

$_ZTSN5Ipopt11MatrixSpaceE = comdat any

$_ZTIN5Ipopt16ReferencedObjectE = comdat any

$_ZTSN5Ipopt16ReferencedObjectE = comdat any

$_ZTVN5Ipopt12TaggedObjectE = comdat any

$_ZTIN5Ipopt12TaggedObjectE = comdat any

$_ZTSN5Ipopt12TaggedObjectE = comdat any

$_ZTIN5Ipopt7SubjectE = comdat any

$_ZTSN5Ipopt7SubjectE = comdat any

$_ZTVN5Ipopt7SubjectE = comdat any

@_ZTVN5Ipopt14CompoundMatrixE = constant { [14 x ptr], [4 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN5Ipopt14CompoundMatrixE, ptr @_ZN5Ipopt14CompoundMatrixD1Ev, ptr @_ZN5Ipopt14CompoundMatrixD0Ev, ptr @_ZNK5Ipopt6Matrix5PrintENS_8SmartPtrIKNS_10JournalistEEENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSE_, ptr @_ZNK5Ipopt6Matrix5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_, ptr @_ZNK5Ipopt14CompoundMatrix14MultVectorImplEdRKNS_6VectorEdRS1_, ptr @_ZNK5Ipopt14CompoundMatrix19TransMultVectorImplEdRKNS_6VectorEdRS1_, ptr @_ZNK5Ipopt14CompoundMatrix13AddMSinvZImplEdRKNS_6VectorES3_RS1_, ptr @_ZNK5Ipopt14CompoundMatrix18SinvBlrmZMTdBrImplEdRKNS_6VectorES3_S3_S3_RS1_, ptr @_ZNK5Ipopt14CompoundMatrix19HasValidNumbersImplEv, ptr @_ZNK5Ipopt14CompoundMatrix18ComputeRowAMaxImplERNS_6VectorEb, ptr @_ZNK5Ipopt14CompoundMatrix18ComputeColAMaxImplERNS_6VectorEb, ptr @_ZNK5Ipopt14CompoundMatrix9PrintImplERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN5Ipopt14CompoundMatrixE, ptr @_ZThn16_N5Ipopt14CompoundMatrixD1Ev, ptr @_ZThn16_N5Ipopt14CompoundMatrixD0Ev] }, align 8
@_ZTIN5Ipopt6VectorE = external constant ptr
@_ZTIN5Ipopt14CompoundVectorE = external constant ptr
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"%sCompoundMatrix \22%s\22 with %d row and %d columns components:\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%sComponent for row %d and column %d:\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s[%2d][%2d]\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%sComponent has not been set.\0A\00", align 1
@_ZTVN5Ipopt19CompoundMatrixSpaceE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5Ipopt19CompoundMatrixSpaceE, ptr @_ZN5Ipopt19CompoundMatrixSpaceD2Ev, ptr @_ZN5Ipopt19CompoundMatrixSpaceD0Ev, ptr @_ZNK5Ipopt19CompoundMatrixSpace7MakeNewEv] }, comdat, align 8
@_ZTIN5Ipopt14CompoundMatrixE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt14CompoundMatrixE, ptr @_ZTIN5Ipopt6MatrixE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt14CompoundMatrixE = constant [25 x i8] c"N5Ipopt14CompoundMatrixE\00", align 1
@_ZTIN5Ipopt6MatrixE = external constant ptr
@_ZTIN5Ipopt19CompoundMatrixSpaceE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt19CompoundMatrixSpaceE, ptr @_ZTIN5Ipopt11MatrixSpaceE }, comdat, align 8
@_ZTSN5Ipopt19CompoundMatrixSpaceE = linkonce_odr constant [30 x i8] c"N5Ipopt19CompoundMatrixSpaceE\00", comdat, align 1
@_ZTIN5Ipopt11MatrixSpaceE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt11MatrixSpaceE, ptr @_ZTIN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTSN5Ipopt11MatrixSpaceE = linkonce_odr constant [22 x i8] c"N5Ipopt11MatrixSpaceE\00", comdat, align 1
@_ZTIN5Ipopt16ReferencedObjectE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt16ReferencedObjectE = linkonce_odr constant [27 x i8] c"N5Ipopt16ReferencedObjectE\00", comdat, align 1
@_ZTVN5Ipopt6MatrixE = external constant { [14 x ptr], [4 x ptr] }, align 8
@_ZTVN5Ipopt12TaggedObjectE = linkonce_odr constant { [4 x ptr], [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5Ipopt12TaggedObjectE, ptr @_ZN5Ipopt12TaggedObjectD2Ev, ptr @_ZN5Ipopt12TaggedObjectD0Ev], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN5Ipopt12TaggedObjectE, ptr @_ZThn16_N5Ipopt12TaggedObjectD1Ev, ptr @_ZThn16_N5Ipopt12TaggedObjectD0Ev] }, comdat, align 8
@_ZTIN5Ipopt12TaggedObjectE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt12TaggedObjectE, i32 0, i32 2, ptr @_ZTIN5Ipopt16ReferencedObjectE, i64 2, ptr @_ZTIN5Ipopt7SubjectE, i64 4098 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt12TaggedObjectE = linkonce_odr constant [23 x i8] c"N5Ipopt12TaggedObjectE\00", comdat, align 1
@_ZTIN5Ipopt7SubjectE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt7SubjectE }, comdat, align 8
@_ZTSN5Ipopt7SubjectE = linkonce_odr constant [17 x i8] c"N5Ipopt7SubjectE\00", comdat, align 1
@_ZTVN5Ipopt7SubjectE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5Ipopt7SubjectE, ptr @_ZN5Ipopt7SubjectD2Ev, ptr @_ZN5Ipopt7SubjectD0Ev] }, comdat, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN5Ipopt14CompoundMatrixC1EPKNS_19CompoundMatrixSpaceE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5Ipopt14CompoundMatrixC2EPKNS_19CompoundMatrixSpaceE
@_ZN5Ipopt14CompoundMatrixD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5Ipopt14CompoundMatrixD2Ev
@_ZN5Ipopt19CompoundMatrixSpaceC1Eiiii = unnamed_addr alias void (ptr, i32, i32, i32, i32), ptr @_ZN5Ipopt19CompoundMatrixSpaceC2Eiiii

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14CompoundMatrixC2EPKNS_19CompoundMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(129) initializes((0, 12), (16, 48)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.30", align 8    ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt12TaggedObjectE, i64 16), ptr %0, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt12TaggedObjectE, i64 48), ptr %i.b, align 8, !tbaa !31
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(69) %0)
          to label %_ZN5Ipopt12TaggedObjectC2Ev.exit.i unwind label %bb.b

common.resume:                                    ; preds = %bb.ac, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn.pn, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #19
  br label %common.resume

_ZN5Ipopt12TaggedObjectC2Ev.exit.i:               ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ipopt6MatrixE, i64 16), ptr %0, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt6MatrixE, i64 128), ptr %i.b, align 8, !tbaa !31
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Ipopt12TaggedObjectC2Ev.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5Ipopt12TaggedObjectC2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.i, align 8, !tbaa !173
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ipopt14CompoundMatrixE, i64 16), ptr %0, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14CompoundMatrixE, i64 128), ptr %i.b, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  store ptr %1, ptr %i.l, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.m, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !77   ; 3 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %bb.e, label %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.r = shl nuw nsw i64 %i.p, 3                  ; 3 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #21
          to label %.noexc11 unwind label %bb.n   ; 4 uses

.noexc11:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.s, ptr %2, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.r, i1 false), !tbaa !83
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.s, i64 %i.r
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.noexc11
  %i.u = phi ptr [ %.pre, %.noexc11 ], [ %1, %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.t, %.noexc11 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc11 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.w, align 8, !tbaa !84
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.v, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !77   ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp slt i32 %i.y, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.f
  store i64 0, ptr %3, align 8
  %.not.i.i.i.i12 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i12, label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EEC2EmRKS5_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i13

.lr.ph.preheader.i.i.i.i.i13:                     ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.ab = shl nuw nsw i64 %i.z, 3                 ; 3 uses
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #21
          to label %.noexc18 unwind label %bb.o   ; 5 uses

.noexc18:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i13
  store ptr %i.ac, ptr %3, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %i.ab, i1 false), !tbaa !90
  %scevgep.i.i.i.i.i14 = getelementptr i8, ptr %i.ac, i64 %i.ab
  %.pre48 = load ptr, ptr %i.l, align 8, !tbaa !58
  br label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EEC2EmRKS5_.exit.thread.i

_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EEC2EmRKS5_.exit.thread.i: ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i, %.noexc18
  %i.ae = phi ptr [ %i.ac, %.noexc18 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %i.af = phi ptr [ %.pre48, %.noexc18 ], [ %i.u, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.sink.i15 = phi ptr [ %i.ad, %.noexc18 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.0.lcssa.i.i.i.i.i16 = phi ptr [ %scevgep.i.i.i.i.i14, %.noexc18 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.sink.i15, ptr %i.ah, align 8, !tbaa !91
  store ptr %.0.lcssa.i.i.i.i.i16, ptr %i.ag, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !93
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EEC2EmRKS5_.exit.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIS_IN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EESaIS5_EE9push_backERKS5_.exit
  %.pre49 = load ptr, ptr %3, align 8, !tbaa !88
  %.pre50 = load ptr, ptr %i.ag, align 8, !tbaa !92
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EEC2EmRKS5_.exit.thread.i
  %i.ap = phi ptr [ %.pre50, %._crit_edge.loopexit ], [ %.0.lcssa.i.i.i.i.i16, %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EEC2EmRKS5_.exit.thread.i ] ; 2 uses
  %i.aq = phi ptr [ %.pre49, %._crit_edge.loopexit ], [ %i.ae, %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EEC2EmRKS5_.exit.thread.i ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i ], [ %i.aq, %._crit_edge ] ; 2 uses
  %i.ar = load ptr, ptr %.05.i.i.i, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !29
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %i.as, align 8, !tbaa !29
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(69) %i.ar) #19, !inline_history !170
  br label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.az, %i.ap
  br i1 %.not.i.i.i19, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.ba = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.aq, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !91
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #22
  br label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bf = load ptr, ptr %2, align 8, !tbaa !80    ; 3 uses
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !85  ; 2 uses
  %.not4.i.i.i20 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not4.i.i.i20, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6MatrixEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit, %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6MatrixEEEEvPT_.exit.i.i.i
  %.05.i.i.i22 = phi ptr [ %i.bp, %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6MatrixEEEEvPT_.exit.i.i.i ], [ %i.bf, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit ] ; 2 uses
  %i.bh = load ptr, ptr %.05.i.i.i22, align 8, !tbaa !83 ; 4 uses
  %.not.i.i.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i23, label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6MatrixEEEEvPT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !29
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !29
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6MatrixEEEEvPT_.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(69) %i.bh) #19, !inline_history !171
  br label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6MatrixEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6MatrixEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k, %.lr.ph.i.i.i21
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i22, i64 8 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bp, %i.bg
  br i1 %.not.i.i.i24, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6MatrixEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i21, !llvm.loop !1

_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6MatrixEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6MatrixEEEEvPT_.exit.i.i.i
  %.pr.i25 = load ptr, ptr %2, align 8, !tbaa !80
  br label %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6MatrixEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6MatrixEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6MatrixEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit
  %i.bq = phi ptr [ %.pr.i25, %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6MatrixEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.bf, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i26 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i26, label %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6MatrixEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.br = load ptr, ptr %i.w, align 8, !tbaa !84
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #22
  br label %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6MatrixEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.n:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i13, %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.v, %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrINS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  br label %bb.ab

bb.q:                                             ; preds = %.lr.ph, %_ZNSt6vectorIS_IN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EESaIS5_EE9push_backERKS5_.exit
  %.046 = phi i32 [ 0, %.lr.ph ], [ %i.dr, %_ZNSt6vectorIS_IN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EESaIS5_EE9push_backERKS5_.exit ]
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !95 ; 6 uses
  %i.by = load ptr, ptr %i.am, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 2 uses
  %i.ca = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
end_hunk_0
