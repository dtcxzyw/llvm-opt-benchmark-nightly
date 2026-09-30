Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/block_allocator?download=true
begin_hunk_0
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 26, i32 46 }, ptr @0 }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 31, i32 61 }, ptr @0 }
@7 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 31, i32 4 } }
@8 = private unnamed_addr constant { i16, i16, [17 x i8] } { i16 -1, i16 0, [17 x i8] c"'struct b3Block'\00" }
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 31, i32 4 }, ptr @8, i8 3, i8 3 }
@10 = private unnamed_addr constant { i16, i16, [51 x i8] } { i16 -1, i16 0, [51 x i8] c"'b3BlockAllocator' (aka 'struct b3BlockAllocator')\00" }
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 40, i32 34 }, ptr @10, i8 3, i8 3 }
@12 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 42, i32 11 } }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 42, i32 11 }, ptr @8, i8 3, i8 3 }
@14 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 42, i32 59 }, ptr @0 }
@15 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 52, i32 13 }, ptr @10, i8 3, i8 3 }
@16 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 52, i32 29 }, ptr @0 }
@17 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 58, i32 25 }, ptr @3, i8 3, i8 0 }
@18 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 62, i32 34 }, ptr @0 }
@19 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 73, i32 62 }, ptr @0 }
@20 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 73, i32 4 } }
@21 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 73, i32 4 }, ptr @8, i8 3, i8 3 }
@22 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 80, i32 9 } }
@23 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 80, i32 9 }, ptr @8, i8 3, i8 3 }
@24 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 80, i32 65 }, ptr @0 }
@25 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 80, i32 51 } }
@26 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 90, i32 13 }, ptr @10, i8 3, i8 3 }
@27 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 90, i32 29 }, ptr @0 }
@28 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 93, i32 2 }, ptr @3, i8 3, i8 1 }

; Function Attrs: nounwind uwtable
define hidden void @b3CreateBlockAllocator(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3BlockAllocator) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !func_sanitize !29 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 -1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1, !nosanitize !9
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @1, i64 %i.c, i64 1) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i1 } %i.a, 0, !nosanitize !9
  %i.e = or i32 %i.d, 15                          ; 2 uses
  %i.f = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.e, i32 1), !nosanitize !9 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 0, !nosanitize !9 ; 4 uses
  %i.h = extractvalue { i32, i1 } %i.f, 1, !nosanitize !9
  br i1 %i.h, label %bb.d, label %bb.e, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.e to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @2, i64 %i.i, i64 1) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  store i32 %i.g, ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.m, align 4, !tbaa !16
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 256), !nosanitize !9 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 0, !nosanitize !9 ; 2 uses
  %i.q = extractvalue { i32, i1 } %i.o, 1, !nosanitize !9
  br i1 %i.q, label %bb.g, label %bb.h, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  %i.r = zext nneg i32 %2 to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @4, i64 %i.r, i64 256) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.s = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.p, i32 -1) ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1, !nosanitize !9
  br i1 %i.t, label %bb.i, label %bb.j, !prof !10, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  %i.u = zext i32 %i.p to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @5, i64 %i.u, i64 1) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  %i.v = extractvalue { i32, i1 } %i.s, 0, !nosanitize !9
  %i.w = ashr i32 %i.v, 8                         ; 6 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.w, ptr %i.j, align 8, !tbaa !17
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.y = shl nuw nsw i32 %i.w, 3
  %i.z = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.y) #6
  %i.aa = freeze ptr %i.z                         ; 4 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !18
  store i32 %i.w, ptr %i.k, align 4, !tbaa !19
  store i32 %i.w, ptr %i.j, align 8, !tbaa !17
  %i.ab = add i32 %i.g, 8388608
  %i.ac = icmp ult i32 %i.ab, 16777216
  %i.ad = shl nsw i32 %i.g, 8
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = ptrtoint ptr %i.aa to i64               ; 3 uses
  br i1 %i.ac, label %.lr.ph.split, label %bb.l, !prof !20, !nosanitize !9

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.split27.us, label %.lr.ph.split.split.preheader, !prof !10

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %.lr.ph.split.split

.split27.us:                                      ; preds = %.lr.ph.split
  %i.ag = tail call ptr @b3Alloc(i64 noundef %i.ae) #6 ; 0 uses
  br label %.split27

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.ah = tail call ptr @b3Alloc(i64 noundef %i.ae) #6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.aj = shl nuw nsw i64 %indvars.iv, 3
  %i.ak = add i64 %i.aj, %i.af, !nosanitize !9    ; 2 uses
  %.not30 = icmp ult i64 %i.ak, %i.af, !nosanitize !9
  br i1 %.not30, label %.split.us, label %bb.m, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %.lr.ph
  %i.al = zext i32 %i.g to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @6, i64 256, i64 %i.al) #5, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.af, i64 %i.ak) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %.lr.ph.split.split
  %i.am = ptrtoint ptr %i.ai to i64, !nosanitize !9 ; 2 uses
  %i.an = and i64 %i.am, 7, !nosanitize !9
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !9
  br i1 %i.ao, label %bb.n, label %.split27, !prof !20, !nosanitize !9

.split27:                                         ; preds = %bb.m, %.split27.us
  %.us-phi28 = phi i64 [ 0, %.split27.us ], [ %i.am, %bb.m ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @9, i64 %.us-phi28) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !28

.loopexit:                                        ; preds = %bb.n, %bb.k, %bb.e
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #1

declare ptr @b3GrowAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @b3Alloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_mul_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @b3DestroyBlockAllocator(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !30 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %.lr.ph, label %bb.e, !prof !31, !nosanitize !9

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.f, align 8, !tbaa !17
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph57, label %.split.us, !prof !32, !nosanitize !9

.lr.ph57:                                         ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.l = shl nuw nsw i64 %indvars.iv, 3
  %i.m = ptrtoint ptr %i.j to i64, !nosanitize !9 ; 3 uses
  %i.n = add i64 %i.l, %i.m, !nosanitize !9       ; 3 uses
  %i.o = icmp ne ptr %i.j, null, !nosanitize !9   ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  %i.q = xor i1 %i.o, %i.p
  %i.r = icmp uge i64 %i.n, %i.m, !nosanitize !9
  %i.s = and i1 %i.r, %i.q, !nosanitize !9
  br i1 %i.s, label %bb.b, label %.split41.us, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %.lr.ph57
  %i.t = ptrtoint ptr %i.k to i64, !nosanitize !9 ; 2 uses
  %i.u = and i64 %i.t, 7, !nosanitize !9
  %i.v = icmp eq i64 %i.u, 0, !nosanitize !9
  %i.w = and i1 %i.o, %i.v
  br i1 %i.w, label %bb.c, label %.split45.us, !prof !20, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.g, align 8, !tbaa !15   ; 3 uses
  %i.y = add i32 %i.x, 8388608
  %i.z = icmp ult i32 %i.y, 16777216
  br i1 %i.z, label %bb.d, label %.split48.us, !prof !20, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.ab = shl nsw i32 %i.x, 8
  %i.ac = sext i32 %i.ab to i64
  tail call void @b3Free(ptr noundef %i.aa, i64 noundef %i.ac) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !17
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph57, label %.split.us

bb.e:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.b) #5, !nosanitize !9
  unreachable, !nosanitize !9

.split41.us:                                      ; preds = %.lr.ph57
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @12, i64 %i.m, i64 %i.n) #5, !nosanitize !9
  unreachable, !nosanitize !9

.split45.us:                                      ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.t) #5, !nosanitize !9
  unreachable, !nosanitize !9

.split48.us:                                      ; preds = %bb.c
  %i.ag = zext i32 %i.x to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @14, i64 256, i64 %i.ag) #5, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.d, %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !18
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 3
  tail call void @b3Free(ptr noundef %i.ai, i64 noundef %i.al) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @b3AllocateElement(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !34 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.b) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.h = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.g, i32 1), !nosanitize !9 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1, !nosanitize !9
  br i1 %i.i, label %bb.d, label %bb.e, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.g to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @16, i64 %i.j, i64 1) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.k = extractvalue { i32, i1 } %i.h, 0, !nosanitize !9
  store i32 %i.k, ptr %i.f, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %i.m to i64, !nosanitize !9 ; 2 uses
  %i.o = and i64 %i.n, 7, !nosanitize !9
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !9
  br i1 %i.p, label %bb.h, label %bb.g, !prof !20, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @17, i64 %i.n) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !27
  store ptr %i.q, ptr %i.l, align 8, !tbaa !26
  br label %bb.ab

bb.i:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 4 uses
  %i.t = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.s, i32 1), !nosanitize !9 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1, !nosanitize !9
  br i1 %i.u, label %bb.j, label %bb.k, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %i.v = zext nneg i32 %i.s to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @18, i64 %i.v, i64 1) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.w = extractvalue { i32, i1 } %i.t, 0, !nosanitize !9
  store i32 %i.w, ptr %i.r, align 4, !tbaa !16
  %i.x = ashr i32 %i.s, 8                         ; 6 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %.not45 = icmp slt i32 %i.x, %i.aa
  br i1 %.not45, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %.not46 = icmp sgt i32 %i.ac, %i.x
  br i1 %.not46, label %.lr.ph, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = shl i32 %i.ac, 3
  %i.ae = shl nsw i32 %i.y, 3
  %i.af = load ptr, ptr %0, align 8, !tbaa !18
  %i.ag = tail call ptr @b3GrowAlloc(ptr noundef %i.af, i32 noundef %i.ad, i32 noundef %i.ae) #6
  store ptr %i.ag, ptr %0, align 8, !tbaa !18
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !19
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.l
  store i32 %i.y, ptr %i.z, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %.060 = phi i32 [ %i.bg, %bb.s ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !15 ; 3 uses
  %i.aj = add i32 %i.ai, 8388608
  %i.ak = icmp ult i32 %i.aj, 16777216
  br i1 %i.ak, label %bb.o, label %bb.n, !prof !20, !nosanitize !9

bb.n:                                             ; preds = %.lr.ph.split
  %i.al = zext i32 %i.ai to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @19, i64 256, i64 %i.al) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %.lr.ph.split
  %i.am = shl nsw i32 %i.ai, 8
  %i.an = sext i32 %i.am to i64
  %i.ao = tail call ptr @b3Alloc(i64 noundef %i.an) #6
  %i.ap = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.aq = sext i32 %.060 to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = shl nsw i64 %i.aq, 3
  %i.at = ptrtoint ptr %i.ap to i64, !nosanitize !9 ; 3 uses
  %i.au = add i64 %i.as, %i.at, !nosanitize !9    ; 3 uses
  %i.av = icmp ne ptr %i.ap, null, !nosanitize !9 ; 2 uses
  %i.aw = icmp eq i64 %i.au, 0
  %i.ax = xor i1 %i.av, %i.aw
  %i.ay = icmp uge i64 %i.au, %i.at, !nosanitize !9
  %i.az = icmp slt i32 %.060, 0
  %i.ba = xor i1 %i.az, %i.ay
  %i.bb = and i1 %i.ax, %i.ba, !nosanitize !9
  br i1 %i.bb, label %bb.q, label %bb.p, !prof !20, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @20, i64 %i.at, i64 %i.au) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.bc = ptrtoint ptr %i.ar to i64, !nosanitize !9 ; 2 uses
  %i.bd = and i64 %i.bc, 7, !nosanitize !9
  %i.be = icmp eq i64 %i.bd, 0, !nosanitize !9
  %i.bf = and i1 %i.av, %i.be
  br i1 %i.bf, label %bb.s, label %bb.r, !prof !20, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @21, i64 %i.bc) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !23
  %i.bg = add nsw i32 %.060, 1
  %exitcond = icmp eq i32 %.060, %i.x
  br i1 %exitcond, label %.loopexit, label %.lr.ph.split, !llvm.loop !33

.loopexit:                                        ; preds = %bb.s, %bb.k
  %i.bh = and i32 %i.s, 255                       ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.bj = sext i32 %i.x to i64                    ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = shl nsw i64 %i.bj, 3
  %i.bm = ptrtoint ptr %i.bi to i64, !nosanitize !9 ; 3 uses
  %i.bn = add i64 %i.bl, %i.bm, !nosanitize !9    ; 3 uses
  %i.bo = icmp ne ptr %i.bi, null, !nosanitize !9 ; 2 uses
  %i.bp = icmp eq i64 %i.bn, 0
  %i.bq = xor i1 %i.bo, %i.bp
  %i.br = icmp uge i64 %i.bn, %i.bm, !nosanitize !9
  %i.bs = icmp slt i32 %i.x, 0
  %i.bt = xor i1 %i.bs, %i.br
  %i.bu = and i1 %i.bq, %i.bt, !nosanitize !9
  br i1 %i.bu, label %bb.u, label %bb.t, !prof !20, !nosanitize !9

bb.t:                                             ; preds = %.loopexit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @22, i64 %i.bm, i64 %i.bn) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %.loopexit
  %i.bv = ptrtoint ptr %i.bk to i64, !nosanitize !9 ; 2 uses
  %i.bw = and i64 %i.bv, 7, !nosanitize !9
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !9
  %i.by = and i1 %i.bo, %i.bx
  br i1 %i.by, label %bb.w, label %bb.v, !prof !20, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @23, i64 %i.bv) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.bz = load ptr, ptr %i.bk, align 8, !tbaa !23 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !15 ; 2 uses
  %i.cc = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.bh, i32 %i.cb), !nosanitize !9 ; 2 uses
  %i.cd = extractvalue { i32, i1 } %i.cc, 1, !nosanitize !9
  br i1 %i.cd, label %bb.x, label %bb.y, !prof !10, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  %i.ce = zext nneg i32 %i.bh to i64, !nosanitize !9
  %i.cf = zext i32 %i.cb to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @24, i64 %i.ce, i64 %i.cf) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %bb.w
  %i.cg = extractvalue { i32, i1 } %i.cc, 0, !nosanitize !9 ; 2 uses
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = ptrtoint ptr %i.bz to i64, !nosanitize !9 ; 3 uses
  %i.cj = add i64 %i.ch, %i.ci, !nosanitize !9    ; 3 uses
  %i.ck = icmp ne ptr %i.bz, null, !nosanitize !9
  %i.cl = icmp eq i64 %i.cj, 0
  %i.cm = xor i1 %i.ck, %i.cl
  %i.cn = icmp uge i64 %i.cj, %i.ci, !nosanitize !9
  %i.co = icmp slt i32 %i.cg, 0
  %i.cp = xor i1 %i.co, %i.cn
  %i.cq = and i1 %i.cm, %i.cp, !nosanitize !9
  br i1 %i.cq, label %bb.aa, label %bb.z, !prof !20, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @25, i64 %i.ci, i64 %i.cj) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %bb.y
  %i.cr = getelementptr inbounds i8, ptr %i.bz, i64 %i.ch
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.h
  %.036 = phi ptr [ %i.m, %bb.h ], [ %i.cr, %bb.aa ]
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define hidden void @b3FreeElement(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !35 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @26, i64 %i.b) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.h = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.g, i32 -1) ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1, !nosanitize !9
  br i1 %i.i, label %bb.d, label %bb.e, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @27, i64 %i.j, i64 1) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.k = extractvalue { i32, i1 } %i.h, 0, !nosanitize !9
  store i32 %i.k, ptr %i.f, align 8, !tbaa !25
  %i.l = icmp ne ptr %1, null, !nosanitize !9
  %i.m = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.n = and i64 %i.m, 7, !nosanitize !9
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !9
  %i.p = and i1 %i.l, %i.o, !nosanitize !9
  br i1 %i.p, label %bb.g, label %bb.f, !prof !20, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @28, i64 %i.m) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  store ptr %i.r, ptr %1, align 8, !tbaa !27
  store ptr %1, ptr %i.q, align 8, !tbaa !26
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS7b3Block", !11, i64 0}
!13 = !{!"b3DynamicArray_b3Block", !12, i64 0, !6, i64 8, !6, i64 12}
!14 = !{!"b3BlockAllocator", !13, i64 0, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!15 = !{!14, !6, i64 24}
!16 = !{!14, !6, i64 28}
!17 = !{!14, !6, i64 8}
!18 = !{!14, !12, i64 0}
!19 = !{!14, !6, i64 12}
!20 = !{!"branch_weights", i32 1048575, i32 1}
!21 = !{!"p1 omnipotent char", !11, i64 0}
!22 = !{!"b3Block", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!14, !6, i64 32}
!26 = !{!14, !11, i64 16}
!27 = !{!11, !11, i64 0}
!28 = distinct !{!28, !24}
!29 = !{i32 -1056584962, i32 -1195907103}
!30 = !{i32 -1056584962, i32 -884914999}
!31 = !{!"branch_weights", i32 127, i32 1}
!32 = !{!"branch_weights", i32 1048576, i32 1048576}
!33 = distinct !{!33, !24}
!34 = !{i32 -1056584962, i32 2066812210}
!35 = !{i32 -1056584962, i32 732327394}
end_hunk_0
