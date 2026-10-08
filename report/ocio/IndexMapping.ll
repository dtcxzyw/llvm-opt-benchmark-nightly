Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/IndexMapping?download=true
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

$_ZNSt6vectorISt4pairIffESaIS1_EE17_M_default_appendEm = comdat any

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
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_512IndexMappingE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !12
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %scevgep, i8 0, i64 72, i1 false)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN16OpenColorIO_v2_512IndexMapping6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorISt4pairIffESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %scevgep, i64 noundef %1)
          to label %_ZN16OpenColorIO_v2_512IndexMapping6resizeEm.exit unwind label %bb.c

_ZN16OpenColorIO_v2_512IndexMapping6resizeEm.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.ptr8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %.ptr8, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #16
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit:        ; preds = %bb.c, %bb.d
  %.ptr8.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %.ptr8.1, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i10.1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i10.1, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #16
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1:      ; preds = %bb.e, %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit
  %.ptr8.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %.ptr8.2, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i10.2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i10.2, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.2, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #16
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.2

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.2:      ; preds = %bb.f, %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_512IndexMapping6resizeEm(ptr noundef nonnull align 8 dereferenceable(88) initializes((8, 16)) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %1, %i.i
  tail call void @_ZNSt6vectorISt4pairIffESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k)
  br label %_ZNSt6vectorISt4pairIffESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, %i.i
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorISt4pairIffESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIffESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPSt4pairIffES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIffES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.m, ptr %i.c, align 8, !tbaa !18
  br label %_ZNSt6vectorISt4pairIffESaIS1_EE6resizeEm.exit

_ZNSt6vectorISt4pairIffESaIS1_EE6resizeEm.exit:   ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt4pairIffES1_EvT_S3_RSaIT0_E.exit.i.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_512IndexMappingD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(88) dereferenceable(88) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_512IndexMappingE, i64 16), ptr %0, align 8, !tbaa !9
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.a = load ptr, ptr %.ptr1, align 8, !tbaa !16 ; 3 uses
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
  %i.g = load ptr, ptr %.ptr1.1, align 8, !tbaa !16 ; 3 uses
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
  %i.m = load ptr, ptr %.ptr1.2, align 8, !tbaa !16 ; 3 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_512IndexMappingE, i64 16), ptr %0, align 8, !tbaa !9
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.a = load ptr, ptr %.ptr1.i, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #16, !inline_history !25
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.i:      ; preds = %bb.b, %bb.a
  %.ptr1.1.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %.ptr1.1.i, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.1.i, label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #16, !inline_history !25
  br label %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1.i

_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1.i:    ; preds = %bb.c, %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.i
  %.ptr1.2.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %.ptr1.2.i, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i.2.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.2.i, label %_ZN16OpenColorIO_v2_512IndexMappingD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #16, !inline_history !25
  br label %_ZN16OpenColorIO_v2_512IndexMappingD2Ev.exit

_ZN16OpenColorIO_v2_512IndexMappingD2Ev.exit:     ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EED2Ev.exit.1.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK16OpenColorIO_v2_512IndexMapping12getDimensionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZNK16OpenColorIO_v2_512IndexMapping10getIndicesEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(88) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_512IndexMapping16getNumComponentsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #4 align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_512IndexMapping13validateIndexEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.i, label %bb.b
end_hunk_0
