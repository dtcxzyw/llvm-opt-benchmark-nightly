Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/commit?download=true
inline.NumInlined: 150
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@collect_one_reflog_ent:bb.a
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, -2
  store i8 %i.d, ptr %i.a, align 8
  tail call fastcc void @add_one_commit(ptr noundef %1, ptr noundef nonnull %7)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @add_one_commit(ptr noundef %2, ptr noundef nonnull %7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_one_commit(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i128, ptr %0, align 1
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i128, ptr %i.b, align 1
  %i.d = or i128 %i.a, %i.c
  %i.e = icmp ne i128 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %.not.i.not = icmp eq i32 %i.f, 0
  br i1 %.not.i.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !19 ; 3 uses
  %i.h = tail call ptr @lookup_object(ptr noundef %i.g, ptr noundef nonnull %0) #26 ; 2 uses
  %.not.i11 = icmp eq ptr %i.h, null
  br i1 %.not.i11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @alloc_commit_node(ptr noundef %i.g) #26
  %i.j = tail call ptr @create_object(ptr noundef %i.g, ptr noundef nonnull %0, ptr noundef %i.i) #26
  br label %lookup_commit.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call ptr @object_as_type(ptr noundef nonnull %i.h, i32 noundef 1, i32 noundef 0) #26
  br label %lookup_commit.exit

lookup_commit.exit:                               ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ] ; 6 uses
  %.not8 = icmp eq ptr %.0.i, null
  br i1 %.not8, label %bb.j, label %bb.e

bb.e:                                             ; preds = %lookup_commit.exit
  %i.l = load i64, ptr %.0.i, align 8
  %i.m = and i64 %i.l, 68719476736
  %.not9 = icmp eq i64 %i.m, 0
  br i1 %.not9, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.o = tail call range(i32 -1, 1) i32 @repo_parse_commit_internal(ptr noundef %i.n, ptr noundef nonnull %.0.i, i32 noundef 0, i32 noundef 1)
  %.not10 = icmp eq i32 %i.o, 0
  br i1 %.not10, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !106  ; 3 uses
  %i.r = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.q, i64 1) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.h, label %st_add.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.40, i64 noundef %i.q, i64 noundef 1) #27
  unreachable

st_add.exit.i.i:                                  ; preds = %bb.g
  %i.t = extractvalue { i64, i1 } %i.r, 0         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !107  ; 2 uses
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %st_add.exit13.i.i, label %st_add.exit.i.commit_stack_grow.exit_crit_edge.i

st_add.exit.i.commit_stack_grow.exit_crit_edge.i: ; preds = %st_add.exit.i.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !105
  br label %commit_stack_push.exit

st_add.exit13.i.i:                                ; preds = %st_add.exit.i.i
  %i.x = mul i64 %i.v, 3
  %i.y = add i64 %i.x, 48
  %i.z = lshr i64 %i.y, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.t) ; 4 uses
  store i64 %spec.select.i.i, ptr %i.u, align 8, !tbaa !107
  %mul.ov.i.i.i = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %mul.ov.i.i.i, label %bb.i, label %st_mult.exit.i.i

bb.i:                                             ; preds = %st_add.exit13.i.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.39, i64 noundef 8, i64 noundef %spec.select.i.i) #27
  unreachable

st_mult.exit.i.i:                                 ; preds = %st_add.exit13.i.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !105
  %i.ab = shl nuw i64 %spec.select.i.i, 3
  %i.ac = tail call ptr @xrealloc(ptr noundef %i.aa, i64 noundef %i.ab) #26 ; 2 uses
  store ptr %i.ac, ptr %1, align 8, !tbaa !105
  %.pre4.i = load i64, ptr %i.p, align 8, !tbaa !106 ; 2 uses
  %.pre5.i = add i64 %.pre4.i, 1
  br label %commit_stack_push.exit

commit_stack_push.exit:                           ; preds = %st_add.exit.i.commit_stack_grow.exit_crit_edge.i, %st_mult.exit.i.i
  %.pre-phi.i = phi i64 [ %i.t, %st_add.exit.i.commit_stack_grow.exit_crit_edge.i ], [ %.pre5.i, %st_mult.exit.i.i ]
  %i.ad = phi i64 [ %i.q, %st_add.exit.i.commit_stack_grow.exit_crit_edge.i ], [ %.pre4.i, %st_mult.exit.i.i ]
  %i.ae = phi ptr [ %.pre.i, %st_add.exit.i.commit_stack_grow.exit_crit_edge.i ], [ %i.ac, %st_mult.exit.i.i ]
  store i64 %.pre-phi.i, ptr %i.p, align 8, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  store ptr %.0.i, ptr %i.af, align 8, !tbaa !94
  %i.ag = load i64, ptr %.0.i, align 8
  %i.ah = or i64 %i.ag, 68719476736
  store i64 %i.ah, ptr %.0.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %lookup_commit.exit, %bb.e, %bb.f, %bb.a, %commit_stack_push.exit
  ret void
}

declare i32 @repo_get_merge_bases_many(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #21

declare i32 @common_exit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @commit_stack_clear(ptr nofree noundef captures(none) initializes((8, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.a) #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @add_header_signature(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, @hash_algos
  br i1 %.not.i, label %hash_algo_by_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.1.i = icmp eq ptr %2, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i, label %hash_algo_by_ptr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.2.i = icmp eq ptr %2, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %i.a = select i1 %.not.2.i, i64 2, i64 0
  br label %hash_algo_by_ptr.exit

hash_algo_by_ptr.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  %.2.i = phi i64 [ %i.a, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @gpg_sig_headers, i64 %.2.i
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #28 ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.h = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.26) #28 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %hash_algo_by_ptr.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = trunc i64 %i.j to i32
  br label %bb.f

bb.e:                                             ; preds = %hash_algo_by_ptr.exit
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.031 = phi i32 [ %i.p, %bb.e ], [ %i.k, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69   ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %.not3336 = icmp eq i8 %i.s, 0
  br i1 %.not3336, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %sext = shl i64 %i.d, 32
  %i.t = ashr exact i64 %sext, 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %i.u = phi ptr [ %i.r, %.lr.ph ], [ %i.ak, %bb.i ] ; 3 uses
  %.038 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.i ] ; 2 uses
  %.137 = phi i32 [ %.031, %.lr.ph ], [ %i.ag, %bb.i ] ; 3 uses
  %i.v = tail call ptr @strchrnul(ptr noundef nonnull %i.u, i32 noundef 10) #28 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = load i8, ptr %i.v, align 1, !tbaa !16
  %i.aa = icmp ne i8 %i.z, 0
  %3 = zext i1 %i.aa to i32
  %4 = trunc i64 %i.y to i32
  %5 = add i32 %4, %3                             ; 3 uses
  %.not34 = icmp eq i32 %.038, 0
  br i1 %.not34, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = sext i32 %.137 to i64
  tail call void @strbuf_insert(ptr noundef %0, i64 noundef %i.ab, ptr noundef nonnull %i.c, i64 noundef %i.t) #26
  %i.ac = add nsw i32 %.137, %i.e
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %.137, %bb.g ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ad = add nsw i32 %.2, 1                      ; 2 uses
  %i.ae = sext i32 %.2 to i64
  tail call void @strbuf_insert(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %i.ae, ptr noundef nonnull @.str.27, i64 noundef 1) #26
  %i.af = sext i32 %i.ad to i64
  %6 = sext i32 %5 to i64
  tail call void @strbuf_insert(ptr noundef %0, i64 noundef %i.af, ptr noundef nonnull %i.u, i64 noundef %6) #26
  %i.ag = add nsw i32 %i.ad, %5
  %i.ah = add nsw i32 %5, %.038                   ; 2 uses
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !69
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %.not33 = icmp eq i8 %i.al, 0
  br i1 %.not33, label %._crit_edge, label %bb.g, !llvm.loop !192

._crit_edge:                                      ; preds = %bb.i, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #19

declare void @strbuf_insert(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @parse_signed_commit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.c = call ptr @repo_get_commit_buffer(ptr noundef %i.b, ptr noundef %0, ptr noundef nonnull %i.a) ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !85
  %i.e = call i32 @parse_buffer_signed_by_header(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.f = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 72
  %.val.i = load i32, ptr %i.k, align 8, !tbaa !79 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !73   ; 2 uses
  %i.m = udiv i32 %.val.i, %i.l                   ; 2 uses
  %i.n = urem i32 %.val.i, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !74
  %.not.i.i.i = icmp ugt i32 %i.p, %i.m
  br i1 %.not.i.i.i, label %bb.b, label %buffer_slab_peek.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !75
  %i.q = zext i32 %i.m to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77   ; 2 uses
  %.not35.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not35.i.i.i, label %buffer_slab_peek.exit.thread.i, label %buffer_slab_peek.exit.i

buffer_slab_peek.exit.i:                          ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !72
  %i.v = mul i32 %i.u, %i.n
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83
  %i.z = icmp eq ptr %i.y, %i.c
  br i1 %i.z, label %repo_unuse_commit_buffer.exit, label %buffer_slab_peek.exit.thread.i

buffer_slab_peek.exit.thread.i:                   ; preds = %buffer_slab_peek.exit.i, %bb.b, %bb.a
  call void @free(ptr noundef nonnull %i.c) #26
  br label %repo_unuse_commit_buffer.exit

repo_unuse_commit_buffer.exit:                    ; preds = %buffer_slab_peek.exit.i, %buffer_slab_peek.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @parse_buffer_signed_by_header(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(address) %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %4, @hash_algos
  br i1 %.not.i, label %hash_algo_by_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.1.i = icmp eq ptr %4, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i, label %hash_algo_by_ptr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.2.i = icmp eq ptr %4, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %i.a = select i1 %.not.2.i, i64 2, i64 0
  br label %hash_algo_by_ptr.exit

hash_algo_by_ptr.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  %.2.i = phi i64 [ %i.a, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @gpg_sig_headers, i64 %.2.i
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %.not75 = icmp eq i64 %1, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hash_algo_by_ptr.exit
  %i.e = ptrtoint ptr %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %.03674 = phi ptr [ %0, %.lr.ph ], [ %.1, %bb.m ] ; 9 uses
  %.03773 = phi i32 [ 0, %.lr.ph ], [ %.13861, %bb.m ] ; 2 uses
  %.03972 = phi i32 [ 0, %.lr.ph ], [ %.140, %bb.m ] ; 2 uses
  %.04171 = phi i32 [ 0, %.lr.ph ], [ %.142, %bb.m ]
  %i.f = ptrtoint ptr %.03674 to i64              ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call ptr @memchr(ptr noundef %.03674, i32 noundef 10, i64 noundef %i.g) #28 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = select i1 %.not, ptr %i.d, ptr %i.i      ; 4 uses
  %.not44 = icmp eq i32 %.04171, 0
  br i1 %.not44, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %.03674, align 1, !tbaa !16
  %i.l = icmp eq i8 %i.k, 32
  br i1 %i.l, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.g
  %.07.i = phi ptr [ %i.n, %bb.g ], [ %.03674, %.preheader ] ; 3 uses
  %.06.i = phi ptr [ %i.p, %bb.g ], [ %i.c, %.preheader ] ; 2 uses
  %i.m = load i8, ptr %.06.i, align 1, !tbaa !16  ; 2 uses
  %.not.i50 = icmp eq i8 %i.m, 0
  br i1 %.not.i50, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.o = load i8, ptr %.07.i, align 1, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.q = icmp eq i8 %i.o, %i.m
  br i1 %i.q, label %bb.f, label %skip_prefix_impl.exit, !llvm.loop !193

bb.h:                                             ; preds = %bb.f
  %i.r = load i8, ptr %.07.i, align 1, !tbaa !16
  %i.s = icmp eq i8 %i.r, 32
  br i1 %i.s, label %bb.i, label %skip_prefix_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #28
  %i.u = getelementptr inbounds nuw i8, ptr %.03674, i64 %i.t
  br label %bb.k

skip_prefix_impl.exit:                            ; preds = %bb.g, %bb.h
  %i.v = tail call zeroext i1 @starts_with(ptr noundef %.03674, ptr noundef nonnull @.str.28) #26
  %.pre77 = load i8, ptr %.03674, align 1, !tbaa !16 ; 3 uses
  br i1 %i.v, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %skip_prefix_impl.exit
  %.not45 = icmp ne i32 %.03773, 0
  %.not46 = icmp eq i8 %.pre77, 32
  %or.cond = select i1 %.not45, i1 %.not46, i1 false
  br i1 %or.cond, label %select.unfold, label %bb.l

bb.k:                                             ; preds = %bb.e, %bb.i
  %.138 = phi i32 [ 0, %bb.i ], [ %.03773, %bb.e ]
  %.036.pn = phi ptr [ %i.u, %bb.i ], [ %.03674, %bb.e ]
  %.035 = getelementptr inbounds nuw i8, ptr %.036.pn, i64 1 ; 2 uses
  %i.w = ptrtoint ptr %i.j to i64
  %i.x = ptrtoint ptr %.035 to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @strbuf_add(ptr noundef %3, ptr noundef nonnull %.035, i64 noundef %i.y) #26
  br label %bb.m

select.unfold:                                    ; preds = %bb.j, %skip_prefix_impl.exit
  %i.z = icmp eq i8 %.pre77, 10
  %spec.select49 = select i1 %i.z, ptr %i.d, ptr %i.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aa = icmp eq i8 %.pre77, 10
  %spec.select4966 = select i1 %i.aa, ptr %i.d, ptr %i.j ; 2 uses
  %i.ab = ptrtoint ptr %spec.select4966 to i64
  %i.ac = sub i64 %i.ab, %i.f
  tail call void @strbuf_add(ptr noundef %2, ptr noundef nonnull %.03674, i64 noundef %i.ac) #26
  br label %bb.m

bb.m:                                             ; preds = %select.unfold, %bb.l, %bb.k
  %.13861 = phi i32 [ %.138, %bb.k ], [ 0, %bb.l ], [ 1, %select.unfold ]
  %.142 = phi i32 [ 1, %bb.k ], [ 0, %bb.l ], [ 0, %select.unfold ]
  %.140 = phi i32 [ 1, %bb.k ], [ %.03972, %bb.l ], [ %.03972, %select.unfold ] ; 2 uses
  %.1 = phi ptr [ %i.j, %bb.k ], [ %spec.select4966, %bb.l ], [ %spec.select49, %select.unfold ] ; 2 uses
  %i.ad = icmp ult ptr %.1, %i.d
  br i1 %i.ad, label %bb.d, label %._crit_edge, !llvm.loop !194

._crit_edge:                                      ; preds = %bb.m, %hash_algo_by_ptr.exit
  %.039.lcssa = phi i32 [ 0, %hash_algo_by_ptr.exit ], [ %.140, %bb.m ]
  ret i32 %.039.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #19

declare zeroext i1 @starts_with(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @remove_signature(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [2 x %struct.sigbuf], align 16      ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
