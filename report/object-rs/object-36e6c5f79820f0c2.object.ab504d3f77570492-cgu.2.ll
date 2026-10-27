Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.2?download=true
inline.NumInlined: 41
inline.NumDeleted: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN = external local_unnamed_addr global { { { ptr } } }
@0 = private unnamed_addr constant [41 x i8] c"Invalid Mach-O code signature blob length", align 1
@1 = private unnamed_addr constant [41 x i8] c"Invalid Mach-O code signature blob offset", align 1
@2 = private unnamed_addr constant [41 x i8] c"Invalid Mach-O code directory hash offset", align 1
@3 = private unnamed_addr constant [39 x i8] c"Invalid Mach-O code directory hash size", align 1
@4 = private unnamed_addr constant [48 x i8] c"Invalid Mach-O code directory special hash index", align 1
@5 = private unnamed_addr constant [47 x i8] c"Invalid Mach-O code directory identifier offset", align 1
@6 = private unnamed_addr constant [36 x i8] c"Invalid Mach-O code directory length", align 1
@7 = private unnamed_addr constant [39 x i8] c"Unsupported Mach-O code directory magic", align 1
@8 = private unnamed_addr constant [29 x i8] c"Invalid Mach-O code directory", align 1
@9 = private unnamed_addr constant [52 x i8] c"Invalid Mach-O code directory team identifier offset", align 1
@10 = private unnamed_addr constant [40 x i8] c"Invalid Mach-O code directory hash index", align 1
@11 = private unnamed_addr constant [41 x i8] c"Unsupported Mach-O code directory scatter", align 1
@12 = private unnamed_addr constant [40 x i8] c"Invalid Mach-O code signature blob count", align 1
@13 = private unnamed_addr constant [39 x i8] c"Unsupported Mach-O code signature magic", align 1
@14 = private unnamed_addr constant [40 x i8] c"Invalid Mach-O code signature super blob", align 1
@15 = private unnamed_addr constant [1 x i8] c"0", align 1
@16 = private unnamed_addr constant [5 x i8] c"\020x\C0\00", align 1
@17 = private unnamed_addr constant [7 x i8] c"\C0\03 | \C0\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read5macho8codesignNtB5_25CodeSignatureBlobIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.029.0.copyload = load i32, ptr %i.b, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %.sroa.029.0.copyload)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.030.0.copyload = load i32, ptr %i.h, align 1
  %i.i = tail call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload) ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.m = zext i32 %i.i to i64                     ; 3 uses
  %i.n = icmp ult i64 %i.l, %i.m
  %i.o = sub nuw i64 %i.l, %i.m                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m ; 3 uses
  %i.q = icmp samesign ult i64 %i.o, 8
  %i.r = select i1 %i.n, i1 true, i1 %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 41, ptr %i.t, align 8
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.031.0.copyload = load i32, ptr %i.u, align 1
  %i.v = tail call i32 @llvm.bswap.i32(i32 %.sroa.031.0.copyload)
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %.not.i = icmp ult i64 %i.o, %i.w
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 41, ptr %i.y, align 8
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.032.0.copyload = load i32, ptr %i.p, align 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %.sroa.032.0.copyload)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.aa, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.g, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.i, ptr %.sroa.626.0..sroa_idx, align 4
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.z, ptr %.sroa.727.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs2_NtNtNtCseHTIzroA4w0_6object4read5macho8codesignNtB5_17CodeSignatureBlob14code_directory(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i32 %i.b, -86111230
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 6 uses
  %i.g = icmp samesign ult i64 %i.f, 44
  br i1 %i.g, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 4 uses
  %.sroa.039.0.copyload.i = load i32, ptr %i.d, align 1, !alias.scope !10
  %i.i = icmp eq i32 %.sroa.039.0.copyload.i, 34397946
  br i1 %i.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.040.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !10
  %i.k = tail call i32 @llvm.bswap.i32(i32 %.sroa.040.0.copyload.i) ; 4 uses
  %i.l = icmp ugt i32 %i.k, 131327
  br i1 %i.l, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.m = icmp samesign ult i64 %i.f, 48
  br i1 %i.m, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.o = icmp ugt i32 %i.k, 131583
  br i1 %i.o, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.p = icmp samesign ult i64 %i.f, 52
  br i1 %i.p, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  %i.r = icmp ugt i32 %i.k, 131839
  br i1 %i.r, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.s = icmp samesign ult i64 %i.f, 64
  br i1 %i.s, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = icmp ugt i32 %i.k, 132095
  br i1 %i.t, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.v = icmp samesign ult i64 %i.f, 88
  br i1 %i.v, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k
  %.sroa.19.0.ph = phi i64 [ 36, %bb.k ], [ 36, %bb.i ], [ 36, %bb.g ], [ 36, %bb.e ], [ 39, %bb.c ], [ 29, %bb.b ]
  %.sroa.11.0.ph = phi ptr [ @6, %bb.k ], [ @6, %bb.i ], [ @6, %bb.g ], [ @6, %bb.e ], [ @7, %bb.c ], [ @8, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11.0.ph, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.0.ph, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d
  %.sroa.016.096.i = phi ptr [ %i.q, %bb.k ], [ %i.q, %bb.j ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.d ]
  %.sroa.04.0738295.i = phi ptr [ %i.h, %bb.k ], [ %i.h, %bb.j ], [ %i.h, %bb.h ], [ %i.h, %bb.f ], [ null, %bb.d ]
  %.sroa.010.08394.i = phi ptr [ %i.n, %bb.k ], [ %i.n, %bb.j ], [ %i.n, %bb.h ], [ null, %bb.f ], [ null, %bb.d ]
  %.sroa.022.0.i = phi ptr [ %i.u, %bb.k ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.d ]
  %i.y = ptrtoint ptr %i.d to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.z, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.y, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.04.0738295.i, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.010.08394.i, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.016.096.i, ptr %.sroa.87.0..sroa_idx, align 8
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.022.0.i, ptr %.sroa.98.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs3_NtNtNtCseHTIzroA4w0_6object4read5macho8codesignNtB5_13CodeDirectory12special_hash(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.021.0.copyload = load i32, ptr %i.d, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %.sroa.021.0.copyload)
  %i.f = icmp ugt i32 %2, %i.e
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.h = load i8, ptr %i.g, align 1, !noundef !5  ; 2 uses
  %i.i = zext i8 %i.h to i32
  %i.j = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 %i.i) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.l, label %bb.g, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.020.0.copyload = load i32, ptr %i.m, align 1
  %i.n = tail call i32 @llvm.bswap.i32(i32 %.sroa.020.0.copyload) ; 2 uses
  %i.o = icmp ult i32 %i.n, %i.k
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sub nuw i32 %i.n, %i.k
  %.sroa.63.8.insert.ext = zext i32 %i.p to i64   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.s = zext i8 %i.h to i64                      ; 2 uses
  %i.t = icmp ult i64 %i.r, %.sroa.63.8.insert.ext
  %i.u = sub nuw i64 %i.r, %.sroa.63.8.insert.ext
  %.not.i = icmp ult i64 %i.u, %i.s
  %or.cond = select i1 %i.t, i1 true, i1 %.not.i
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.63.8.insert.ext
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d, %bb.f
  %.sink31 = phi ptr [ @4, %bb.a ], [ @3, %bb.c ], [ %i.w, %bb.f ], [ @3, %bb.d ], [ @4, %bb.b ], [ @2, %bb.e ]
  %.sink29 = phi i64 [ 48, %bb.a ], [ 39, %bb.c ], [ %i.s, %bb.f ], [ 39, %bb.d ], [ 48, %bb.b ], [ 41, %bb.e ]
  %.sink = phi i64 [ 1, %bb.a ], [ 1, %bb.c ], [ 0, %bb.f ], [ 1, %bb.d ], [ 1, %bb.b ], [ 1, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink31, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink29, ptr %i.y, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtNtCseHTIzroA4w0_6object4read5macho8codesignNtB5_13CodeDirectory5ident(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.03.0.copyload = load i32, ptr %i.e, align 1
  %i.f = tail call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload)
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  %i.l = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !15, !nonnull !5, !noundef !5
  %i.m = tail call { i64, ptr } %i.l(i8 noundef 0, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.k), !noalias !15, !inline_history !0 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.c, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = sub nuw i64 %i.b, %i.g
  %i.q = extractvalue { i64, ptr } %i.m, 1
  %i.r = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.q, ptr noundef nonnull readonly %i.j), !noalias !16 ; 2 uses
  %.not.i.i = icmp ult i64 %i.r, %i.p
  tail call void @llvm.assume(i1 %.not.i.i)
  br label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread

_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit.thread: ; preds = %bb.a, %bb.b, %bb.c
  %.sink10 = phi ptr [ %i.j, %bb.c ], [ @5, %bb.b ], [ @5, %bb.a ]
  %.sink = phi i64 [ %i.r, %bb.c ], [ 47, %bb.b ], [ 47, %bb.a ]
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
