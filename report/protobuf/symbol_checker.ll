inline.NumInlined: 381
inline.NumDeleted: 263
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"struct.google::protobuf::internal::VisitImpl" = type { %"struct.google::protobuf::internal::VisitorImpl" }
%"struct.google::protobuf::internal::VisitorImpl" = type { %class.anon }
%class.anon = type { ptr }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<google::protobuf::SymbolCheckerError, std::allocator<google::protobuf::SymbolCheckerError>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::SymbolCheckerError, std::allocator<google::protobuf::SymbolCheckerError>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::SymbolCheckerError, std::allocator<google::protobuf::SymbolCheckerError>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::SymbolCheckerError, std::allocator<google::protobuf::SymbolCheckerError>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [164 x i8] c"\22 is a nested message and cannot be `export` with STRICT default_symbol_visibility. It must be moved to top-level, ideally in its own file in order to be `export`.\00", align 1
@.str.2 = private unnamed_addr constant [263 x i8] c"\22 is a nested enum and cannot be marked `export` with STRICT default_symbol_visibility. It must be moved to top-level, ideally in its own file in order to be `export`. For C++ namespacing of enums in a messages use: `local message <OuterNamespace> { export enum \00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c" {...} reserved 1 to max; }`\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6google8protobuf13SymbolCheckerC1EPKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6google8protobuf13SymbolCheckerC2EPKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoE

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6google8protobuf18SymbolCheckerError7messageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  switch i32 %i.b, label %._crit_edge.i.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i64 1, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %.sroa.03.0.copyload = load i64, ptr %1, align 8, !tbaa !15
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !16
  store i64 %.sroa.03.0.copyload, ptr %4, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 163, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.1, ptr %i.d, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %1, align 8, !tbaa !15 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !17
  store i64 1, ptr %2, align 8, !noalias !17
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str, ptr %i.e, align 8, !noalias !17
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.01.0.copyload, ptr %i.f, align 8, !noalias !17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.22.0.copyload, ptr %i.g, align 8, !noalias !17
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 262, ptr %i.h, align 8, !noalias !17
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.2, ptr %i.i, align 8, !noalias !17
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.sroa.01.0.copyload, ptr %i.j, align 8, !noalias !17
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %.sroa.22.0.copyload, ptr %i.k, align 8, !noalias !17
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 28, ptr %i.l, align 8, !noalias !17
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @.str.3, ptr %i.m, align 8, !noalias !17
  call void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %2, i64 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !17
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !22
  store i8 0, ptr %i.n, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %bb.c, %bb.b
  ret void
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf13SymbolCheckerC2EPKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 1), (8, 96)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(200) %2) unnamed_addr #3 align 2 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %1 = load i16, ptr %i.i, align 1
  %2 = lshr i16 %1, 8
  %3 = and i16 %2, 3                              ; 2 uses
  %i.j = icmp eq i16 %3, 1
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.f, -3
  %i.l = icmp ult i32 %i.k, 2
  %i.m = icmp eq i16 %3, 0
  %i.n = and i1 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load i32, ptr %i.o, align 8
  %.not12 = icmp eq i32 %i.p, 1
  %or.cond = select i1 %i.n, i1 %.not12, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

.critedge:                                        ; preds = %bb.b
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.old13 = load i32, ptr %.old, align 8, !tbaa !72
  %.not12.old = icmp eq i32 %.old13, 1
  br i1 %.not12.old, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !74
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !76
  %i.w = icmp eq i32 %i.v, 536870912
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.critedge, %bb.e, %bb.d, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %.critedge ], [ false, %bb.d ], [ %i.w, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24
  %i.j = add i32 %i.i, -3
  %i.k = icmp ult i32 %i.j, 2
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, 12
  %.not = icmp eq i8 %i.n, 8
  br i1 %.not, label %bb.d, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.e, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %1 = load i16, ptr %i.w, align 1
  %2 = lshr i16 %1, 8
  %3 = and i16 %2, 3                              ; 2 uses
  %i.x = icmp eq i16 %3, 1
  br i1 %i.x, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add i32 %i.t, -3
  %i.z = icmp ult i32 %i.y, 2
  %i.aa = icmp eq i16 %3, 0
  %i.ab = and i1 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ad = load i32, ptr %i.ac, align 8
  %.not12.i = icmp eq i32 %i.ad, 1
  %or.cond.i = select i1 %i.ab, i1 %.not12.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

.critedge.i:                                      ; preds = %bb.e
  %.old.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.old13.i = load i32, ptr %.old.i, align 8, !tbaa !72
  %.not12.old.i = icmp eq i32 %.old13.i, 1
  br i1 %.not12.old.i, label %bb.g, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

bb.g:                                             ; preds = %.critedge.i, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !74
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.h, label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !76
  %i.ak = icmp eq i32 %i.aj, 536870912
  br label %_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit

_ZN6google8protobuf13SymbolChecker22IsEnumNamespaceMessageERKNS0_10DescriptorE.exit: ; preds = %bb.h, %bb.g, %.critedge.i, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %.critedge.i ], [ false, %bb.g ], [ %i.ak, %bb.h ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf13SymbolChecker10InitializeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.google::protobuf::internal::VisitImpl", align 8 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !25, !range !83, !noundef !84
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85, !nonnull !84, !align !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr %0, ptr %1, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !89
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %.preheader38.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  br label %bb.c

.preheader38.i.i:                                 ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !90
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph41.i.i, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit"

.lr.ph41.i.i:                                     ; preds = %.preheader38.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !91
  %i.r = getelementptr inbounds nuw [160 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  %i.w = add i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i
  %.0.i.i.i.i.i.i.i.i = select i1 %i.v, ptr %i.k, ptr %i.z
  %i.aa = load ptr, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !95
  call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(176) %i.aa)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !89
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i, %i.ac
  br i1 %i.ad, label %bb.c, label %.preheader38.i.i, !llvm.loop !96

bb.d:                                             ; preds = %bb.d, %.lr.ph41.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph41.i.i ], [ %indvars.iv.next44.i.i, %bb.d ] ; 3 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !98
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %i.ae, i64 %indvars.iv43.i.i
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = add i64 %i.ah, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv43.i.i
  %.0.i.i.i.i.i.i35.i.i = select i1 %i.aj, ptr %i.p, ptr %i.an
  %i.ao = load ptr, ptr %.0.i.i.i.i.i.i35.i.i, align 8, !tbaa !95
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.ao)
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !90
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next44.i.i, %i.aq
  br i1 %i.ar, label %bb.d, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit", !llvm.loop !99

"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit": ; preds = %bb.d, %.preheader38.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  store i8 1, ptr %0, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf13SymbolChecker26CheckSymbolVisibilityRulesEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.16") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.google::protobuf::internal::VisitImpl", align 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load i8, ptr %1, align 8, !tbaa !25, !range !83, !noundef !84
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85, !nonnull !84, !align !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %1, ptr %2, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !89
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %.preheader38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  br label %.noexc

.preheader38.i.i.i:                               ; preds = %.noexc, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !90
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph41.i.i.i, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i"

.lr.ph41.i.i.i:                                   ; preds = %.preheader38.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  br label %.noexc24

.noexc:                                           ; preds = %.noexc, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.noexc ] ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !91
  %i.r = getelementptr inbounds nuw [160 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  %i.w = add i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = select i1 %i.v, ptr %i.k, ptr %i.z
  %i.aa = load ptr, ptr %.0.i.i.i.i.i.i.i.i.i, align 8, !tbaa !95
  call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(176) %i.aa)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !89
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i.i, %i.ac
  br i1 %i.ad, label %.noexc, label %.preheader38.i.i.i, !llvm.loop !96

.noexc24:                                         ; preds = %.noexc24, %.lr.ph41.i.i.i
  %indvars.iv43.i.i.i = phi i64 [ 0, %.lr.ph41.i.i.i ], [ %indvars.iv.next44.i.i.i, %.noexc24 ] ; 3 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !98
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %i.ae, i64 %indvars.iv43.i.i.i
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = add i64 %i.ah, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv43.i.i.i
  %.0.i.i.i.i.i.i35.i.i.i = select i1 %i.aj, ptr %i.p, ptr %i.an
  %i.ao = load ptr, ptr %.0.i.i.i.i.i.i35.i.i.i, align 8, !tbaa !95
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.ao)
  %indvars.iv.next44.i.i.i = add nuw nsw i64 %indvars.iv43.i.i.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !90
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next44.i.i.i, %i.aq
  br i1 %i.ar, label %.noexc24, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i", !llvm.loop !99

"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i": ; preds = %.noexc24, %.preheader38.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  store i8 1, ptr %1, align 8, !tbaa !25
  br label %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit

_ZN6google8protobuf13SymbolChecker10InitializeEv.exit: ; preds = %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i", %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !100 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !100 ; 2 uses
  %.not93 = icmp eq ptr %i.at, %i.av
  br i1 %.not93, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit
  %i.ay = phi ptr [ null, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit ], [ %i.cq, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ]
  %i.az = phi ptr [ null, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit ], [ %i.cr, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ]
  %.lcssa90 = phi ptr [ null, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit ], [ %i.cs, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  store ptr %.lcssa90, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !101 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !101 ; 2 uses
  %.not7899 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not7899, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit
  %i.bg = phi ptr [ null, %.lr.ph ], [ %i.cq, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 9 uses
  %i.bh = phi ptr [ null, %.lr.ph ], [ %i.cr, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 8 uses
  %.sroa.075.094 = phi ptr [ %i.at, %.lr.ph ], [ %i.ct, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.bi = phi ptr [ null, %.lr.ph ], [ %i.cs, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 12 uses
  %i.bj = load ptr, ptr %.sroa.075.094, align 8, !tbaa !102 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %3 = load i16, ptr %i.bk, align 1
  %4 = and i16 %3, 768
  %i.bl = icmp eq i16 %4, 512
  br i1 %i.bl, label %bb.d, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !105
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 68
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !24
  %i.bq = icmp eq i32 %i.bp, 4
  br i1 %i.bq, label %bb.e, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !106 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.bt, align 1
  %i.bu = zext i16 %.0.copyload.i.i.i to i64      ; 3 uses
  %i.bv = xor i64 %i.bu, -1
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.075.094, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !107 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.bu, ptr %i.bh, align 8, !tbaa !15
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bw, ptr %.sroa.662.0..sroa_idx, align 8, !tbaa !16
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.by, ptr %.sroa.765.0..sroa_idx, align 8, !tbaa !108
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 0, ptr %.sroa.868.0..sroa_idx, align 8, !tbaa !109
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  store ptr %i.bz, ptr %i.aw, align 8, !tbaa !110
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ca = ptrtoint ptr %i.bg to i64
  %i.cb = ptrtoint ptr %i.bi to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 4 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775776
  br i1 %i.cd, label %bb.h, label %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.bi, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
          to label %.noexc25 unwind label %.loopexit.split-lp80

.noexc25:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ce = ashr exact i64 %i.cc, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 288230376151711743)
  %i.ci = select i1 %i.cg, i64 288230376151711743, i64 %i.ch ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cj = shl nuw nsw i64 %i.ci, 5
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #13
          to label %.noexc26 unwind label %.loopexit79 ; 5 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc ; 4 uses
  store i64 %i.bu, ptr %i.cl, align 8, !tbaa !15
  %.sroa.662.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.bw, ptr %.sroa.662.0..sroa_idx63, align 8, !tbaa !16
  %.sroa.765.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.by, ptr %.sroa.765.0..sroa_idx66, align 8, !tbaa !108
  %.sroa.868.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i32 0, ptr %.sroa.868.0..sroa_idx69, align 8, !tbaa !109
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.bg
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc26, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %.noexc26 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %i.bi, %.noexc26 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !113, !alias.scope !114
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bg
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !118

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc26
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ck, %.noexc26 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.cc) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.co, ptr %i.aw, align 8, !tbaa !110
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.ci ; 2 uses
  store ptr %i.cp, ptr %i.ax, align 8, !tbaa !119
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

.loopexit79:                                      ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bi, ptr %0, align 8
  br label %bb.q

.loopexit.split-lp80:                             ; preds = %bb.h
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.f, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d, %bb.c
  %i.cq = phi ptr [ %i.bg, %bb.f ], [ %i.cp, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bg, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %i.cr = phi ptr [ %i.bz, %bb.f ], [ %i.co, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bh, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %i.cs = phi ptr [ %i.bi, %bb.f ], [ %i.ck, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bi, %bb.d ], [ %i.bi, %bb.c ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.075.094, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ct, %i.av
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge103:                                   ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46, %._crit_edge
  %.lcssa96 = phi ptr [ %.lcssa90, %._crit_edge ], [ %i.ei, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ]
  store ptr %.lcssa96, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %.lr.ph102, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46
  %i.cu = phi ptr [ %i.ay, %.lr.ph102 ], [ %i.eg, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 9 uses
  %i.cv = phi ptr [ %i.az, %.lr.ph102 ], [ %i.eh, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 8 uses
  %.sroa.057.0100 = phi ptr [ %i.bb, %.lr.ph102 ], [ %i.ej, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 3 uses
  %i.cw = phi ptr [ %.lcssa90, %.lr.ph102 ], [ %i.ei, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 12 uses
  %i.cx = load ptr, ptr %.sroa.057.0100, align 8, !tbaa !120 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = and i8 %i.cz, 12
  %i.db = icmp eq i8 %i.da, 8
  br i1 %i.db, label %bb.k, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.k:                                             ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !123
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 68
  %i.df = load i32, ptr %i.de, align 4, !tbaa !24
  %i.dg = icmp eq i32 %i.df, 4
  br i1 %i.dg, label %bb.l, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !106 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %.0.copyload.i.i.i27 = load i16, ptr %i.dj, align 1
  %i.dk = zext i16 %.0.copyload.i.i.i27 to i64    ; 3 uses
  %i.dl = xor i64 %i.dk, -1
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.057.0100, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !124 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cv, %i.cu
  br i1 %.not.i.i31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.dk, ptr %i.cv, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.dm, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.do, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !108
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !109
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  store ptr %i.dp, ptr %i.be, align 8, !tbaa !110
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.n:                                             ; preds = %bb.l
  %i.dq = ptrtoint ptr %i.cu to i64
  %i.dr = ptrtoint ptr %i.cw to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 4 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775776
  br i1 %i.dt, label %bb.o, label %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32

bb.o:                                             ; preds = %bb.n
  store ptr %i.cw, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32: ; preds = %bb.n
  %i.du = ashr exact i64 %i.ds, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i.i33, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 288230376151711743)
  %i.dy = select i1 %i.dw, i64 288230376151711743, i64 %i.dx ; 3 uses
  %.not.i.i.i.i34 = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i34)
  %i.dz = shl nuw nsw i64 %i.dy, 5
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #13
          to label %.noexc45 unwind label %.loopexit ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ds ; 4 uses
  store i64 %i.dk, ptr %i.eb, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13SymbolChecker26CheckSymbolVisibilityRulesEv:bb.a
bb.r:                                             ; preds = %bb.q
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.eo) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit: ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(176) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !129   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.e, align 8, !tbaa !133
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.d, align 8, !tbaa !131
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !135  ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 576460752303423487)
  %i.r = select i1 %i.p, i64 576460752303423487, i64 %i.q ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #13 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 3 uses
  store ptr %1, ptr %i.u, align 8, !tbaa !133
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !tbaa !134
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !135
  store ptr %i.w, ptr %i.d, align 8, !tbaa !131
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.f, align 8, !tbaa !132
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"

"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !136
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.preheader55

.lr.ph:                                           ; preds = %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  br label %bb.h

.preheader55:                                     ; preds = %bb.h, %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !137
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph58, label %.preheader52

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !138
  %i.ah = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !92
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = and i64 %i.aj, 1
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = add i64 %i.aj, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %.0.i.i.i.i.i.i = select i1 %i.al, ptr %i.ac, ptr %i.ap
  %i.aq = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !95
  %.val49 = load ptr, ptr %0, align 8, !tbaa !129
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr %.val49, ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(96) %i.aq)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.y, align 4, !tbaa !136
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.h, label %.preheader55, !llvm.loop !139

.lr.ph58:                                         ; preds = %.preheader55
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.i

.preheader52:                                     ; preds = %bb.i, %.preheader55
  ret void

bb.i:                                             ; preds = %.lr.ph58, %bb.i
  %indvars.iv60 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next61, %bb.i ] ; 3 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !140
  %i.ax = getelementptr inbounds nuw [160 x i8], ptr %i.aw, i64 %indvars.iv60
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !92
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = add i64 %i.az, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv60
  %.0.i.i.i.i.i.i50 = select i1 %i.bb, ptr %i.av, ptr %i.bf
  %i.bg = load ptr, ptr %.0.i.i.i.i.i.i50, align 8, !tbaa !95
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.ax, ptr noundef nonnull align 8 dereferenceable(176) %i.bg)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.bh = load i32, ptr %i.ad, align 8, !tbaa !137
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next61, %i.bi
  br i1 %i.bj, label %bb.i, label %.preheader52, !llvm.loop !141
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr captures(none) %.0.val, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 7 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %i.i = add i32 %i.h, -3
  %i.j = icmp ult i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, 12
  %.not.i.i.i = icmp eq i8 %i.m, 8
  br i1 %.not.i.i.i, label %bb.d, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %2 = load i16, ptr %i.v, align 1
  %3 = lshr i16 %2, 8
  %4 = and i16 %3, 3                              ; 2 uses
  %i.w = icmp eq i16 %4, 1
  br i1 %i.w, label %.critedge.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add i32 %i.s, -3
  %i.y = icmp ult i32 %i.x, 2
  %i.z = icmp eq i16 %4, 0
  %i.aa = and i1 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ac = load i32, ptr %i.ab, align 8
  %.not12.i.i.i.i = icmp eq i32 %i.ac, 1
  %or.cond.i.i.i.i = select i1 %i.aa, i1 %.not12.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.g, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

.critedge.i.i.i.i:                                ; preds = %bb.e
  %.old.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.old13.i.i.i.i = load i32, ptr %.old.i.i.i.i, align 8, !tbaa !72
  %.not12.old.i.i.i.i = icmp eq i32 %.old13.i.i.i.i, 1
  br i1 %.not12.old.i.i.i.i, label %bb.g, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.g:                                             ; preds = %.critedge.i.i.i.i, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !76
  %i.aj = icmp eq i32 %i.ai, 536870912
  br i1 %i.aj, label %bb.h, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.h:                                             ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 80 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !142 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 88 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !143
  %.not.i.i8.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not.i.i8.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr %i.am, align 8, !tbaa !144
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %1, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !tbaa !145
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !142
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

bb.j:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !146 ; 4 uses
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775792
  br i1 %i.au, label %bb.k, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.j
  %i.av = ashr exact i64 %i.at, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #13 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 3 uses
  store ptr %0, ptr %i.bc, align 8, !tbaa !144
  %.sroa.522.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %1, ptr %.sroa.522.0..sroa_idx23.i.i, align 8, !tbaa !145
  %i.bd = icmp sgt i64 %i.at, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.aq, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  store ptr %i.bb, ptr %i.ak, align 8, !tbaa !146
  store ptr %i.be, ptr %i.al, align 8, !tbaa !142
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bf, ptr %i.an, align 8, !tbaa !143
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i: ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i, %bb.g, %.critedge.i.i.i.i, %bb.f, %bb.d, %bb.c, %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.val, i64 56 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !142 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !143
  %.not.i.i9.i.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i9.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i
  store ptr %0, ptr %i.bi, align 8, !tbaa !144
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !145
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !142
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

bb.o:                                             ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !146 ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775792
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i11.i.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i11.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 576460752303423487)
  %i.bv = select i1 %i.bt, i64 576460752303423487, i64 %i.bu ; 3 uses
  %.not.i.i.i.i12.i.i = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i12.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #13 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 3 uses
  store ptr %0, ptr %i.by, align 8, !tbaa !144
  %.sroa.5.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx18.i.i, align 8, !tbaa !145
  %i.bz = icmp sgt i64 %i.bp, 0
  br i1 %i.bz, label %bb.q, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i: ; preds = %bb.q, %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.not.i17.i.i.i14.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i.i14.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i: ; preds = %bb.r, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i
  store ptr %i.bx, ptr %i.bg, align 8, !tbaa !146
  store ptr %i.ca, ptr %i.bh, align 8, !tbaa !142
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !143
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit": ; preds = %bb.a, %bb.i, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, %bb.n, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
end_hunk_1
