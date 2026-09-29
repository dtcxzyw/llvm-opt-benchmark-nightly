Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/table?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [46 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/table.c\00", align 1
@.src.1 = private unnamed_addr constant [22 x i8] c"/usr/include/string.h\00", align 1
@0 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 36, i32 10 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@1 = private unnamed_addr constant { i16, i16, [37 x i8] } { i16 -1, i16 0, [37 x i8] c"'b3HashSet' (aka 'struct b3HashSet')\00" }
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 43, i32 15 }, ptr @1, i8 3, i8 3 }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 51, i32 7 }, ptr @1, i8 3, i8 3 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 52, i32 10 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@5 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const b3HashSet' (aka 'const struct b3HashSet')\00" }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 139, i32 14 }, ptr @5, i8 3, i8 3 }
@7 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 139, i32 9 } }
@8 = private unnamed_addr constant { i16, i16, [37 x i8] } { i16 -1, i16 0, [37 x i8] c"'b3SetItem' (aka 'struct b3SetItem')\00" }
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 139, i32 9 }, ptr @8, i8 3, i8 3 }
@10 = private unnamed_addr constant { i16, i16, [33 x i8] } { i16 0, i16 12, [33 x i8] c"'uint64_t' (aka 'unsigned long')\00" }
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 144, i32 14 }, ptr @1, i8 3, i8 3 }
@12 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 156, i32 12 }, ptr @1, i8 3, i8 3 }
@13 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 156, i32 7 } }
@14 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 156, i32 7 }, ptr @8, i8 3, i8 3 }
@15 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 177, i32 26 }, ptr @1, i8 3, i8 3 }
@16 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 178, i32 7 } }
@17 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 178, i32 7 }, ptr @8, i8 3, i8 3 }
@18 = private unnamed_addr constant { i16, i16, [6 x i8] } { i16 0, i16 11, [6 x i8] c"'int'\00" }
@19 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 196, i32 11 }, ptr @18 }
@20 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 197, i32 8 } }
@21 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 197, i32 8 }, ptr @8, i8 3, i8 3 }
@22 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 224, i32 3 } }
@23 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 224, i32 3 }, ptr @8, i8 3, i8 1 }
@24 = private unnamed_addr constant { i16, i16, [35 x i8] } { i16 -1, i16 0, [35 x i8] c"'b3BitSet' (aka 'struct b3BitSet')\00" }
@25 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 241, i32 32 }, ptr @24, i8 3, i8 3 }
@26 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 244, i32 29 } }
@27 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 244, i32 29 }, ptr @10, i8 3, i8 0 }
@28 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 244, i32 12 }, ptr @18 }
@.src.2 = private unnamed_addr constant [44 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/ctz.h\00", align 1
@29 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src.2, i32 124, i32 11 }, ptr @18, ptr @18 }
@30 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 76, i32 27 }, ptr @5, i8 3, i8 3 }
@31 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 79, i32 10 } }
@32 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const b3SetItem' (aka 'const struct b3SetItem')\00" }
@33 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 79, i32 10 }, ptr @32, i8 3, i8 3 }
@34 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 84, i32 19 }, ptr @18 }
@35 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 113, i32 10 }, { ptr, i32, i32 } { ptr @.src.1, i32 61, i32 62 }, i32 1 }
@36 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 118, i32 30 } }
@37 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 119, i32 14 }, ptr @8, i8 3, i8 3 }
@38 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 93, i32 26 }, ptr @1, i8 3, i8 3 }
@39 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 96, i32 2 } }
@40 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 96, i32 2 }, ptr @8, i8 3, i8 3 }

; Function Attrs: nounwind uwtable
define hidden { ptr, i64 } @b3CreateSet(i32 noundef %0) local_unnamed_addr #0 !func_sanitize !26 {
bb.a:
  %i.a = icmp sgt i32 %0, 16
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %0, -1
  %i.c = tail call range(i32 1, 28) i32 @llvm.ctlz.i32(i32 range(i32 16, 2147483647) %i.b, i1 true) ; 2 uses
  %i.d = sub nuw nsw i32 32, %i.c                 ; 2 uses
  %.not.i = icmp eq i32 %i.c, 1
  br i1 %.not.i, label %bb.c, label %b3RoundUpPowerOf2.exit, !prof !9, !nosanitize !10

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %i.d to i64, !nosanitize !10
  tail call void @__ubsan_handle_shift_out_of_bounds_abort(ptr nonnull @29, i64 1, i64 %i.e) #7, !nosanitize !10
  unreachable, !nosanitize !10

b3RoundUpPowerOf2.exit:                           ; preds = %bb.b
  %i.f = shl nuw i32 1, %i.d
  %.sroa.3.8.insert.ext = zext i32 %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %b3RoundUpPowerOf2.exit
  %.sroa.3.0 = phi i64 [ %.sroa.3.8.insert.ext, %b3RoundUpPowerOf2.exit ], [ 16, %bb.a ] ; 2 uses
  %i.g = shl nuw nsw i64 %.sroa.3.0, 4            ; 2 uses
  %i.h = tail call ptr @b3Alloc(i64 noundef %i.g) #8 ; 3 uses
  %.not = icmp eq ptr %i.h, null, !nosanitize !10
  br i1 %.not, label %bb.e, label %bb.f, !prof !9, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @0) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.g, i1 false)
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
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
define hidden void @b3DestroySet(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !11 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @2, i64 %i.b) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !16
  %i.h = load i32, ptr %i.f, align 8, !tbaa !17
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 4
  tail call void @b3Free(ptr noundef %i.g, i64 noundef %i.j) #8
  store ptr null, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !18
  store i32 0, ptr %i.f, align 8, !tbaa !17
  ret void
}

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b3ClearSet(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !11 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.b) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !18
  %i.g = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %.not = icmp eq ptr %i.g, null, !nosanitize !10
  br i1 %.not, label %bb.d, label %bb.e, !prof !9, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @4) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.k, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @b3ContainsKey(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !func_sanitize !27 {
bb.a:
  %i.a = lshr i64 %1, 33
  %i.b = xor i64 %i.a, %1
  %i.c = mul i64 %i.b, -49064778989728563         ; 2 uses
  %i.d = lshr i64 %i.c, 33
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -4265267296055464877       ; 2 uses
  %i.g = lshr i64 %i.f, 33
  %i.h = xor i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call fastcc i32 @b3FindSlot(ptr noundef %0, i64 noundef %1, i32 noundef %i.i) ; 2 uses
  %i.k = icmp ne ptr %0, null, !nosanitize !10
  %i.l = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.m = and i64 %i.l, 7, !nosanitize !10
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !10
  %i.o = and i1 %i.k, %i.n, !nosanitize !10
  br i1 %i.o, label %bb.c, label %bb.b, !prof !12, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.l) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.q = sext i32 %i.j to i64                     ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = shl nsw i64 %i.q, 4
  %i.t = ptrtoint ptr %i.p to i64, !nosanitize !10 ; 3 uses
  %i.u = add i64 %i.s, %i.t, !nosanitize !10      ; 3 uses
  %i.v = icmp ne ptr %i.p, null, !nosanitize !10  ; 2 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !10
  %i.z = icmp slt i32 %i.j, 0
  %i.aa = xor i1 %i.z, %i.y
  %i.ab = and i1 %i.x, %i.aa, !nosanitize !10
  br i1 %i.ab, label %bb.e, label %bb.d, !prof !12, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.t, i64 %i.u) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.r to i64, !nosanitize !10 ; 2 uses
  %i.ad = and i64 %i.ac, 7, !nosanitize !10
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !10
  %i.af = and i1 %i.v, %i.ae
  br i1 %i.af, label %bb.g, label %bb.f, !prof !12, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @9, i64 %i.ac) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !21
  %i.ah = icmp eq i64 %i.ag, %1
  ret i1 %i.ah
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @b3FindSlot(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !func_sanitize !29 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @30, i64 %i.b) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17
  %i.h = add i32 %i.g, -1                         ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !16
  %.fr39 = freeze ptr %i.i                        ; 4 uses
  %i.j = ptrtoint ptr %.fr39 to i64, !nosanitize !10 ; 5 uses
  %i.k = icmp ne ptr %.fr39, null, !nosanitize !10 ; 2 uses
  %.036 = and i32 %2, %i.h                        ; 3 uses
  %i.l = sext i32 %.036 to i64                    ; 2 uses
  %i.m = shl nsw i64 %i.l, 4
  %i.n = add i64 %i.m, %i.j, !nosanitize !10      ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = xor i1 %i.k, %i.o
  %i.q = icmp uge i64 %i.n, %i.j, !nosanitize !10
  %i.r = icmp slt i32 %.036, 0
  %i.s = xor i1 %i.r, %i.q
  %i.t = and i1 %i.p, %i.s, !nosanitize !10
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !prof !30, !nosanitize !10

.lr.ph:                                           ; preds = %bb.c
  %i.u = getelementptr inbounds [16 x i8], ptr %.fr39, i64 %i.l ; 2 uses
  br i1 %i.k, label %.lr.ph.split, label %.lr.ph.split.us, !prof !12

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = ptrtoint ptr %i.u to i64, !nosanitize !10
  br label %.split

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.lcssa = phi i64 [ %i.n, %bb.c ], [ %i.ak, %bb.h ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @31, i64 %i.j, i64 %.lcssa) #7, !nosanitize !10
  unreachable, !nosanitize !10

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %i.w = phi ptr [ %i.ai, %bb.h ], [ %i.u, %.lr.ph ] ; 3 uses
  %.037 = phi i32 [ %.0, %bb.h ], [ %.036, %.lr.ph ] ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64, !nosanitize !10 ; 2 uses
  %i.y = and i64 %i.x, 7, !nosanitize !10
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !10
  br i1 %i.z, label %bb.d, label %.split, !prof !12, !nosanitize !10

.split:                                           ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.v, %.lr.ph.split.us ], [ %i.x, %.lr.ph.split ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @33, i64 %.us-phi) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.d:                                             ; preds = %.lr.ph.split
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !22
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !21
  %.not15 = icmp eq i64 %i.ac, %1
  br i1 %.not15, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.037, i32 1), !nosanitize !10 ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1, !nosanitize !10
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !9, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.af = zext nneg i32 %.037 to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @34, i64 %i.af, i64 1) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f
  %i.ag = extractvalue { i32, i1 } %i.ad, 0, !nosanitize !10
  %.0 = and i32 %i.ag, %i.h                       ; 3 uses
  %i.ah = sext i32 %.0 to i64                     ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %.fr39, i64 %i.ah
  %i.aj = shl nsw i64 %i.ah, 4
  %i.ak = add i64 %i.aj, %i.j, !nosanitize !10    ; 3 uses
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = icmp uge i64 %i.ak, %i.j, !nosanitize !10
  %i.an = icmp slt i32 %.0, 0
  %i.ao = xor i1 %i.an, %i.am
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !10
  br i1 %i.ap, label %.lr.ph.split, label %._crit_edge, !prof !31, !llvm.loop !28, !nosanitize !10

.critedge:                                        ; preds = %bb.d, %bb.e
  ret i32 %.037
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 0, -15) i32 @b3GetHashSetBytes(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !32 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.b) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17
  %i.h = shl i32 %i.g, 4
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3AddKey(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !func_sanitize !24 {
bb.a:
  %i.a = lshr i64 %1, 33
  %i.b = xor i64 %i.a, %1
  %i.c = mul i64 %i.b, -49064778989728563         ; 2 uses
  %i.d = lshr i64 %i.c, 33
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -4265267296055464877       ; 2 uses
  %i.g = lshr i64 %i.f, 33
  %i.h = xor i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = tail call fastcc i32 @b3FindSlot(ptr noundef %0, i64 noundef %1, i32 noundef %i.i) ; 2 uses
  %i.k = icmp ne ptr %0, null, !nosanitize !10
  %i.l = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.m = and i64 %i.l, 7, !nosanitize !10
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !10
  %i.o = and i1 %i.k, %i.n, !nosanitize !10
  br i1 %i.o, label %bb.c, label %bb.b, !prof !12, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @12, i64 %i.l) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !16
  %.fr41.i = freeze ptr %i.p                      ; 5 uses
  %i.q = sext i32 %i.j to i64                     ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %.fr41.i, i64 %i.q ; 2 uses
  %i.s = shl nsw i64 %i.q, 4
  %i.t = ptrtoint ptr %.fr41.i to i64, !nosanitize !10 ; 6 uses
  %i.u = add i64 %i.s, %i.t, !nosanitize !10      ; 3 uses
  %i.v = icmp ne ptr %.fr41.i, null, !nosanitize !10 ; 2 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !10
  %i.z = icmp slt i32 %i.j, 0
  %i.aa = xor i1 %i.z, %i.y
  %i.ab = and i1 %i.x, %i.aa, !nosanitize !10
  br i1 %i.ab, label %bb.e, label %bb.d, !prof !12, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @13, i64 %i.t, i64 %i.u) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.r to i64, !nosanitize !10 ; 2 uses
  %i.ad = and i64 %i.ac, 7, !nosanitize !10
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !10
  %i.af = and i1 %i.v, %i.ae
  br i1 %i.af, label %bb.g, label %bb.f, !prof !12, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @14, i64 %i.ac) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !22
  %.not = icmp ne i32 %i.ah, 0                    ; 2 uses
  br i1 %.not, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !18
  %i.al = shl i32 %i.ak, 1
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !17 ; 4 uses
  %.not14 = icmp ult i32 %i.al, %i.am
  br i1 %.not14, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ai, align 4, !tbaa !18
  %i.an = shl i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !17
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = tail call ptr @b3Alloc(i64 noundef %i.ap) #8 ; 3 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.aq, null, !nosanitize !10
  br i1 %.not.i, label %bb.j, label %bb.k, !prof !9, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @35) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %i.aj, align 8, !tbaa !17
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.at, i1 false)
  %.not40.i = icmp eq i32 %i.am, 0
  br i1 %.not40.i, label %b3GrowTable.exit, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %bb.k
  %wide.trip.count.i = zext i32 %i.am to i64      ; 2 uses
  br label %.lr.ph.split.i

._crit_edge.loopexit.i:                           ; preds = %bb.o
  %i.au = shl nuw nsw i64 %wide.trip.count.i, 4
  br label %b3GrowTable.exit

.lr.ph.split.i:                                   ; preds = %bb.o, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.fr41.i, i64 %indvars.iv.i ; 3 uses
  %i.aw = shl nuw nsw i64 %indvars.iv.i, 4
  %i.ax = add i64 %i.aw, %i.t, !nosanitize !10    ; 2 uses
  %.not43.i = icmp ult i64 %i.ax, %i.t, !nosanitize !10
  br i1 %.not43.i, label %.split.us.i, label %bb.l, !prof !9, !nosanitize !10

.split.us.i:                                      ; preds = %.lr.ph.split.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @36, i64 %i.t, i64 %i.ax) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.ay = ptrtoint ptr %i.av to i64, !nosanitize !10 ; 2 uses
  %i.az = and i64 %i.ay, 7, !nosanitize !10
  %i.ba = icmp eq i64 %i.az, 0, !nosanitize !10
  br i1 %i.ba, label %bb.m, label %.split38.i, !prof !12, !nosanitize !10

.split38.i:                                       ; preds = %bb.l
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @37, i64 %i.ay) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !22 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i64, ptr %i.av, align 8, !tbaa !21
  tail call fastcc void @b3AddKeyHaveCapacity(ptr noundef nonnull %0, i64 noundef %i.be, i32 noundef %i.bc)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.split.i, !llvm.loop !33

b3GrowTable.exit:                                 ; preds = %bb.k, %._crit_edge.loopexit.i
  %.pre-phi.i = phi i64 [ %i.au, %._crit_edge.loopexit.i ], [ 0, %bb.k ]
  tail call void @b3Free(ptr noundef nonnull %.fr41.i, i64 noundef %.pre-phi.i) #8
  br label %bb.p

bb.p:                                             ; preds = %b3GrowTable.exit, %bb.h
  tail call fastcc void @b3AddKeyHaveCapacity(ptr noundef %0, i64 noundef %1, i32 noundef %i.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %bb.p
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3AddKeyHaveCapacity(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !func_sanitize !34 {
bb.a:
  %i.a = tail call fastcc i32 @b3FindSlot(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2) ; 2 uses
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  br i1 %i.d, label %bb.c, label %bb.b, !prof !12, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @38, i64 %i.b) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.f = sext i32 %i.a to i64                     ; 2 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = shl nsw i64 %i.f, 4
  %i.i = ptrtoint ptr %i.e to i64, !nosanitize !10 ; 3 uses
  %i.j = add i64 %i.h, %i.i, !nosanitize !10      ; 3 uses
  %i.k = icmp ne ptr %i.e, null, !nosanitize !10  ; 2 uses
  %i.l = icmp eq i64 %i.j, 0
  %i.m = xor i1 %i.k, %i.l
  %i.n = icmp uge i64 %i.j, %i.i, !nosanitize !10
  %i.o = icmp slt i32 %i.a, 0
  %i.p = xor i1 %i.o, %i.n
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.e, label %bb.d, !prof !12, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @39, i64 %i.i, i64 %i.j) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %i.s = and i64 %i.r, 7, !nosanitize !10
  %i.t = icmp eq i64 %i.s, 0, !nosanitize !10
  %i.u = and i1 %i.k, %i.t
  br i1 %i.u, label %bb.g, label %bb.f, !prof !12, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @40, i64 %i.r) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  store i64 %1, ptr %i.g, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %2, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3RemoveKey(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !func_sanitize !24 {
bb.a:
  %i.a = lshr i64 %1, 33
  %i.b = xor i64 %i.a, %1
  %i.c = mul i64 %i.b, -49064778989728563         ; 2 uses
  %i.d = lshr i64 %i.c, 33
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -4265267296055464877       ; 2 uses
  %i.g = lshr i64 %i.f, 33
  %i.h = xor i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call fastcc i32 @b3FindSlot(ptr noundef %0, i64 noundef %1, i32 noundef %i.i) ; 4 uses
  %i.k = icmp ne ptr %0, null, !nosanitize !10
  %i.l = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.m = and i64 %i.l, 7, !nosanitize !10
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !10
  %i.o = and i1 %i.k, %i.n, !nosanitize !10
  br i1 %i.o, label %bb.c, label %bb.b, !prof !12, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.l) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.q = sext i32 %i.j to i64                     ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = shl nsw i64 %i.q, 4
  %i.t = ptrtoint ptr %i.p to i64, !nosanitize !10 ; 9 uses
  %i.u = add i64 %i.s, %i.t, !nosanitize !10      ; 3 uses
  %i.v = icmp ne ptr %i.p, null, !nosanitize !10  ; 2 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !10
  %i.z = icmp slt i32 %i.j, 0
  %i.aa = xor i1 %i.z, %i.y
  %i.ab = and i1 %i.x, %i.aa, !nosanitize !10
  br i1 %i.ab, label %bb.e, label %bb.d, !prof !12, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @16, i64 %i.t, i64 %i.u) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.r to i64, !nosanitize !10 ; 2 uses
  %i.ad = and i64 %i.ac, 7, !nosanitize !10
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !10
  %i.af = and i1 %i.v, %i.ae
  br i1 %i.af, label %bb.g, label %bb.f, !prof !12, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @17, i64 %i.ac) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !22
  %i.ai = icmp ne i32 %i.ah, 0                    ; 2 uses
  br i1 %i.ai, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.r, align 8, !tbaa !21
  store i32 0, ptr %i.ag, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !18
  %i.am = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 1), !nosanitize !10 ; 2 uses
  %i.an = extractvalue { i32, i1 } %i.am, 1, !nosanitize !10
  br i1 %i.an, label %._crit_edge, label %.lr.ph, !prof !35, !nosanitize !10

.lr.ph:                                           ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !17
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %bb.v, %bb.h
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @19, i64 2147483647, i64 1) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %.lr.ph, %bb.v
  %i.ar = phi { i32, i1 } [ %i.am, %.lr.ph ], [ %i.bx, %bb.v ]
  %.04080 = phi i32 [ %i.j, %.lr.ph ], [ %.1, %bb.v ] ; 6 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 0, !nosanitize !10
  %i.at = and i32 %i.as, %i.aq                    ; 6 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.au ; 4 uses
  %i.aw = shl nsw i64 %i.au, 4
  %i.ax = add i64 %i.aw, %i.t, !nosanitize !10    ; 3 uses
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = icmp uge i64 %i.ax, %i.t, !nosanitize !10
  %i.ba = icmp slt i32 %i.at, 0
  %i.bb = xor i1 %i.ba, %i.az
  %i.bc = and i1 %i.ay, %i.bb, !nosanitize !10
  br i1 %i.bc, label %bb.k, label %bb.j, !prof !12, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @20, i64 %i.t, i64 %i.ax) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.bd = ptrtoint ptr %i.av to i64, !nosanitize !10 ; 2 uses
  %i.be = and i64 %i.bd, 7, !nosanitize !10
  %i.bf = icmp eq i64 %i.be, 0, !nosanitize !10
  br i1 %i.bf, label %bb.m, label %bb.l, !prof !12, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @21, i64 %i.bd) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !22 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = and i32 %i.bh, %i.aq                    ; 2 uses
  %.not = icmp sgt i32 %.04080, %i.at
  %i.bk = icmp sge i32 %.04080, %i.bj             ; 2 uses
  %.not54 = icmp sgt i32 %i.bj, %i.at             ; 2 uses
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond = or i1 %i.bk, %.not54
  br i1 %or.cond, label %bb.q, label %bb.v

bb.p:                                             ; preds = %bb.n
  %or.cond56 = and i1 %i.bk, %.not54
  br i1 %or.cond56, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bl = sext i32 %.04080 to i64                 ; 2 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.bl ; 2 uses
  %i.bn = shl nsw i64 %i.bl, 4
  %i.bo = add i64 %i.bn, %i.t, !nosanitize !10    ; 3 uses
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = icmp uge i64 %i.bo, %i.t, !nosanitize !10
  %i.br = icmp slt i32 %.04080, 0
  %i.bs = xor i1 %i.br, %i.bq
  %i.bt = and i1 %i.bp, %i.bs, !nosanitize !10
  br i1 %i.bt, label %bb.s, label %bb.r, !prof !12, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @22, i64 %i.t, i64 %i.bo) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.bu = ptrtoint ptr %i.bm to i64, !nosanitize !10 ; 2 uses
  %i.bv = and i64 %i.bu, 7, !nosanitize !10
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !10
  br i1 %i.bw, label %bb.u, label %bb.t, !prof !12, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @23, i64 %i.bu) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !37
  store i64 0, ptr %i.av, align 8, !tbaa !21
  store i32 0, ptr %i.bg, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.o, %bb.u
  %.1 = phi i32 [ %.04080, %bb.o ], [ %i.at, %bb.u ], [ %.04080, %bb.p ]
  %i.bx = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.at, i32 1), !nosanitize !10 ; 2 uses
  %i.by = extractvalue { i32, i1 } %i.bx, 1, !nosanitize !10
  br i1 %i.by, label %._crit_edge, label %bb.i, !prof !38, !nosanitize !10

.loopexit:                                        ; preds = %bb.m, %bb.g
  ret i1 %i.ai
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden i32 @b3CountSetBits(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !40 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @25, i64 %i.b) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43   ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !44
  %.fr28 = freeze ptr %i.h                        ; 3 uses
  %i.i = ptrtoint ptr %.fr28 to i64, !nosanitize !10 ; 3 uses
  %.not29 = icmp eq ptr %.fr28, null, !nosanitize !10
  br i1 %.not29, label %.split26, label %.lr.ph.split.preheader, !prof !9

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext i32 %i.g to i64
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.07.lcssa = phi i32 [ 0, %bb.c ], [ %i.v, %bb.g ]
  ret i32 %.07.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.0722 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %i.v, %bb.g ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %indvars.iv ; 2 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 3
  %i.l = add i64 %i.k, %i.i, !nosanitize !10      ; 2 uses
  %.not30 = icmp ult i64 %i.l, %i.i, !nosanitize !10
  br i1 %.not30, label %.split.us, label %bb.d, !prof !9, !nosanitize !10

.split.us:                                        ; preds = %.lr.ph.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @26, i64 %i.i, i64 %i.l) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.d:                                             ; preds = %.lr.ph.split
  %i.m = ptrtoint ptr %i.j to i64, !nosanitize !10 ; 2 uses
  %i.n = and i64 %i.m, 7, !nosanitize !10
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !10
  br i1 %i.o, label %bb.e, label %.split26, !prof !12, !nosanitize !10

.split26:                                         ; preds = %bb.d, %.lr.ph
  %.us-phi27 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.d ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @27, i64 %.us-phi27) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.j, align 8, !tbaa !25
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.p) ; 2 uses
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0722, i32 %i.r), !nosanitize !10 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1, !nosanitize !10
  br i1 %i.t, label %bb.f, label %bb.g, !prof !9, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %.0722 to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @28, i64 %i.u, i64 %i.q) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { i32, i1 } %i.s, 0, !nosanitize !10 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !39
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_shift_out_of_bounds_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 1048575}
!10 = !{}
!11 = !{i32 -1056584962, i32 -142943339}
!12 = !{!"branch_weights", i32 1048575, i32 1}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTS9b3SetItem", !13, i64 0}
!15 = !{!"b3HashSet", !14, i64 0, !6, i64 8, !6, i64 12}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !6, i64 8}
!18 = !{!15, !6, i64 12}
!19 = !{!"long", !5, i64 0}
!20 = !{!"b3SetItem", !19, i64 0, !6, i64 8}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !6, i64 8}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{i32 -1056584962, i32 -1538294726}
!25 = !{!19, !19, i64 0}
!26 = !{i32 -1056584962, i32 -1504296593}
!27 = !{i32 -1056584962, i32 -1172505048}
!28 = distinct !{!28, !23}
!29 = !{i32 -1056584962, i32 -429208608}
!30 = !{!"branch_weights", i32 127, i32 1}
!31 = !{!"branch_weights", i32 134217473, i32 127}
!32 = !{i32 -1056584962, i32 1171870069}
!33 = distinct !{!33, !23}
!34 = !{i32 -1056584962, i32 -521698433}
!35 = !{!"branch_weights", i32 1, i32 127}
!36 = !{!6, !6, i64 0}
!37 = !{i64 0, i64 8, !25, i64 8, i64 4, !36}
!38 = !{!"branch_weights", i32 127, i32 134217473}
!39 = distinct !{!39, !23}
!40 = !{i32 -1056584962, i32 -1280286085}
!41 = !{!"p1 long", !13, i64 0}
!42 = !{!"b3BitSet", !41, i64 0, !6, i64 8, !6, i64 12}
!43 = !{!42, !6, i64 12}
!44 = !{!42, !41, i64 0}
end_hunk_0
