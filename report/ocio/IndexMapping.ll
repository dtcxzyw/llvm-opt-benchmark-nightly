inline.NumInlined: 167
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZNSt6vectorISt4pairIffESaIS1_EE6resizeEm = comdat any

@_ZTVN16OpenColorIO_v2_512IndexMappingE = hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512IndexMappingE, ptr @_ZN16OpenColorIO_v2_512IndexMappingD2Ev, ptr @_ZN16OpenColorIO_v2_512IndexMappingD0Ev] }, align 8
@.str = private unnamed_addr constant [21 x i8] c"IndexMapping: Index \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c" is invalid. Should be less than \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str.3 = private unnamed_addr constant [33 x i8] c"Index values must be increasing.\00", align 1
@_ZTIN16OpenColorIO_v2_512IndexMappingE = hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512IndexMappingE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_512IndexMappingE = hidden constant [35 x i8] c"N16OpenColorIO_v2_512IndexMappingE\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN16OpenColorIO_v2_512IndexMappingC1Em = hidden unnamed_addr alias void (ptr, i64), ptr @_ZN16OpenColorIO_v2_512IndexMappingC2Em
@_ZN16OpenColorIO_v2_512IndexMappingD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_512IndexMappingD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_512IndexMappingC2Em(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_512IndexMappingE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %scevgep, i8 0, i64 72, i1 false)
  invoke void @_ZNSt6vectorISt4pairIffESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %scevgep, i64 noundef %1)
          to label %_ZN16OpenColorIO_v2_512IndexMapping6resizeEm.exit unwind label %bb.b

_ZN16OpenColorIO_v2_512IndexMapping6resizeEm.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.ptr8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %.ptr8, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #16
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit:        ; preds = %bb.b, %bb.c
  %.ptr8.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %.ptr8.1, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.1, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #16
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1:      ; preds = %bb.d, %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit
  %.ptr8.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %.ptr8.2, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.2, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.2, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #16
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.2

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.2:      ; preds = %bb.e, %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_512IndexMapping6resizeEm(ptr noundef nonnull align 8 dereferenceable(88) initializes((8, 16)) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt6vectorISt4pairIffESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_512IndexMappingD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(88) dereferenceable(88) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_512IndexMappingE, i64 16), ptr %0, align 8, !tbaa !8
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.a = load ptr, ptr %.ptr1, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #16
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit:        ; preds = %bb.a, %bb.b
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %.ptr1.1, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.1, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #16
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1:      ; preds = %bb.c, %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %.ptr1.2, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.2 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.2, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #16
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.2

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.2:      ; preds = %bb.d, %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_512IndexMappingD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_512IndexMappingE, i64 16), ptr %0, align 8, !tbaa !8
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.a = load ptr, ptr %.ptr1.i, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #16, !inline_history !18
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.i:      ; preds = %bb.b, %bb.a
  %.ptr1.1.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %.ptr1.1.i, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.1.i, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #16, !inline_history !18
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1.i

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1.i:    ; preds = %bb.c, %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.i
  %.ptr1.2.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %.ptr1.2.i, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.2.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.2.i, label %_ZN16OpenColorIO_v2_512IndexMappingD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #16, !inline_history !18
  br label %_ZN16OpenColorIO_v2_512IndexMappingD2Ev.exit

_ZN16OpenColorIO_v2_512IndexMappingD2Ev.exit:     ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIffESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt4pairIffEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt4pairIffEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !20
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !19
  br label %_ZNSt6vectorISt4pairIffESaIS1_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorISt4pairIffESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorISt4pairIffESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !20
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt4pairIffESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %i.aa = add i64 %i.d, -8
  %i.ab = sub i64 %i.aa, %i.e                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 72
  %i.ae = sub i64 %i.e, %i.z
  %diff.check = icmp ugt i64 %i.ae, -32
end_hunk_0
