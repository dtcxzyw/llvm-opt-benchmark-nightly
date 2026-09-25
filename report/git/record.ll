Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/record?download=true
inline.NumInlined: 118
inline.NumDeleted: 12
begin_hunk_0_@reftable_ref_record_decode:bb.a
  br i1 %.not22.i.i, label %get_var_int.exit.i, label %bb.p, !llvm.loop !0

get_var_int.exit.i:                               ; preds = %bb.q, %bb.o
  %.0.lcssa.i.i = phi i64 [ %i.be, %bb.o ], [ %i.bl, %bb.q ] ; 3 uses
  %.019.lcssa.i.i = phi ptr [ %.01928.i.i, %bb.o ], [ %.019.i.i, %bb.q ]
  %i.bm = ptrtoint ptr %.019.lcssa.i.i to i64
  %i.bn = ptrtoint ptr %i.q to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %get_var_int.exit.thread, label %bb.r

bb.r:                                             ; preds = %get_var_int.exit.i
  %i.br = and i64 %i.bo, 2147483647               ; 2 uses
  %i.bs = sub i64 %i.r, %i.br                     ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %.0.lcssa.i.i
  br i1 %i.bt, label %get_var_int.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br
  tail call void @reftable_buf_reset(ptr noundef %6) #17
  %i.bv = tail call i32 @reftable_buf_add(ptr noundef %6, ptr noundef nonnull %i.bu, i64 noundef %.0.lcssa.i.i) #17
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %get_var_int.exit.thread, label %decode_string.exit

decode_string.exit:                               ; preds = %bb.s
  %.neg.i = add i64 %.0.lcssa.i.i, %i.r
  %i.bx = sub i64 %.neg.i, %i.bs                  ; 2 uses
  %i.by = and i64 %i.bx, 2147483648
  %.not114 = icmp eq i64 %i.by, 0
  br i1 %.not114, label %bb.t, label %get_var_int.exit.thread

bb.t:                                             ; preds = %decode_string.exit
  %i.bz = and i64 %i.bx, 2147483647
  %i.ca = sub i64 %i.r, %i.bz
  %i.cb = tail call ptr @reftable_buf_detach(ptr noundef %6) #17
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !20
  br label %bb.v

bb.u:                                             ; preds = %bb.i
  tail call void @abort() #18
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.m, %bb.k, %bb.i
  %.sroa.16.1 = phi i64 [ %i.ar, %bb.k ], [ %i.bb, %bb.m ], [ %i.ca, %bb.t ], [ %i.r, %bb.i ]
  %i.cd = sub i64 %4, %.sroa.16.1
  %i.ce = trunc i64 %i.cd to i32
  br label %get_var_int.exit.thread

get_var_int.exit.thread:                          ; preds = %bb.c, %bb.p, %bb.n, %bb.s, %bb.r, %get_var_int.exit.i, %decode_string.exit, %bb.a, %reftable_alloc_grow.exit, %thread-pre-split, %bb.j, %bb.l, %get_var_int.exit, %bb.v
  %.0 = phi i32 [ %i.n, %get_var_int.exit ], [ %i.ce, %bb.v ], [ -13, %thread-pre-split ], [ -3, %bb.j ], [ -3, %bb.p ], [ -3, %bb.l ], [ -13, %reftable_alloc_grow.exit ], [ -1, %bb.a ], [ -3, %decode_string.exit ], [ -3, %get_var_int.exit.i ], [ -3, %bb.r ], [ -3, %bb.s ], [ -3, %bb.n ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @reftable_ref_record_release_void(ptr nofree noundef captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  switch i32 %i.b, label %bb.c [
    i32 3, label %bb.b
    i32 2, label %reftable_ref_record_release.exit
    i32 1, label %reftable_ref_record_release.exit
    i32 0, label %reftable_ref_record_release.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef %i.d) #17
  br label %reftable_ref_record_release.exit

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #18
  unreachable

reftable_ref_record_release.exit:                 ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !29
  tail call void @reftable_free(ptr noundef %i.e) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @reftable_ref_record_is_deletion_void(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp eq i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nofree nounwind uwtable
define internal range(i32 0, 2) i32 @reftable_ref_record_equal_void(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #10 {
bb.a:
  %i.a = tail call i32 @reftable_ref_record_equal(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @reftable_ref_record_cmp_void(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = load ptr, ptr %1, align 8, !tbaa !29
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #19
  ret i32 %i.c
}

declare void @reftable_buf_reset(ptr noundef) local_unnamed_addr #6

declare i32 @reftable_buf_addstr(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare ptr @reftable_strdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

declare ptr @reftable_realloc(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decode_string(ptr noundef %0, ptr %1, i64 %2) unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %get_var_int.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !20      ; 2 uses
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i64                 ; 2 uses
  %.01928.i = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.not2229.i = icmp sgt i8 %i.a, -1
  br i1 %.not2229.i, label %get_var_int.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.01931.i = phi ptr [ %.01928.i, %.lr.ph.i ], [ %.019.i, %bb.d ] ; 3 uses
  %.030.i = phi i64 [ %i.c, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %or.cond.i = icmp ult i64 %.030.i, 144115188075855871
  %.not24.i = icmp ult ptr %.01931.i, %i.d
  %or.cond25.i = select i1 %or.cond.i, i1 %.not24.i, i1 false
  br i1 %or.cond25.i, label %bb.d, label %get_var_int.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %.01931.i, align 1, !tbaa !20 ; 2 uses
  %i.f = shl nuw i64 %.030.i, 7
  %i.g = add nuw i64 %i.f, 128
  %i.h = and i8 %i.e, 127
  %i.i = zext nneg i8 %i.h to i64
  %i.j = or disjoint i64 %i.g, %i.i               ; 2 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.01931.i, i64 1 ; 2 uses
  %.not22.i = icmp sgt i8 %i.e, -1
  br i1 %.not22.i, label %get_var_int.exit, label %bb.c, !llvm.loop !0

get_var_int.exit:                                 ; preds = %bb.d, %bb.b
  %.0.lcssa.i = phi i64 [ %i.c, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.019.lcssa.i = phi ptr [ %.01928.i, %bb.b ], [ %.019.i, %bb.d ]
  %i.k = ptrtoint ptr %.019.lcssa.i to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %get_var_int.exit.thread, label %bb.e

bb.e:                                             ; preds = %get_var_int.exit
  %i.p = and i64 %i.m, 2147483647                 ; 2 uses
  %i.q = sub i64 %2, %i.p                         ; 2 uses
  %i.r = icmp ult i64 %i.q, %.0.lcssa.i
  br i1 %i.r, label %get_var_int.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  tail call void @reftable_buf_reset(ptr noundef %0) #17
  %i.t = tail call i32 @reftable_buf_add(ptr noundef %0, ptr noundef nonnull %i.s, i64 noundef %.0.lcssa.i) #17 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %get_var_int.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.neg = add i64 %.0.lcssa.i, %2
  %i.v = sub i64 %.neg, %i.q
  %i.w = trunc i64 %i.v to i32
  br label %get_var_int.exit.thread

get_var_int.exit.thread:                          ; preds = %bb.c, %bb.a, %bb.f, %bb.e, %get_var_int.exit, %bb.g
  %.0 = phi i32 [ %i.w, %bb.g ], [ -1, %get_var_int.exit ], [ -1, %bb.e ], [ %i.t, %bb.f ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.0
}

declare ptr @reftable_buf_detach(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @reftable_log_record_key(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !31
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  tail call void @reftable_buf_reset(ptr noundef %1) #17
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = shl i64 %i.c, 32
  %sext = add i64 %i.e, 4294967296
  %i.f = ashr exact i64 %sext, 32
  %i.g = tail call i32 @reftable_buf_add(ptr noundef %1, ptr noundef %i.d, i64 noundef %i.f) #17 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
  %i.k = xor i64 %i.j, -1
  %2 = bitcast i64 %i.k to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.a, align 8, !tbaa !20
  %i.l = call i32 @reftable_buf_add(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 8) #17
  %. = call i32 @llvm.smin.i32(i32 %i.l, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.a ], [ %., %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -13, 1) i32 @reftable_log_record_copy_from(ptr nofree noundef captures(none) initializes((8, 24), (28, 96), (112, 128), (136, 144)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  tail call void @reftable_free(ptr noundef %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !32
  %cond.i = icmp eq i32 %i.c, 1
  br i1 %cond.i, label %bb.b, label %reftable_log_record_release.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef %i.e) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef %i.g) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef %i.i) #17
  br label %reftable_log_record_release.exit

reftable_log_record_release.exit:                 ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false), !tbaa.struct !59
  %i.j = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %reftable_log_record_release.exit
  %i.k = tail call ptr @reftable_strdup(ptr noundef nonnull %i.j) #17 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !31
  %.not32 = icmp eq ptr %i.k, null
  br i1 %.not32, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c, %reftable_log_record_release.exit
  %i.l = load i32, ptr %i.b, align 8, !tbaa !32
  %cond = icmp eq i32 %i.l, 1
  br i1 %cond, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %.not33 = icmp eq ptr %i.o, null
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @reftable_strdup(ptr noundef nonnull %i.o) #17
  store ptr %i.p, ptr %i.n, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %.not34 = icmp eq ptr %i.r, null
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @reftable_strdup(ptr noundef nonnull %i.r) #17
  store ptr %i.s, ptr %i.q, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %.not35 = icmp eq ptr %i.u, null
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @reftable_strdup(ptr noundef nonnull %i.u) #17 ; 2 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !20
  %i.w = icmp eq ptr %i.v, null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not38 = phi i1 [ %i.w, %bb.j ], [ true, %bb.i ]
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !20
  %.not36 = icmp eq ptr %i.x, null
  br i1 %.not36, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !20
  %.not37 = icmp eq ptr %i.y, null
  %brmerge = select i1 %.not37, i1 true, i1 %.not38
  br i1 %brmerge, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = zext i32 %2 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.z, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.ac, i64 %i.aa, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.d, %bb.k, %bb.c
  %.0 = phi i32 [ -13, %bb.k ], [ -13, %bb.c ], [ 0, %bb.m ], [ -13, %bb.l ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext range(i8 0, 2) i8 @reftable_log_record_val_type(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i8
  ret i8 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @reftable_log_record_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree writeonly captures(none) %1, i64 %2, i32 noundef %3) #2 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 6 uses
  %i.c = alloca [10 x i8], align 1                ; 6 uses
  %i.d = alloca [10 x i8], align 1                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %encode_string.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %3, 1                            ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = icmp ult i64 %2, %i.h
  br i1 %i.i, label %encode_string.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = zext i32 %3 to i64                       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.k, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 8 %i.j, i64 %i.l, i1 false)
  %i.n = sext i32 %i.g to i64                     ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n ; 3 uses
  %i.p = sub i64 %2, %i.n                         ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %.not39 = icmp eq ptr %i.r, null
  %spec.select = select i1 %.not39, ptr @.str.2, ptr %i.r ; 2 uses
  %i.s = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select) #19 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.t = trunc i64 %i.s to i8
  %i.u = and i8 %i.t, 127
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 %i.u, ptr %i.v, align 1, !tbaa !20
  %i.w = lshr i64 %i.s, 7                         ; 2 uses
  %.not15.i.i = icmp eq i64 %i.w, 0
  br i1 %.not15.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.x = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %i.w, %bb.c ]
  %.016.i.i = phi i32 [ %i.ab, %.lr.ph.i.i ], [ 9, %bb.c ]
  %i.y = add nsw i64 %i.x, -1                     ; 2 uses
  %i.z = trunc i64 %i.y to i8
  %i.aa = or i8 %i.z, -128
  %i.ab = add i32 %.016.i.i, -1                   ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !20
  %i.ae = lshr i64 %i.y, 7                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ 9, %bb.c ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %i.af = sub nsw i64 10, %.0.lcssa.i.i           ; 4 uses
  %i.ag = icmp ult i64 %i.p, %i.af
  br i1 %i.ag, label %put_var_int.exit.thread.i, label %put_var_int.exit.i

put_var_int.exit.thread.i:                        ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %encode_string.exit.thread

put_var_int.exit.i:                               ; preds = %._crit_edge.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.ah, i64 %i.af, i1 false)
  %i.ai = trunc i64 %i.af to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %encode_string.exit.thread, label %bb.d

bb.d:                                             ; preds = %put_var_int.exit.i
  %i.ak = and i64 %i.af, 2147483647               ; 2 uses
  %i.al = sub i64 %i.p, %i.ak                     ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.s
  br i1 %i.am, label %encode_string.exit.thread, label %encode_string.exit
end_hunk_0
