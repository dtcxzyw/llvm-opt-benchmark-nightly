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
  %1 = shl nuw nsw i64 %.sroa.3.0, 4              ; 2 uses
  %i.g = tail call ptr @b3Alloc(i64 noundef %1) #8 ; 3 uses
  %.not = icmp eq ptr %i.g, null, !nosanitize !10
  br i1 %.not, label %bb.e, label %bb.f, !prof !9, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @0) #7, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %1, i1 false)
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.g, 0
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
end_hunk_0
