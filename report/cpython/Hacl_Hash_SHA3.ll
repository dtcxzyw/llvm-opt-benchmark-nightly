inline.NumInlined: 790
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hacl_Hash_SHA3_hash_buf_s = type { i8, ptr }

@_Py_LibHacl_Hacl_Hash_SHA3_keccak_rotc = hidden local_unnamed_addr constant [24 x i32] [i32 1, i32 3, i32 6, i32 10, i32 15, i32 21, i32 28, i32 36, i32 45, i32 55, i32 2, i32 14, i32 27, i32 41, i32 56, i32 8, i32 25, i32 43, i32 62, i32 18, i32 39, i32 61, i32 20, i32 44], align 16
@_Py_LibHacl_Hacl_Hash_SHA3_keccak_piln = hidden local_unnamed_addr constant [24 x i32] [i32 10, i32 7, i32 11, i32 17, i32 18, i32 3, i32 5, i32 16, i32 8, i32 21, i32 24, i32 4, i32 15, i32 23, i32 19, i32 13, i32 12, i32 2, i32 20, i32 14, i32 22, i32 9, i32 6, i32 1], align 16
@_Py_LibHacl_Hacl_Hash_SHA3_keccak_rndc = hidden local_unnamed_addr constant [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], align 16
@.str.1 = private unnamed_addr constant [34 x i8] c"../Modules/_hacl/Hacl_Hash_SHA3.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"KaRaMeL incomplete match at %s:%d\0A\00", align 1
@switch.table.digest_.19 = private unnamed_addr constant [6 x i64] [i64 136, i64 144, i64 104, i64 72, i64 168, i64 136], align 8
@switch.table.digest_.20 = private unnamed_addr constant [4 x i32] [i32 136, i32 144, i32 104, i32 72], align 4
@switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len = private unnamed_addr constant [6 x i32] [i32 136, i32 144, i32 104, i32 72, i32 168, i32 136], align 4
@switch.table._Py_LibHacl_Hacl_Hash_SHA3_hash_len = private unnamed_addr constant [4 x i32] [i32 32, i32 28, i32 48, i32 64], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_init_(i8 noundef zeroext %0, ptr noundef writeonly captures(none) initializes((0, 200)) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1, i8 0, i64 200, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nofree nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %switch.tableidx = add i8 %0, -8                ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 6
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.f = mul i32 %switch.load, %3
  %i.g = zext nneg i8 %0 to i64
  %i.h = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.g
  %switch.gep49 = getelementptr i8, ptr %i.h, i64 -32
  %switch.load50 = load i32, ptr %switch.gep49, align 4
  %i.i = udiv i32 %i.f, %switch.load50
  %i.j = zext nneg i32 %i.i to i64
  br label %switch.lookup48

switch.lookup48:                                  ; preds = %block_len.exit23, %switch.lookup
  %indvars.iv = phi i64 [ %indvars.iv.next, %block_len.exit23 ], [ 0, %switch.lookup ] ; 7 uses
  %i.k = icmp samesign ult i64 %indvars.iv, %i.j
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %switch.lookup48
  ret void

bb.d:                                             ; preds = %switch.lookup48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  switch i8 %0, label %bb.e [
    i8 9, label %block_len.exit19.thread
    i8 8, label %block_len.exit19
    i8 10, label %block_len.exit19.thread25
    i8 11, label %block_len.exit19.thread27
    i8 12, label %block_len.exit19.thread29
    i8 13, label %block_len.exit19
  ]

block_len.exit19.thread:                          ; preds = %bb.d
  %i.l = mul nuw nsw i64 %indvars.iv, 144
  %i.m = and i64 %i.l, 4294967280
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  br label %block_len.exit21.thread

block_len.exit19.thread25:                        ; preds = %bb.d
  %i.o = mul nuw nsw i64 %indvars.iv, 104
  %i.p = and i64 %i.o, 4294967288
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  br label %block_len.exit21.thread34

block_len.exit19.thread27:                        ; preds = %bb.d
  %i.r = mul nuw nsw i64 %indvars.iv, 72
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  br label %block_len.exit21.thread38

block_len.exit19.thread29:                        ; preds = %bb.d
  %i.t = mul nuw nsw i64 %indvars.iv, 168
  %i.u = and i64 %i.t, 4294967288
  %i.v = getelementptr i8, ptr %2, i64 %i.u
  br label %block_len.exit21.thread42

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

block_len.exit19:                                 ; preds = %bb.d, %bb.d
  %i.y = mul nuw nsw i64 %indvars.iv, 136
  %i.z = and i64 %i.y, 4294967288
  %i.aa = getelementptr i8, ptr %2, i64 %i.z      ; 5 uses
  switch i8 %0, label %default.unreachable44 [
    i8 9, label %block_len.exit21.thread
    i8 8, label %block_len.exit21
    i8 10, label %block_len.exit21.thread34
    i8 11, label %block_len.exit21.thread38
    i8 12, label %block_len.exit21.thread42
    i8 13, label %block_len.exit21
  ]

default.unreachable44:                            ; preds = %block_len.exit19
  unreachable

block_len.exit21.thread:                          ; preds = %block_len.exit19.thread, %block_len.exit19
  %.ph = phi ptr [ %i.n, %block_len.exit19.thread ], [ %i.aa, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 1 dereferenceable(144) %.ph, i64 144, i1 false)
  br label %block_len.exit23

block_len.exit21.thread34:                        ; preds = %block_len.exit19.thread25, %block_len.exit19
  %.ph33 = phi ptr [ %i.q, %block_len.exit19.thread25 ], [ %i.aa, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.a, ptr noundef nonnull align 1 dereferenceable(104) %.ph33, i64 104, i1 false)
  br label %block_len.exit23

block_len.exit21.thread38:                        ; preds = %block_len.exit19.thread27, %block_len.exit19
  %.ph37 = phi ptr [ %i.s, %block_len.exit19.thread27 ], [ %i.aa, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull align 1 dereferenceable(72) %.ph37, i64 72, i1 false)
  br label %block_len.exit23

block_len.exit21.thread42:                        ; preds = %block_len.exit19.thread29, %block_len.exit19
  %.ph41 = phi ptr [ %i.v, %block_len.exit19.thread29 ], [ %i.aa, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull align 1 dereferenceable(168) %.ph41, i64 168, i1 false)
  br label %block_len.exit23

block_len.exit21:                                 ; preds = %block_len.exit19, %block_len.exit19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.a, ptr noundef nonnull align 1 dereferenceable(136) %i.aa, i64 136, i1 false)
  br label %block_len.exit23

block_len.exit23:                                 ; preds = %block_len.exit21, %block_len.exit21.thread42, %block_len.exit21.thread38, %block_len.exit21.thread34, %block_len.exit21.thread
  call fastcc void @absorb_inner_32(ptr noundef %i.a, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %switch.lookup48, !llvm.loop !13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @absorb_inner_32(ptr noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #4 {
.preheader:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val637 = load i64, ptr %i.b, align 1
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val636 = load i64, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val635 = load i64, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %0, i64 56
  %.val634 = load i64, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val633 = load i64, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %0, i64 72
  %.val632 = load i64, ptr %i.g, align 1
  %i.h = getelementptr i8, ptr %0, i64 80
  %.val631 = load i64, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %0, i64 88
  %.val630 = load i64, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %0, i64 96
  %.val629 = load i64, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %0, i64 104
  %.val628 = load i64, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %0, i64 112
  %.val627 = load i64, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %0, i64 120
  %.val626 = load i64, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %0, i64 128
  %.val625 = load i64, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %0, i64 136
  %.val624 = load i64, ptr %i.o, align 1
  %i.p = getelementptr i8, ptr %0, i64 144
  %.val623 = load i64, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %0, i64 152
  %.val622 = load i64, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %0, i64 160
  %.val621 = load i64, ptr %i.r, align 1
  %i.s = getelementptr i8, ptr %0, i64 168
  %.val620 = load i64, ptr %i.s, align 1
  %i.t = getelementptr i8, ptr %0, i64 176
  %.val619 = load i64, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %0, i64 184
  %.val618 = load i64, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %0, i64 192
  %.val617 = load i64, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.x = load <2 x i64>, ptr %0, align 1
  %i.y = load <2 x i64>, ptr %1, align 8, !tbaa !15
  %i.z = xor <2 x i64> %i.x, %i.y                 ; 2 uses
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3:bb.a
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  store i8 -128, ptr %i.ci, align 1, !tbaa !18
  call fastcc void @absorb_inner_32(ptr noundef %i.d, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_SHA3_get_alg(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_SHA3_malloc(i8 noundef zeroext %0) local_unnamed_addr #6 {
bb.a:
  %.off = add i8 %0, -8
  %switch = icmp ult i8 %.off, 6
  br i1 %switch, label %block_len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

block_len.exit:                                   ; preds = %bb.a
  %i.c = zext nneg i8 %0 to i64
  %i.d = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -64
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.e = tail call noalias ptr @calloc(i64 noundef %switch.load, i64 noundef 1) #20 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %block_len.exit
  %i.g = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #20 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.e) #19
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #21 ; 8 uses
  %cond = icmp eq ptr %i.i, null
  br i1 %cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %0, ptr %i.i, align 8, !tbaa !18
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.4.0..sroa_idx, i8 0, i64 7, i1 false)
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.g, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.g) #19
  tail call void @free(ptr noundef nonnull %i.e) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %block_len.exit
  %.3 = phi ptr [ null, %block_len.exit ], [ null, %bb.d ], [ %i.i, %bb.f ], [ %i.i, %bb.g ]
  ret ptr %.3
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_free(ptr noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21
  tail call void @free(ptr noundef %.sroa.4.0.copyload) #19
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #19
  tail call void @free(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_SHA3_copy(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %.sroa.038.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.439.0.copyload = load ptr, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !19
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.540.0.copyload = load ptr, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !21
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.641.0.copyload = load i64, ptr %.sroa.641.0..sroa_idx, align 8, !tbaa !15
  %.sroa.036.sroa.0.0.extract.trunc = trunc i64 %.sroa.038.0.copyload to i8
  %.sroa.036.sroa.0.0.extract.trunc.off = add i8 %.sroa.036.sroa.0.0.extract.trunc, -8
  %switch = icmp ult i8 %.sroa.036.sroa.0.0.extract.trunc.off, 6
  br i1 %switch, label %block_len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

block_len.exit:                                   ; preds = %bb.a
  %switch.tableidx = add i64 %.sroa.038.0.copyload, 248
  %i.c = and i64 %switch.tableidx, 255
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.c
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.d = tail call noalias ptr @calloc(i64 noundef %switch.load, i64 noundef 1) #20 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %switch.lookup

switch.lookup:                                    ; preds = %block_len.exit
  %switch.tableidx56 = add i64 %.sroa.038.0.copyload, 248
  %i.f = and i64 %switch.tableidx56, 255
  %switch.gep57 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.f
  %switch.load58 = load i64, ptr %switch.gep57, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.540.0.copyload, i64 %switch.load58, i1 false)
  %i.g = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #20 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = and i64 %.sroa.038.0.copyload, 255
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  tail call void @free(ptr noundef nonnull %i.d) #19
  br label %bb.g

bb.d:                                             ; preds = %switch.lookup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.g, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.439.0.copyload, i64 200, i1 false)
  %i.j = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #21 ; 6 uses
  %cond = icmp eq ptr %i.j, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.i, ptr %i.j, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.g, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.641.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.g) #19
  tail call void @free(ptr noundef nonnull %i.d) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f, %block_len.exit
  %.3 = phi ptr [ null, %block_len.exit ], [ null, %bb.c ], [ null, %bb.f ], [ %i.j, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_reset(ptr noundef captures(none) initializes((24, 32)) %0) local_unnamed_addr #13 {
bb.a:
  %.sroa.0.sroa.4 = alloca [7 x i8], align 1      ; 4 uses
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.4, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.47.0..sroa_idx, i64 7, i1 false)
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.a = load <2 x ptr>, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !23
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.58.0.copyload, i8 0, i64 200, i1 false)
  store i8 %.sroa.0.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.4, i64 7, i1 false), !tbaa.struct !24
  store <2 x ptr> %i.a, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !23
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.4)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA3_update(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 2 uses
  %.sroa.697 = alloca [7 x i8], align 1           ; 2 uses
  %4 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 3 uses
  %.sroa.0159.0.copyload = load i8, ptr %0, align 8, !tbaa !18 ; 28 uses
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.5162.0.copyload = load i64, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15 ; 13 uses
  %i.a = zext i32 %2 to i64                       ; 4 uses
  %i.b = xor i64 %.sroa.5162.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i8 %.sroa.0159.0.copyload, -8 ; 2 uses
  %i.d = icmp ult i8 %switch.tableidx, 6
  br i1 %i.d, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.g = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.g
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.h = urem i64 %.sroa.5162.0.copyload, %switch.load
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp ne i64 %.sroa.5162.0.copyload, 0    ; 4 uses
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.d, label %switch.lookup398

bb.d:                                             ; preds = %switch.lookup
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable [
    i8 9, label %block_len.exit212
    i8 8, label %block_len.exit208
    i8 10, label %block_len.exit208.thread273
    i8 11, label %block_len.exit208.thread276
    i8 12, label %block_len.exit208.thread279
    i8 13, label %block_len.exit208
  ]

block_len.exit208.thread273:                      ; preds = %bb.d
  br label %block_len.exit212

block_len.exit208.thread276:                      ; preds = %bb.d
  br label %block_len.exit212

block_len.exit208.thread279:                      ; preds = %bb.d
  br label %block_len.exit212

default.unreachable:                              ; preds = %bb.d
  unreachable

switch.lookup398:                                 ; preds = %switch.lookup
  %i.k = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.l = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.k
  %switch.gep399 = getelementptr i8, ptr %i.l, i64 -64
  %switch.load400 = load i64, ptr %switch.gep399, align 8
  %i.m = urem i64 %.sroa.5162.0.copyload, %switch.load400
  %i.n = trunc nuw nsw i64 %i.m to i32
  br label %block_len.exit208

block_len.exit208:                                ; preds = %bb.d, %bb.d, %switch.lookup398
  %.0194 = phi i32 [ %i.n, %switch.lookup398 ], [ 136, %bb.d ], [ 136, %bb.d ] ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable393 [
    i8 9, label %block_len.exit212
    i8 8, label %bb.e
    i8 10, label %bb.f
    i8 11, label %bb.g
    i8 12, label %bb.h
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %block_len.exit208, %block_len.exit208
  br label %block_len.exit212

bb.f:                                             ; preds = %block_len.exit208
  br label %block_len.exit212

bb.g:                                             ; preds = %block_len.exit208
  br label %block_len.exit212

bb.h:                                             ; preds = %block_len.exit208
  br label %block_len.exit212

default.unreachable393:                           ; preds = %block_len.exit208
  unreachable

block_len.exit212:                                ; preds = %bb.d, %block_len.exit208.thread279, %block_len.exit208.thread276, %block_len.exit208.thread273, %block_len.exit208, %bb.e, %bb.f, %bb.g, %bb.h
  %.0194272 = phi i32 [ %.0194, %block_len.exit208 ], [ %.0194, %bb.e ], [ %.0194, %bb.h ], [ %.0194, %bb.f ], [ %.0194, %bb.g ], [ 104, %block_len.exit208.thread273 ], [ 72, %block_len.exit208.thread276 ], [ 168, %block_len.exit208.thread279 ], [ 144, %bb.d ] ; 7 uses
  %.0.i211 = phi i32 [ 144, %block_len.exit208 ], [ 136, %bb.e ], [ 168, %bb.h ], [ 104, %bb.f ], [ 72, %bb.g ], [ 104, %block_len.exit208.thread273 ], [ 72, %block_len.exit208.thread276 ], [ 168, %block_len.exit208.thread279 ], [ 144, %bb.d ]
  %i.o = sub nsw i32 %.0.i211, %.0194272
  %.not = icmp ugt i32 %2, %i.o
  br i1 %.not, label %bb.i, label %switch.lookup402

switch.lookup402:                                 ; preds = %block_len.exit212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.sroa.4119.0.copyload = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.p = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.q = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.p
  %switch.gep403 = getelementptr i8, ptr %i.q, i64 -64
  %switch.load404 = load i64, ptr %switch.gep403, align 8
  %i.r = urem i64 %.sroa.5162.0.copyload, %switch.load404
  %i.s = icmp eq i64 %i.r, 0
  %or.cond3 = and i1 %i.j, %i.s
  %switch.tableidx405 = add nsw i8 %.sroa.0159.0.copyload, -8
  %i.t = zext nneg i8 %switch.tableidx405 to i64  ; 2 uses
  br i1 %or.cond3, label %switch.lookup406, label %switch.lookup410

switch.lookup406:                                 ; preds = %switch.lookup402
  %switch.gep407 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.t
  %switch.load408 = load i64, ptr %switch.gep407, align 8
  br label %block_len.exit216

switch.lookup410:                                 ; preds = %switch.lookup402
  %switch.gep411 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.t
  %switch.load412 = load i64, ptr %switch.gep411, align 8
  %i.u = urem i64 %.sroa.5162.0.copyload, %switch.load412
  br label %block_len.exit216

block_len.exit216:                                ; preds = %switch.lookup406, %switch.lookup410
  %.0195 = phi i64 [ %i.u, %switch.lookup410 ], [ %switch.load408, %switch.lookup406 ]
  %i.v = getelementptr i8, ptr %.sroa.4119.0.copyload, i64 %.0195
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %1, i64 %i.a, i1 false)
  %i.w = add i64 %.sroa.5162.0.copyload, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %.sink.split

bb.i:                                             ; preds = %block_len.exit212
  %i.x = icmp eq i32 %.0194272, 0
  br i1 %i.x, label %switch.lookup414, label %bb.o

switch.lookup414:                                 ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, i64 7, i1 false)
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5103.0.copyload = load ptr, ptr %.sroa.5103.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.6104.0.copyload = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 3 uses
  %i.y = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.z = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.y
  %switch.gep415 = getelementptr i8, ptr %i.z, i64 -64
  %switch.load416 = load i64, ptr %switch.gep415, align 8
  %i.aa = urem i64 %.sroa.5162.0.copyload, %switch.load416
  %i.ab = icmp eq i64 %i.aa, 0
  %or.cond5 = and i1 %i.j, %i.ab
  br i1 %or.cond5, label %block_len.exit222, label %switch.lookup418

switch.lookup418:                                 ; preds = %switch.lookup414
  %i.ac = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.ad = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.ac
  %switch.gep419 = getelementptr i8, ptr %i.ad, i64 -64
  %switch.load420 = load i64, ptr %switch.gep419, align 8
  %i.ae = urem i64 %.sroa.5162.0.copyload, %switch.load420
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %switch.lookup422, label %block_len.exit222

block_len.exit222:                                ; preds = %switch.lookup414, %switch.lookup418
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0159.0.copyload, ptr noundef %.sroa.5103.0.copyload, ptr noundef %.sroa.6104.0.copyload, i32 noundef 1)
  br label %switch.lookup422

switch.lookup422:                                 ; preds = %block_len.exit222, %switch.lookup418
  %i.ag = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.ah = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.ag
  %switch.gep423 = getelementptr i8, ptr %i.ah, i64 -32
  %switch.load424 = load i32, ptr %switch.gep423, align 4
  %i.ai = urem i32 %2, %switch.load424
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %switch.lookup426

bb.j:                                             ; preds = %switch.lookup422
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable367 [
    i8 9, label %block_len.exit232.thread
    i8 8, label %block_len.exit232
    i8 10, label %block_len.exit232.thread294
    i8 11, label %block_len.exit232.thread296
    i8 12, label %block_len.exit232.thread298
    i8 13, label %block_len.exit232
  ]

block_len.exit232.thread:                         ; preds = %bb.j
  %i.ak = add i32 %2, -144
  br label %block_len.exit236.thread

block_len.exit232.thread294:                      ; preds = %bb.j
  %i.al = add i32 %2, -104
  br label %block_len.exit236.thread303

block_len.exit232.thread296:                      ; preds = %bb.j
  %i.am = add i32 %2, -72
  br label %block_len.exit236.thread307

block_len.exit232.thread298:                      ; preds = %bb.j
  %i.an = add i32 %2, -168
  br label %block_len.exit236.thread311

default.unreachable367:                           ; preds = %bb.j
  unreachable

switch.lookup426:                                 ; preds = %switch.lookup422
  %i.ao = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.ap = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.ao
  %switch.gep427 = getelementptr i8, ptr %i.ap, i64 -32
  %switch.load428 = load i32, ptr %switch.gep427, align 4
  %i.aq = urem i32 %2, %switch.load428
  br label %block_len.exit232

block_len.exit232:                                ; preds = %bb.j, %bb.j, %switch.lookup426
  %.0197 = phi i32 [ %i.aq, %switch.lookup426 ], [ 136, %bb.j ], [ 136, %bb.j ]
  %i.ar = sub i32 %2, %.0197                      ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable368 [
    i8 9, label %block_len.exit236.thread
    i8 8, label %block_len.exit236
    i8 10, label %block_len.exit236.thread303
    i8 11, label %block_len.exit236.thread307
    i8 12, label %block_len.exit236.thread311
    i8 13, label %block_len.exit236
  ]

default.unreachable368:                           ; preds = %block_len.exit232
  unreachable

block_len.exit236.thread:                         ; preds = %block_len.exit232.thread, %block_len.exit232
  %.ph = phi i32 [ %i.ak, %block_len.exit232.thread ], [ %i.ar, %block_len.exit232 ]
  %i.as = udiv i32 %.ph, 144
  br label %block_len.exit238.thread

block_len.exit236.thread303:                      ; preds = %block_len.exit232.thread294, %block_len.exit232
  %.ph302 = phi i32 [ %i.al, %block_len.exit232.thread294 ], [ %i.ar, %block_len.exit232 ]
  %i.at = udiv i32 %.ph302, 104
  br label %block_len.exit238.thread317

block_len.exit236.thread307:                      ; preds = %block_len.exit232.thread296, %block_len.exit232
  %.ph306 = phi i32 [ %i.am, %block_len.exit232.thread296 ], [ %i.ar, %block_len.exit232 ]
  %i.au = udiv i32 %.ph306, 72
  br label %block_len.exit238.thread321

block_len.exit236.thread311:                      ; preds = %block_len.exit232.thread298, %block_len.exit232
  %.ph310 = phi i32 [ %i.an, %block_len.exit232.thread298 ], [ %i.ar, %block_len.exit232 ]
  %i.av = udiv i32 %.ph310, 168
  br label %block_len.exit238.thread325

block_len.exit236:                                ; preds = %block_len.exit232, %block_len.exit232
  %i.aw = udiv i32 %i.ar, 136                     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable369 [
    i8 9, label %block_len.exit238.thread
    i8 8, label %block_len.exit238
    i8 10, label %block_len.exit238.thread317
    i8 11, label %block_len.exit238.thread321
    i8 12, label %block_len.exit238.thread325
    i8 13, label %block_len.exit238
  ]

default.unreachable369:                           ; preds = %block_len.exit236
  unreachable

block_len.exit238.thread:                         ; preds = %block_len.exit236.thread, %block_len.exit236
  %.ph313 = phi i32 [ %i.as, %block_len.exit236.thread ], [ %i.aw, %block_len.exit236 ]
  %i.ax = mul i32 %.ph313, 144                    ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  br label %block_len.exit240

block_len.exit238.thread317:                      ; preds = %block_len.exit236.thread303, %block_len.exit236
  %.ph316 = phi i32 [ %i.at, %block_len.exit236.thread303 ], [ %i.aw, %block_len.exit236 ]
  %i.ba = mul nuw i32 %.ph316, 104                ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  br label %block_len.exit240

block_len.exit238.thread321:                      ; preds = %block_len.exit236.thread307, %block_len.exit236
  %.ph320 = phi i32 [ %i.au, %block_len.exit236.thread307 ], [ %i.aw, %block_len.exit236 ]
  %i.bd = mul nuw i32 %.ph320, 72                 ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  br label %block_len.exit240

block_len.exit238.thread325:                      ; preds = %block_len.exit236.thread311, %block_len.exit236
  %.ph324 = phi i32 [ %i.av, %block_len.exit236.thread311 ], [ %i.aw, %block_len.exit236 ]
  %i.bg = mul i32 %.ph324, 168                    ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %1, i64 %i.bh
  br label %block_len.exit240

block_len.exit238:                                ; preds = %block_len.exit236, %block_len.exit236
  %i.bj = mul nuw i32 %i.aw, 136                  ; 6 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable370 [
    i8 9, label %block_len.exit240
    i8 8, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.k
  ]

bb.k:                                             ; preds = %block_len.exit238, %block_len.exit238
  br label %block_len.exit240

bb.l:                                             ; preds = %block_len.exit238
  br label %block_len.exit240

bb.m:                                             ; preds = %block_len.exit238
  br label %block_len.exit240

bb.n:                                             ; preds = %block_len.exit238
  br label %block_len.exit240

default.unreachable370:                           ; preds = %block_len.exit238
  unreachable

block_len.exit240:                                ; preds = %block_len.exit238.thread325, %block_len.exit238.thread321, %block_len.exit238.thread317, %block_len.exit238.thread, %block_len.exit238, %bb.k, %bb.l, %bb.m, %bb.n
  %i.bm = phi ptr [ %i.bl, %block_len.exit238 ], [ %i.bl, %bb.k ], [ %i.az, %block_len.exit238.thread ], [ %i.bl, %bb.l ], [ %i.bl, %bb.m ], [ %i.bc, %block_len.exit238.thread317 ], [ %i.bf, %block_len.exit238.thread321 ], [ %i.bi, %block_len.exit238.thread325 ], [ %i.bl, %bb.n ]
  %i.bn = phi i32 [ %i.bj, %block_len.exit238 ], [ %i.bj, %bb.k ], [ %i.ax, %block_len.exit238.thread ], [ %i.bj, %bb.l ], [ %i.bj, %bb.m ], [ %i.ba, %block_len.exit238.thread317 ], [ %i.bd, %block_len.exit238.thread321 ], [ %i.bg, %block_len.exit238.thread325 ], [ %i.bj, %bb.n ] ; 2 uses
  %.0.i239 = phi i32 [ 144, %block_len.exit238 ], [ 136, %bb.k ], [ 144, %block_len.exit238.thread ], [ 104, %bb.l ], [ 72, %bb.m ], [ 104, %block_len.exit238.thread317 ], [ 72, %block_len.exit238.thread321 ], [ 168, %block_len.exit238.thread325 ], [ 168, %bb.n ]
  %i.bo = sub i32 %2, %i.bn
  %i.bp = udiv i32 %i.bn, %.0.i239
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0159.0.copyload, ptr noundef %.sroa.5103.0.copyload, ptr noundef %1, i32 noundef %i.bp)
  %i.bq = zext i32 %i.bo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6104.0.copyload, ptr align 1 %i.bm, i64 %i.bq, i1 false)
  %i.br = add i64 %.sroa.5162.0.copyload, %i.a
  store i8 %.sroa.0159.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697, i64 7, i1 false)
  store ptr %.sroa.5103.0.copyload, ptr %.sroa.5103.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

bb.o:                                             ; preds = %bb.i
  %.sroa.454.0.copyload328 = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable374 [
    i8 9, label %block_len.exit242.thread
    i8 8, label %block_len.exit242
    i8 10, label %block_len.exit242.thread330
    i8 11, label %block_len.exit242.thread334
    i8 12, label %block_len.exit242.thread338
    i8 13, label %block_len.exit242
  ]

block_len.exit242.thread:                         ; preds = %bb.o
  %i.bs = sub nsw i32 144, %.0194272              ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt
  br label %block_len.exit244

block_len.exit242.thread330:                      ; preds = %bb.o
  %i.bv = sub nsw i32 104, %.0194272              ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  br label %block_len.exit244

block_len.exit242.thread334:                      ; preds = %bb.o
  %i.by = sub nsw i32 72, %.0194272               ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz
  br label %block_len.exit244

block_len.exit242.thread338:                      ; preds = %bb.o
  %i.cb = sub nuw nsw i32 168, %.0194272          ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  br label %block_len.exit244

default.unreachable374:                           ; preds = %bb.o
  unreachable

block_len.exit242:                                ; preds = %bb.o, %bb.o
  %i.ce = sub nsw i32 136, %.0194272              ; 6 uses
  %i.cf = zext i32 %i.ce to i64                   ; 6 uses
  %i.cg = getelementptr i8, ptr %1, i64 %i.cf     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable389 [
    i8 9, label %block_len.exit244
    i8 8, label %bb.p
    i8 10, label %bb.q
    i8 11, label %bb.r
    i8 12, label %bb.s
    i8 13, label %bb.p
  ]

bb.p:                                             ; preds = %block_len.exit242, %block_len.exit242
  br label %block_len.exit244

bb.q:                                             ; preds = %block_len.exit242
  br label %block_len.exit244

bb.r:                                             ; preds = %block_len.exit242
  br label %block_len.exit244

bb.s:                                             ; preds = %block_len.exit242
  br label %block_len.exit244

default.unreachable389:                           ; preds = %block_len.exit242
  unreachable

block_len.exit244:                                ; preds = %block_len.exit242.thread338, %block_len.exit242.thread334, %block_len.exit242.thread330, %block_len.exit242.thread, %block_len.exit242, %bb.p, %bb.q, %bb.r, %bb.s
  %i.ch = phi ptr [ %i.cg, %block_len.exit242 ], [ %i.cg, %bb.p ], [ %i.bu, %block_len.exit242.thread ], [ %i.cg, %bb.q ], [ %i.cg, %bb.r ], [ %i.bx, %block_len.exit242.thread330 ], [ %i.ca, %block_len.exit242.thread334 ], [ %i.cd, %block_len.exit242.thread338 ], [ %i.cg, %bb.s ] ; 2 uses
  %i.ci = phi i64 [ %i.cf, %block_len.exit242 ], [ %i.cf, %bb.p ], [ %i.bt, %block_len.exit242.thread ], [ %i.cf, %bb.q ], [ %i.cf, %bb.r ], [ %i.bw, %block_len.exit242.thread330 ], [ %i.bz, %block_len.exit242.thread334 ], [ %i.cc, %block_len.exit242.thread338 ], [ %i.cf, %bb.s ] ; 2 uses
  %i.cj = phi i32 [ %i.ce, %block_len.exit242 ], [ %i.ce, %bb.p ], [ %i.bs, %block_len.exit242.thread ], [ %i.ce, %bb.q ], [ %i.ce, %bb.r ], [ %i.bv, %block_len.exit242.thread330 ], [ %i.by, %block_len.exit242.thread334 ], [ %i.cb, %block_len.exit242.thread338 ], [ %i.ce, %bb.s ] ; 2 uses
  %.0.i243 = phi i64 [ 144, %block_len.exit242 ], [ 136, %bb.p ], [ 144, %block_len.exit242.thread ], [ 104, %bb.q ], [ 72, %bb.r ], [ 104, %block_len.exit242.thread330 ], [ 72, %block_len.exit242.thread334 ], [ 168, %block_len.exit242.thread338 ], [ 168, %bb.s ]
  %i.ck = urem i64 %.sroa.5162.0.copyload, %.0.i243
  %i.cl = icmp eq i64 %i.ck, 0
  %or.cond10 = and i1 %i.j, %i.cl
  %switch.tableidx429 = add nsw i8 %.sroa.0159.0.copyload, -8
  %i.cm = zext nneg i8 %switch.tableidx429 to i64 ; 2 uses
  br i1 %or.cond10, label %switch.lookup430, label %switch.lookup434

switch.lookup430:                                 ; preds = %block_len.exit244
  %switch.gep431 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.cm
  %switch.load432 = load i64, ptr %switch.gep431, align 8
  br label %block_len.exit246

switch.lookup434:                                 ; preds = %block_len.exit244
  %switch.gep435 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.cm
  %switch.load436 = load i64, ptr %switch.gep435, align 8
  %i.cn = urem i64 %.sroa.5162.0.copyload, %switch.load436
  br label %block_len.exit246

block_len.exit246:                                ; preds = %switch.lookup430, %switch.lookup434
  %.0198 = phi i64 [ %i.cn, %switch.lookup434 ], [ %switch.load432, %switch.lookup430 ]
  %i.co = getelementptr i8, ptr %.sroa.454.0.copyload328, i64 %.0198
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.cp = add i64 %i.ci, %.sroa.5162.0.copyload   ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store ptr %.sroa.454.0.copyload328, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21
  store i64 %i.cp, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !18 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.cq = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.cr = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.cq
  %switch.gep439 = getelementptr i8, ptr %i.cr, i64 -64
  %switch.load440 = load i64, ptr %switch.gep439, align 8
  %i.cs = urem i64 %i.cp, %switch.load440
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = icmp ne i64 %i.cp, 0
  %or.cond12 = and i1 %i.cu, %i.ct
  br i1 %or.cond12, label %block_len.exit252, label %switch.lookup442

switch.lookup442:                                 ; preds = %block_len.exit246
  %i.cv = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.cw = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.cv
  %switch.gep443 = getelementptr i8, ptr %i.cw, i64 -64
  %switch.load444 = load i64, ptr %switch.gep443, align 8
  %i.cx = urem i64 %i.cp, %switch.load444
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %switch.lookup448, label %block_len.exit252

block_len.exit252:                                ; preds = %block_len.exit246, %switch.lookup442
  %switch.tableidx459 = add i8 %.sroa.0.0.copyload, -8 ; 2 uses
  %i.cz = icmp ult i8 %switch.tableidx459, 6
  br i1 %i.cz, label %switch.lookup460, label %bb.t

bb.t:                                             ; preds = %block_len.exit252
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.db = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.da, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup460:                                 ; preds = %block_len.exit252
  %switch.tableidx445 = shl nuw nsw i8 %.sroa.0159.0.copyload, 3
  %i.dc = add nsw i8 %switch.tableidx445, -64
  %switch.shiftamt = zext nneg i8 %i.dc to i48
  %switch.downshift = lshr i48 -131218626015096, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  %i.dd = shl nuw nsw i8 %switch.tableidx459, 3
  %switch.shiftamt462 = zext nneg i8 %i.dd to i48
  %switch.downshift463 = lshr i48 -131218626015096, %switch.shiftamt462
  %switch.masked464 = trunc i48 %switch.downshift463 to i8
  %i.de = udiv i8 %switch.masked, %switch.masked464
  %.zext381 = zext nneg i8 %i.de to i32
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0.0.copyload, ptr noundef %.sroa.5.0.copyload, ptr noundef %.sroa.454.0.copyload328, i32 noundef %.zext381)
  br label %switch.lookup448

switch.lookup448:                                 ; preds = %switch.lookup460, %switch.lookup442
  %i.df = sub i32 %2, %i.cj                       ; 9 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.di = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.dh
  %switch.gep449 = getelementptr i8, ptr %i.di, i64 -32
  %switch.load450 = load i32, ptr %switch.gep449, align 4
  %i.dj = urem i32 %i.df, %switch.load450
  %i.dk = icmp ne i32 %i.dj, 0
  %.not203 = icmp eq i32 %2, %i.cj
  %or.cond206 = select i1 %i.dk, i1 true, i1 %.not203
  br i1 %or.cond206, label %switch.lookup452, label %bb.u

bb.u:                                             ; preds = %switch.lookup448
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable386 [
    i8 9, label %block_len.exit262.thread
    i8 8, label %block_len.exit262
    i8 10, label %block_len.exit262.thread343
    i8 11, label %block_len.exit262.thread345
    i8 12, label %block_len.exit262.thread347
    i8 13, label %block_len.exit262
  ]

block_len.exit262.thread:                         ; preds = %bb.u
  %i.dl = add i32 %i.df, -144
  br label %block_len.exit266.thread

block_len.exit262.thread343:                      ; preds = %bb.u
  %i.dm = add i32 %i.df, -104
  br label %block_len.exit266.thread353

block_len.exit262.thread345:                      ; preds = %bb.u
  %i.dn = add i32 %i.df, -72
  br label %block_len.exit266.thread357

block_len.exit262.thread347:                      ; preds = %bb.u
  %i.do = add i32 %i.df, -168
  br label %block_len.exit266.thread361

default.unreachable386:                           ; preds = %bb.u
  unreachable

switch.lookup452:                                 ; preds = %switch.lookup448
  %i.dp = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.dq = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.dp
  %switch.gep453 = getelementptr i8, ptr %i.dq, i64 -32
  %switch.load454 = load i32, ptr %switch.gep453, align 4
  %i.dr = urem i32 %i.df, %switch.load454
  br label %block_len.exit262

block_len.exit262:                                ; preds = %bb.u, %bb.u, %switch.lookup452
  %.0200 = phi i32 [ %i.dr, %switch.lookup452 ], [ 136, %bb.u ], [ 136, %bb.u ]
  %i.ds = sub i32 %i.df, %.0200                   ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable384 [
    i8 9, label %block_len.exit266.thread
    i8 8, label %block_len.exit266
    i8 10, label %block_len.exit266.thread353
    i8 11, label %block_len.exit266.thread357
    i8 12, label %block_len.exit266.thread361
    i8 13, label %block_len.exit266
  ]

default.unreachable384:                           ; preds = %block_len.exit262
  unreachable

block_len.exit266.thread:                         ; preds = %block_len.exit262.thread, %block_len.exit262
  %.ph349 = phi i32 [ %i.dl, %block_len.exit262.thread ], [ %i.ds, %block_len.exit262 ]
  %i.dt = udiv i32 %.ph349, 144
  br label %block_len.exit268

block_len.exit266.thread353:                      ; preds = %block_len.exit262.thread343, %block_len.exit262
  %.ph352 = phi i32 [ %i.dm, %block_len.exit262.thread343 ], [ %i.ds, %block_len.exit262 ]
  %i.du = udiv i32 %.ph352, 104
  br label %block_len.exit268

block_len.exit266.thread357:                      ; preds = %block_len.exit262.thread345, %block_len.exit262
  %.ph356 = phi i32 [ %i.dn, %block_len.exit262.thread345 ], [ %i.ds, %block_len.exit262 ]
  %i.dv = udiv i32 %.ph356, 72
  br label %block_len.exit268

block_len.exit266.thread361:                      ; preds = %block_len.exit262.thread347, %block_len.exit262
  %.ph360 = phi i32 [ %i.do, %block_len.exit262.thread347 ], [ %i.ds, %block_len.exit262 ]
  %i.dw = udiv i32 %.ph360, 168
  br label %block_len.exit268

block_len.exit266:                                ; preds = %block_len.exit262, %block_len.exit262
  %i.dx = udiv i32 %i.ds, 136                     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable385 [
    i8 9, label %block_len.exit268
    i8 8, label %bb.v
    i8 10, label %bb.w
    i8 11, label %bb.x
    i8 12, label %bb.y
    i8 13, label %bb.v
  ]

bb.v:                                             ; preds = %block_len.exit266, %block_len.exit266
  br label %block_len.exit268

bb.w:                                             ; preds = %block_len.exit266
  br label %block_len.exit268

bb.x:                                             ; preds = %block_len.exit266
  br label %block_len.exit268

bb.y:                                             ; preds = %block_len.exit266
  br label %block_len.exit268

default.unreachable385:                           ; preds = %block_len.exit266
  unreachable

block_len.exit268:                                ; preds = %block_len.exit266.thread361, %block_len.exit266.thread357, %block_len.exit266.thread353, %block_len.exit266.thread, %block_len.exit266, %bb.v, %bb.w, %bb.x, %bb.y
  %i.dy = phi i32 [ %i.dx, %block_len.exit266 ], [ %i.dx, %bb.v ], [ %i.dt, %block_len.exit266.thread ], [ %i.dx, %bb.w ], [ %i.dx, %bb.x ], [ %i.du, %block_len.exit266.thread353 ], [ %i.dv, %block_len.exit266.thread357 ], [ %i.dw, %block_len.exit266.thread361 ], [ %i.dx, %bb.y ]
  %.0.i267 = phi i32 [ 144, %block_len.exit266 ], [ 136, %bb.v ], [ 144, %block_len.exit266.thread ], [ 104, %bb.w ], [ 72, %bb.x ], [ 104, %block_len.exit266.thread353 ], [ 72, %block_len.exit266.thread357 ], [ 168, %block_len.exit266.thread361 ], [ 168, %bb.y ]
  %switch.tableidx455 = add i8 %.sroa.0.0.copyload, -8 ; 2 uses
  %i.dz = icmp ult i8 %switch.tableidx455, 6
  br i1 %i.dz, label %switch.lookup456, label %bb.z

bb.z:                                             ; preds = %block_len.exit268
  %i.ea = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.eb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ea, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup456:                                 ; preds = %block_len.exit268
  %i.ec = mul i32 %.0.i267, %i.dy                 ; 3 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr i8, ptr %i.ch, i64 %i.ed
  %i.ef = sub i32 %i.df, %i.ec
  %i.eg = zext nneg i8 %switch.tableidx455 to i64
  %switch.gep457 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.eg
  %switch.load458 = load i32, ptr %switch.gep457, align 4
  %i.eh = udiv i32 %i.ec, %switch.load458
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0.0.copyload, ptr noundef %.sroa.5.0.copyload, ptr noundef %i.ch, i32 noundef %i.eh)
  %i.ei = zext i32 %i.ef to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.454.0.copyload328, ptr align 1 %i.ee, i64 %i.ei, i1 false)
  %i.ej = add i64 %i.cp, %i.dg
  store i8 %.sroa.0.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %5, i64 7, i1 false)
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

.sink.split:                                      ; preds = %block_len.exit240, %switch.lookup456, %block_len.exit216
  %.sroa.4119.0.copyload.sink = phi ptr [ %.sroa.4119.0.copyload, %block_len.exit216 ], [ %.sroa.454.0.copyload328, %switch.lookup456 ], [ %.sroa.6104.0.copyload, %block_len.exit240 ]
  %.sink = phi i64 [ %i.w, %block_len.exit216 ], [ %i.ej, %switch.lookup456 ], [ %i.br, %block_len.exit240 ]
  store ptr %.sroa.4119.0.copyload.sink, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21
  store i64 %.sink, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: nofree nounwind uwtable
define hidden zeroext range(i8 0, 2) i8 @_Py_LibHacl_Hacl_Hash_SHA3_digest(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !18 ; 3 uses
  %i.a = and i8 %.sroa.0.0.copyload.i, -2
  %or.cond = icmp eq i8 %i.a, 12
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i8 %.sroa.0.0.copyload.i, -8 ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 4
  br i1 %i.b, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 234) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_hash_len, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call fastcc void @digest_(i8 noundef zeroext %.sroa.0.0.copyload.i, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %switch.load)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i8 [ 0, %switch.lookup ], [ 1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @digest_(i8 noundef zeroext %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i32 noundef range(i32 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [25 x i64], align 16              ; 15 uses
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.441.0.copyload = load ptr, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.542.0.copyload = load ptr, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !21 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !15 ; 3 uses
  %switch.tableidx = add i8 %0, -8                ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 6
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.e
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.f = urem i64 %.sroa.6.0.copyload, %switch.load
  %i.g = icmp eq i64 %i.f, 0
  %i.h = icmp ne i64 %.sroa.6.0.copyload, 0
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %switch.lookup112

bb.c:                                             ; preds = %switch.lookup
  switch i8 %0, label %default.unreachable [
    i8 9, label %block_len.exit57.thread
    i8 8, label %block_len.exit57
    i8 10, label %block_len.exit57.thread75
    i8 11, label %block_len.exit57.thread78
    i8 12, label %block_len.exit57.thread81
    i8 13, label %block_len.exit57
  ]

block_len.exit57.thread:                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.441.0.copyload, i64 200, i1 false)
  br label %block_len.exit61

block_len.exit57.thread75:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.441.0.copyload, i64 200, i1 false)
  br label %block_len.exit61

block_len.exit57.thread78:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.441.0.copyload, i64 200, i1 false)
  br label %block_len.exit61

block_len.exit57.thread81:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.441.0.copyload, i64 200, i1 false)
  br label %block_len.exit61

default.unreachable:                              ; preds = %bb.c
  unreachable

switch.lookup112:                                 ; preds = %switch.lookup
  %i.i = zext nneg i8 %0 to i64
  %i.j = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.i
  %switch.gep113 = getelementptr i8, ptr %i.j, i64 -64
  %switch.load114 = load i64, ptr %switch.gep113, align 8
  %i.k = urem i64 %.sroa.6.0.copyload, %switch.load114
  %i.l = trunc nuw nsw i64 %i.k to i32
  br label %block_len.exit57

block_len.exit57:                                 ; preds = %bb.c, %bb.c, %switch.lookup112
  %.054 = phi i32 [ %i.l, %switch.lookup112 ], [ 136, %bb.c ], [ 136, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.441.0.copyload, i64 200, i1 false)
  switch i8 %0, label %default.unreachable109 [
    i8 9, label %block_len.exit61
    i8 8, label %bb.d
    i8 10, label %bb.e
    i8 11, label %bb.f
    i8 12, label %bb.g
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %block_len.exit57, %block_len.exit57
  br label %block_len.exit61

bb.e:                                             ; preds = %block_len.exit57
  br label %block_len.exit61

bb.f:                                             ; preds = %block_len.exit57
  br label %block_len.exit61

bb.g:                                             ; preds = %block_len.exit57
  br label %block_len.exit61

default.unreachable109:                           ; preds = %block_len.exit57
  unreachable

block_len.exit61:                                 ; preds = %block_len.exit57.thread81, %block_len.exit57.thread78, %block_len.exit57.thread75, %block_len.exit57.thread, %block_len.exit57, %bb.d, %bb.e, %bb.f, %bb.g
  %.05474 = phi i32 [ %.054, %block_len.exit57 ], [ %.054, %bb.d ], [ 144, %block_len.exit57.thread ], [ %.054, %bb.e ], [ %.054, %bb.f ], [ 104, %block_len.exit57.thread75 ], [ 72, %block_len.exit57.thread78 ], [ 168, %block_len.exit57.thread81 ], [ %.054, %bb.g ] ; 8 uses
  %.0.i60 = phi i8 [ -112, %block_len.exit57 ], [ -120, %bb.d ], [ -112, %block_len.exit57.thread ], [ 104, %bb.e ], [ 72, %bb.f ], [ 104, %block_len.exit57.thread75 ], [ 72, %block_len.exit57.thread78 ], [ -88, %block_len.exit57.thread81 ], [ -88, %bb.g ]
  %.lhs.trunc = trunc nuw i32 %.05474 to i8       ; 2 uses
  %i.m = urem i8 %.lhs.trunc, %.0.i60
  %i.n = icmp eq i8 %i.m, 0
  %i.o = icmp ne i32 %.05474, 0
  %or.cond3 = and i1 %i.o, %i.n
  br i1 %or.cond3, label %bb.h, label %switch.lookup116

bb.h:                                             ; preds = %block_len.exit61
  switch i8 %0, label %default.unreachable101 [
    i8 9, label %block_len.exit63.thread
    i8 8, label %block_len.exit63
    i8 10, label %block_len.exit63.thread85
    i8 11, label %block_len.exit63.thread87
    i8 12, label %block_len.exit63.thread89
    i8 13, label %block_len.exit63
  ]

block_len.exit63.thread:                          ; preds = %bb.h
  %i.p = zext nneg i32 %.05474 to i64
  %i.q = getelementptr i8, ptr %.sroa.542.0.copyload, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -144
  br label %block_len.exit67

block_len.exit63.thread85:                        ; preds = %bb.h
  %i.s = zext nneg i32 %.05474 to i64
  %i.t = getelementptr i8, ptr %.sroa.542.0.copyload, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -104
  br label %block_len.exit67

block_len.exit63.thread87:                        ; preds = %bb.h
  %i.v = zext nneg i32 %.05474 to i64
  %i.w = getelementptr i8, ptr %.sroa.542.0.copyload, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -72
  br label %block_len.exit67

block_len.exit63.thread89:                        ; preds = %bb.h
  %i.y = zext nneg i32 %.05474 to i64
  %i.z = getelementptr i8, ptr %.sroa.542.0.copyload, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -168
  br label %block_len.exit67

default.unreachable101:                           ; preds = %bb.h
  unreachable

switch.lookup116:                                 ; preds = %block_len.exit61
  %switch.tableidx115 = shl nuw nsw i8 %0, 3
  %i.ab = add nsw i8 %switch.tableidx115, -64
  %switch.shiftamt = zext nneg i8 %i.ab to i48
  %switch.downshift = lshr i48 -131218626015096, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  %i.ac = urem i8 %.lhs.trunc, %switch.masked
end_hunk_1
