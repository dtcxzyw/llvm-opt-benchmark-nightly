Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/random?download=true
inline.NumInlined: 245
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@rand_random_number:bb.a
bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %2, ptr noundef nonnull @rb_random_data_type_1_0) #23
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %try_get_rnd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84
  %i.h = and i64 %i.g, -2                         ; 2 uses
  %i.i = icmp eq i64 %i.h, ptrtoint (ptr @random_mt_type to i64)
  %i.j = getelementptr i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86   ; 4 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc ptr @rand_start(ptr noundef %i.k, i64 noundef %2) ; 0 uses
  br label %try_get_rnd.exit

bb.f:                                             ; preds = %bb.d
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %bb.g, label %try_get_rnd.exit

bb.g:                                             ; preds = %bb.f
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = load i64, ptr @rb_eArgError, align 8, !tbaa !81
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !91
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.25, ptr noundef %i.o) #25
  unreachable

try_get_rnd.exit:                                 ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.e ], [ null, %bb.c ], [ %i.k, %bb.f ] ; 2 uses
  %i.p = tail call fastcc i64 @rand_random(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %.0.i) ; 2 uses
  switch i64 %i.p, label %rand_random.exit [
    i64 4, label %bb.h
    i64 0, label %bb.m
  ]

bb.h:                                             ; preds = %try_get_rnd.exit
  %i.q = tail call fastcc double @random_real(i64 noundef %2, ptr noundef %.0.i, i32 noundef 1) ; 2 uses
  %i.r = bitcast double %i.q to i64               ; 5 uses
  %cond.i.i = icmp eq i64 %i.r, 3458764513820540928
  br i1 %cond.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %i.r, 60
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 7
  %i.v = add nsw i32 %i.u, -5
  %i.w = icmp ult i32 %i.v, -2
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.r, i64 range(i64 3458764513820540929, 3458764513820540928) %i.r, i64 3)
  %i.y = and i64 %i.x, -4
  %i.z = or disjoint i64 %i.y, 2
  br label %rand_random.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = icmp eq i64 %i.r, 0
  br i1 %i.aa, label %rand_random.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.ab = tail call i64 @rb_float_new_in_heap(double noundef %i.q) #23
  br label %rand_random.exit

bb.m:                                             ; preds = %try_get_rnd.exit
  %i.ac = load i64, ptr %1, align 8, !tbaa !81
  tail call fastcc void @invalid_argument(i64 noundef %i.ac) #27
  unreachable

rand_random.exit:                                 ; preds = %try_get_rnd.exit, %bb.l, %bb.k, %bb.j
  %.0 = phi i64 [ %i.p, %try_get_rnd.exit ], [ %i.ab, %bb.l ], [ -9223372036854775806, %bb.k ], [ %i.z, %bb.j ]
  ret i64 %.0
}

declare ptr @rb_ractor_local_storage_ptr_newkey(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Random() local_unnamed_addr #0 !guid !189 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef nonnull @.str.7) #23
  store i64 %i.a, ptr @id_rand, align 8, !tbaa !81
  %i.b = tail call i64 @rb_intern(ptr noundef nonnull @.str.10) #23
  store i64 %i.b, ptr @id_bytes, align 8, !tbaa !81
  tail call void @InitVM_Random()
  ret void
}

declare i64 @rb_intern(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rand_init(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef returned %2) unnamed_addr #0 !guid !190 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !81
  %i.b = tail call i64 @rb_absint_numwords(i64 noundef %2, i64 noundef 32, ptr noundef null) #23 ; 4 uses
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 8 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.d, label %bb.c, label %.thread, !prof !109

bb.c:                                             ; preds = %bb.b
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %spec.store.select, i64 noundef 4) #25
  unreachable

.thread:                                          ; preds = %bb.b
  %i.e = shl nuw i64 %spec.store.select, 2        ; 2 uses
  %i.f = add i64 %i.e, 4
  %i.g = lshr i64 %i.f, 3
  %i.h = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.e, i64 noundef %i.g) #28 ; 2 uses
  %i.i = call i32 @rb_integer_pack(i64 noundef %2, ptr noundef nonnull %i.h, i64 noundef %spec.store.select, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !81
  %i.j = shl nuw nsw i64 %spec.store.select, 2
  %i.k = alloca i8, i64 %i.j, align 16            ; 4 uses
  %i.l = call i32 @rb_integer_pack(i64 noundef %2, ptr noundef nonnull %i.k, i64 noundef %spec.store.select, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  %i.m = icmp samesign ult i64 %i.b, 2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !191
  %i.p = load i32, ptr %i.k, align 16, !tbaa !19
  call void %i.o(ptr noundef %1, i32 noundef %i.p) #23
  br label %bb.i

bb.f:                                             ; preds = %.thread, %bb.d
  %i.q = phi i32 [ %i.i, %.thread ], [ %i.l, %bb.d ]
  %i.r = phi ptr [ %i.h, %.thread ], [ %i.k, %bb.d ] ; 3 uses
  %spec.select = call i32 @llvm.abs.i32(i32 %i.q, i1 false)
  %.not = icmp eq i32 %spec.select, 2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %spec.store.select
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19
  %i.v = icmp eq i32 %i.u, 1
  %i.w = sext i1 %i.v to i64
  %spec.select27 = add i64 %spec.store.select, %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.024 = phi i64 [ %spec.store.select, %bb.f ], [ %spec.select27, %bb.g ] ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110
  call void %i.y(ptr noundef %1, ptr noundef nonnull %i.r, i64 noundef %.024) #23
  %i.z = shl i64 %.024, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.aa = phi ptr [ %i.k, %bb.e ], [ %i.r, %bb.h ]
  %.1 = phi i64 [ 4, %bb.e ], [ %i.z, %bb.h ]
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.aa, i64 noundef %.1, i64 noundef -1) #23
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %2
}

declare i64 @rb_absint_numwords(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_integer_pack(i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_errno_ptr() local_unnamed_addr #1

declare i64 @getrandom(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @rb_cloexec_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @rb_update_max_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @rand_mt_init(ptr noundef initializes((8, 12)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #14 !guid !192 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 10 uses
  store i32 19650218, ptr %i.a, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i32 [ 19650218, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i.1, %bb.c ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.c = lshr i32 %store_forwarded, 30
  %i.d = xor i32 %i.c, %store_forwarded
  %i.e = mul i32 %i.d, 1812433253
  %i.f = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.g = add i32 %i.e, %i.f                       ; 3 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %init_genrand.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  %i.i = lshr i32 %i.g, 30
  %i.j = xor i32 %i.i, %i.g
  %i.k = mul i32 %i.j, 1812433253
  %i.l = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  store i32 %i.m, ptr %i.h, align 4, !tbaa !19
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.b

init_genrand.exit.i:                              ; preds = %bb.b
  %i.n = trunc i64 %2 to i32                      ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 2512
  store i32 1, ptr %i.o, align 8, !tbaa !74
  %i.p = getelementptr i8, ptr %0, i64 2504       ; 2 uses
  store ptr %i.p, ptr %i.p, align 8, !tbaa !75
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.n, i32 624)
  %i.r = getelementptr i8, ptr %0, i64 2500       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %init_genrand.exit.i
  %.051.i = phi i32 [ %i.q, %init_genrand.exit.i ], [ %i.am, %bb.f ]
  %.04250.i = phi i32 [ 0, %init_genrand.exit.i ], [ %spec.store.select.i, %bb.f ] ; 3 uses
  %.04349.i = phi i32 [ 1, %init_genrand.exit.i ], [ %.144.i, %bb.f ] ; 3 uses
  %i.s = sext i32 %.04349.i to i64
  %i.t = getelementptr [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19
  %i.v = add i32 %.04349.i, -1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.a, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19   ; 2 uses
  %i.z = lshr i32 %i.y, 30
  %i.aa = xor i32 %i.z, %i.y
  %i.ab = mul i32 %i.aa, 1664525
  %i.ac = xor i32 %i.ab, %i.u
  %i.ad = sext i32 %.04250.i to i64
  %i.ae = getelementptr [4 x i8], ptr %1, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19
  %i.ag = add i32 %i.af, %.04250.i
  %i.ah = add i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %i.t, align 4, !tbaa !19
  %i.ai = add i32 %.04349.i, 1                    ; 2 uses
  %i.aj = add i32 %.04250.i, 1                    ; 2 uses
  %i.ak = icmp sgt i32 %i.ai, 623
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.r, align 4, !tbaa !19
  store i32 %i.al, ptr %i.a, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.144.i = phi i32 [ 1, %bb.e ], [ %i.ai, %bb.d ] ; 2 uses
  %.not48.i = icmp slt i32 %i.aj, %i.n
  %spec.store.select.i = select i1 %.not48.i, i32 %i.aj, i32 0
  %i.am = add nsw i32 %.051.i, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %.preheader.i, label %bb.d, !llvm.loop !6

.preheader.i:                                     ; preds = %bb.f, %bb.h
  %.153.i = phi i32 [ %i.bc, %bb.h ], [ 623, %bb.f ]
  %.252.i = phi i32 [ %.3.i, %bb.h ], [ %.144.i, %bb.f ] ; 4 uses
  %i.an = sext i32 %.252.i to i64
  %i.ao = getelementptr [4 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = add i32 %.252.i, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.a, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !19 ; 2 uses
  %i.au = lshr i32 %i.at, 30
  %i.av = xor i32 %i.au, %i.at
  %i.aw = mul i32 %i.av, 1566083941
  %i.ax = xor i32 %i.aw, %i.ap
  %i.ay = sub i32 %i.ax, %.252.i
  store i32 %i.ay, ptr %i.ao, align 4, !tbaa !19
  %i.az = add i32 %.252.i, 1                      ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 623
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.bb = load i32, ptr %i.r, align 4, !tbaa !19
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.i
  %.3.i = phi i32 [ 1, %bb.g ], [ %i.az, %.preheader.i ]
  %i.bc = add nsw i32 %.153.i, -1                 ; 2 uses
  %.not47.i = icmp eq i32 %i.bc, 0
  br i1 %.not47.i, label %init_by_array.exit, label %.preheader.i, !llvm.loop !7

init_by_array.exit:                               ; preds = %bb.h
  store i32 -2147483648, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @rand_mt_init_int32(ptr noundef initializes((8, 12)) %0, i32 noundef %1) #14 !guid !193 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i32 [ %1, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.c = lshr i32 %store_forwarded, 30
  %i.d = xor i32 %i.c, %store_forwarded
  %i.e = mul i32 %i.d, 1812433253
  %i.f = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.g = add i32 %i.e, %i.f                       ; 3 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 624
  br i1 %exitcond.not.i, label %init_genrand.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.i = lshr i32 %i.g, 30
  %i.j = xor i32 %i.i, %i.g
  %i.k = mul i32 %i.j, 1812433253
  %i.l = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  store i32 %i.m, ptr %i.h, align 4, !tbaa !19
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

init_genrand.exit:                                ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 2512
  store i32 1, ptr %i.n, align 8, !tbaa !74
  %i.o = getelementptr i8, ptr %0, i64 2504       ; 2 uses
  store ptr %i.o, ptr %i.o, align 8, !tbaa !75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @rand_mt_get_int32(ptr noundef %0) #3 !guid !194 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = tail call fastcc i32 @genrand_int32(ptr noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rand_mt_get_bytes(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #3 !guid !195 {
bb.a:
  %i.a = icmp ugt i64 %2, 3
  br i1 %i.a, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01623.i = phi ptr [ %i.d, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i64 [ %i.e, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ]
  %i.c = tail call fastcc i32 @genrand_int32(ptr noundef %i.b)
  store i32 %i.c, ptr %.01623.i, align 1
  %i.d = getelementptr i8, ptr %.01623.i, i64 4   ; 2 uses
  %i.e = add i64 %.01822.i, -4                    ; 3 uses
  %i.f = icmp ugt i64 %i.e, 3
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.018.lcssa.i = phi i64 [ %2, %bb.a ], [ %i.e, %.lr.ph.i ] ; 3 uses
  %.016.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.d, %.lr.ph.i ] ; 3 uses
  %.not.i = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not.i, label %rb_rand_bytes_int32.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = tail call fastcc i32 @genrand_int32(ptr noundef %i.g) ; 3 uses
  %i.i = trunc i32 %i.h to i8
  store i8 %i.i, ptr %.016.lcssa.i, align 1, !tbaa !100
  %.not20.i = icmp eq i64 %.018.lcssa.i, 1
  br i1 %.not20.i, label %rb_rand_bytes_int32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %i.h, 8
  %i.k = getelementptr i8, ptr %.016.lcssa.i, i64 1
  %i.l = trunc i32 %i.j to i8
  store i8 %i.l, ptr %i.k, align 1, !tbaa !100
  %.not20.i.1 = icmp eq i64 %.018.lcssa.i, 2
  br i1 %.not20.i.1, label %rb_rand_bytes_int32.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.h, 16
  %i.n = getelementptr i8, ptr %.016.lcssa.i, i64 2
  %i.o = trunc i32 %i.m to i8
  store i8 %i.o, ptr %i.n, align 1, !tbaa !100
  br label %rb_rand_bytes_int32.exit

rb_rand_bytes_int32.exit:                         ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge.i
  ret void
}

declare i32 @rb_typeddata_is_kind_of(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rand_start(ptr noundef returned %0, i64 noundef %1) unnamed_addr #0 !guid !196 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 2504
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %rand_mt_start.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = call i32 @ruby_fill_random_bytes(ptr noundef nonnull %i.a, i64 noundef 16, i32 noundef 0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = icmp ult i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %random_seed.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 1, ptr %i.h, align 16, !tbaa !19
  br label %random_seed.exit.i

random_seed.exit.i:                               ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ 5, %bb.c ], [ 4, %bb.b ]
  %i.i = call i64 @rb_integer_unpack(ptr noundef nonnull %i.a, i64 noundef %.0.i.i.i, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23 ; 5 uses
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.j = call fastcc i64 @rand_init(ptr noundef nonnull @random_mt_if, ptr noundef nonnull %0, i64 noundef %i.i) ; 0 uses
  store i64 %i.i, ptr %0, align 8, !tbaa !73
  %.not6.i = icmp eq i64 %1, 0
  br i1 %.not6.i, label %rand_mt_start.exit, label %bb.d

bb.d:                                             ; preds = %random_seed.exit.i
  %i.k = icmp eq i64 %i.i, 0
  %i.l = and i64 %i.i, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %rand_mt_start.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.i) #23
  br label %rand_mt_start.exit

rand_mt_start.exit:                               ; preds = %bb.a, %random_seed.exit.i, %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @random_mt_memsize(ptr nofree readnone captures(none) %0) #4 !guid !197 {
bb.a:
  ret i64 2520
}

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

declare i64 @rb_ull2inum(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2ulong(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #17

; Function Attrs: nounwind
declare void @__explicit_bzero_chk(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #17

declare ptr @rb_ractor_local_storage_ptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #18

declare void @rb_ractor_local_storage_ptr_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rand_range(i64 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #19 !guid !198 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
end_hunk_0
