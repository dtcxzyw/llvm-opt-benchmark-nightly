Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/u-reftable-stack?download=true
inline.NumInlined: 61
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@write_nothing
define internal noundef i32 @write_nothing(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @reftable_writer_set_limits(ptr noundef %0, i64 noundef 1, i64 noundef 1) #10
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  tail call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.write_nothing, i64 noundef 915, i32 noundef 1, i32 noundef 0, i64 noundef %i.b, i64 noundef 0, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.6, i64 noundef %i.b, i64 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @test_reftable_stack__auto_compaction() local_unnamed_addr #0 {
.peel.next21:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  %1 = alloca %struct.reftable_write_options, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 16 uses
  %i.b = alloca [100 x i8], align 16              ; 12 uses
  %2 = alloca %struct.reftable_ref_record, align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 2, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.156) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = select i1 %.not.i.i, ptr @.str.158, ptr %i.d
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template, i64 noundef 1023, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.e, i32 noundef 951) #10 ; 0 uses
  %i.g = tail call ptr @mkdtemp(ptr noundef nonnull @get_tmp_template.template) #10
  %i.h = icmp ne ptr %i.g, null
  %i.i = zext i1 %i.h to i32
  tail call void @clar__assert(i32 noundef %i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_tmp_dir, i64 noundef 73, ptr noundef nonnull @.str.159, ptr noundef null, i32 noundef 1) #10
  %i.j = call i32 @reftable_new_stack(ptr noundef nonnull %i.a, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 955, i32 noundef 1, i32 noundef 0, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6, i64 noundef %i.k, i64 noundef 0) #10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %i.b, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.l, align 8, !tbaa !79
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = call i64 @reftable_stack_next_update_index(ptr noundef %i.q) #10
  store i64 %i.r, ptr %i.m, align 8, !tbaa !43
  store i32 3, ptr %i.n, align 8, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.o, i8 0, i64 68, i1 false)
  store ptr @.str.12, ptr %i.p, align 8, !tbaa !47
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.48, i64 noundef 0) #10 ; 0 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.u = call i32 @reftable_stack_add(ptr noundef %i.t, ptr noundef nonnull @write_test_ref, ptr noundef nonnull %2, i32 noundef 0) #10
  %.not.peel = icmp eq i32 %i.u, 0
  %i.v = zext i1 %.not.peel to i32
  call void @clar__assert(i32 noundef %i.v, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 968, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = call i32 @reftable_stack_auto_compact(ptr noundef %i.w) #10
  %.not15.peel = icmp eq i32 %i.x, 0
  %i.y = zext i1 %.not15.peel to i32
  call void @clar__assert(i32 noundef %i.y, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 971, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  call void @clar__assert(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 972, ptr noundef nonnull @.str.113, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %i.b, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.l, align 8, !tbaa !79
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aa = call i64 @reftable_stack_next_update_index(ptr noundef %i.z) #10
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !43
  store i32 3, ptr %i.n, align 8, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.o, i8 0, i64 68, i1 false)
  store ptr @.str.12, ptr %i.p, align 8, !tbaa !47
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.48, i64 noundef 1) #10 ; 0 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ad = call i32 @reftable_stack_add(ptr noundef %i.ac, ptr noundef nonnull @write_test_ref, ptr noundef nonnull %2, i32 noundef 0) #10
  %.not.peel22 = icmp eq i32 %i.ad, 0
  %i.ae = zext i1 %.not.peel22 to i32
  call void @clar__assert(i32 noundef %i.ae, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 968, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = call i32 @reftable_stack_auto_compact(ptr noundef %i.af) #10
  %.not15.peel23 = icmp eq i32 %i.ag, 0
  %i.ah = zext i1 %.not15.peel23 to i32
  call void @clar__assert(i32 noundef %i.ah, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 971, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  call void @clar__assert(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 972, ptr noundef nonnull @.str.113, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.a

bb.a:                                             ; preds = %.peel.next21, %bb.a
  %.020 = phi i64 [ 2, %.peel.next21 ], [ %i.bc, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %i.b, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.l, align 8, !tbaa !79
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aj = call i64 @reftable_stack_next_update_index(ptr noundef %i.ai) #10
  store i64 %i.aj, ptr %i.m, align 8, !tbaa !43
  store i32 3, ptr %i.n, align 8, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.o, i8 0, i64 68, i1 false)
  store ptr @.str.12, ptr %i.p, align 8, !tbaa !47
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.48, i64 noundef %.020) #10 ; 0 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.am = call i32 @reftable_stack_add(ptr noundef %i.al, ptr noundef nonnull @write_test_ref, ptr noundef nonnull %2, i32 noundef 0) #10
  %.not = icmp eq i32 %i.am, 0
  %i.an = zext i1 %.not to i32
  call void @clar__assert(i32 noundef %i.an, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 968, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ap = call i32 @reftable_stack_auto_compact(ptr noundef %i.ao) #10
  %.not15 = icmp eq i32 %i.ap, 0
  %i.aq = zext i1 %.not15 to i32
  call void @clar__assert(i32 noundef %i.aq, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 971, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 232
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !50
  %i.aw = lshr i64 %.020, 1
  %i.ax = call range(i64 2, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false)
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %i.az = sub nuw nsw i64 128, %i.ay
  %i.ba = icmp ult i64 %i.av, %i.az
  %i.bb = zext i1 %i.ba to i32
  call void @clar__assert(i32 noundef %i.bb, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 972, ptr noundef nonnull @.str.113, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.bc = add nuw nsw i64 %.020, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, 100
  br i1 %exitcond.not, label %fastlogN.exit19, label %bb.a, !llvm.loop !78

fastlogN.exit19:                                  ; preds = %bb.a
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.be = call ptr @reftable_stack_compaction_stats(ptr noundef %i.bd) #10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !81
  %i.bh = icmp ult i64 %i.bg, 600
  %i.bi = zext i1 %i.bh to i32
  call void @clar__assert(i32 noundef %i.bi, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction, i64 noundef 976, ptr noundef nonnull @.str.114, ptr noundef null, i32 noundef 1) #10
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.bj) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template) #11
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @get_tmp_template.template, i64 noundef %i.bk) #10
  %i.bl = call i32 @remove_dir_recursively(ptr noundef nonnull %0, i32 noundef 0) #10 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

declare i32 @reftable_stack_auto_compact(ptr noundef) local_unnamed_addr #2

declare ptr @reftable_stack_compaction_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @test_reftable_stack__auto_compaction_factor() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  %1 = alloca %struct.reftable_write_options, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca [20 x i8], align 16               ; 4 uses
  %2 = alloca %struct.reftable_ref_record, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 5, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.156) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = select i1 %.not.i.i, ptr @.str.158, ptr %i.d
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template, i64 noundef 1023, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.e, i32 noundef 988) #10 ; 0 uses
  %i.g = tail call ptr @mkdtemp(ptr noundef nonnull @get_tmp_template.template) #10
  %i.h = icmp ne ptr %i.g, null
  %i.i = zext i1 %i.h to i32
  tail call void @clar__assert(i32 noundef %i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_tmp_dir, i64 noundef 73, ptr noundef nonnull @.str.159, ptr noundef null, i32 noundef 1) #10
  %i.j = call i32 @reftable_new_stack(ptr noundef nonnull %i.a, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_factor, i64 noundef 992, i32 noundef 1, i32 noundef 0, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6, i64 noundef %i.k, i64 noundef 0) #10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.o) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template) #11
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @get_tmp_template.template, i64 noundef %i.p) #10
  %i.q = call i32 @remove_dir_recursively(ptr noundef nonnull %0, i32 noundef 0) #10 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void

bb.c:                                             ; preds = %bb.a, %bb.e
  %.012 = phi i64 [ 0, %bb.a ], [ %i.ae, %bb.e ]  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, i8 0, i64 88, i1 false)
  store ptr %i.b, ptr %2, align 8, !tbaa !21
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.s = call i64 @reftable_stack_next_update_index(ptr noundef %i.r) #10
  store i64 %i.s, ptr %i.l, align 8, !tbaa !43
  store i32 1, ptr %i.m, align 8, !tbaa !46
  %i.t = call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.b, i64 noundef 20, ptr noundef nonnull @.str.48, i64 noundef %.012) #10 ; 0 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.v = call i32 @reftable_stack_add(ptr noundef %i.u, ptr noundef nonnull @write_test_ref, ptr noundef nonnull %2, i32 noundef 0) #10
  %.not = icmp eq i32 %i.v, 0
  %i.w = zext i1 %.not to i32
  call void @clar__assert(i32 noundef %i.w, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_factor, i64 noundef 1004, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.x = icmp samesign ult i64 %.012, 5
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !50
  %.not.i.1 = icmp samesign ult i64 %.012, 25
  %.not.i.2 = icmp samesign ult i64 %.012, 125
  %spec.select = select i1 %.not.i.2, i64 10, i64 15
  %.011.i.lcssa = select i1 %.not.i.1, i64 5, i64 %spec.select
  %3 = icmp ult i64 %i.ac, %.011.i.lcssa
  %4 = zext i1 %3 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = phi i32 [ 1, %bb.c ], [ %4, %bb.d ]
  call void @clar__assert(i32 noundef %i.ad, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_factor, i64 noundef 1006, ptr noundef nonnull @.str.115, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.ae = add nuw nsw i64 %.012, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, 100
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !82
}

declare i32 @xsnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @test_reftable_stack__auto_compaction_with_locked_tables() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  %1 = alloca %struct.reftable_write_options, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %2 = alloca %struct.reftable_buf, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 2, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.156) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %i.d = select i1 %.not.i.i, ptr @.str.158, ptr %i.c
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template, i64 noundef 1023, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.d, i32 noundef 1020) #10 ; 0 uses
  %i.f = tail call ptr @mkdtemp(ptr noundef nonnull @get_tmp_template.template) #10
  %i.g = icmp ne ptr %i.f, null
  %i.h = zext i1 %i.g to i32
  tail call void @clar__assert(i32 noundef %i.h, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_tmp_dir, i64 noundef 73, ptr noundef nonnull @.str.159, ptr noundef null, i32 noundef 1) #10
  %i.i = call i32 @reftable_new_stack(ptr noundef nonnull %i.a, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_with_locked_tables, i64 noundef 1023, i32 noundef 1, i32 noundef 0, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6, i64 noundef %i.j, i64 noundef 0) #10
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !18
  call fastcc void @write_n_ref_tables(ptr noundef %i.k, i64 noundef 5)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_with_locked_tables, i64 noundef 1026, i32 noundef 1, i32 noundef 0, i64 noundef %i.p, i64 noundef 5, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.6, i64 noundef %i.p, i64 noundef 5) #10
  %i.q = call i32 @reftable_buf_addstr(ptr noundef nonnull %2, ptr noundef nonnull @get_tmp_template.template) #10
  %.not = icmp eq i32 %i.q, 0
  %i.r = zext i1 %.not to i32
  call void @clar__assert(i32 noundef %i.r, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_with_locked_tables, i64 noundef 1033, ptr noundef nonnull @.str.117, ptr noundef null, i32 noundef 1) #10
  %i.s = call i32 @reftable_buf_addstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.20) #10
  %.not19 = icmp eq i32 %i.s, 0
  %i.t = zext i1 %.not19 to i32
  call void @clar__assert(i32 noundef %i.t, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_with_locked_tables, i64 noundef 1034, ptr noundef nonnull @.str.118, ptr noundef null, i32 noundef 1) #10
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = call i32 @reftable_buf_addstr(ptr noundef nonnull %2, ptr noundef %i.z) #10
  %.not20 = icmp eq i32 %i.aa, 0
  %i.ab = zext i1 %.not20 to i32
  call void @clar__assert(i32 noundef %i.ab, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_with_locked_tables, i64 noundef 1035, ptr noundef nonnull @.str.119, ptr noundef null, i32 noundef 1) #10
  %i.ac = call i32 @reftable_buf_addstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.58) #10
  %.not21 = icmp eq i32 %i.ac, 0
  %i.ad = zext i1 %.not21 to i32
  call void @clar__assert(i32 noundef %i.ad, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_with_locked_tables, i64 noundef 1036, ptr noundef nonnull @.str.120, ptr noundef null, i32 noundef 1) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  call void @write_file_buf(ptr noundef %i.af, ptr noundef nonnull @.str.60, i64 noundef 0) #10
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ah = call i32 @reftable_stack_auto_compact(ptr noundef %i.ag) #10
  %.not22 = icmp eq i32 %i.ah, 0
  %i.ai = zext i1 %.not22 to i32
  call void @clar__assert(i32 noundef %i.ai, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_with_locked_tables, i64 noundef 1046, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 260
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_with_locked_tables, i64 noundef 1047, i32 noundef 1, i32 noundef 0, i64 noundef %i.am, i64 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.6, i64 noundef %i.am, i64 noundef 0) #10
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 232
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__auto_compaction_with_locked_tables, i64 noundef 1048, i32 noundef 1, i32 noundef 0, i64 noundef %i.ar, i64 noundef 4, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.6, i64 noundef %i.ar, i64 noundef 4) #10
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.as) #10
  call void @reftable_buf_release(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template) #11
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @get_tmp_template.template, i64 noundef %i.at) #10
  %i.au = call i32 @remove_dir_recursively(ptr noundef nonnull %0, i32 noundef 0) #10 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_n_ref_tables(ptr noundef %0, i64 noundef range(i64 2, 6) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.reftable_ref_record, align 8 ; 8 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 4 uses
  %i.c = load i8, ptr %i.b, align 4               ; 2 uses
  %i.d = or i8 %i.c, 2
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = and i8 %i.c, 2
  %i.i = load i8, ptr %i.b, align 4
  %i.j = and i8 %i.i, -3
  %i.k = or disjoint i8 %i.j, %i.h
  store i8 %i.k, ptr %i.b, align 4
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.014 = phi i64 [ 0, %bb.a ], [ %i.q, %bb.c ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %i.l = call i64 @reftable_stack_next_update_index(ptr noundef nonnull %0) #10
  store i64 %i.l, ptr %i.e, align 8, !tbaa !43
  store i32 1, ptr %i.f, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.163, i64 noundef %.014) #10 ; 0 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !21
  %i.n = trunc nuw nsw i64 %.014 to i32
  call void @cl_reftable_set_hash(ptr noundef nonnull %i.g, i32 noundef %i.n, i32 noundef 89) #10
  %i.o = call i32 @reftable_stack_add(ptr noundef nonnull %0, ptr noundef nonnull @write_test_ref, ptr noundef nonnull %2, i32 noundef 0) #10
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.write_n_ref_tables, i64 noundef 131, i32 noundef 1, i32 noundef 0, i64 noundef %i.p, i64 noundef 0, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.6, i64 noundef %i.p, i64 noundef 0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.q = add nuw nsw i64 %.014, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !83
}

; Function Attrs: nounwind uwtable
define dso_local void @test_reftable_stack__add_performs_auto_compaction() local_unnamed_addr #0 {
.peel.next:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  %1 = alloca %struct.reftable_write_options, align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 15 uses
  %2 = alloca %struct.reftable_ref_record, align 8 ; 13 uses
  %i.b = alloca i8, align 1                       ; 11 uses
  %i.c = alloca [128 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.156) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = select i1 %.not.i.i, ptr @.str.158, ptr %i.d
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template, i64 noundef 1023, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.e, i32 noundef 1059) #10 ; 0 uses
  %i.g = tail call ptr @mkdtemp(ptr noundef nonnull @get_tmp_template.template) #10
  %i.h = icmp ne ptr %i.g, null
  %i.i = zext i1 %i.h to i32
  tail call void @clar__assert(i32 noundef %i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_tmp_dir, i64 noundef 73, ptr noundef nonnull @.str.159, ptr noundef null, i32 noundef 1) #10
  %i.j = call i32 @reftable_new_stack(ptr noundef nonnull %i.a, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1062, i32 noundef 1, i32 noundef 0, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6, i64 noundef %i.k, i64 noundef 0) #10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, i8 0, i64 88, i1 false)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = call i64 @reftable_stack_next_update_index(ptr noundef %i.p) #10
  store i64 %i.q, ptr %i.l, align 8, !tbaa !43
  store i32 3, ptr %i.m, align 8, !tbaa !46
  store ptr @.str.12, ptr %i.n, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i8 0, ptr %i.b, align 1, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 188 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4
  %i.u = or i8 %i.t, 2
  store i8 %i.u, ptr %i.s, align 4
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.122, i64 noundef 0) #10 ; 0 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = call i32 @reftable_stack_add(ptr noundef %i.w, ptr noundef nonnull @write_test_ref, ptr noundef nonnull %2, i32 noundef 0) #10
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1084, i32 noundef 1, i32 noundef 0, i64 noundef %i.y, i64 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.6, i64 noundef %i.y, i64 noundef 0) #10
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aa = call i32 @reftable_stack_compaction_required(ptr noundef %i.z, i1 noundef zeroext true, ptr noundef nonnull %i.b) #10
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1091, i32 noundef 1, i32 noundef 0, i64 noundef %i.ab, i64 noundef 0, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.6, i64 noundef %i.ab, i64 noundef 0) #10
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !50 ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1093, i32 noundef 1, i32 noundef 0, i64 noundef %i.ag, i64 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.6, i64 noundef %i.ag, i64 noundef 1) #10
  %i.ah = load i8, ptr %i.b, align 1, !tbaa !85, !range !86, !noundef !87
  %i.ai = zext nneg i8 %i.ah to i32
  call void (ptr, ptr, i64, ptr, i32, ptr, ...) @clar__assert_equal(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1095, ptr noundef nonnull @.str.124, i32 noundef 1, ptr noundef nonnull @.str.125, i32 noundef %i.ai, i32 noundef 0) #10
  br label %bb.a

bb.a:                                             ; preds = %bb.b, %.peel.next
  %.031 = phi i64 [ 1, %.peel.next ], [ %i.bd, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = call i64 @reftable_stack_next_update_index(ptr noundef %i.aj) #10
  store i64 %i.ak, ptr %i.l, align 8, !tbaa !43
  store i32 3, ptr %i.m, align 8, !tbaa !46
  store ptr @.str.12, ptr %i.n, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i8 0, ptr %i.b, align 1, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %.not = icmp eq i64 %.031, 20                   ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 188 ; 2 uses
  %i.an = load i8, ptr %i.am, align 4
  %i.ao = select i1 %.not, i8 0, i8 2
  %i.ap = and i8 %i.an, -3
  %i.aq = or disjoint i8 %i.ap, %i.ao
  store i8 %i.aq, ptr %i.am, align 4
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.122, i64 noundef %.031) #10 ; 0 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !21
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.at = call i32 @reftable_stack_add(ptr noundef %i.as, ptr noundef nonnull @write_test_ref, ptr noundef nonnull %2, i32 noundef 0) #10
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1084, i32 noundef 1, i32 noundef 0, i64 noundef %i.au, i64 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.6, i64 noundef %i.au, i64 noundef 0) #10
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aw = call i32 @reftable_stack_compaction_required(ptr noundef %i.av, i1 noundef zeroext true, ptr noundef nonnull %i.b) #10
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1091, i32 noundef 1, i32 noundef 0, i64 noundef %i.ax, i64 noundef 0, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.6, i64 noundef %i.ax, i64 noundef 0) #10
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !50 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bd = add nuw nsw i64 %.031, 1                ; 3 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1093, i32 noundef 1, i32 noundef 0, i64 noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.6, i64 noundef %i.bc, i64 noundef %i.bd) #10
  %i.be = load i8, ptr %i.b, align 1, !tbaa !85, !range !86, !noundef !87
  %i.bf = zext nneg i8 %i.be to i32
  call void (ptr, ptr, i64, ptr, i32, ptr, ...) @clar__assert_equal(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1097, ptr noundef nonnull @.str.126, i32 noundef 1, ptr noundef nonnull @.str.125, i32 noundef %i.bf, i32 noundef 1) #10
  br label %bb.a

bb.c:                                             ; preds = %bb.a
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1099, i32 noundef 1, i32 noundef 0, i64 noundef %i.bc, i64 noundef 1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.6, i64 noundef %i.bc, i64 noundef 1) #10
  %i.bg = load i8, ptr %i.b, align 1, !tbaa !85, !range !86, !noundef !87
  %i.bh = zext nneg i8 %i.bg to i32
  call void (ptr, ptr, i64, ptr, i32, ptr, ...) @clar__assert_equal(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__add_performs_auto_compaction, i64 noundef 1100, ptr noundef nonnull @.str.124, i32 noundef 1, ptr noundef nonnull @.str.125, i32 noundef %i.bh, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.bi) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template) #11
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @get_tmp_template.template, i64 noundef %i.bj) #10
  %i.bk = call i32 @remove_dir_recursively(ptr noundef nonnull %0, i32 noundef 0) #10 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

declare i32 @reftable_stack_compaction_required(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @test_reftable_stack__compaction_with_locked_tables() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  %1 = alloca %struct.reftable_write_options, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %2 = alloca %struct.reftable_buf, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 2, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.156) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %i.d = select i1 %.not.i.i, ptr @.str.158, ptr %i.c
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template, i64 noundef 1023, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.d, i32 noundef 1115) #10 ; 0 uses
  %i.f = tail call ptr @mkdtemp(ptr noundef nonnull @get_tmp_template.template) #10
  %i.g = icmp ne ptr %i.f, null
  %i.h = zext i1 %i.g to i32
  tail call void @clar__assert(i32 noundef %i.h, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_tmp_dir, i64 noundef 73, ptr noundef nonnull @.str.159, ptr noundef null, i32 noundef 1) #10
  %i.i = call i32 @reftable_new_stack(ptr noundef nonnull %i.a, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_with_locked_tables, i64 noundef 1118, i32 noundef 1, i32 noundef 0, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6, i64 noundef %i.j, i64 noundef 0) #10
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !18
  call fastcc void @write_n_ref_tables(ptr noundef %i.k, i64 noundef 3)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_with_locked_tables, i64 noundef 1121, i32 noundef 1, i32 noundef 0, i64 noundef %i.p, i64 noundef 3, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.6, i64 noundef %i.p, i64 noundef 3) #10
  %i.q = call i32 @reftable_buf_addstr(ptr noundef nonnull %2, ptr noundef nonnull @get_tmp_template.template) #10
  %.not = icmp eq i32 %i.q, 0
  %i.r = zext i1 %.not to i32
  call void @clar__assert(i32 noundef %i.r, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_with_locked_tables, i64 noundef 1124, ptr noundef nonnull @.str.117, ptr noundef null, i32 noundef 1) #10
  %i.s = call i32 @reftable_buf_addstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.20) #10
  %.not23 = icmp eq i32 %i.s, 0
  %i.t = zext i1 %.not23 to i32
  call void @clar__assert(i32 noundef %i.t, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_with_locked_tables, i64 noundef 1125, ptr noundef nonnull @.str.118, ptr noundef null, i32 noundef 1) #10
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = call i32 @reftable_buf_addstr(ptr noundef nonnull %2, ptr noundef %i.z) #10
  %.not24 = icmp eq i32 %i.aa, 0
  %i.ab = zext i1 %.not24 to i32
  call void @clar__assert(i32 noundef %i.ab, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_with_locked_tables, i64 noundef 1126, ptr noundef nonnull @.str.128, ptr noundef null, i32 noundef 1) #10
  %i.ac = call i32 @reftable_buf_addstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.58) #10
  %.not25 = icmp eq i32 %i.ac, 0
  %i.ad = zext i1 %.not25 to i32
  call void @clar__assert(i32 noundef %i.ad, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_with_locked_tables, i64 noundef 1127, ptr noundef nonnull @.str.120, ptr noundef null, i32 noundef 1) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  call void @write_file_buf(ptr noundef %i.af, ptr noundef nonnull @.str.60, i64 noundef 0) #10
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ah = call i32 @reftable_stack_compact_all(ptr noundef %i.ag, ptr noundef null) #10
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_with_locked_tables, i64 noundef 1135, i32 noundef 1, i32 noundef 0, i64 noundef %i.ai, i64 noundef -5, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.6, i64 noundef %i.ai, i64 noundef -5) #10
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 260
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_with_locked_tables, i64 noundef 1136, i32 noundef 1, i32 noundef 0, i64 noundef %i.am, i64 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.6, i64 noundef %i.am, i64 noundef 1) #10
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 232
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_with_locked_tables, i64 noundef 1137, i32 noundef 1, i32 noundef 0, i64 noundef %i.ar, i64 noundef 3, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.6, i64 noundef %i.ar, i64 noundef 3) #10
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.as) #10
  call void @reftable_buf_release(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template) #11
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @get_tmp_template.template, i64 noundef %i.at) #10
  %i.au = call i32 @remove_dir_recursively(ptr noundef nonnull %0, i32 noundef 0) #10 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test_reftable_stack__compaction_concurrent() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  %1 = alloca %struct.reftable_write_options, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !18
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.156) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %i.d = select i1 %.not.i.i, ptr @.str.158, ptr %i.c
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template, i64 noundef 1023, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.d, i32 noundef 1148) #10 ; 0 uses
  %i.f = tail call ptr @mkdtemp(ptr noundef nonnull @get_tmp_template.template) #10
  %i.g = icmp ne ptr %i.f, null
  %i.h = zext i1 %i.g to i32
  tail call void @clar__assert(i32 noundef %i.h, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_tmp_dir, i64 noundef 73, ptr noundef nonnull @.str.159, ptr noundef null, i32 noundef 1) #10
  %i.i = call i32 @reftable_new_stack(ptr noundef nonnull %i.a, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_concurrent, i64 noundef 1150, i32 noundef 1, i32 noundef 0, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.6, i64 noundef %i.j, i64 noundef 0) #10
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !18
  call fastcc void @write_n_ref_tables(ptr noundef %i.k, i64 noundef 3)
  %i.l = call i32 @reftable_new_stack(ptr noundef nonnull %i.b, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_concurrent, i64 noundef 1153, i32 noundef 1, i32 noundef 0, i64 noundef %i.m, i64 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.6, i64 noundef %i.m, i64 noundef 0) #10
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = call i32 @reftable_stack_compact_all(ptr noundef %i.n, ptr noundef null) #10
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_concurrent, i64 noundef 1154, i32 noundef 1, i32 noundef 0, i64 noundef %i.p, i64 noundef 0, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.6, i64 noundef %i.p, i64 noundef 0) #10
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.q) #10
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.r) #10
  %i.s = call noalias ptr @opendir(ptr noundef nonnull @get_tmp_template.template) ; 4 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %count_dir_entries.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.t = call ptr @readdir64(ptr noundef nonnull %i.s) #10 ; 2 uses
  %.not91.i = icmp eq ptr %i.t, null
  br i1 %.not91.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.u = phi ptr [ %i.y, %.lr.ph.i ], [ %i.t, %.preheader.i ]
  %.02.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 19
  %i.w = call zeroext i1 @starts_with(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.165) #10
  %not..i = xor i1 %i.w, true
  %i.x = zext i1 %not..i to i32
  %spec.select.i = add nuw nsw i32 %.02.i, %i.x   ; 2 uses
  %i.y = call ptr @readdir64(ptr noundef nonnull %i.s) #10 ; 2 uses
  %.not9.i = icmp eq ptr %i.y, null
  br i1 %.not9.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.z = zext nneg i32 %spec.select.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.z, %._crit_edge.i.loopexit ]
  %i.aa = call i32 @closedir(ptr noundef nonnull %i.s) ; 0 uses
  br label %count_dir_entries.exit

count_dir_entries.exit:                           ; preds = %bb.a, %._crit_edge.i
  %.07.i = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_concurrent, i64 noundef 1159, i32 noundef 1, i32 noundef 0, i64 noundef %.07.i, i64 noundef 2, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.6, i64 noundef %.07.i, i64 noundef 2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template) #11
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @get_tmp_template.template, i64 noundef %i.ab) #10
  %i.ac = call i32 @remove_dir_recursively(ptr noundef nonnull %0, i32 noundef 0) #10 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test_reftable_stack__compaction_concurrent_clean() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  %1 = alloca %struct.reftable_write_options, align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !18
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.156) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = select i1 %.not.i.i, ptr @.str.158, ptr %i.d
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template, i64 noundef 1023, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.e, i32 noundef 1176) #10 ; 0 uses
  %i.g = tail call ptr @mkdtemp(ptr noundef nonnull @get_tmp_template.template) #10
  %i.h = icmp ne ptr %i.g, null
  %i.i = zext i1 %i.h to i32
  tail call void @clar__assert(i32 noundef %i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_tmp_dir, i64 noundef 73, ptr noundef nonnull @.str.159, ptr noundef null, i32 noundef 1) #10
  %i.j = call i32 @reftable_new_stack(ptr noundef nonnull %i.a, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_concurrent_clean, i64 noundef 1178, i32 noundef 1, i32 noundef 0, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.6, i64 noundef %i.k, i64 noundef 0) #10
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  call fastcc void @write_n_ref_tables(ptr noundef %i.l, i64 noundef 3)
  %i.m = call i32 @reftable_new_stack(ptr noundef nonnull %i.b, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_concurrent_clean, i64 noundef 1181, i32 noundef 1, i32 noundef 0, i64 noundef %i.n, i64 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.6, i64 noundef %i.n, i64 noundef 0) #10
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.p = call i32 @reftable_stack_compact_all(ptr noundef %i.o, ptr noundef null) #10
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_concurrent_clean, i64 noundef 1182, i32 noundef 1, i32 noundef 0, i64 noundef %i.q, i64 noundef 0, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.6, i64 noundef %i.q, i64 noundef 0) #10
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 224 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !30
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %unclean_stack_close.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.07.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  call void @reftable_table_decref(ptr noundef %i.x) #10
  %i.y = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.z = load i64, ptr %i.s, align 8, !tbaa !30
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.b, label %unclean_stack_close.exit, !llvm.loop !88

unclean_stack_close.exit:                         ; preds = %bb.b, %bb.a
  store i64 0, ptr %i.s, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 216 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  call void @reftable_free(ptr noundef %i.ac) #10
  store ptr null, ptr %i.ab, align 8, !tbaa !35
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 224 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !30
  %.not.i28 = icmp eq i64 %i.af, 0
  br i1 %.not.i28, label %unclean_stack_close.exit31, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %unclean_stack_close.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i29
  %.07.i30 = phi i64 [ 0, %.lr.ph.i29 ], [ %i.ak, %bb.c ] ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.07.i30
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37
  call void @reftable_table_decref(ptr noundef %i.aj) #10
  %i.ak = add nuw i64 %.07.i30, 1                 ; 2 uses
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !30
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.c, label %unclean_stack_close.exit31, !llvm.loop !88

unclean_stack_close.exit31:                       ; preds = %bb.c, %unclean_stack_close.exit
  store i64 0, ptr %i.ae, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 216 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  call void @reftable_free(ptr noundef %i.ao) #10
  store ptr null, ptr %i.an, align 8, !tbaa !35
  %i.ap = call i32 @reftable_new_stack(ptr noundef nonnull %i.c, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_concurrent_clean, i64 noundef 1187, i32 noundef 1, i32 noundef 0, i64 noundef %i.aq, i64 noundef 0, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.6, i64 noundef %i.aq, i64 noundef 0) #10
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.as = call i32 @reftable_stack_clean(ptr noundef %i.ar) #10
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_concurrent_clean, i64 noundef 1188, i32 noundef 1, i32 noundef 0, i64 noundef %i.at, i64 noundef 0, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.6, i64 noundef %i.at, i64 noundef 0) #10
  %i.au = call noalias ptr @opendir(ptr noundef nonnull @get_tmp_template.template) ; 4 uses
  %.not.i32 = icmp eq ptr %i.au, null
  br i1 %.not.i32, label %count_dir_entries.exit, label %.preheader.i

.preheader.i:                                     ; preds = %unclean_stack_close.exit31
  %i.av = call ptr @readdir64(ptr noundef nonnull %i.au) #10 ; 2 uses
  %.not91.i = icmp eq ptr %i.av, null
  br i1 %.not91.i, label %._crit_edge.i, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.preheader.i, %.lr.ph.i33
  %i.aw = phi ptr [ %i.ba, %.lr.ph.i33 ], [ %i.av, %.preheader.i ]
  %.02.i = phi i32 [ %spec.select.i, %.lr.ph.i33 ], [ 0, %.preheader.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  %i.ay = call zeroext i1 @starts_with(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.165) #10
  %not..i = xor i1 %i.ay, true
  %i.az = zext i1 %not..i to i32
  %spec.select.i = add nuw nsw i32 %.02.i, %i.az  ; 2 uses
  %i.ba = call ptr @readdir64(ptr noundef nonnull %i.au) #10 ; 2 uses
  %.not9.i = icmp eq ptr %i.ba, null
  br i1 %.not9.i, label %._crit_edge.i.loopexit, label %.lr.ph.i33, !llvm.loop !0

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i33
  %i.bb = zext nneg i32 %spec.select.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.bb, %._crit_edge.i.loopexit ]
  %i.bc = call i32 @closedir(ptr noundef nonnull %i.au) ; 0 uses
  br label %count_dir_entries.exit

count_dir_entries.exit:                           ; preds = %unclean_stack_close.exit31, %._crit_edge.i
  %.07.i34 = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ 0, %unclean_stack_close.exit31 ] ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__compaction_concurrent_clean, i64 noundef 1189, i32 noundef 1, i32 noundef 0, i64 noundef %.07.i34, i64 noundef 2, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.6, i64 noundef %.07.i34, i64 noundef 2) #10
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.bd) #10
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.be) #10
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.bf) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template) #11
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @get_tmp_template.template, i64 noundef %i.bg) #10
  %i.bh = call i32 @remove_dir_recursively(ptr noundef nonnull %0, i32 noundef 0) #10 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

declare i32 @reftable_stack_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @test_reftable_stack__read_across_reload() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  %1 = alloca %struct.reftable_write_options, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %2 = alloca %struct.reftable_ref_record, align 8 ; 9 uses
  %3 = alloca %struct.reftable_iterator, align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.156) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %i.d = select i1 %.not.i.i, ptr @.str.158, ptr %i.c
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template, i64 noundef 1023, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.d, i32 noundef 1204) #10 ; 0 uses
  %i.f = tail call ptr @mkdtemp(ptr noundef nonnull @get_tmp_template.template) #10
  %i.g = icmp ne ptr %i.f, null
  %i.h = zext i1 %i.g to i32
  tail call void @clar__assert(i32 noundef %i.h, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_tmp_dir, i64 noundef 73, ptr noundef nonnull @.str.159, ptr noundef null, i32 noundef 1) #10
  %i.i = call i32 @reftable_new_stack(ptr noundef nonnull %i.a, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1208, i32 noundef 1, i32 noundef 0, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.6, i64 noundef %i.j, i64 noundef 0) #10
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !18
  call fastcc void @write_n_ref_tables(ptr noundef %i.k, i64 noundef 2)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1210, i32 noundef 1, i32 noundef 0, i64 noundef %i.p, i64 noundef 2, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.6, i64 noundef %i.p, i64 noundef 2) #10
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = call i32 @reftable_stack_init_ref_iterator(ptr noundef %i.q, ptr noundef nonnull %3) #10 ; 0 uses
  %i.s = call i32 @reftable_iterator_seek_ref(ptr noundef nonnull %3, ptr noundef nonnull @.str.60) #10
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1212, i32 noundef 1, i32 noundef 0, i64 noundef %i.t, i64 noundef 0, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.6, i64 noundef %i.t, i64 noundef 0) #10
  %i.u = call i32 @reftable_new_stack(ptr noundef nonnull %i.b, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %.not = icmp eq i32 %i.u, 0
  %i.v = zext i1 %.not to i32
  call void @clar__assert(i32 noundef %i.v, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1216, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1217, i32 noundef 1, i32 noundef 0, i64 noundef %i.aa, i64 noundef 2, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.6, i64 noundef %i.aa, i64 noundef 2) #10
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ac = call i32 @reftable_stack_compact_all(ptr noundef %i.ab, ptr noundef null) #10
  %.not32 = icmp eq i32 %i.ac, 0
  %i.ad = zext i1 %.not32 to i32
  call void @clar__assert(i32 noundef %i.ad, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1219, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 232
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50 ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1220, i32 noundef 1, i32 noundef 0, i64 noundef %i.ai, i64 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.6, i64 noundef %i.ai, i64 noundef 1) #10
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = call i32 @reftable_stack_reload(ptr noundef %i.aj) #10
  %.not33 = icmp eq i32 %i.ak, 0
  %i.al = zext i1 %.not33 to i32
  call void @clar__assert(i32 noundef %i.al, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1227, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !50 ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1228, i32 noundef 1, i32 noundef 0, i64 noundef %i.aq, i64 noundef 1, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.6, i64 noundef %i.aq, i64 noundef 1) #10
  %i.ar = call i32 @reftable_iterator_next_ref(ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  %.not34 = icmp eq i32 %i.ar, 0
  %i.as = zext i1 %.not34 to i32
  call void @clar__assert(i32 noundef %i.as, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1230, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.at = load ptr, ptr %2, align 8, !tbaa !21
  call void (ptr, ptr, i64, ptr, i32, ptr, ...) @clar__assert_equal(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1231, ptr noundef nonnull @.str.139, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %i.at, ptr noundef nonnull @.str.140) #10
  %i.au = call i32 @reftable_iterator_next_ref(ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  %.not35 = icmp eq i32 %i.au, 0
  %i.av = zext i1 %.not35 to i32
  call void @clar__assert(i32 noundef %i.av, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1233, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 1) #10
  %i.aw = load ptr, ptr %2, align 8, !tbaa !21
  call void (ptr, ptr, i64, ptr, i32, ptr, ...) @clar__assert_equal(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1234, ptr noundef nonnull @.str.141, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %i.aw, ptr noundef nonnull @.str.142) #10
  %i.ax = call i32 @reftable_iterator_next_ref(ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  %i.ay = icmp sgt i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  call void @clar__assert(i32 noundef %i.az, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__read_across_reload, i64 noundef 1236, ptr noundef nonnull @.str.143, ptr noundef null, i32 noundef 1) #10
  call void @reftable_ref_record_release(ptr noundef nonnull %2) #10
  call void @reftable_iterator_destroy(ptr noundef nonnull %3) #10
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.ba) #10
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.bb) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template) #11
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @get_tmp_template.template, i64 noundef %i.bc) #10
  %i.bd = call i32 @remove_dir_recursively(ptr noundef nonnull %0, i32 noundef 0) #10 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test_reftable_stack__reload_with_missing_table() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  %1 = alloca %struct.reftable_write_options, align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 14 uses
  %2 = alloca %struct.reftable_ref_record, align 8 ; 9 uses
  %3 = alloca %struct.reftable_iterator, align 8  ; 9 uses
  %4 = alloca %struct.reftable_buf, align 8       ; 7 uses
  %5 = alloca %struct.reftable_buf, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.156) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  %i.c = select i1 %.not.i.i, ptr @.str.158, ptr %i.b
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template, i64 noundef 1023, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.c, i32 noundef 1252) #10 ; 0 uses
  %i.e = tail call ptr @mkdtemp(ptr noundef nonnull @get_tmp_template.template) #10
  %i.f = icmp ne ptr %i.e, null
  %i.g = zext i1 %i.f to i32
  tail call void @clar__assert(i32 noundef %i.g, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_tmp_dir, i64 noundef 73, ptr noundef nonnull @.str.159, ptr noundef null, i32 noundef 1) #10
  %i.h = call i32 @reftable_new_stack(ptr noundef nonnull %i.a, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %1) #10
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1256, i32 noundef 1, i32 noundef 0, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6, i64 noundef %i.i, i64 noundef 0) #10
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !18
  call fastcc void @write_n_ref_tables(ptr noundef %i.j, i64 noundef 2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1258, i32 noundef 1, i32 noundef 0, i64 noundef %i.o, i64 noundef 2, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.6, i64 noundef %i.o, i64 noundef 2) #10
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = call i32 @reftable_stack_init_ref_iterator(ptr noundef %i.p, ptr noundef nonnull %3) #10 ; 0 uses
  %i.r = call i32 @reftable_iterator_seek_ref(ptr noundef nonnull %3, ptr noundef nonnull @.str.60) #10
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1260, i32 noundef 1, i32 noundef 0, i64 noundef %i.s, i64 noundef 0, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.6, i64 noundef %i.s, i64 noundef 0) #10
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.y = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef %i.x) #10
  %.not = icmp eq i32 %i.y, 0
  %i.z = zext i1 %.not to i32
  call void @clar__assert(i32 noundef %i.z, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1267, ptr noundef nonnull @.str.144, ptr noundef null, i32 noundef 1) #10
  %i.aa = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef nonnull @.str.145) #10
  %.not34 = icmp eq i32 %i.aa, 0
  %i.ab = zext i1 %.not34 to i32
  call void @clar__assert(i32 noundef %i.ab, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1268, ptr noundef nonnull @.str.146, ptr noundef null, i32 noundef 1) #10
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42
  %i.ai = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef %i.ah) #10
  %.not35 = icmp eq i32 %i.ai, 0
  %i.aj = zext i1 %.not35 to i32
  call void @clar__assert(i32 noundef %i.aj, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1269, ptr noundef nonnull @.str.147, ptr noundef null, i32 noundef 1) #10
  %i.ak = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef nonnull @.str.145) #10
  %.not36 = icmp eq i32 %i.ak, 0
  %i.al = zext i1 %.not36 to i32
  call void @clar__assert(i32 noundef %i.al, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1270, ptr noundef nonnull @.str.146, ptr noundef null, i32 noundef 1) #10
  %i.am = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef nonnull @.str.148) #10
  %.not37 = icmp eq i32 %i.am, 0
  %i.an = zext i1 %.not37 to i32
  call void @clar__assert(i32 noundef %i.an, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1271, ptr noundef nonnull @.str.149, ptr noundef null, i32 noundef 1) #10
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !89
  %i.ar = call i32 @reftable_buf_addstr(ptr noundef nonnull %4, ptr noundef %i.aq) #10
  %.not38 = icmp eq i32 %i.ar, 0
  %i.as = zext i1 %.not38 to i32
  call void @clar__assert(i32 noundef %i.as, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1272, ptr noundef nonnull @.str.150, ptr noundef null, i32 noundef 1) #10
  %i.at = call i32 @reftable_buf_addstr(ptr noundef nonnull %4, ptr noundef nonnull @.str.58) #10
  %.not39 = icmp eq i32 %i.at, 0
  %i.au = zext i1 %.not39 to i32
  call void @clar__assert(i32 noundef %i.au, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1273, ptr noundef nonnull @.str.59, ptr noundef null, i32 noundef 1) #10
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !90
  call void @write_file_buf(ptr noundef %i.aw, ptr noundef %i.ay, i64 noundef %i.ba) #10
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !32
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !89
  %i.bf = call i32 @rename(ptr noundef %i.bb, ptr noundef %i.be) #10
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1275, i32 noundef 1, i32 noundef 0, i64 noundef %i.bg, i64 noundef 0, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.6, i64 noundef %i.bg, i64 noundef 0) #10
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bi = call i32 @reftable_stack_reload(ptr noundef %i.bh) #10
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1278, i32 noundef 1, i32 noundef 0, i64 noundef %i.bj, i64 noundef -4, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.6, i64 noundef %i.bj, i64 noundef -4) #10
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 232
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !50 ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1279, i32 noundef 1, i32 noundef 0, i64 noundef %i.bo, i64 noundef 2, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.6, i64 noundef %i.bo, i64 noundef 2) #10
  %i.bp = call i32 @reftable_iterator_next_ref(ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1285, i32 noundef 1, i32 noundef 0, i64 noundef %i.bq, i64 noundef 0, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.6, i64 noundef %i.bq, i64 noundef 0) #10
  %i.br = load ptr, ptr %2, align 8, !tbaa !21
  call void (ptr, ptr, i64, ptr, i32, ptr, ...) @clar__assert_equal(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1286, ptr noundef nonnull @.str.139, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %i.br, ptr noundef nonnull @.str.140) #10
  %i.bs = call i32 @reftable_iterator_next_ref(ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1287, i32 noundef 1, i32 noundef 0, i64 noundef %i.bt, i64 noundef 0, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.6, i64 noundef %i.bt, i64 noundef 0) #10
  %i.bu = load ptr, ptr %2, align 8, !tbaa !21
  call void (ptr, ptr, i64, ptr, i32, ptr, ...) @clar__assert_equal(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1288, ptr noundef nonnull @.str.141, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %i.bu, ptr noundef nonnull @.str.142) #10
  %i.bv = call i32 @reftable_iterator_next_ref(ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  %i.bw = icmp sgt i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  call void @clar__assert(i32 noundef %i.bx, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__reload_with_missing_table, i64 noundef 1289, ptr noundef nonnull @.str.154, ptr noundef null, i32 noundef 1) #10
  call void @reftable_ref_record_release(ptr noundef nonnull %2) #10
  call void @reftable_iterator_destroy(ptr noundef nonnull %3) #10
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.by) #10
  call void @reftable_buf_release(ptr noundef nonnull %4) #10
  call void @reftable_buf_release(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template) #11
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @get_tmp_template.template, i64 noundef %i.bz) #10
  %i.ca = call i32 @remove_dir_recursively(ptr noundef nonnull %0, i32 noundef 0) #10 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @test_reftable_stack__invalid_limit_updates() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  %1 = alloca %struct.reftable_ref_record, align 8 ; 4 uses
  %2 = alloca %struct.reftable_write_options, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) @__const.test_reftable_stack__invalid_limit_updates.ref, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 432, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !45
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.156) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = select i1 %.not.i.i, ptr @.str.158, ptr %i.d
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template, i64 noundef 1023, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.e, i32 noundef 1320) #10 ; 0 uses
  %i.g = tail call ptr @mkdtemp(ptr noundef nonnull @get_tmp_template.template) #10
  %i.h = icmp ne ptr %i.g, null
  %i.i = zext i1 %i.h to i32
  tail call void @clar__assert(i32 noundef %i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_tmp_dir, i64 noundef 73, ptr noundef nonnull @.str.159, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !18
  %i.j = call i32 @reftable_new_stack(ptr noundef nonnull %i.b, ptr noundef nonnull @get_tmp_template.template, ptr noundef nonnull %2) #10
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__invalid_limit_updates, i64 noundef 1323, i32 noundef 1, i32 noundef 0, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6, i64 noundef %i.k, i64 noundef 0) #10
  call void @reftable_addition_destroy(ptr noundef null) #10
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.m = call i32 @reftable_stack_new_addition(ptr noundef nonnull %i.a, ptr noundef %i.l, i32 noundef 0) #10
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__invalid_limit_updates, i64 noundef 1327, i32 noundef 1, i32 noundef 0, i64 noundef %i.n, i64 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.6, i64 noundef %i.n, i64 noundef 0) #10
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.p = call i32 @reftable_addition_add(ptr noundef %i.o, ptr noundef nonnull @write_limits_after_ref, ptr noundef nonnull %1) #10
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.test_reftable_stack__invalid_limit_updates, i64 noundef 1335, i32 noundef 1, i32 noundef 0, i64 noundef %i.q, i64 noundef -6, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.6, i64 noundef %i.q, i64 noundef -6) #10
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !45
  call void @reftable_addition_destroy(ptr noundef %i.r) #10
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @reftable_stack_destroy(ptr noundef %i.s) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @get_tmp_template.template) #11
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @get_tmp_template.template, i64 noundef %i.t) #10
  %i.u = call i32 @remove_dir_recursively(ptr noundef nonnull %0, i32 noundef 0) #10 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @write_limits_after_ref(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = tail call i32 @reftable_writer_set_limits(ptr noundef %0, i64 noundef %i.b, i64 noundef %i.b) #10
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  tail call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.write_limits_after_ref, i64 noundef 1303, i32 noundef 1, i32 noundef 0, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.6, i64 noundef %i.d, i64 noundef 0) #10
  %i.e = tail call i32 @reftable_writer_add_ref(ptr noundef %0, ptr noundef %1) #10
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  tail call void (ptr, ptr, i64, i32, i32, i64, i64, ptr, ptr, ...) @clar__assert_compare_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.write_limits_after_ref, i64 noundef 1304, i32 noundef 1, i32 noundef 0, i64 noundef %i.f, i64 noundef 0, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.6, i64 noundef %i.f, i64 noundef 0) #10
  %i.g = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.h = tail call i32 @reftable_writer_set_limits(ptr noundef %0, i64 noundef %i.g, i64 noundef %i.g) #10
  ret i32 %i.h
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @mks_tempfile_sm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @mkdtemp(ptr noundef) local_unnamed_addr #6

declare i32 @reftable_writer_set_limits(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @reftable_writer_add_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @remove_dir_recursively(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @strbuf_release(ptr noundef) local_unnamed_addr #2

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @reftable_writer_add_log(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #4

declare ptr @readdir64(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @starts_with(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #4

declare void @reftable_table_decref(ptr noundef) local_unnamed_addr #2

declare void @reftable_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !16}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"any p2 pointer", !13, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTS14reftable_stack", !13, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!"reftable_ref_record", !15, i64 0, !19, i64 8, !19, i64 16, !10, i64 24, !9, i64 32}
!21 = !{!20, !15, i64 0}
!22 = !{!"timespec", !19, i64 0, !19, i64 8}
!23 = !{!"stat", !19, i64 0, !19, i64 8, !19, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !22, i64 72, !22, i64 88, !22, i64 104, !9, i64 120}
!24 = !{!"short", !9, i64 0}
!25 = !{!"reftable_write_options", !10, i64 0, !10, i64 4, !10, i64 8, !24, i64 10, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 20, !9, i64 21, !19, i64 24, !13, i64 32, !13, i64 40}
!26 = !{!"p2 _ZTS14reftable_table", !14, i64 0}
!27 = !{!"p1 _ZTS21reftable_merged_table", !13, i64 0}
!28 = !{!"reftable_compaction_stats", !19, i64 0, !19, i64 8, !10, i64 16, !10, i64 20}
!29 = !{!"reftable_stack", !23, i64 0, !15, i64 144, !10, i64 152, !15, i64 160, !25, i64 168, !26, i64 216, !19, i64 224, !27, i64 232, !28, i64 240}
!30 = !{!29, !19, i64 224}
!31 = !{!"reftable_buf", !19, i64 0, !19, i64 8, !15, i64 16}
!32 = !{!31, !15, i64 16}
!33 = !{!23, !10, i64 24}
!34 = !{!25, !10, i64 16}
!35 = !{!29, !26, i64 216}
!36 = !{!"p1 _ZTS14reftable_table", !13, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTS28reftable_block_source_vtable", !13, i64 0}
!39 = !{!"reftable_block_source", !38, i64 0, !13, i64 8}
!40 = !{!"reftable_table_offsets", !10, i64 0, !19, i64 8, !19, i64 16}
!41 = !{!"reftable_table", !15, i64 0, !39, i64 8, !19, i64 24, !10, i64 32, !10, i64 36, !19, i64 40, !19, i64 48, !10, i64 56, !10, i64 60, !40, i64 64, !40, i64 88, !40, i64 112, !19, i64 136}
!42 = !{!41, !15, i64 0}
!43 = !{!20, !19, i64 16}
!44 = !{!"p1 _ZTS17reftable_addition", !13, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!20, !10, i64 24}
!47 = !{!9, !9, i64 0}
!48 = !{!29, !27, i64 232}
!49 = !{!"reftable_merged_table", !26, i64 0, !19, i64 8, !10, i64 16, !10, i64 20, !19, i64 24, !19, i64 32}
!50 = !{!49, !19, i64 8}
!51 = !{!29, !10, i64 260}
!52 = !{!10, !10, i64 0}
!53 = !{!"reftable_log_record", !15, i64 0, !19, i64 8, !19, i64 16, !10, i64 24, !9, i64 32}
!54 = !{!53, !15, i64 0}
!55 = !{!53, !19, i64 16}
!56 = !{!53, !10, i64 24}
!57 = !{!"p1 _ZTS19reftable_log_record", !13, i64 0}
!58 = !{!"write_log_arg", !57, i64 0, !19, i64 8}
!59 = !{!58, !57, i64 0}
!60 = !{!58, !19, i64 8}
!61 = !{!"segment", !19, i64 0, !19, i64 8, !19, i64 16}
!62 = !{!61, !19, i64 0}
!63 = !{!61, !19, i64 8}
!64 = distinct !{!64, !16}
!65 = !{!"p1 _ZTS8tempfile", !13, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"p2 omnipotent char", !14, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!15, !15, i64 0}
!70 = distinct !{!70, !16, !71}
!71 = !{!"llvm.loop.peeled.count", i32 1}
!72 = !{!29, !10, i64 256}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = !{!"reftable_log_expiry_config", !19, i64 0, !19, i64 8}
!77 = !{!76, !19, i64 8}
!78 = distinct !{!78, !16, !80}
!79 = !{!20, !19, i64 8}
!80 = !{!"llvm.loop.peeled.count", i32 2}
!81 = !{!28, !19, i64 8}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = !{!"_Bool", !9, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{i8 0, i8 2}
!87 = !{}
!88 = distinct !{!88, !16}
!89 = !{!29, !15, i64 144}
!90 = !{!31, !19, i64 8}
end_hunk_0
