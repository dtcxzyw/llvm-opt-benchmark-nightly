Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/record?download=true
inline.NumInlined: 118
inline.NumDeleted: 12
begin_hunk_0_@reftable_record_equal:bb.a
switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 2309, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %switch.hole_check
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.reftable_record_equal, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  %.0.i6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %switch.load, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %.0.i7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = tail call i32 %i.f(ptr noundef nonnull %.0.i6, ptr noundef nonnull %.0.i7, i32 noundef %2) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %i.g, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @reftable_ref_record_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  %spec.select.i = select i1 %.not.i, ptr @.str.2, ptr %i.a
  %.not9.i = icmp eq ptr %i.b, null
  %.0.i = select i1 %.not9.i, ptr @.str.2, ptr %i.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i, ptr noundef nonnull dereferenceable(1) %.0.i) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %.not19 = icmp eq i64 %i.e, %i.g
  br i1 %.not19, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !23
  %.not20 = icmp eq i32 %i.i, %i.k
  br i1 %.not20, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  switch i32 %i.i, label %bb.i [
    i32 3, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.h
    i32 0, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.o) #19
  %.not22 = icmp eq i32 %i.p, 0
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = zext i32 %2 to i64                       ; 2 uses
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.q, ptr nonnull readonly %i.r, i64 %i.s)
  %.not.i24.not = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i24.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %bcmp.i26 = tail call i32 @bcmp(ptr nonnull readonly %i.t, ptr nonnull readonly %i.u, i64 %i.s)
  %.not.i27 = icmp eq i32 %bcmp.i26, 0
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = zext i32 %2 to i64
  %bcmp.i29 = tail call i32 @bcmp(ptr nonnull readonly %i.v, ptr nonnull readonly %i.w, i64 %i.x)
  %.not.i30 = icmp eq i32 %bcmp.i29, 0
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  tail call void @abort() #18
  unreachable

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b, %bb.c, %bb.a, %bb.h, %bb.e
  %.0.shrunk = phi i1 [ false, %bb.a ], [ %.not22, %bb.e ], [ false, %bb.b ], [ %.not.i30, %bb.h ], [ %.not.i27, %bb.g ], [ false, %bb.c ], [ false, %bb.f ], [ true, %bb.d ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @reftable_ref_record_compare_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = load ptr, ptr %1, align 8, !tbaa !29
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #19
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @reftable_ref_record_is_deletion(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = icmp eq i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @reftable_log_record_compare_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = load ptr, ptr %1, align 8, !tbaa !30
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #19 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %i.e, %i.g
  %i.j = zext i1 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ %i.c, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @reftable_log_record_is_deletion(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = icmp eq i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @reftable_record_init(ptr noundef initializes((0, 152)) %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false)
  store i8 %1, ptr %0, align 8, !tbaa !34
  switch i8 %1, label %bb.c [
    i8 114, label %bb.d
    i8 103, label %bb.d
    i8 111, label %bb.d
    i8 105, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @reftable_buf_init(ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ -6, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @reftable_buf_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal i32 @reftable_ref_record_key(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #5 {
bb.a:
  tail call void @reftable_buf_reset(ptr noundef %1) #17
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = tail call i32 @reftable_buf_addstr(ptr noundef %1, ptr noundef %i.a) #17
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 -13, 1) i32 @reftable_ref_record_copy_from(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #5 {
bb.a:
  %.0.copyload69 = load ptr, ptr %0, align 1      ; 6 uses
  store ptr null, ptr %0, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.0.copyload71 = load i64, ptr %i.a, align 1    ; 4 uses
  store i64 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  switch i32 %i.c, label %bb.c [
    i32 3, label %bb.b
    i32 2, label %reftable_ref_record_release.exit
    i32 1, label %reftable_ref_record_release.exit
    i32 0, label %reftable_ref_record_release.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  tail call void @reftable_free(ptr noundef %i.e) #17
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  br label %reftable_ref_record_release.exit

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #18
  unreachable

reftable_ref_record_release.exit:                 ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %i.f = phi ptr [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %.pre, %bb.b ]
  tail call void @reftable_free(ptr noundef %i.f) #17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false)
  store ptr %.0.copyload69, ptr %0, align 8
  store i64 %.0.copyload71, ptr %i.a, align 8
  %i.h = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %reftable_ref_record_release.exit
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #19 ; 3 uses
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = icmp ugt i64 %i.j, %.0.copyload71
  br i1 %i.k, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.l = shl i64 %.0.copyload71, 1
  %i.m = or disjoint i64 %i.l, 1
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.j) ; 2 uses
  %i.n = tail call ptr @reftable_realloc(ptr noundef %.0.copyload69, i64 noundef %spec.select.i) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %reftable_alloc_grow.exit, label %.thread86

.thread86:                                        ; preds = %bb.e
  store ptr %i.n, ptr %0, align 8, !tbaa !29
  store i64 %spec.select.i, ptr %i.a, align 8, !tbaa !47
  %.pre91 = load ptr, ptr %1, align 8, !tbaa !29
  br label %bb.f

reftable_alloc_grow.exit:                         ; preds = %bb.e
  store ptr %.0.copyload69, ptr %0, align 8, !tbaa !29
  tail call void @reftable_free(ptr noundef %.0.copyload69) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.thread89

thread-pre-split:                                 ; preds = %bb.d
  store i64 %.0.copyload71, ptr %i.a, align 8, !tbaa !47
  %.not76 = icmp eq ptr %.0.copyload69, null
  br i1 %.not76, label %.thread89, label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %.thread86
  %i.o = phi ptr [ %.pre91, %.thread86 ], [ %i.h, %thread-pre-split ]
  %i.p = phi ptr [ %i.n, %.thread86 ], [ %.0.copyload69, %thread-pre-split ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.o, i64 %i.i, i1 false)
  %i.q = load ptr, ptr %0, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 0, ptr %i.r, align 1, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %reftable_ref_record_release.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.u, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  store i32 %i.w, ptr %i.b, align 8, !tbaa !23
  switch i32 %i.w, label %bb.k [
    i32 3, label %bb.j
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.y, i64 %i.z, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = zext i32 %2 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ab, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ae, i64 %i.ac, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = tail call ptr @reftable_strdup(ptr noundef %i.ag) #17 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !18
  %.not77 = icmp eq ptr %i.ah, null
  br i1 %.not77, label %.thread89, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  br label %.thread89

.thread89:                                        ; preds = %reftable_alloc_grow.exit, %thread-pre-split, %bb.k, %bb.j
  %.1 = phi i32 [ 0, %bb.k ], [ -13, %bb.j ], [ -13, %thread-pre-split ], [ -13, %reftable_alloc_grow.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @reftable_ref_record_val_type(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = trunc i32 %i.b to i8
  ret i8 %i.c
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @reftable_ref_record_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree writeonly captures(none) %1, i64 %2, i32 noundef %3) #10 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.e = trunc i64 %i.d to i8
  %i.f = and i8 %i.e, 127
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.f, ptr %i.g, align 1, !tbaa !18
  %i.h = lshr i64 %i.d, 7                         ; 2 uses
  %.not15.i = icmp eq i64 %i.h, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.h, %bb.a ]
  %.016.i = phi i32 [ %i.m, %.lr.ph.i ], [ 9, %bb.a ]
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %i.k = trunc i64 %i.j to i8
  %i.l = or i8 %i.k, -128
  %i.m = add i32 %.016.i, -1                      ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  store i8 %i.l, ptr %i.o, align 1, !tbaa !18
  %i.p = lshr i64 %i.j, 7                         ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 9, %bb.a ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.q = sub nsw i64 10, %.0.lcssa.i              ; 4 uses
  %i.r = icmp ult i64 %2, %i.q
  br i1 %i.r, label %put_var_int.exit.thread, label %put_var_int.exit

put_var_int.exit.thread:                          ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %encode_string.exit.thread

put_var_int.exit:                                 ; preds = %._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.s, i64 %i.q, i1 false)
  %i.t = trunc i64 %i.q to i32                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %encode_string.exit.thread, label %bb.b

bb.b:                                             ; preds = %put_var_int.exit
  %i.v = and i64 %i.q, 2147483647                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 5 uses
  %i.x = sub i64 %2, %i.v                         ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !23
  switch i32 %i.z, label %bb.j [
    i32 3, label %bb.c
    i32 2, label %bb.f
    i32 1, label %bb.h
    i32 0, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ac = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ab) #19 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = and i8 %i.ad, 127
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !18
  %i.ag = lshr i64 %i.ac, 7                       ; 2 uses
  %.not15.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not15.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.ah = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %i.ag, %bb.c ]
  %.016.i.i = phi i32 [ %i.al, %.lr.ph.i.i ], [ 9, %bb.c ]
  %i.ai = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = or i8 %i.aj, -128
  %i.al = add i32 %.016.i.i, -1                   ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !18
  %i.ao = lshr i64 %i.ai, 7                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !22

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ 9, %bb.c ], [ %i.am, %.lr.ph.i.i ] ; 2 uses
  %i.ap = sub nsw i64 10, %.0.lcssa.i.i           ; 4 uses
  %i.aq = icmp ult i64 %i.x, %i.ap
  br i1 %i.aq, label %put_var_int.exit.thread.i, label %put_var_int.exit.i

put_var_int.exit.thread.i:                        ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %encode_string.exit.thread

put_var_int.exit.i:                               ; preds = %._crit_edge.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.ar, i64 %i.ap, i1 false)
  %i.as = trunc i64 %i.ap to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %encode_string.exit.thread, label %bb.d

bb.d:                                             ; preds = %put_var_int.exit.i
  %i.au = and i64 %i.ap, 2147483647               ; 2 uses
  %i.av = sub i64 %i.x, %i.au                     ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.ac
  br i1 %i.aw, label %encode_string.exit.thread, label %encode_string.exit

encode_string.exit:                               ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr nonnull readonly align 1 %i.ab, i64 %i.ac, i1 false)
  %.neg.i = add i64 %i.ac, %i.x
  %i.ay = sub i64 %.neg.i, %i.av                  ; 2 uses
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %encode_string.exit.thread, label %bb.e

bb.e:                                             ; preds = %encode_string.exit
  %i.bb = and i64 %i.ay, 2147483647
  %i.bc = sub i64 %i.x, %i.bb
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.bd = shl i32 %3, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp ult i64 %i.x, %i.be
  br i1 %i.bf, label %encode_string.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = zext i32 %3 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 8 %i.bg, i64 %i.bh, i1 false)
  %i.bi = sext i32 %3 to i64                      ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.w, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 8 %i.bk, i64 %i.bh, i1 false)
  %i.bl = shl nsw i64 %i.bi, 1
  %i.bm = sub i64 %i.x, %i.bl
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.bn = zext i32 %3 to i64                      ; 2 uses
  %i.bo = icmp ult i64 %i.x, %i.bn
  br i1 %i.bo, label %encode_string.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 8 %i.bp, i64 %i.bn, i1 false)
  %i.bq = zext i32 %3 to i64
  %i.br = sub i64 %i.x, %i.bq
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  tail call void @abort() #18
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.b
  %.sroa.16.0 = phi i64 [ %i.bc, %bb.e ], [ %i.bm, %bb.g ], [ %i.br, %bb.i ], [ %i.x, %bb.b ]
  %i.bs = sub i64 %2, %.sroa.16.0
  %i.bt = trunc i64 %i.bs to i32
  br label %encode_string.exit.thread

encode_string.exit.thread:                        ; preds = %put_var_int.exit.thread.i, %bb.d, %put_var_int.exit.i, %put_var_int.exit.thread, %bb.h, %bb.f, %encode_string.exit, %put_var_int.exit, %bb.k
  %.0 = phi i32 [ -11, %bb.f ], [ %i.t, %put_var_int.exit ], [ %i.bt, %bb.k ], [ %i.az, %encode_string.exit ], [ -11, %bb.h ], [ -11, %put_var_int.exit.thread ], [ -11, %put_var_int.exit.thread.i ], [ -11, %bb.d ], [ %i.as, %put_var_int.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @reftable_ref_record_decode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.reftable_buf) align 8 captures(none) %1, i8 noundef zeroext %2, ptr %3, i64 %4, i32 noundef %5, ptr noundef %6) #5 {
bb.a:
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %get_var_int.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %3, align 1, !tbaa !18      ; 2 uses
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i64                 ; 2 uses
  %.01928.i = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.not2229.i = icmp sgt i8 %i.a, -1
  br i1 %.not2229.i, label %get_var_int.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.01931.i = phi ptr [ %.01928.i, %.lr.ph.i ], [ %.019.i, %bb.d ] ; 3 uses
  %.030.i = phi i64 [ %i.c, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %or.cond.i = icmp ult i64 %.030.i, 144115188075855871
  %.not24.i = icmp ult ptr %.01931.i, %i.d
  %or.cond25.i = select i1 %or.cond.i, i1 %.not24.i, i1 false
  br i1 %or.cond25.i, label %bb.d, label %get_var_int.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %.01931.i, align 1, !tbaa !18 ; 2 uses
  %i.f = shl nuw i64 %.030.i, 7
  %i.g = add nuw i64 %i.f, 128
  %i.h = and i8 %i.e, 127
  %i.i = zext nneg i8 %i.h to i64
  %i.j = or disjoint i64 %i.g, %i.i               ; 2 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.01931.i, i64 1 ; 2 uses
  %.not22.i = icmp sgt i8 %i.e, -1
  br i1 %.not22.i, label %get_var_int.exit, label %bb.c, !llvm.loop !19

get_var_int.exit:                                 ; preds = %bb.d, %bb.b
  %.0.lcssa.i = phi i64 [ %i.c, %bb.b ], [ %i.j, %bb.d ]
  %.019.lcssa.i = phi ptr [ %.01928.i, %bb.b ], [ %.019.i, %bb.d ]
  %i.k = ptrtoint ptr %.019.lcssa.i to i64
  %i.l = ptrtoint ptr %3 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %get_var_int.exit.thread, label %bb.e

bb.e:                                             ; preds = %get_var_int.exit
  %i.p = and i64 %i.m, 2147483647                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %i.p ; 7 uses
  %i.r = sub i64 %4, %i.p                         ; 9 uses
  %.0.copyload67 = load ptr, ptr %0, align 1      ; 6 uses
  store ptr null, ptr %0, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.0.copyload69 = load i64, ptr %i.s, align 1    ; 4 uses
  store i64 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !23
  switch i32 %i.u, label %bb.g [
    i32 3, label %bb.f
    i32 2, label %reftable_ref_record_release.exit
    i32 1, label %reftable_ref_record_release.exit
    i32 0, label %reftable_ref_record_release.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  tail call void @reftable_free(ptr noundef %i.w) #17
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  br label %reftable_ref_record_release.exit

bb.g:                                             ; preds = %bb.e
  tail call void @abort() #18
  unreachable

reftable_ref_record_release.exit:                 ; preds = %bb.e, %bb.e, %bb.e, %bb.f
  %i.x = phi ptr [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ %.pre, %bb.f ]
  tail call void @reftable_free(ptr noundef %i.x) #17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.y, i8 0, i64 80, i1 false)
  store ptr %.0.copyload67, ptr %0, align 8
  store i64 %.0.copyload69, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !25  ; 3 uses
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %.0.copyload69
  br i1 %i.ac, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %reftable_ref_record_release.exit
  %i.ad = shl i64 %.0.copyload69, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.ab) ; 2 uses
  %i.af = tail call ptr @reftable_realloc(ptr noundef %.0.copyload67, i64 noundef %spec.select.i) #17 ; 3 uses
  %.not.i77 = icmp eq ptr %i.af, null
  br i1 %.not.i77, label %reftable_alloc_grow.exit, label %.thread107

.thread107:                                       ; preds = %bb.h
  store ptr %i.af, ptr %0, align 8, !tbaa !29
  store i64 %spec.select.i, ptr %i.s, align 8, !tbaa !47
  br label %bb.i

reftable_alloc_grow.exit:                         ; preds = %bb.h
  store ptr %.0.copyload67, ptr %0, align 8, !tbaa !29
  tail call void @reftable_free(ptr noundef %.0.copyload67) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %get_var_int.exit.thread

thread-pre-split:                                 ; preds = %reftable_ref_record_release.exit
  store i64 %.0.copyload69, ptr %i.s, align 8, !tbaa !47
  %.not = icmp eq ptr %.0.copyload67, null
  br i1 %.not, label %get_var_int.exit.thread, label %bb.i

bb.i:                                             ; preds = %.thread107, %thread-pre-split
  %i.ag = phi ptr [ %i.af, %.thread107 ], [ %.0.copyload67, %thread-pre-split ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.ai, i64 %i.aa, i1 false)
  %i.aj = load ptr, ptr %0, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aa
  store i8 0, ptr %i.ak, align 1, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.0.lcssa.i, ptr %i.al, align 8, !tbaa !46
  %i.am = zext i8 %2 to i32
  store i32 %i.am, ptr %i.t, align 8, !tbaa !23
  switch i8 %2, label %bb.u [
    i8 1, label %bb.j
    i8 2, label %bb.l
    i8 3, label %bb.n
    i8 0, label %bb.v
  ]

bb.j:                                             ; preds = %bb.i
  %i.an = zext i32 %5 to i64                      ; 2 uses
  %i.ao = icmp ult i64 %i.r, %i.an
  br i1 %i.ao, label %get_var_int.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 1 %i.q, i64 %i.an, i1 false)
  %i.aq = zext i32 %5 to i64
  %i.ar = sub i64 %i.r, %i.aq
  br label %bb.v

bb.l:                                             ; preds = %bb.i
  %i.as = shl i32 %5, 1
  %i.at = zext i32 %i.as to i64
  %i.au = icmp ult i64 %i.r, %i.at
  br i1 %i.au, label %get_var_int.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = zext i32 %5 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 1 %i.q, i64 %i.aw, i1 false)
  %i.ax = sext i32 %5 to i64                      ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.q, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 1 %i.ay, i64 %i.aw, i1 false)
  %i.ba = shl nsw i64 %i.ax, 1
  %i.bb = sub i64 %i.r, %i.ba
  br label %bb.v

bb.n:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %get_var_int.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %i.q, align 1, !tbaa !18   ; 2 uses
  %i.bd = and i8 %i.bc, 127
  %i.be = zext nneg i8 %i.bd to i64               ; 2 uses
  %.01928.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not2229.i.i = icmp sgt i8 %i.bc, -1
  br i1 %.not2229.i.i, label %get_var_int.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %4
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.01931.i.i = phi ptr [ %.01928.i.i, %.lr.ph.i.i ], [ %.019.i.i, %bb.q ] ; 3 uses
  %.030.i.i = phi i64 [ %i.be, %.lr.ph.i.i ], [ %i.bl, %bb.q ] ; 2 uses
  %or.cond.i.i = icmp ult i64 %.030.i.i, 144115188075855871
  %.not24.i.i = icmp ult ptr %.01931.i.i, %i.bf
  %or.cond25.i.i = select i1 %or.cond.i.i, i1 %.not24.i.i, i1 false
  br i1 %or.cond25.i.i, label %bb.q, label %get_var_int.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bg = load i8, ptr %.01931.i.i, align 1, !tbaa !18 ; 2 uses
  %i.bh = shl nuw i64 %.030.i.i, 7
  %i.bi = add nuw i64 %i.bh, 128
  %i.bj = and i8 %i.bg, 127
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = or disjoint i64 %i.bi, %i.bk            ; 2 uses
  %.019.i.i = getelementptr inbounds nuw i8, ptr %.01931.i.i, i64 1 ; 2 uses
  %.not22.i.i = icmp sgt i8 %i.bg, -1
  br i1 %.not22.i.i, label %get_var_int.exit.i, label %bb.p, !llvm.loop !19

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
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !18
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
end_hunk_0
