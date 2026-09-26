Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/bitset?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [47 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/bitset.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [37 x i8] } { i16 -1, i16 0, [37 x i8] c"'uint64_t *' (aka 'unsigned long *')\00" }
@.src.1 = private unnamed_addr constant [22 x i8] c"/usr/include/string.h\00", align 1
@1 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 14, i32 10 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@2 = private unnamed_addr constant { i16, i16, [35 x i8] } { i16 -1, i16 0, [35 x i8] c"'b3BitSet' (aka 'struct b3BitSet')\00" }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 20, i32 18 }, ptr @2, i8 3, i8 3 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 29, i32 15 }, ptr @2, i8 3, i8 3 }
@5 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 37, i32 10 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 43, i32 28 }, ptr @2, i8 3, i8 3 }
@7 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 48, i32 11 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@8 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 50, i32 11 }, ptr @0, i8 3, i8 1 }
@9 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 50, i32 20 }, { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 28 }, i32 2 }
@10 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 50, i32 20 }, ptr @0, i8 3, i8 0 }
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 61, i32 30 }, ptr @2, i8 3, i8 3 }
@12 = private unnamed_addr constant { i16, i16, [47 x i8] } { i16 -1, i16 0, [47 x i8] c"'const b3BitSet' (aka 'const struct b3BitSet')\00" }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 64, i32 26 }, ptr @12, i8 3, i8 3 }
@14 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 64, i32 20 } }
@15 = private unnamed_addr constant { i16, i16, [33 x i8] } { i16 0, i16 12, [33 x i8] c"'uint64_t' (aka 'unsigned long')\00" }
@16 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 64, i32 20 }, ptr @15, i8 3, i8 0 }
@17 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 64, i32 3 } }
@18 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 64, i32 3 }, ptr @15, i8 3, i8 1 }

; Function Attrs: nounwind uwtable
define hidden { ptr, i64 } @b3CreateBitSet(i32 noundef %0) local_unnamed_addr #0 !func_sanitize !19 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = add nuw nsw i64 %i.a, 63
  %i.c = lshr i64 %i.b, 6                         ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.e = tail call ptr @b3Alloc(i64 noundef %i.d) #5 ; 3 uses
  %.not = icmp eq ptr %i.e, null, !nosanitize !9
  br i1 %.not, label %bb.b, label %bb.c, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @1) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false)
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #2

declare ptr @b3Alloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_nonnull_arg_abort(ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b3DestroyBitSet(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !20 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.b) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !15
  %i.h = load i32, ptr %i.f, align 8, !tbaa !16
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  tail call void @b3Free(ptr noundef %i.g, i64 noundef %i.j) #5
  store i32 0, ptr %i.f, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !17
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b3SetBitCountAndClear(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !func_sanitize !18 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = add nuw nsw i64 %i.a, 63
  %i.c = lshr i64 %i.b, 6                         ; 2 uses
  %i.d = trunc nuw nsw i64 %i.c to i32            ; 2 uses
  %i.e = icmp ne ptr %0, null, !nosanitize !9
  %i.f = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !9
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !9
  %i.i = and i1 %i.e, %i.h, !nosanitize !9
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.f) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = icmp ult i32 %i.k, %i.d
  br i1 %i.l, label %b3DestroyBitSet.exit, label %._crit_edge

b3DestroyBitSet.exit:                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !15
  %i.n = zext nneg i32 %i.k to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  tail call void @b3Free(ptr noundef %i.m, i64 noundef %i.o) #5
  store i32 0, ptr %i.j, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !17
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.q = lshr i32 %1, 1
  %i.r = add i32 %i.q, %1
  %i.s = zext i32 %i.r to i64
  %i.t = add nuw nsw i64 %i.s, 63
  %i.u = lshr i64 %i.t, 6                         ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3                  ; 2 uses
  %i.w = tail call ptr @b3Alloc(i64 noundef %i.v) #5 ; 3 uses
  %.not.i = icmp eq ptr %i.w, null, !nosanitize !9
  br i1 %.not.i, label %bb.d, label %b3CreateBitSet.exit, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %b3DestroyBitSet.exit
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @1) #6, !nosanitize !9
  unreachable, !nosanitize !9

b3CreateBitSet.exit:                              ; preds = %b3DestroyBitSet.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 0, i64 %i.v, i1 false)
  store ptr %i.w, ptr %0, align 8, !tbaa !21
  store i64 %i.u, ptr %i.j, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %b3CreateBitSet.exit, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %i.x, align 4, !tbaa !17
  %i.y = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq ptr %i.y, null, !nosanitize !9
  br i1 %.not, label %bb.e, label %bb.f, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %._crit_edge
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @5) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %._crit_edge
  %i.z = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.y, i8 0, i64 %i.z, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define hidden void @b3GrowBitSet(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !func_sanitize !18 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.b) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = icmp ugt i32 %1, %i.g
  br i1 %i.h, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i32 %1, 1
  %i.j = add i32 %i.i, %1                         ; 2 uses
  store i32 %i.j, ptr %i.f, align 8, !tbaa !16
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = tail call ptr @b3Alloc(i64 noundef %i.l) #5 ; 5 uses
  %.not = icmp eq ptr %i.m, null, !nosanitize !9
  br i1 %.not, label %bb.e, label %bb.f, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @7) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.f, align 8, !tbaa !16
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.p, i1 false)
  %i.q = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.r = zext i32 %i.g to i64
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = ptrtoint ptr %i.m to i64, !nosanitize !9 ; 2 uses
  %i.u = and i64 %i.t, 7, !nosanitize !9
  %i.v = icmp eq i64 %i.u, 0, !nosanitize !9
  br i1 %i.v, label %bb.h, label %bb.g, !prof !11, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @8, i64 %i.t) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %.not22 = icmp eq ptr %i.q, null, !nosanitize !9
  br i1 %.not22, label %bb.i, label %bb.j, !prof !10, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @9) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  %i.w = ptrtoint ptr %i.q to i64, !nosanitize !9 ; 2 uses
  %i.x = and i64 %i.w, 7, !nosanitize !9
  %i.y = icmp eq i64 %i.x, 0, !nosanitize !9
  br i1 %i.y, label %bb.l, label %bb.k, !prof !11, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @10, i64 %i.w) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  %i.z = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @b3Free(ptr noundef %i.z, i64 noundef %i.s) #5
  store ptr %i.m, ptr %0, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.aa, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3InPlaceUnion(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 !func_sanitize !23 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.b) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17   ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = icmp ne ptr %1, null, !nosanitize !9
  %i.i = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %.lr.ph.split, label %bb.d, !prof !11, !nosanitize !9

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.m = load ptr, ptr %1, align 8, !tbaa !15
  %.fr37 = freeze ptr %i.m                        ; 3 uses
  %i.n = ptrtoint ptr %.fr37 to i64, !nosanitize !9 ; 3 uses
  %.not38 = icmp eq ptr %.fr37, null, !nosanitize !9
  br i1 %.not38, label %.split35, label %.lr.ph.split.split.preheader, !prof !10

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext i32 %i.g to i64
  br label %.lr.ph.split.split

._crit_edge:                                      ; preds = %bb.j, %bb.c
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.fr37, i64 %indvars.iv ; 2 uses
  %i.p = shl nuw nsw i64 %indvars.iv, 3           ; 2 uses
  %i.q = add i64 %i.p, %i.n, !nosanitize !9       ; 2 uses
  %.not39 = icmp ult i64 %i.q, %i.n, !nosanitize !9
  br i1 %.not39, label %.split.us, label %bb.e, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %.lr.ph
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.i) #6, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @14, i64 %i.n, i64 %i.q) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %.lr.ph.split.split
  %i.r = ptrtoint ptr %i.o to i64, !nosanitize !9 ; 2 uses
  %i.s = and i64 %i.r, 7, !nosanitize !9
  %i.t = icmp eq i64 %i.s, 0, !nosanitize !9
  br i1 %i.t, label %bb.f, label %.split35, !prof !11, !nosanitize !9

.split35:                                         ; preds = %bb.e, %.lr.ph.split
  %.us-phi36 = phi i64 [ 0, %.lr.ph.split ], [ %i.r, %bb.e ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @16, i64 %.us-phi36) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.o, align 8, !tbaa !25
  %i.v = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64, !nosanitize !9 ; 3 uses
  %i.y = add i64 %i.p, %i.x, !nosanitize !9       ; 3 uses
  %i.z = icmp ne ptr %i.v, null, !nosanitize !9   ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = xor i1 %i.z, %i.aa
  %i.ac = icmp uge i64 %i.y, %i.x, !nosanitize !9
  %i.ad = and i1 %i.ac, %i.ab, !nosanitize !9
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !11, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @17, i64 %i.x, i64 %i.y) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.ae = ptrtoint ptr %i.w to i64, !nosanitize !9 ; 2 uses
  %i.af = and i64 %i.ae, 7, !nosanitize !9
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !9
  %i.ah = and i1 %i.z, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.i, !prof !11, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @18, i64 %i.ae) #6, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.w, align 8, !tbaa !25
  %i.aj = or i64 %i.ai, %i.u
  store i64 %i.aj, ptr %i.w, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !22
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!"branch_weights", i32 1048575, i32 1}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 long", !12, i64 0}
!14 = !{!"b3BitSet", !13, i64 0, !6, i64 8, !6, i64 12}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !6, i64 8}
!17 = !{!14, !6, i64 12}
!18 = !{i32 -1056584962, i32 -235573774}
!19 = !{i32 -1056584962, i32 218820098}
!20 = !{i32 -1056584962, i32 566416299}
!21 = !{!13, !13, i64 0}
!22 = distinct !{!22, !26}
!23 = !{i32 -1056584962, i32 -1805867571}
!24 = !{!"long", !5, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
end_hunk_0
