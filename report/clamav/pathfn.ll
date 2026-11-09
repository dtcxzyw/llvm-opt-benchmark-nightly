Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pathfn?download=true
inline.NumInlined: 49
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.FindFile = type { [2048 x i32], i8, ptr }
%struct.FindData = type <{ [2048 x i32], i64, i32, i8, i8, [2 x i8], %class.RarTime, %class.RarTime, %class.RarTime, i32, i8, [3 x i8] }>
%class.RarTime = type { i64 }
%class.Archive = type <{ %class.File, %class.CryptData, %class.ComprDataIO, i8, [7 x i8], ptr, %class.RarTime, i32, i32, i8, [7 x i8], %class.QuickOpen, i8, [3 x i8], %struct.BaseBlock, %struct.MarkHeader, [4 x i8], %struct.MainHeader, %struct.CryptHeader, [4 x i8], %struct.FileHeader, %struct.EndArcHeader, %struct.SubBlockHeader, [4 x i8], %struct.FileHeader, %struct.CommentHeader, %struct.ProtectHeader, %struct.EAHeader, %struct.StreamHeader, [4 x i8], i64, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i64, i8, i8, [16 x i8], i8, i8, i32, i64, i64, i64, i8, [3 x i8], [2048 x i32], [4 x i8] }>
%class.File = type { ptr, i64, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i64, i8, [2048 x i32], i32, ptr }
%class.CryptData = type { [4 x %"struct.CryptData::KDF3CacheItem"], i32, [4 x i8], [4 x %"struct.CryptData::KDF5CacheItem"], i32, i32, %class.Rijndael, [256 x i32], [256 x i8], [4 x i32], [3 x i8], [4 x i16], [4 x i8] }
%"struct.CryptData::KDF3CacheItem" = type { %class.SecPassword, [8 x i8], [16 x i8], [16 x i8], i8, [7 x i8] }
%class.SecPassword = type <{ %"class.std::vector", i8, [7 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<wchar_t, std::allocator<wchar_t>>::_Vector_impl" }
%"struct.std::_Vector_base<wchar_t, std::allocator<wchar_t>>::_Vector_impl" = type { %"struct.std::_Vector_base<wchar_t, std::allocator<wchar_t>>::_Vector_impl_data" }
%"struct.std::_Vector_base<wchar_t, std::allocator<wchar_t>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.CryptData::KDF5CacheItem" = type { %class.SecPassword, [16 x i8], [32 x i8], i32, [32 x i8], [32 x i8], [4 x i8] }
%class.Rijndael = type { i8, i32, [16 x i8], [15 x [4 x [4 x i8]]] }
%class.ComprDataIO = type <{ i8, [7 x i8], i64, ptr, i8, [7 x i8], i64, ptr, i64, ptr, i64, i64, i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8], i64, i64, i64, i64, i64, i64, i64, %class.DataHash, %class.DataHash, %class.DataHash, i8, i8, [6 x i8] }>
%class.DataHash = type { i32, i32, ptr }
%class.QuickOpen = type <{ ptr, i8, [7 x i8], ptr, ptr, ptr, i64, %class.CryptData, i8, [7 x i8], i64, i64, i64, i64, i64, i64, %class.Array, i64, i64, i8, [7 x i8] }>
%class.Array = type { ptr, i64, i64, i64 }
%struct.BaseBlock = type { i32, i32, i32, i32, i8 }
%struct.MarkHeader = type { [8 x i8], i32 }
%struct.MainHeader = type { %struct.BaseBlock, i16, i32, i8, i8, i8, i64, i64, i64, i64, i64, %"class.std::__cxx11::basic_string", %class.RarTime }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.CryptHeader = type { %struct.BaseBlock, i8, i32, [16 x i8], [8 x i8] }
%struct.EndArcHeader = type { %struct.BaseBlock, i32, i32, i8, i8, i8, i8 }
%struct.SubBlockHeader = type <{ %struct.BlockHeader, i16, i8, i8 }>
%struct.BlockHeader = type { %struct.BaseBlock, i32 }
%struct.FileHeader = type { %struct.BlockHeader, i8, i32, i8, %union.anon.0, [2048 x i32], %class.Array, %class.RarTime, %class.RarTime, %class.RarTime, i64, i64, i64, %struct.HashValue, i32, i8, i8, i8, i8, i32, i8, [16 x i8], [16 x i8], i8, [8 x i8], i8, [32 x i8], i32, i8, i8, i8, i8, i64, i8, i8, i8, i32, i32, [2048 x i32], i8, i8, i8, i8, [256 x i8], [256 x i8], i32, i32 }
%union.anon.0 = type { i32 }
%struct.HashValue = type { i32, %union.anon.1 }
%union.anon.1 = type { i32, [28 x i8] }
%struct.CommentHeader = type <{ %struct.BaseBlock, i16, i8, i8, i16, [2 x i8] }>
%struct.ProtectHeader = type { %struct.BlockHeader, i8, i16, i32, [8 x i8] }
%struct.EAHeader = type { %struct.SubBlockHeader.base, i32, i8, i8, i32 }
%struct.SubBlockHeader.base = type <{ %struct.BlockHeader, i16, i8 }>
%struct.StreamHeader = type <{ %struct.SubBlockHeader.base, i8, i32, i8, i8, [2 x i8], i32, i16, [260 x i8], [2 x i8] }>
%struct.RarLocalTime = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i32] [i32 46, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 115, i32 102, i32 120, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 42, i32 63, i32 0], align 4
@_ZZ15EnumConfigPathsjPwmbE8ConfPath = internal unnamed_addr constant [5 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 16
@.str.3 = private unnamed_addr constant [5 x i32] [i32 47, i32 101, i32 116, i32 99, i32 0], align 4
@.str.4 = private unnamed_addr constant [9 x i32] [i32 47, i32 101, i32 116, i32 99, i32 47, i32 114, i32 97, i32 114, i32 0], align 4
@.str.5 = private unnamed_addr constant [9 x i32] [i32 47, i32 117, i32 115, i32 114, i32 47, i32 108, i32 105, i32 98, i32 0], align 4
@.str.6 = private unnamed_addr constant [15 x i32] [i32 47, i32 117, i32 115, i32 114, i32 47, i32 108, i32 111, i32 99, i32 97, i32 108, i32 47, i32 108, i32 105, i32 98, i32 0], align 4
@.str.7 = private unnamed_addr constant [15 x i32] [i32 47, i32 117, i32 115, i32 114, i32 47, i32 108, i32 111, i32 99, i32 97, i32 108, i32 47, i32 101, i32 116, i32 99, i32 0], align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.9 = private unnamed_addr constant [5 x i32] [i32 46, i32 114, i32 97, i32 114, i32 0], align 4
@.str.10 = private unnamed_addr constant [5 x i32] [i32 46, i32 101, i32 120, i32 101, i32 0], align 4
@.str.11 = private unnamed_addr constant [5 x i32] [i32 46, i32 115, i32 102, i32 120, i32 0], align 4
@.str.12 = private unnamed_addr constant [3 x i32] [i32 48, i32 48, i32 0], align 4
@.str.13 = private unnamed_addr constant [7 x i32] [i32 63, i32 42, i32 60, i32 62, i32 124, i32 34, i32 0], align 4
@.str.14 = private unnamed_addr constant [3 x i32] [i32 63, i32 42, i32 0], align 4
@.str.16 = private unnamed_addr constant [4 x i32] [i32 114, i32 97, i32 114, i32 0], align 4
@.str.17 = private unnamed_addr constant [2 x i32] [i32 42, i32 0], align 4
@.str.18 = private unnamed_addr constant [15 x i32] [i32 121, i32 121, i32 121, i32 121, i32 109, i32 109, i32 100, i32 100, i32 104, i32 104, i32 109, i32 109, i32 115, i32 115, i32 0], align 4
@.str.19 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"%04u\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%02u\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%03u\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%05u\00", align 1
@.str.25 = private unnamed_addr constant [11 x i32] [i32 89, i32 77, i32 68, i32 72, i32 73, i32 83, i32 87, i32 65, i32 69, i32 78, i32 0], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_Z11PointToNamePKw(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #17 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = and i64 %i.a, 2147483647
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = trunc nuw i64 %i.g to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.loopexit, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv22 = phi i64 [ %i.d, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.g = add nsw i64 %indvars.iv22, -1            ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = icmp eq i32 %i.i, 47
  br i1 %i.j, label %bb.d, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.1 = phi ptr [ %i.k, %bb.d ], [ %0, %bb.a ], [ %0, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %0, 47
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z10IsDriveDivi(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_Z15PointToLastCharPKw(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #17 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = select i1 %.not, ptr %0, ptr %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z11ConvertPathPKwPwm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.046 = phi ptr [ %0, %bb.a ], [ %.147, %bb.f ] ; 5 uses
  %.045 = phi ptr [ %0, %bb.a ], [ %i.m, %bb.f ]  ; 6 uses
  %i.b = load i32, ptr %.045, align 4, !tbaa !11
  switch i32 %i.b, label %bb.f [
    i32 0, label %.preheader
    i32 47, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %i.e = icmp eq i32 %i.d, 46
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.045, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = icmp eq i32 %i.g, 46
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.045, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %i.k = icmp eq i32 %i.j, 47
  %i.l = getelementptr inbounds nuw i8, ptr %.045, i64 16
  %spec.select = select i1 %i.k, ptr %i.l, ptr %.046
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.c, %bb.d
  %.147 = phi ptr [ %.046, %bb.b ], [ %spec.select, %bb.e ], [ %.046, %bb.d ], [ %.046, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.045, i64 4
  br label %bb.b, !llvm.loop !19

.preheader:                                       ; preds = %bb.b, %bb.o
  %.248 = phi ptr [ %.3, %bb.o ], [ %.046, %bb.b ] ; 13 uses
  %i.n = load i32, ptr %.248, align 4, !tbaa !11  ; 2 uses
  switch i32 %i.n, label %.loopexit.preheader [
    i32 0, label %.thread
    i32 47, label %bb.g
  ]

bb.g:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.248, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11
  %i.q = icmp eq i32 %i.p, 47
  br i1 %i.q, label %bb.h, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %bb.i, %.preheader, %bb.k, %bb.g
  %.0.ph = phi ptr [ %.248, %.preheader ], [ %i.t, %bb.k ], [ %.248, %bb.g ], [ %.248, %bb.i ] ; 2 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.248, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.042 = phi i32 [ 0, %bb.h ], [ %.1, %bb.l ]    ; 2 uses
  %.041 = phi ptr [ %i.r, %bb.h ], [ %i.u, %bb.l ] ; 3 uses
  %i.s = load i32, ptr %.041, align 4, !tbaa !11
  switch i32 %i.s, label %bb.l [
    i32 0, label %.loopexit.preheader
    i32 47, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %.not58 = icmp eq i32 %.042, 0
  br i1 %.not58, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.041, i64 4
  br label %.loopexit.preheader

bb.l:                                             ; preds = %bb.i, %bb.j
  %.1 = phi i32 [ 1, %bb.j ], [ %.042, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.041, i64 4
  br label %bb.i, !llvm.loop !20

.loopexit:                                        ; preds = %.loopexit.preheader, %bb.n
  %.3 = phi ptr [ %.4, %bb.n ], [ %.0.ph, %.loopexit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.x, %bb.n ], [ %.0.ph, %.loopexit.preheader ] ; 3 uses
  %i.v = load i32, ptr %.0, align 4, !tbaa !11
  switch i32 %i.v, label %bb.o [
    i32 46, label %bb.n
    i32 47, label %bb.m
  ]

bb.m:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 4
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.m
  %.4 = phi ptr [ %i.w, %bb.m ], [ %.3, %.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 4
  br label %.loopexit, !llvm.loop !21

bb.o:                                             ; preds = %.loopexit
  %i.y = icmp eq ptr %.3, %.248
  br i1 %i.y, label %bb.p, label %.preheader

bb.p:                                             ; preds = %bb.o
  %i.z = icmp eq i32 %i.n, 46
  br i1 %i.z, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %.248, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !11
  %i.ac = icmp eq i32 %i.ab, 46
  br i1 %i.ac, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %.248, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11
  %i.af = icmp eq i32 %i.ae, 0
  %spec.select62 = select i1 %i.af, ptr %i.ad, ptr %.248
  br label %.thread

.thread:                                          ; preds = %.preheader, %bb.r, %bb.q, %bb.p
  %.5 = phi ptr [ %.248, %bb.p ], [ %spec.select62, %bb.r ], [ %.248, %bb.q ], [ %.248, %.preheader ] ; 2 uses
  %.not61 = icmp eq ptr %1, null
  br i1 %.not61, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %.5, i64 noundef 2048)
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  ret ptr %.5
}

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z7SetNamePwPKwm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_Z11PointToNamePKw.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = and i64 %i.a, 2147483647
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = trunc nuw i64 %i.g to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_Z11PointToNamePKw.exit, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.i9 = phi i64 [ %i.d, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.g = add nsw i64 %indvars.iv.i9, -1           ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = icmp eq i32 %i.i, 47
  br i1 %i.j, label %bb.d, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i9
  br label %_Z11PointToNamePKw.exit

_Z11PointToNamePKw.exit:                          ; preds = %bb.b, %bb.a, %bb.d
  %.1.i = phi ptr [ %i.k, %bb.d ], [ %0, %bb.a ], [ %0, %bb.b ] ; 2 uses
  %i.l = ptrtoint ptr %.1.i to i64
  %i.m = ptrtoint ptr %0 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = sub i64 %2, %i.o
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef %.1.i, ptr noundef %1, i64 noundef %i.p)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z6SetExtPwPKwm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !11
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %_Z6GetExtPKw.exit

.lr.ph:                                           ; preds = %bb.c
  %i.g = and i64 %i.d, 2147483647
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.h = trunc nuw i64 %i.j to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %_Z6GetExtPKw.exit, !llvm.loop !0

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i19 = phi i64 [ %i.g, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  %i.j = add nsw i64 %indvars.iv.i.i19, -1        ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11
  %i.m = icmp eq i32 %i.l, 47
  br i1 %i.m, label %bb.f, label %bb.d, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i19
  br label %_Z6GetExtPKw.exit

_Z6GetExtPKw.exit:                                ; preds = %bb.d, %bb.c, %bb.f
  %.1.i.i = phi ptr [ %i.n, %bb.f ], [ %0, %bb.c ], [ %0, %bb.d ]
  %i.o = tail call ptr @wcsrchr(ptr noundef %.1.i.i, i32 noundef signext 46) #17 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_Z6GetExtPKw.exit
  store i32 0, ptr %i.o, align 4, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_Z6GetExtPKw.exit
  %.not12 = icmp eq ptr %1, null
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef %2)
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef ptr @_Z6GetExtPKw(ptr nofree noundef readonly %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %_Z11PointToNamePKw.exit

.lr.ph:                                           ; preds = %bb.b
  %i.e = and i64 %i.b, 2147483647
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.f = trunc nuw i64 %i.h to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %_Z11PointToNamePKw.exit, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.i6 = phi i64 [ %i.e, %.lr.ph ], [ %i.h, %bb.c ] ; 2 uses
  %i.h = add nsw i64 %indvars.iv.i6, -1           ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %i.k = icmp eq i32 %i.j, 47
  br i1 %i.k, label %bb.e, label %bb.c, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i6
  br label %_Z11PointToNamePKw.exit

_Z11PointToNamePKw.exit:                          ; preds = %bb.c, %bb.b, %bb.e
  %.1.i = phi ptr [ %i.l, %bb.e ], [ %0, %bb.b ], [ %0, %bb.c ]
  %i.m = tail call ptr @wcsrchr(ptr noundef %.1.i, i32 noundef signext 46) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Z11PointToNamePKw.exit
  %i.n = phi ptr [ %i.m, %_Z11PointToNamePKw.exit ], [ null, %bb.a ]
  ret ptr %i.n
}

declare void @_Z8wcsncatzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z9SetSFXExtPwm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !11
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %_Z6GetExtPKw.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.g = and i64 %i.d, 2147483647
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.h = trunc nuw i64 %i.j to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %_Z6GetExtPKw.exit.i, !llvm.loop !0

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i8 = phi i64 [ %i.g, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  %i.j = add nsw i64 %indvars.iv.i.i.i8, -1       ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11
  %i.m = icmp eq i32 %i.l, 47
  br i1 %i.m, label %bb.f, label %bb.d, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i.i8
  br label %_Z6GetExtPKw.exit.i

_Z6GetExtPKw.exit.i:                              ; preds = %bb.d, %bb.c, %bb.f
  %.1.i.i.i = phi ptr [ %i.n, %bb.f ], [ %0, %bb.c ], [ %0, %bb.d ]
  %i.o = tail call ptr @wcsrchr(ptr noundef %.1.i.i.i, i32 noundef signext 46) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_Z6SetExtPwPKwm.exit, label %bb.g

bb.g:                                             ; preds = %_Z6GetExtPKw.exit.i
  store i32 0, ptr %i.o, align 4, !tbaa !11
  br label %_Z6SetExtPwPKwm.exit

_Z6SetExtPwPKwm.exit:                             ; preds = %_Z6GetExtPKw.exit.i, %bb.g
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef %1)
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i64 noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %_Z6SetExtPwPKwm.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcsrchr(ptr noundef, i32 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z6CmpExtPKwS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_Z6GetExtPKw.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %_Z6GetExtPKw.exit

.lr.ph:                                           ; preds = %bb.b
  %i.e = and i64 %i.b, 2147483647
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.f = trunc nuw i64 %i.h to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %_Z6GetExtPKw.exit, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.i.i10 = phi i64 [ %i.e, %.lr.ph ], [ %i.h, %bb.c ] ; 2 uses
  %i.h = add nsw i64 %indvars.iv.i.i10, -1        ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %i.k = icmp eq i32 %i.j, 47
  br i1 %i.k, label %bb.e, label %bb.c, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i10
  br label %_Z6GetExtPKw.exit

_Z6GetExtPKw.exit:                                ; preds = %bb.c, %bb.b, %bb.e
  %.1.i.i = phi ptr [ %i.l, %bb.e ], [ %0, %bb.b ], [ %0, %bb.c ]
  %i.m = tail call ptr @wcsrchr(ptr noundef %.1.i.i, i32 noundef signext 46) #17 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_Z6GetExtPKw.exit.thread, label %bb.f

bb.f:                                             ; preds = %_Z6GetExtPKw.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = tail call noundef i32 @_Z8wcsicompPKwS0_(ptr noundef nonnull %i.n, ptr noundef %1)
  %i.p = icmp eq i32 %i.o, 0
  br label %_Z6GetExtPKw.exit.thread

_Z6GetExtPKw.exit.thread:                         ; preds = %bb.a, %bb.f, %_Z6GetExtPKw.exit
  %i.q = phi i1 [ false, %_Z6GetExtPKw.exit ], [ %i.p, %bb.f ], [ false, %bb.a ]
  ret i1 %i.q
}

declare noundef i32 @_Z8wcsicompPKwS0_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_Z10IsWildcardPKw(ptr nofree noundef readonly %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @wcspbrk(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #17
  %i.c = icmp ne ptr %i.b, null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcspbrk(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z13IsDriveLetterPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = tail call noundef signext i32 @_Z9etoupperww(i32 noundef signext %i.a) ; 0 uses
  ret i1 false
}

declare noundef signext i32 @_Z9etoupperww(i32 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z11GetPathDiskPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = tail call noundef signext i32 @_Z9etoupperww(i32 noundef signext %i.a) ; 0 uses
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z11AddEndSlashPwm(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #17 ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [4 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %.not10 = icmp eq i32 %i.d, 47
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %i.a, 1                          ; 2 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 47, ptr %i.b, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  store i32 0, ptr %i.g, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z8MakeNamePKwS0_Pwm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef 2048)
  %i.b = load i32, ptr %0, align 4, !tbaa !11
  %i.c = call noundef signext i32 @_Z9etoupperww(i32 noundef signext %i.b) ; 0 uses
  %i.d = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a) #17 ; 3 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_Z11AddEndSlashPwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr [4 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %.not10.i = icmp eq i32 %i.g, 47
  br i1 %.not10.i, label %_Z11AddEndSlashPwm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.d, 1                          ; 2 uses
  %i.i = icmp ult i64 %i.h, 2048
  br i1 %i.i, label %bb.d, label %_Z11AddEndSlashPwm.exit

bb.d:                                             ; preds = %bb.c
  store i32 47, ptr %i.e, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  store i32 0, ptr %i.j, align 4, !tbaa !11
  br label %_Z11AddEndSlashPwm.exit

_Z11AddEndSlashPwm.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 2048)
  call void @_Z8wcsncpyzPwPKwm(ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_Z11GetFilePathPKwPwm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, -1                           ; 2 uses
  %i.c = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 3 uses
  %i.d = and i64 %i.c, 4294967295                 ; 2 uses
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %_Z11PointToNamePKw.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = trunc nuw i64 %i.i to i32
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %_Z11PointToNamePKw.exit, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv.i24 = phi i64 [ %i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = add nsw i64 %indvars.iv.i24, -1          ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11
  %i.l = icmp eq i32 %i.k, 47
  br i1 %i.l, label %bb.d, label %bb.c, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i24
  br label %_Z11PointToNamePKw.exit

_Z11PointToNamePKw.exit:                          ; preds = %bb.c, %bb.b, %bb.d
  %.1.i = phi ptr [ %i.m, %bb.d ], [ %0, %bb.b ], [ %0, %bb.c ]
  %i.n = ptrtoint ptr %.1.i to i64
  %i.o = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = icmp ult i64 %i.b, %i.q
  br i1 %i.r, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_Z11PointToNamePKw.exit
  %i.s = trunc i64 %i.c to i32
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph26, label %_Z11PointToNamePKw.exit14

.preheader:                                       ; preds = %.lr.ph26
  %i.u = trunc nuw i64 %i.w to i32
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph26, label %_Z11PointToNamePKw.exit14, !llvm.loop !0

.lr.ph26:                                         ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.i1225 = phi i64 [ %i.w, %.preheader ], [ %i.d, %.preheader.preheader ] ; 2 uses
  %i.w = add nsw i64 %indvars.iv.i1225, -1        ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !11
  %i.z = icmp eq i32 %i.y, 47
  br i1 %i.z, label %bb.e, label %.preheader, !llvm.loop !0

bb.e:                                             ; preds = %.lr.ph26
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i1225
  %.pre = ptrtoint ptr %i.aa to i64
  br label %_Z11PointToNamePKw.exit14

_Z11PointToNamePKw.exit14:                        ; preds = %.preheader, %.preheader.preheader, %bb.e
  %.pre-phi = phi i64 [ %.pre, %bb.e ], [ %i.o, %.preheader.preheader ], [ %i.o, %.preheader ]
  %i.ab = sub i64 %.pre-phi, %i.o
  %i.ac = ashr exact i64 %i.ab, 2
  br label %bb.f

bb.f:                                             ; preds = %_Z11PointToNamePKw.exit, %_Z11PointToNamePKw.exit14
  %i.ad = phi i64 [ %i.ac, %_Z11PointToNamePKw.exit14 ], [ %i.b, %_Z11PointToNamePKw.exit ] ; 2 uses
  %i.ae = tail call ptr @wcsncpy(ptr noundef %1, ptr noundef nonnull %0, i64 noundef %i.ad) #18 ; 0 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad
  store i32 0, ptr %i.af, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nounwind
declare ptr @wcsncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z18RemoveNameFromPathPw(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_Z11PointToNamePKw.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = and i64 %i.a, 2147483647
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = trunc nuw i64 %i.g to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_Z11PointToNamePKw.exit.thread, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.i15 = phi i64 [ %i.d, %.lr.ph ], [ %i.g, %bb.b ] ; 3 uses
  %i.g = add nsw i64 %indvars.iv.i15, -1          ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = icmp eq i32 %i.i, 47
  br i1 %i.j, label %_Z11PointToNamePKw.exit, label %bb.b, !llvm.loop !0

_Z11PointToNamePKw.exit:                          ; preds = %bb.c
  %.idx = shl nuw nsw i64 %indvars.iv.i15, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not = icmp ult i64 %indvars.iv.i15, 2
  %spec.select.idx = select i1 %.not, i64 0, i64 -4
  %spec.select = getelementptr inbounds i8, ptr %i.k, i64 %spec.select.idx
  br label %_Z11PointToNamePKw.exit.thread

_Z11PointToNamePKw.exit.thread:                   ; preds = %bb.b, %bb.a, %_Z11PointToNamePKw.exit
  %.0 = phi ptr [ %spec.select, %_Z11PointToNamePKw.exit ], [ %0, %bb.a ], [ %0, %bb.b ]
  store i32 0, ptr %.0, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z15EnumConfigPathsjPwmb(i32 noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.8) #18 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef %1, ptr noundef nonnull @.str.3, i64 noundef %2)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.d = add i32 %0, -1                           ; 2 uses
  %i.e = icmp ugt i32 %i.d, 4
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZ15EnumConfigPathsjPwmbE8ConfPath, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef %1, ptr noundef %i.h, i64 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.f
  %.0 = phi i1 [ true, %bb.f ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z13GetConfigNamePKwPwmbb(ptr noundef %0, ptr noundef initializes((0, 4)) %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #4 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !11
  br i1 %3, label %.split.us.peel, label %.split

.split.us.peel:                                   ; preds = %bb.a
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.8) #18 ; 2 uses
  %.not.i.us.peel = icmp eq ptr %i.a, null
  br i1 %.not.i.us.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us.peel
  %i.b = tail call noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %2) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.split.us.peel
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #17 ; 3 uses
  %.not.i12.us.peel = icmp eq i64 %i.c, 0
  br i1 %.not.i12.us.peel, label %_Z11AddEndSlashPwm.exit.us.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr [4 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %.not10.i.us.peel = icmp eq i32 %i.f, 47
  br i1 %.not10.i.us.peel, label %_Z11AddEndSlashPwm.exit.us.peel, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = add i64 %i.c, 1                          ; 2 uses
  %i.h = icmp ult i64 %i.g, %2
  br i1 %i.h, label %bb.g, label %_Z11AddEndSlashPwm.exit.us.peel

bb.g:                                             ; preds = %bb.f
  store i32 47, ptr %i.d, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  store i32 0, ptr %i.i, align 4, !tbaa !11
  br label %_Z11AddEndSlashPwm.exit.us.peel

_Z11AddEndSlashPwm.exit.us.peel:                  ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %1, ptr noundef %0, i64 noundef %2)
  %i.j = tail call noundef zeroext i1 @_Z13WildFileExistPKw(ptr noundef nonnull %1)
  br i1 %i.j, label %_Z15EnumConfigPathsjPwmb.exit, label %.split.us

.split.us:                                        ; preds = %_Z11AddEndSlashPwm.exit.us.peel, %_Z11AddEndSlashPwm.exit.us
  %.0.us = phi i32 [ %i.x, %_Z11AddEndSlashPwm.exit.us ], [ 1, %_Z11AddEndSlashPwm.exit.us.peel ] ; 3 uses
  %i.k = icmp samesign ugt i32 %.0.us, 5
  br i1 %i.k, label %_Z15EnumConfigPathsjPwmb.exit, label %bb.h

bb.h:                                             ; preds = %.split.us
  %i.l = zext nneg i32 %.0.us to i64
  %i.m = getelementptr [8 x i8], ptr @_ZZ15EnumConfigPathsjPwmbE8ConfPath, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %1, ptr noundef %i.o, i64 noundef %2)
  %i.p = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #17 ; 3 uses
  %.not.i12.us = icmp eq i64 %i.p, 0
  br i1 %.not.i12.us, label %_Z11AddEndSlashPwm.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr [4 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %.not10.i.us = icmp eq i32 %i.s, 47
  br i1 %.not10.i.us, label %_Z11AddEndSlashPwm.exit.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = add i64 %i.p, 1                          ; 2 uses
  %i.u = icmp ult i64 %i.t, %2
  br i1 %i.u, label %bb.k, label %_Z11AddEndSlashPwm.exit.us

bb.k:                                             ; preds = %bb.j
  store i32 47, ptr %i.q, align 4, !tbaa !11
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.t
  store i32 0, ptr %i.v, align 4, !tbaa !11
  br label %_Z11AddEndSlashPwm.exit.us

_Z11AddEndSlashPwm.exit.us:                       ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %1, ptr noundef %0, i64 noundef %2)
  %i.w = tail call noundef zeroext i1 @_Z13WildFileExistPKw(ptr noundef nonnull %1)
  %i.x = add nuw nsw i32 %.0.us, 1
  br i1 %i.w, label %_Z15EnumConfigPathsjPwmb.exit, label %.split.us, !llvm.loop !22

.split:                                           ; preds = %bb.a
  %i.y = tail call ptr @getenv(ptr noundef nonnull @.str.8) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split
  %i.z = tail call noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.y, ptr noundef nonnull %1, i64 noundef %2) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.split
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i64 noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.aa = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #17 ; 3 uses
  %.not.i12 = icmp eq i64 %i.aa, 0
  br i1 %.not.i12, label %_Z11AddEndSlashPwm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr [4 x i8], ptr %1, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %.not10.i = icmp eq i32 %i.ad, 47
  br i1 %.not10.i, label %_Z11AddEndSlashPwm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = add i64 %i.aa, 1                        ; 2 uses
  %i.af = icmp ult i64 %i.ae, %2
  br i1 %i.af, label %bb.q, label %_Z11AddEndSlashPwm.exit

bb.q:                                             ; preds = %bb.p
  store i32 47, ptr %i.ab, align 4, !tbaa !11
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ae
  store i32 0, ptr %i.ag, align 4, !tbaa !11
  br label %_Z11AddEndSlashPwm.exit

_Z11AddEndSlashPwm.exit:                          ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %1, ptr noundef %0, i64 noundef %2)
  br label %_Z15EnumConfigPathsjPwmb.exit

_Z15EnumConfigPathsjPwmb.exit:                    ; preds = %_Z11AddEndSlashPwm.exit.us.peel, %.split.us, %_Z11AddEndSlashPwm.exit.us, %_Z11AddEndSlashPwm.exit
  ret void
}

declare noundef zeroext i1 @_Z13WildFileExistPKw(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z13GetVolNumPartPKw(ptr nofree noundef readonly %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph48, label %_Z11PointToNamePKw.exit

.lr.ph48:                                         ; preds = %bb.a
  %i.d = and i64 %i.a, 2147483647
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = trunc nuw i64 %i.g to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_Z11PointToNamePKw.exit, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph48, %bb.b
  %indvars.iv.i47 = phi i64 [ %i.d, %.lr.ph48 ], [ %i.g, %bb.b ] ; 2 uses
  %i.g = add nsw i64 %indvars.iv.i47, -1          ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = icmp eq i32 %i.i, 47
  br i1 %i.j, label %bb.d, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i47
  br label %_Z11PointToNamePKw.exit

_Z11PointToNamePKw.exit:                          ; preds = %bb.b, %bb.a, %bb.d
  %.1.i = phi ptr [ %i.k, %bb.d ], [ %0, %bb.a ], [ %0, %bb.b ] ; 8 uses
  %i.l = load i32, ptr %.1.i, align 4, !tbaa !11
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_Z11PointToNamePKw.exit
  %i.n = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %.1.i) #17
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.pn = phi ptr [ %i.o, %bb.e ], [ %.026, %bb.f ]
  %.026 = getelementptr inbounds i8, ptr %.pn, i64 -4 ; 8 uses
  %i.p = load i32, ptr %.026, align 4, !tbaa !11
  %i.q = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.p)
  %i.r = icmp ule ptr %.026, %.1.i
  %.not32 = or i1 %i.r, %i.q
  br i1 %.not32, label %.preheader34, label %bb.f, !llvm.loop !24

.preheader34:                                     ; preds = %bb.f, %.preheader34
  %.0 = phi ptr [ %i.w, %.preheader34 ], [ %.026, %bb.f ] ; 4 uses
  %i.s = load i32, ptr %.0, align 4, !tbaa !11
  %i.t = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.s)
  %i.u = icmp ugt ptr %.0, %.1.i                  ; 2 uses
  %i.v = and i1 %i.u, %i.t
  %i.w = getelementptr inbounds i8, ptr %.0, i64 -4
  br i1 %i.v, label %.preheader34, label %.preheader, !llvm.loop !25

.preheader:                                       ; preds = %.preheader34
  br i1 %i.u, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.137 = phi ptr [ %i.ab, %bb.i ], [ %.0, %.preheader ] ; 4 uses
  %i.x = load i32, ptr %.137, align 4, !tbaa !11  ; 2 uses
  %.not = icmp eq i32 %i.x, 46
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.y = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.x)
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @wcschr(ptr noundef nonnull %.1.i, i32 noundef signext 46) #17 ; 2 uses
  %.not33 = icmp ne ptr %i.z, null
  %i.aa = icmp ult ptr %i.z, %.137
  %or.cond = and i1 %.not33, %i.aa
  %.127 = select i1 %or.cond, ptr %.137, ptr %.026
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %.137, i64 -4 ; 2 uses
  %i.ac = icmp ugt ptr %i.ab, %.1.i
  br i1 %i.ac, label %.lr.ph, label %.critedge, !llvm.loop !26

.critedge:                                        ; preds = %bb.i, %.lr.ph, %.preheader, %bb.h, %_Z11PointToNamePKw.exit
  %.028 = phi ptr [ %.1.i, %_Z11PointToNamePKw.exit ], [ %.127, %bb.h ], [ %.026, %.preheader ], [ %.026, %.lr.ph ], [ %.026, %bb.i ]
  ret ptr %.028
}

declare noundef zeroext i1 @_Z7IsDigiti(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_Z14NextVolumeNamePwjb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %_Z6GetExtPKw.exit54.thread57, label %bb.b

_Z6GetExtPKw.exit54.thread57:                     ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef null, ptr noundef nonnull @.str.9, i64 noundef %i.c)
  br label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %_Z6GetExtPKw.exit

.lr.ph:                                           ; preds = %bb.b
  %i.g = and i64 %i.d, 2147483647
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.h = trunc nuw i64 %i.j to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_Z6GetExtPKw.exit, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.i.i94 = phi i64 [ %i.g, %.lr.ph ], [ %i.j, %bb.c ] ; 2 uses
  %i.j = add nsw i64 %indvars.iv.i.i94, -1        ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11
  %i.m = icmp eq i32 %i.l, 47
  br i1 %i.m, label %bb.e, label %bb.c, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i94
  br label %_Z6GetExtPKw.exit

_Z6GetExtPKw.exit:                                ; preds = %bb.c, %bb.b, %bb.e
  %.1.i.i = phi ptr [ %i.n, %bb.e ], [ %0, %bb.b ], [ %0, %bb.c ]
  %i.o = tail call ptr @wcsrchr(ptr noundef %.1.i.i, i32 noundef signext 46) #17 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_Z6GetExtPKw.exit
  %i.q = zext i32 %1 to i64
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %i.q)
  %i.r = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph98, label %_Z6GetExtPKw.exit54

.lr.ph98:                                         ; preds = %bb.f
  %i.u = and i64 %i.r, 2147483647
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.v = trunc nuw i64 %i.x to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %_Z6GetExtPKw.exit54, !llvm.loop !0

bb.h:                                             ; preds = %.lr.ph98, %bb.g
  %indvars.iv.i.i5196 = phi i64 [ %i.u, %.lr.ph98 ], [ %i.x, %bb.g ] ; 2 uses
  %i.x = add nsw i64 %indvars.iv.i.i5196, -1      ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !11
  %i.aa = icmp eq i32 %i.z, 47
  br i1 %i.aa, label %bb.i, label %bb.g, !llvm.loop !0

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i5196
  br label %_Z6GetExtPKw.exit54

bb.j:                                             ; preds = %_Z6GetExtPKw.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call noundef i32 @_Z8wcsicompPKwS0_(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.10)
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call noundef i32 @_Z8wcsicompPKwS0_(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.11)
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %_Z6GetExtPKw.exit54.thread

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.aj = zext i32 %1 to i64
  %i.ak = ptrtoint ptr %i.o to i64
  %i.al = ptrtoint ptr %0 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  %i.ao = sub nsw i64 %i.aj, %i.an
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.9, i64 noundef %i.ao)
  br label %_Z6GetExtPKw.exit54.thread

_Z6GetExtPKw.exit54:                              ; preds = %bb.g, %bb.f, %bb.i
  %.1.i.i53 = phi ptr [ %i.ab, %bb.i ], [ %0, %bb.f ], [ %0, %bb.g ]
  %i.ap = tail call ptr @wcsrchr(ptr noundef %.1.i.i53, i32 noundef signext 46) #17 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.o, label %_Z6GetExtPKw.exit54.thread

_Z6GetExtPKw.exit54.thread:                       ; preds = %bb.m, %bb.l, %_Z6GetExtPKw.exit54
  %.04556 = phi ptr [ %i.ap, %_Z6GetExtPKw.exit54 ], [ %i.o, %bb.l ], [ %i.o, %bb.m ] ; 7 uses
  %i.ar = load i32, ptr %.04556, align 4, !tbaa !11
  %.not = icmp eq i32 %i.ar, 46
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_Z6GetExtPKw.exit54.thread
  %i.as = getelementptr inbounds nuw i8, ptr %.04556, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_Z6GetExtPKw.exit54.thread57, %bb.n, %_Z6GetExtPKw.exit54.thread, %_Z6GetExtPKw.exit54
  store i32 0, ptr %0, align 4, !tbaa !11
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  br i1 %2, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = tail call noundef ptr @_Z13GetVolNumPartPKw(ptr noundef nonnull %0) ; 2 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %indvar = phi i64 [ %indvar.next, %bb.t ], [ 0, %bb.q ] ; 2 uses
  %.1 = phi ptr [ %i.ba, %bb.t ], [ %i.av, %bb.q ] ; 5 uses
  %i.ax = load i32, ptr %.1, align 4, !tbaa !11
  %i.ay = add nsw i32 %i.ax, 1                    ; 2 uses
  store i32 %i.ay, ptr %.1, align 4, !tbaa !11
  %i.az = icmp eq i32 %i.ay, 58
  br i1 %i.az, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  store i32 48, ptr %.1, align 4, !tbaa !11
  %i.ba = getelementptr inbounds i8, ptr %.1, i64 -4 ; 4 uses
  %i.bb = icmp ult ptr %i.ba, %0
  br i1 %i.bb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bd = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.bc)
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bd, label %bb.r, label %bb.u, !llvm.loop !27

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.be = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #17 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %.not4964 = icmp eq ptr %i.bf, %i.ba
  br i1 %.not4964, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %i.bg = shl nuw nsw i64 %i.be, 2                ; 3 uses
  %i.bh = getelementptr i8, ptr %0, i64 %i.bg
  %scevgep = getelementptr i8, ptr %i.bh, i64 4
  %i.bi = sub i64 %i.a, %i.aw
  %i.bj = shl i64 %indvar, 2
  %i.bk = add i64 %i.bj, %i.bi
  %i.bl = add i64 %i.bg, %i.bk                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = mul i64 %i.bm, -4                       ; 2 uses
  %scevgep75 = getelementptr i8, ptr %scevgep, i64 %i.bn
  %scevgep76 = getelementptr i8, ptr %0, i64 %i.bg
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.bn
  %i.bo = and i64 %i.bl, -4
  %i.bp = add i64 %i.bo, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep75, ptr align 4 %scevgep77, i64 %i.bp, i1 false), !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.u
  store i32 49, ptr %.1, align 4, !tbaa !11
  br label %.loopexit

bb.v:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %.04556, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.bs = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.br)
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %.04556, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11
  %i.bv = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.bu)
  br i1 %i.bv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bw = zext i32 %1 to i64
  %i.bx = ptrtoint ptr %.04556 to i64
  %i.by = ptrtoint ptr %0 to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = add nsw i64 %i.bw, -2
  %i.cc = sub nsw i64 %i.cb, %i.ca
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.bq, ptr noundef nonnull @.str.12, i64 noundef %i.cc)
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.cd = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %.04556) #17
  %i.ce = getelementptr [4 x i8], ptr %.04556, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4     ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !11
  %i.ch = add nsw i32 %i.cg, 1                    ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !11
  %i.ci = icmp eq i32 %i.ch, 58
  br i1 %i.ci, label %.lr.ph68, label %.loopexit

.lr.ph68:                                         ; preds = %bb.y, %bb.ab
  %.266 = phi ptr [ %i.cj, %bb.ab ], [ %i.cf, %bb.y ] ; 4 uses
  %.not50 = icmp ugt ptr %.266, %0
  br i1 %.not50, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph68
  %i.cj = getelementptr inbounds i8, ptr %.266, i64 -4 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !11 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 46
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %.lr.ph68
  store i32 97, ptr %.266, align 4, !tbaa !11
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  store i32 48, ptr %.266, align 4, !tbaa !11
  %i.cm = add nsw i32 %i.ck, 1                    ; 2 uses
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !11
  %i.cn = icmp eq i32 %i.cm, 58
  br i1 %i.cn, label %.lr.ph68, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %bb.r, %bb.ab, %bb.y, %._crit_edge, %bb.aa, %bb.x, %bb.o
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_Z12IsNameUsablePKw(ptr nofree noundef readonly %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @wcschr(ptr noundef %0, i32 noundef signext 58) #17
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  %.not1417 = icmp eq i32 %i.b, 0
  br i1 %.not1417, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge19
  %i.c = phi i32 [ %.pre, %._crit_edge19 ], [ %i.b, %.preheader ] ; 2 uses
  %.01118 = phi ptr [ %i.f, %._crit_edge19 ], [ %0, %.preheader ] ; 2 uses
  %i.d = icmp ult i32 %i.c, 32
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.01118, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !11 ; 3 uses
  switch i32 %i.c, label %._crit_edge19 [
    i32 32, label %bb.c
    i32 46, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.e = icmp eq i32 %.pre, 47
  br i1 %i.e, label %.thread, label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.01118, i64 4
  %.not14 = icmp eq i32 %.pre, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %._crit_edge19
  %i.g = tail call ptr @wcspbrk(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #17
  %i.h = icmp eq ptr %i.g, null
  br label %.thread

.thread:                                          ; preds = %bb.c, %.lr.ph, %.preheader, %._crit_edge, %bb.a
  %.1 = phi i1 [ %i.h, %._crit_edge ], [ false, %bb.a ], [ false, %.preheader ], [ false, %.lr.ph ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define void @_Z14MakeNameUsablePwb(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %.not18 = icmp eq i32 %i.a, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = select i1 %1, ptr @.str.13, ptr @.str.14 ; 2 uses
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %i.c = phi i32 [ %i.j, %bb.d ], [ %i.a, %.lr.ph ] ; 3 uses
  %.019.us = phi ptr [ %i.i, %bb.d ], [ %0, %.lr.ph ] ; 3 uses
  %i.d = tail call ptr @wcschr(ptr noundef nonnull %i.b, i32 noundef signext %i.c) #17
  %.not16.us = icmp ne ptr %i.d, null
  %i.e = icmp ult i32 %i.c, 32
  %or.cond17.us = or i1 %i.e, %.not16.us
  br i1 %or.cond17.us, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  switch i32 %i.c, label %bb.d [
    i32 58, label %.sink.split
    i32 32, label %bb.c
    i32 46, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.019.us, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = icmp eq i32 %i.g, 47
  br i1 %i.h, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.b, %bb.c, %.lr.ph.split.us
  store i32 95, ptr %.019.us, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.019.us, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11   ; 2 uses
  %.not.us = icmp eq i32 %i.j, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.f, %bb.d, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %i.k = phi i32 [ %i.n, %bb.f ], [ %i.a, %.lr.ph ]
  %.019 = phi ptr [ %i.m, %bb.f ], [ %0, %.lr.ph ] ; 2 uses
  %i.l = tail call ptr @wcschr(ptr noundef nonnull %i.b, i32 noundef signext %i.k) #17
  %.not16.not = icmp eq ptr %i.l, null
  br i1 %.not16.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  store i32 95, ptr %.019, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.019, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !11   ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z14UnixSlashToDosPKcPcm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ]   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15    ; 2 uses
  switch i8 %i.c, label %bb.b [
    i8 0, label %.critedge
    i8 47, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ 92, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  store i8 %i.d, ptr %i.e, align 1, !tbaa !15
  %i.f = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !31

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.013, %.lr.ph ], [ %i.a, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  store i8 0, ptr %i.g, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z14DosSlashToUnixPKcPcm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ]   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15    ; 2 uses
  switch i8 %i.c, label %bb.b [
    i8 0, label %.critedge
    i8 92, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ 47, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  store i8 %i.d, ptr %i.e, align 1, !tbaa !15
  %i.f = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !32

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.013, %.lr.ph ], [ %i.a, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  store i8 0, ptr %i.g, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z14UnixSlashToDosPKwPwm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ]   ; 4 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  switch i32 %i.c, label %bb.b [
    i32 0, label %.critedge
    i32 47, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 92, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.013
  store i32 %i.d, ptr %i.e, align 4, !tbaa !11
  %i.f = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !33

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.013, %.lr.ph ], [ %i.a, %bb.c ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.lcssa
  store i32 0, ptr %i.g, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z14DosSlashToUnixPKwPwm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ]   ; 4 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  switch i32 %i.c, label %bb.b [
    i32 0, label %.critedge
    i32 92, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 47, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.013
  store i32 %i.d, ptr %i.e, align 4, !tbaa !11
  %i.f = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !34

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.013, %.lr.ph ], [ %i.a, %bb.c ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.lcssa
  store i32 0, ptr %i.g, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z17ConvertNameToFullPKwPwm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 5 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !11
  switch i32 %i.c, label %bb.f [
    i32 0, label %bb.c
    i32 47, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %1, align 4, !tbaa !11
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  store i32 0, ptr %1, align 4, !tbaa !11
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = call ptr @getcwd(ptr noundef nonnull %i.a, i64 noundef 2048) #18
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.a, align 16, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = call noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.g = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #17 ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_Z11AddEndSlashPwm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = getelementptr [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %.not10.i = icmp eq i32 %i.j, 47
  br i1 %.not10.i, label %_Z11AddEndSlashPwm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = add i64 %i.g, 1                          ; 2 uses
  %i.l = icmp ult i64 %i.k, %2
  br i1 %i.l, label %bb.k, label %_Z11AddEndSlashPwm.exit

bb.k:                                             ; preds = %bb.j
  store i32 47, ptr %i.h, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  store i32 0, ptr %i.m, align 4, !tbaa !11
  br label %_Z11AddEndSlashPwm.exit

_Z11AddEndSlashPwm.exit:                          ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.l

bb.l:                                             ; preds = %_Z11AddEndSlashPwm.exit, %bb.e
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %1, ptr noundef nonnull %0, i64 noundef %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.d, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z10IsFullPathPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = icmp eq i32 %i.a, 47
  ret i1 %i.b
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z14IsFullRootPathPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = icmp eq i32 %i.a, 47
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_Z11GetPathRootPKwPwm(ptr noundef %0, ptr noundef initializes((0, 4)) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !11
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = tail call noundef signext i32 @_Z9etoupperww(i32 noundef signext %i.a) ; 0 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !11
  %i.d = icmp eq i32 %i.c, 92
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %i.g = icmp eq i32 %i.f, 92
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call ptr @wcschr(ptr noundef nonnull %i.h, i32 noundef signext 92) #17 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = tail call ptr @wcschr(ptr noundef nonnull %i.j, i32 noundef signext 92) #17 ; 2 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %0 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = add nsw i64 %i.o, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.q, %bb.f ]  ; 2 uses
  %.not22 = icmp ult i64 %.0, %2
  %spec.store.select = select i1 %.not22, i64 %.0, i64 0 ; 2 uses
  %i.r = tail call ptr @wcsncpy(ptr noundef nonnull %1, ptr noundef nonnull %0, i64 noundef %spec.store.select) #18 ; 0 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %spec.store.select
  store i32 0, ptr %i.s, align 4, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z20ParseVersionFileNamePwb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @wcsrchr(ptr noundef %0, i32 noundef signext 59) #17 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = tail call noundef i32 @_Z5atoiwPKw(ptr noundef nonnull %i.b) ; 2 uses
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_Z5atoiwPKw(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z18VolNameToFirstNamePKwPwmb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 13 uses
  %4 = alloca %class.FindFile, align 8            ; 8 uses
  %5 = alloca %struct.FindData, align 8           ; 7 uses
  %6 = alloca %class.Archive, align 8             ; 11 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef %1, ptr noundef %0, i64 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %3, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.b = tail call noundef ptr @_Z13GetVolNumPartPKw(ptr noundef %1) ; 2 uses
  %i.c = icmp ugt ptr %i.b, %1
  br i1 %i.c, label %.lr.ph, label %_Z6GetExtPKw.exit

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %.03255 = phi ptr [ %i.h, %bb.h ], [ %i.b, %bb.d ] ; 4 uses
  %.03354 = phi i32 [ %.134, %bb.h ], [ 49, %bb.d ] ; 2 uses
  %i.d = load i32, ptr %.03255, align 4, !tbaa !11
  %i.e = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.d)
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  store i32 %.03354, ptr %.03255, align 4, !tbaa !11
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.f = icmp eq i32 %.03354, 48
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %.03255, i64 4
  br label %_Z6GetExtPKw.exit

bb.h:                                             ; preds = %bb.e, %bb.f
  %.134 = phi i32 [ 48, %bb.e ], [ 49, %bb.f ]
  %i.h = getelementptr inbounds i8, ptr %.03255, i64 -4 ; 2 uses
  %i.i = icmp ugt ptr %i.h, %1
  br i1 %i.i, label %.lr.ph, label %_Z6GetExtPKw.exit, !llvm.loop !35

bb.i:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %_Z6GetExtPKw.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = load i32, ptr %1, align 4, !tbaa !11
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %1) #17 ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph75, label %_Z6GetExtPKw.exit.i

.lr.ph75:                                         ; preds = %bb.k
  %i.p = and i64 %i.m, 2147483647
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.q = trunc nuw i64 %i.s to i32
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.m, label %_Z6GetExtPKw.exit.i, !llvm.loop !0

bb.m:                                             ; preds = %.lr.ph75, %bb.l
  %indvars.iv.i.i.i74 = phi i64 [ %i.p, %.lr.ph75 ], [ %i.s, %bb.l ] ; 2 uses
  %i.s = add nsw i64 %indvars.iv.i.i.i74, -1      ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11
  %i.v = icmp eq i32 %i.u, 47
  br i1 %i.v, label %bb.n, label %bb.l, !llvm.loop !0

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i.i74
  br label %_Z6GetExtPKw.exit.i

_Z6GetExtPKw.exit.i:                              ; preds = %bb.l, %bb.k, %bb.n
  %.1.i.i.i = phi ptr [ %i.w, %bb.n ], [ %1, %bb.k ], [ %1, %bb.l ]
  %i.x = tail call ptr @wcsrchr(ptr noundef %.1.i.i.i, i32 noundef signext 46) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_Z6GetExtPKw.exit.i
  store i32 0, ptr %i.x, align 4, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_Z6GetExtPKw.exit.i
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %1, ptr noundef nonnull @.str, i64 noundef %2)
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, i64 noundef %2)
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.p
  %i.y = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %1) #17 ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph77, label %_Z11PointToNamePKw.exit.i

.lr.ph77:                                         ; preds = %bb.q
  %i.ab = and i64 %i.y, 2147483647
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.ac = trunc nuw i64 %i.ae to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %_Z11PointToNamePKw.exit.i, !llvm.loop !0

bb.s:                                             ; preds = %.lr.ph77, %bb.r
  %indvars.iv.i.i76 = phi i64 [ %i.ab, %.lr.ph77 ], [ %i.ae, %bb.r ] ; 2 uses
  %i.ae = add nsw i64 %indvars.iv.i.i76, -1       ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !11
  %i.ah = icmp eq i32 %i.ag, 47
  br i1 %i.ah, label %bb.t, label %bb.r, !llvm.loop !0

bb.t:                                             ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i76
  br label %_Z11PointToNamePKw.exit.i

_Z11PointToNamePKw.exit.i:                        ; preds = %bb.r, %bb.q, %bb.t
  %.1.i.i = phi ptr [ %i.ai, %bb.t ], [ %1, %bb.q ], [ %1, %bb.r ]
  %i.aj = tail call ptr @wcsrchr(ptr noundef %.1.i.i, i32 noundef signext 46) #17
  br label %_Z6GetExtPKw.exit

_Z6GetExtPKw.exit:                                ; preds = %bb.h, %bb.d, %_Z11PointToNamePKw.exit.i, %bb.i, %bb.g
  %.136 = phi ptr [ null, %bb.i ], [ %i.g, %bb.g ], [ %i.aj, %_Z11PointToNamePKw.exit.i ], [ %1, %bb.d ], [ %1, %bb.h ]
  %i.ak = tail call noundef zeroext i1 @_Z9FileExistPKw(ptr noundef %1)
  br i1 %i.ak, label %bb.ar, label %bb.u

bb.u:                                             ; preds = %_Z6GetExtPKw.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 2048)
  %i.al = load i32, ptr %i.a, align 16, !tbaa !11
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_Z6SetExtPwPKwm.exit47, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %i.a) #17 ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph79, label %_Z6GetExtPKw.exit.i44

.lr.ph79:                                         ; preds = %bb.v
  %i.aq = and i64 %i.an, 2147483647
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.ar = trunc nuw i64 %i.at to i32
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.x, label %_Z6GetExtPKw.exit.i44, !llvm.loop !0

bb.x:                                             ; preds = %.lr.ph79, %bb.w
  %indvars.iv.i.i.i4378 = phi i64 [ %i.aq, %.lr.ph79 ], [ %i.at, %bb.w ] ; 2 uses
  %i.at = add nsw i64 %indvars.iv.i.i.i4378, -1   ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !11
  %i.aw = icmp eq i32 %i.av, 47
  br i1 %i.aw, label %bb.y, label %bb.w, !llvm.loop !0

bb.y:                                             ; preds = %bb.x
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.i4378
  br label %_Z6GetExtPKw.exit.i44

_Z6GetExtPKw.exit.i44:                            ; preds = %bb.w, %bb.v, %bb.y
  %.1.i.i.i45 = phi ptr [ %i.ax, %bb.y ], [ %i.a, %bb.v ], [ %i.a, %bb.w ]
  %i.ay = call ptr @wcsrchr(ptr noundef nonnull %.1.i.i.i45, i32 noundef signext 46) #17 ; 2 uses
  %.not.i46 = icmp eq ptr %i.ay, null
  br i1 %.not.i46, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_Z6GetExtPKw.exit.i44
  store i32 0, ptr %i.ay, align 4, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_Z6GetExtPKw.exit.i44
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i64 noundef 2048)
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.17, i64 noundef 2048)
  br label %_Z6SetExtPwPKwm.exit47

_Z6SetExtPwPKwm.exit47:                           ; preds = %bb.u, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN8FindFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8208) %4)
  invoke void @_ZN8FindFile7SetMaskEPKw(ptr noundef nonnull align 8 dereferenceable(8208) %4, ptr noundef nonnull %i.a)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %_Z6SetExtPwPKwm.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 48849
  br label %bb.ac

bb.ac:                                            ; preds = %bb.an, %bb.ab
  %i.bb = invoke noundef zeroext i1 @_ZN8FindFile4NextEP8FindDatab(ptr noundef nonnull align 8 dereferenceable(8208) %4, ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bb, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN7ArchiveC1EP11CommandData(ptr noundef nonnull align 8 dereferenceable(57108) %6, ptr noundef null)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.bc = invoke noundef zeroext i1 @_ZN7Archive4OpenEPKwj(ptr noundef nonnull align 8 dereferenceable(57108) %6, ptr noundef nonnull %5, i32 noundef 0)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  br i1 %i.bc, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.bd = invoke noundef zeroext i1 @_ZN7Archive9IsArchiveEb(ptr noundef nonnull align 8 dereferenceable(57108) %6, i1 noundef zeroext true)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.be = load i8, ptr %i.ba, align 1, !range !16
  %i.bf = trunc nuw i8 %i.be to i1
  %or.cond = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef %1, ptr noundef nonnull %5, i64 noundef %2)
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.aj
  call void @_ZN7ArchiveD1Ev(ptr noundef nonnull align 8 dead_on_return(57108) dereferenceable(57108) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.loopexit

bb.ak:                                            ; preds = %_Z6SetExtPwPKwm.exit47
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.al:                                            ; preds = %bb.ac
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %bb.ae
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.af, %bb.aj
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7ArchiveD1Ev(ptr noundef nonnull align 8 dead_on_return(57108) dereferenceable(57108) %6) #18
  br label %bb.ao

bb.an:                                            ; preds = %bb.ag, %bb.ai
  call void @_ZN7ArchiveD1Ev(ptr noundef nonnull align 8 dead_on_return(57108) dereferenceable(57108) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ac

bb.ao:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp80, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bi, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ap

.loopexit:                                        ; preds = %bb.ad, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ao ], [ %i.bh, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ak
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ap ], [ %i.bg, %bb.ak ]
  call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  resume { ptr, i32 } %.pn.pn.pn

bb.ar:                                            ; preds = %.loopexit, %_Z6GetExtPKw.exit
  ret ptr %.136
}

declare noundef zeroext i1 @_Z9FileExistPKw(ptr noundef) local_unnamed_addr #5

declare void @_ZN8FindFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8208)) unnamed_addr #5

declare void @_ZN8FindFile7SetMaskEPKw(ptr noundef nonnull align 8 dereferenceable(8208), ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN8FindFile4NextEP8FindDatab(ptr noundef nonnull align 8 dereferenceable(8208), ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN7ArchiveC1EP11CommandData(ptr noundef nonnull align 8 dereferenceable(57108), ptr noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN7Archive4OpenEPKwj(ptr noundef nonnull align 8 dereferenceable(57108), ptr noundef, i32 noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN7Archive9IsArchiveEb(ptr noundef nonnull align 8 dereferenceable(57108), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN7ArchiveD1Ev(ptr noundef nonnull align 8 dead_on_return(57108) dereferenceable(57108)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_Z19GenerateArchiveNamePwmPKwb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 10 uses
  %i.b = alloca i8, align 1                       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 0, ptr %i.b, align 1, !tbaa !18
  call fastcc void @_ZL10GenArcNamePwmPKwjRb(ptr noundef %i.a, ptr noundef %2, i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.c = load i8, ptr %i.b, align 1, !tbaa !18, !range !16, !noundef !36
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01217 = phi i32 [ %i.i, %bb.d ], [ 1, %bb.a ] ; 3 uses
  %i.e = call noundef zeroext i1 @_Z9FileExistPKw(ptr noundef nonnull %i.a)
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp ult i32 %.01217, 2
  %or.cond.not = select i1 %3, i1 true, i1 %i.f
  br i1 %or.cond.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call noundef ptr @_Z11NullToEmptyPKw(ptr noundef %0)
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef %i.g, i64 noundef 2048)
  %i.h = add i32 %.01217, -1
  call fastcc void @_ZL10GenArcNamePwmPKwjRb(ptr noundef %i.a, ptr noundef %2, i32 noundef %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.i = add i32 %.01217, 1                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 0, ptr %i.b, align 1, !tbaa !18
  call fastcc void @_ZL10GenArcNamePwmPKwjRb(ptr noundef %i.a, ptr noundef %2, i32 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.j = load i8, ptr %i.b, align 1, !tbaa !18, !range !16, !noundef !36
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @_Z8wcsncpyzPwPKwm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL10GenArcNamePwmPKwjRb(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [128 x i32], align 16             ; 11 uses
  %4 = alloca %class.RarTime, align 8             ; 5 uses
  %5 = alloca %struct.RarLocalTime, align 4       ; 12 uses
  %i.b = alloca [2048 x i32], align 16            ; 6 uses
  %i.c = alloca [10 x [11 x i8]], align 16        ; 13 uses
  %i.d = alloca [10 x i32], align 16              ; 5 uses
  %i.e = alloca [128 x i32], align 16             ; 9 uses
  %i.f = alloca [2048 x i32], align 16            ; 10 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !11
  %i.h = icmp eq i32 %i.g, 43                     ; 2 uses
  %spec.select.idx = select i1 %i.h, i64 4, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.i = load i32, ptr %spec.select, align 4, !tbaa !11
  %.not = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not, ptr @.str.18, ptr %spec.select
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.j, i64 noundef 128)
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %.0129 = phi i1 [ false, %bb.a ], [ %.1130, %bb.p ]
  %.0124 = phi i32 [ 0, %bb.a ], [ %.4128, %bb.p ] ; 3 uses
  %.0121 = phi i32 [ 0, %bb.a ], [ %i.bj, %bb.p ] ; 7 uses
  %i.k = zext i32 %.0121 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.k ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 3 uses
  switch i32 %i.m, label %bb.g [
    i32 0, label %bb.c
    i32 123, label %bb.f
    i32 125, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i64 0, ptr %4, align 8, !tbaa !43
  call void @_ZN7RarTime14SetCurrentTimeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN7RarTime8GetLocalEP12RarLocalTime(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.n = call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 3 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  %i.p = trunc i64 %i.n to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph8, label %_Z6GetExtPKw.exit

bb.d:                                             ; preds = %.lr.ph8
  %i.r = trunc nuw i64 %i.t to i32
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph8, label %_Z6GetExtPKw.exit, !llvm.loop !0

.lr.ph8:                                          ; preds = %bb.c, %bb.d
  %indvars.iv.i.i6 = phi i64 [ %i.t, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = add nsw i64 %indvars.iv.i.i6, -1         ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = icmp eq i32 %i.v, 47
  br i1 %i.w, label %bb.e, label %bb.d, !llvm.loop !0

bb.e:                                             ; preds = %.lr.ph8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i6
  br label %_Z6GetExtPKw.exit

_Z6GetExtPKw.exit:                                ; preds = %bb.d, %bb.c, %bb.e
  %.1.i.i = phi ptr [ %i.x, %bb.e ], [ %0, %bb.c ], [ %0, %bb.d ]
  %i.y = call ptr @wcsrchr(ptr noundef nonnull %.1.i.i, i32 noundef signext 46) #17 ; 3 uses
  store i32 0, ptr %i.b, align 16, !tbaa !11
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.preheader.preheader, label %bb.r

.preheader.preheader:                             ; preds = %_Z6GetExtPKw.exit
  %i.aa = trunc i64 %i.n to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph10, label %_Z11PointToNamePKw.exit

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.ac = icmp eq i32 %i.m, 123
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  br i1 %.0129, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call noundef i32 @_Z8toupperwi(i32 noundef %i.m) ; 5 uses
  %i.ae = icmp eq i32 %i.ad, 72
  %spec.select149 = select i1 %i.ae, i32 2, i32 %.0124
  %i.af = icmp eq i32 %i.ad, 68
  %i.ag = icmp eq i32 %i.ad, 89
  %or.cond = or i1 %i.af, %i.ag
  %.2126 = select i1 %or.cond, i32 0, i32 %spec.select149 ; 4 uses
  %i.ah = icmp ne i32 %.2126, 0
  %i.ai = icmp eq i32 %i.ad, 77
  %or.cond3 = and i1 %i.ai, %i.ah
  br i1 %or.cond3, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store i32 73, ptr %i.l, align 4, !tbaa !11
  %i.aj = add nsw i32 %.2126, -1
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq i32 %i.ad, 78
  br i1 %i.ak, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.al = call noundef i32 @_Z9GetDigitsj(i32 noundef %2) ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0119 = phi i32 [ 0, %bb.j ], [ %i.as, %bb.k ] ; 5 uses
  %i.am = add i32 %.0119, %.0121
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !11
  %i.aq = call noundef i32 @_Z8toupperwi(i32 noundef %i.ap)
  %i.ar = icmp eq i32 %i.aq, 78
  %i.as = add i32 %.0119, 1
  br i1 %i.ar, label %bb.k, label %bb.l, !llvm.loop !37

bb.l:                                             ; preds = %bb.k
  %i.at = icmp ult i32 %.0119, %i.al
  br i1 %i.at, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.au = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a) #17
  %i.av = zext i32 %i.al to i64                   ; 3 uses
  %i.aw = zext i32 %.0119 to i64                  ; 2 uses
  %i.ax = sub nsw i64 %i.av, %i.aw
  %i.ay = add i64 %i.ax, %i.au
  %i.az = icmp ult i64 %i.ay, 128
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.av
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aw ; 2 uses
  %i.bc = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.bb) #17
  %i.bd = add i64 %i.bc, 1
  %i.be = call ptr @wmemmove(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef %i.bd) #18 ; 0 uses
  %i.bf = call ptr @wmemset(ptr noundef nonnull %i.l, i32 noundef signext 78, i64 noundef %i.av) #18 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bg = call i32 @llvm.umax.i32(i32 %.0119, i32 %i.al)
  %i.bh = add i32 %.0121, -1
  %i.bi = add i32 %i.bh, %i.bg
  store i8 1, ptr %3, align 1, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.i, %bb.g, %bb.f
  %.1130 = phi i1 [ %i.ac, %bb.f ], [ true, %bb.g ], [ false, %bb.i ], [ false, %bb.o ], [ false, %.thread ]
  %.4128 = phi i32 [ %.0124, %bb.f ], [ %.0124, %bb.g ], [ %.2126, %bb.i ], [ %.2126, %bb.o ], [ %i.aj, %.thread ]
  %.2123 = phi i32 [ %.0121, %bb.f ], [ %.0121, %bb.g ], [ %.0121, %bb.i ], [ %i.bi, %bb.o ], [ %.0121, %.thread ]
  %i.bj = add i32 %.2123, 1
  br label %bb.b, !llvm.loop !38

.preheader:                                       ; preds = %.lr.ph10
  %i.bk = trunc nuw i64 %i.bm to i32
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph10, label %_Z11PointToNamePKw.exit, !llvm.loop !0

.lr.ph10:                                         ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.i9 = phi i64 [ %i.bm, %.preheader ], [ %i.o, %.preheader.preheader ] ; 2 uses
  %i.bm = add nsw i64 %indvars.iv.i9, -1          ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !11
  %i.bp = icmp eq i32 %i.bo, 47
  br i1 %i.bp, label %bb.q, label %.preheader, !llvm.loop !0

bb.q:                                             ; preds = %.lr.ph10
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i9
  br label %_Z11PointToNamePKw.exit

_Z11PointToNamePKw.exit:                          ; preds = %.preheader, %.preheader.preheader, %bb.q
  %.1.i = phi ptr [ %i.bq, %bb.q ], [ %0, %.preheader.preheader ], [ %0, %.preheader ]
  %i.br = load i32, ptr %.1.i, align 4, !tbaa !11
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = select i1 %i.bs, ptr @.str.9, ptr @.str.19
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bt, i64 noundef 2048)
  br label %bb.s

bb.r:                                             ; preds = %_Z6GetExtPKw.exit
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.y, i64 noundef 2048)
  store i32 0, ptr %i.y, align 4, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_Z11PointToNamePKw.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !45 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = add i32 %i.bv, -1
  %i.by = select i1 %i.bw, i32 6, i32 %i.bx       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !46
  %i.cb = sub i32 %i.ca, %i.by                    ; 4 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp samesign ult i32 %i.cb, -3
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %5, align 4, !tbaa !47
  %i.cf = add i32 %i.ce, -1
  %i.cg = call noundef zeroext i1 @_Z10IsLeapYeari(i32 noundef %i.cf)
  %i.ch = select i1 %i.cg, i32 366, i32 365
  %i.ci = add nsw i32 %i.ch, %i.cb
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %.0118 = phi i32 [ %i.ci, %bb.u ], [ %i.cb, %bb.s ], [ 0, %bb.t ] ; 2 uses
  %i.cj = sdiv i32 %.0118, 7
  %i.ck = srem i32 %.0118, 7
  %i.cl = icmp sgt i32 %i.ck, 3
  %spec.select150.v = select i1 %i.cl, i32 2, i32 1
  %spec.select150 = add nsw i32 %spec.select150.v, %i.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cm = load i32, ptr %5, align 4, !tbaa !47
  %i.cn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.cm) #18 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !48
  %i.cr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.cq) #18 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !49
  %i.cv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cs, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.cu) #18 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !50
  %i.cz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cw, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.cy) #18 ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !51
  %i.dd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.da, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.dc) #18 ; 0 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 55
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !52
  %i.dh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.dg) #18 ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 66
  %i.dj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.di, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %spec.select150) #18 ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 77
  %i.dl = add i32 %i.by, 1
  %i.dm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dk, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.dl) #18 ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.do = load i32, ptr %i.bz, align 4, !tbaa !46
  %i.dp = add i32 %i.do, 1
  %i.dq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dn, ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.dp) #18 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 99
  %i.ds = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %2) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ 0, %bb.v ] ; 2 uses
  %.2131 = phi i1 [ %.3132, %bb.ac ], [ false, %bb.v ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !11 ; 3 uses
  switch i32 %i.du, label %bb.z [
    i32 0, label %bb.x
    i32 123, label %bb.y
    i32 125, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 16, !tbaa !11
  %i.dv = load i32, ptr %i.a, align 16, !tbaa !11 ; 2 uses
  %.not170 = icmp eq i32 %i.dv, 0
  br i1 %.not170, label %._crit_edge, label %.lr.ph

bb.y:                                             ; preds = %bb.w, %bb.w
  %i.dw = icmp eq i32 %i.du, 123
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  br i1 %.2131, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = call noundef i32 @_Z8toupperwi(i32 noundef %i.du)
  %i.dy = call ptr @wcschr(ptr noundef nonnull @.str.25, i32 noundef signext %i.dx) #17 ; 2 uses
  %.not148 = icmp eq ptr %i.dy, null
  br i1 %.not148, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, ptrtoint (ptr @.str.25 to i64)
  %i.eb = getelementptr inbounds i8, ptr %i.d, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !53
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !53
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z, %bb.y
  %.3132 = phi i1 [ %i.dw, %bb.y ], [ true, %bb.z ], [ false, %bb.ab ], [ false, %bb.aa ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %bb.w, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.an, %bb.x
  br i1 %i.h, label %bb.ao, label %bb.ay

.lr.ph:                                           ; preds = %bb.x, %bb.an
  %i.ee = phi i32 [ %i.fx, %bb.an ], [ %i.dv, %bb.x ] ; 3 uses
  %i.ef = phi ptr [ %i.fw, %bb.an ], [ %i.a, %bb.x ] ; 3 uses
  %.0169 = phi i64 [ %.4, %bb.an ], [ 0, %bb.x ]  ; 5 uses
  %.0111168 = phi i64 [ %i.fv, %bb.an ], [ 0, %bb.x ] ; 3 uses
  %.4133167 = phi i1 [ %.5, %bb.an ], [ false, %bb.x ] ; 2 uses
  switch i32 %i.ee, label %bb.ae [
    i32 123, label %bb.ad
    i32 125, label %bb.ad
  ]

bb.ad:                                            ; preds = %.lr.ph, %.lr.ph
  %i.eg = icmp eq i32 %i.ee, 123
  br label %bb.an

bb.ae:                                            ; preds = %.lr.ph
  %i.eh = call noundef i32 @_Z8toupperwi(i32 noundef %i.ee)
  %i.ei = call ptr @wcschr(ptr noundef nonnull @.str.25, i32 noundef signext %i.eh) #17 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  %or.cond5 = select i1 %i.ej, i1 true, i1 %.4133167
  br i1 %or.cond5, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ek = load i32, ptr %i.ef, align 4, !tbaa !11
  br label %.thread158

bb.ag:                                            ; preds = %bb.ae
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = sub i64 %i.el, ptrtoint (ptr @.str.25 to i64) ; 3 uses
  %i.en = ashr exact i64 %i.em, 2
  %i.eo = getelementptr inbounds nuw [11 x i8], ptr %i.c, i64 %i.en ; 2 uses
  %i.ep = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eo) #17
  %i.eq = trunc i64 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.em ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !53 ; 2 uses
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  store i32 %i.et, ptr %i.er, align 4, !tbaa !53
  %i.eu = sub nsw i32 %i.eq, %i.es                ; 2 uses
  %i.ev = icmp eq i64 %i.em, 4
  %i.ew = icmp eq i32 %i.et, 2
  %or.cond151 = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond151, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ex = getelementptr i8, ptr %i.ef, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !11
  %i.ez = call noundef i32 @_Z8toupperwi(i32 noundef %i.ey)
  %i.fa = icmp eq i32 %i.ez, 77
  br i1 %i.fa, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fb = add nuw nsw i64 %.0111168, 2            ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !11
  %i.fe = call noundef i32 @_Z8toupperwi(i32 noundef %i.fd)
  %i.ff = icmp eq i32 %i.fe, 77
  br i1 %i.ff, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.fg = icmp slt i32 %i.eu, 0
  br i1 %i.fg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fh = load i32, ptr %i.ef, align 4, !tbaa !11
  br label %.thread158

bb.al:                                            ; preds = %bb.aj
  %i.fi = zext nneg i32 %i.eu to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15
  %i.fl = sext i8 %i.fk to i32
  br label %.thread158

bb.am:                                            ; preds = %bb.ai
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0169
  %i.fn = load i32, ptr %i.cp, align 4, !tbaa !48
  %i.fo = add i32 %i.fn, -1
  %i.fp = call noundef ptr @_Z12GetMonthNamei(i32 noundef %i.fo)
  %i.fq = sub nuw nsw i64 128, %.0169
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.fm, ptr noundef %i.fp, i64 noundef %i.fq)
  %i.fr = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.e) #17
  br label %bb.an

.thread158:                                       ; preds = %bb.ak, %bb.al, %bb.af
  %.sink = phi i32 [ %i.fh, %bb.ak ], [ %i.fl, %bb.al ], [ %i.ek, %bb.af ]
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0169
  store i32 %.sink, ptr %i.fs, align 4, !tbaa !11
  %i.ft = add nuw nsw i64 %.0169, 1               ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ft
  store i32 0, ptr %i.fu, align 4, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread158, %bb.ad
  %.5 = phi i1 [ %i.eg, %bb.ad ], [ false, %bb.am ], [ %.4133167, %.thread158 ]
  %.4115 = phi i64 [ %.0111168, %bb.ad ], [ %i.fb, %bb.am ], [ %.0111168, %.thread158 ]
  %.4 = phi i64 [ %.0169, %bb.ad ], [ %i.fr, %bb.am ], [ %i.ft, %.thread158 ] ; 2 uses
  %i.fv = add i64 %.4115, 1                       ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !11 ; 2 uses
  %i.fy = icmp ne i32 %i.fx, 0
  %i.fz = icmp ult i64 %.4, 127
  %i.ga = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %i.ga, label %.lr.ph, label %._crit_edge, !llvm.loop !40

bb.ao:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.gb = call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 3 uses
  %i.gc = and i64 %i.gb, 4294967295               ; 2 uses
  %i.gd = trunc i64 %i.gb to i32
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph13, label %_Z11PointToNamePKw.exit.i

bb.ap:                                            ; preds = %.lr.ph13
  %i.gf = trunc nuw i64 %i.gh to i32
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph13, label %_Z11PointToNamePKw.exit.i, !llvm.loop !0

.lr.ph13:                                         ; preds = %bb.ao, %bb.ap
  %indvars.iv.i.i15211 = phi i64 [ %i.gh, %bb.ap ], [ %i.gc, %bb.ao ] ; 2 uses
  %i.gh = add nsw i64 %indvars.iv.i.i15211, -1    ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !11
  %i.gk = icmp eq i32 %i.gj, 47
  br i1 %i.gk, label %bb.aq, label %bb.ap, !llvm.loop !0

bb.aq:                                            ; preds = %.lr.ph13
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i15211
  br label %_Z11PointToNamePKw.exit.i

_Z11PointToNamePKw.exit.i:                        ; preds = %bb.ap, %bb.ao, %bb.aq
  %.1.i.i153 = phi ptr [ %i.gl, %bb.aq ], [ %0, %bb.ao ], [ %0, %bb.ap ]
  %i.gm = ptrtoint ptr %.1.i.i153 to i64
  %i.gn = ptrtoint ptr %0 to i64                  ; 4 uses
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = icmp ugt i64 %i.go, 8188
  br i1 %i.gp, label %_Z11GetFilePathPKwPwm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_Z11PointToNamePKw.exit.i
  %i.gq = trunc i64 %i.gb to i32
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph15, label %_Z11PointToNamePKw.exit14.i

.preheader.i:                                     ; preds = %.lr.ph15
  %i.gs = trunc nuw i64 %i.gu to i32
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph15, label %_Z11PointToNamePKw.exit14.i, !llvm.loop !0

.lr.ph15:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i12.i14 = phi i64 [ %i.gu, %.preheader.i ], [ %i.gc, %.preheader.i.preheader ] ; 2 uses
  %i.gu = add nsw i64 %indvars.iv.i12.i14, -1     ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !11
  %i.gx = icmp eq i32 %i.gw, 47
  br i1 %i.gx, label %bb.ar, label %.preheader.i, !llvm.loop !0

bb.ar:                                            ; preds = %.lr.ph15
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i12.i14
  %.pre.i = ptrtoint ptr %i.gy to i64
  br label %_Z11PointToNamePKw.exit14.i

_Z11PointToNamePKw.exit14.i:                      ; preds = %.preheader.i, %.preheader.i.preheader, %bb.ar
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.ar ], [ %i.gn, %.preheader.i.preheader ], [ %i.gn, %.preheader.i ]
  %i.gz = sub i64 %.pre-phi.i, %i.gn
  %i.ha = ashr exact i64 %i.gz, 2
  br label %_Z11GetFilePathPKwPwm.exit

_Z11GetFilePathPKwPwm.exit:                       ; preds = %_Z11PointToNamePKw.exit.i, %_Z11PointToNamePKw.exit14.i
  %i.hb = phi i64 [ %i.ha, %_Z11PointToNamePKw.exit14.i ], [ 2047, %_Z11PointToNamePKw.exit.i ] ; 2 uses
  %i.hc = call ptr @wcsncpy(ptr noundef nonnull %i.f, ptr noundef nonnull %0, i64 noundef %i.hb) #18 ; 0 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hb
  store i32 0, ptr %i.hd, align 4, !tbaa !11
  %i.he = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.f) #17 ; 3 uses
  %.not.i = icmp eq i64 %i.he, 0
  br i1 %.not.i, label %_Z11AddEndSlashPwm.exit, label %bb.as

bb.as:                                            ; preds = %_Z11GetFilePathPKwPwm.exit
  %i.hf = getelementptr [4 x i8], ptr %i.f, i64 %i.he ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 -4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !11
  %.not10.i = icmp eq i32 %i.hh, 47
  br i1 %.not10.i, label %_Z11AddEndSlashPwm.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hi = add i64 %i.he, 1                        ; 2 uses
  %i.hj = icmp ult i64 %i.hi, 2048
  br i1 %i.hj, label %bb.au, label %_Z11AddEndSlashPwm.exit

bb.au:                                            ; preds = %bb.at
  store i32 47, ptr %i.hf, align 4, !tbaa !11
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hi
  store i32 0, ptr %i.hk, align 4, !tbaa !11
  br label %_Z11AddEndSlashPwm.exit

_Z11AddEndSlashPwm.exit:                          ; preds = %_Z11GetFilePathPKwPwm.exit, %bb.as, %bb.at, %bb.au
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef 2048)
  %i.hl = call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #17 ; 2 uses
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph17, label %_Z11PointToNamePKw.exit156

.lr.ph17:                                         ; preds = %_Z11AddEndSlashPwm.exit
  %i.ho = and i64 %i.hl, 2147483647
  br label %bb.aw

bb.av:                                            ; preds = %bb.aw
  %i.hp = trunc nuw i64 %i.hr to i32
  %i.hq = icmp sgt i32 %i.hp, 0
  br i1 %i.hq, label %bb.aw, label %_Z11PointToNamePKw.exit156, !llvm.loop !0

bb.aw:                                            ; preds = %.lr.ph17, %bb.av
  %indvars.iv.i15416 = phi i64 [ %i.ho, %.lr.ph17 ], [ %i.hr, %bb.av ] ; 2 uses
  %i.hr = add nsw i64 %indvars.iv.i15416, -1      ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !11
  %i.hu = icmp eq i32 %i.ht, 47
  br i1 %i.hu, label %bb.ax, label %bb.av, !llvm.loop !0

bb.ax:                                            ; preds = %bb.aw
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i15416
  br label %_Z11PointToNamePKw.exit156

_Z11PointToNamePKw.exit156:                       ; preds = %bb.av, %_Z11AddEndSlashPwm.exit, %bb.ax
  %.1.i155 = phi ptr [ %i.hv, %bb.ax ], [ %0, %_Z11AddEndSlashPwm.exit ], [ %0, %bb.av ]
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %.1.i155, i64 noundef 2048)
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 2048)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 2048)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_Z11PointToNamePKw.exit156
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2048)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare noundef ptr @_Z11NullToEmptyPKw(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z11GetWideNamePKcPKwPwm(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !11
  %.not18 = icmp eq i32 %i.a, 0
  br i1 %.not18, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not20 = icmp eq ptr %2, %1
  br i1 %.not20, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call ptr @wcsncpy(ptr noundef %2, ptr noundef nonnull %1, i64 noundef %3) #18 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.b, %bb.a
  %.not19 = icmp eq ptr %0, null
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.c = tail call noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %2, align 4, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %.not21 = icmp eq i64 %3, 0
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.d = getelementptr [4 x i8], ptr %2, i64 %3
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  store i32 0, ptr %i.e, align 4, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret ptr %2
}

declare noundef i32 @_Z8toupperwi(i32 noundef) local_unnamed_addr #5

declare noundef i32 @_Z9GetDigitsj(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @wmemmove(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @wmemset(ptr noundef, i32 noundef signext, i64 noundef) local_unnamed_addr #10

declare void @_ZN7RarTime14SetCurrentTimeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN7RarTime8GetLocalEP12RarLocalTime(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_Z10IsLeapYeari(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare noundef ptr @_Z12GetMonthNamei(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"wchar_t", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 wchar_t", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{!"bool", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9, !23}
!23 = !{!"llvm.loop.peeled.count", i32 1}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = !{}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = !{!"long", !5, i64 0}
!42 = !{!"_ZTS7RarTime", !41, i64 0}
!43 = !{!42, !41, i64 0}
!44 = !{!"_ZTS12RarLocalTime", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!45 = !{!44, !6, i64 28}
!46 = !{!44, !6, i64 32}
!47 = !{!44, !6, i64 0}
end_hunk_0
