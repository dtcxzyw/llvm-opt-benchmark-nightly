Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/object-name?download=true
inline.NumInlined: 89
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@reinterpret:bb.a

strbuf_setlen.exit:                               ; preds = %bb.f, %bb.e, %strbuf_setlen.exit23
  %.0 = phi i32 [ %i.x, %strbuf_setlen.exit23 ], [ %3, %bb.e ], [ %3, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @branch_get_upstream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @branch_get_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @object_context_release(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @strbuf_release(ptr noundef nonnull %i.c) #18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @repo_get_oid_with_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.object_context, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = and i32 %3, 2112
  %or.cond.not.i = icmp eq i32 %i.a, 2112
  br i1 %or.cond.not.i, label %bb.b, label %get_oid_with_context.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.10, i32 noundef 1898, ptr noundef nonnull @.str.11) #19
  unreachable

get_oid_with_context.exit:                        ; preds = %bb.a
  %i.b = call fastcc i32 @get_oid_with_context_1(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef null, ptr noundef %2, ptr noundef nonnull %4)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  call void @free(ptr noundef %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @strbuf_release(ptr noundef nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_oid_with_context(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 2112
  %or.cond.not = icmp eq i32 %i.a, 2112
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.10, i32 noundef 1898, ptr noundef nonnull @.str.11) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @get_oid_with_context_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef %4)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_oidf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.object_context, align 8     ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %4 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.diagnose_invalid_index_path.fullname, i64 24, i1 false)
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @strbuf_vaddf(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #18
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = call fastcc i32 @get_oid_with_context_1(ptr noundef %i.a, ptr noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef %0, ptr noundef nonnull %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  call void @free(ptr noundef %i.f) #18
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @strbuf_release(ptr noundef nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @strbuf_release(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

declare void @strbuf_vaddf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @repo_get_oid_treeish(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_context, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = call fastcc i32 @get_oid_with_context_1(ptr noundef %0, ptr noundef %1, i32 noundef 16, ptr noundef null, ptr noundef %2, ptr noundef nonnull %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  call void @free(ptr noundef %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @strbuf_release(ptr noundef nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @repo_get_oid_commit(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_context, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = call fastcc i32 @get_oid_with_context_1(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef null, ptr noundef %2, ptr noundef nonnull %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  call void @free(ptr noundef %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @strbuf_release(ptr noundef nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @repo_get_oid_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_context, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = call fastcc i32 @get_oid_with_context_1(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef null, ptr noundef %2, ptr noundef nonnull %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  call void @free(ptr noundef %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @strbuf_release(ptr noundef nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @repo_get_oid_blob(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_context, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = call fastcc i32 @get_oid_with_context_1(ptr noundef %0, ptr noundef %1, i32 noundef 32, ptr noundef null, ptr noundef %2, ptr noundef nonnull %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  call void @free(ptr noundef %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @strbuf_release(ptr noundef nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @maybe_die_on_misspelt_object_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_context, align 8     ; 5 uses
  %4 = alloca %struct.object_id, align 4          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = call fastcc i32 @get_oid_with_context_1(ptr noundef %0, ptr noundef %1, i32 noundef 2049, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %3) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  call void @free(ptr noundef %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @strbuf_release(ptr noundef nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_oid_with_context_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef initializes((0, 40)) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.handle_one_ref_cb, align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %struct.object_id, align 4          ; 6 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %2, 2048                         ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store i16 12288, ptr %5, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  tail call void @strbuf_init(ptr noundef nonnull %i.e, i64 noundef 0) #18
  %i.f = tail call fastcc i32 @get_oid_1(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.c, ptr noundef %4, i32 noundef %2) ; 3 uses
  %.not = icmp ne i32 %i.f, 0                     ; 2 uses
  %i.g = and i32 %2, 4096
  %.not165 = icmp eq i32 %i.g, 0
  %or.cond185 = or i1 %.not165, %.not
  br i1 %or.cond185, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc ptr @_(ptr noundef nonnull @.str.23)
  tail call void (ptr, ...) @die(ptr noundef %i.h, ptr noundef nonnull %1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %.not, label %bb.d, label %reject_tree_in_index.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %1, align 1, !tbaa !44      ; 2 uses
  %8 = icmp eq i8 %i.i, 58
  br i1 %8, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %i.d, 0                      ; 3 uses
  %i.k = icmp sgt i32 %i.c, 2
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !44
  %i.n = icmp eq i8 %i.m, 47
  br i1 %i.n, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !62
  store ptr %0, ptr %6, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.o, align 8, !tbaa !80
  %i.p = call ptr @get_main_ref_store(ptr noundef %0) #18
  %i.q = call i32 @refs_for_each_ref(ptr noundef %i.p, ptr noundef nonnull @handle_one_ref, ptr noundef nonnull %6) #18 ; 0 uses
  %i.r = call ptr @get_main_ref_store(ptr noundef %0) #18
  %i.s = call i32 @refs_head_ref(ptr noundef %i.r, ptr noundef nonnull @handle_one_ref, ptr noundef nonnull %6) #18 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.v = call fastcc i32 @get_oid_oneline(ptr noundef %0, ptr noundef nonnull %i.t, ptr noundef %4, ptr noundef %i.u)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !62
  call void @commit_list_free(ptr noundef %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %reject_tree_in_index.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.x = icmp slt i32 %i.c, 3
  br i1 %i.x, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.f, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !44
  %.not174 = icmp eq i8 %i.z, 58
  br i1 %.not174, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !44  ; 2 uses
  %i.ac = add i8 %i.ab, -52
  %or.cond186 = icmp ult i8 %i.ac, -4
  br i1 %or.cond186, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %narrow = add nsw i8 %i.ab, -48
  %i.ad = zext nneg i8 %narrow to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %.thread, %bb.i, %bb.j
  %.sink = phi i64 [ 3, %bb.j ], [ 1, %bb.i ], [ 1, %.thread ], [ 1, %bb.h ]
  %.0141 = phi i32 [ %i.ad, %bb.j ], [ 0, %bb.i ], [ 0, %.thread ], [ 0, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 3 uses
  %i.af = tail call fastcc ptr @resolve_relative_path(ptr noundef %0, ptr noundef nonnull %i.ae) ; 5 uses
  %.not175 = icmp eq ptr %i.af, null
  br i1 %.not175, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %1 to i64
  %.neg = add i64 %i.b, %i.ah
  %i.ai = sub i64 %.neg, %i.ag
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0145.in = phi i64 [ %i.aj, %bb.m ], [ %i.ai, %bb.l ] ; 2 uses
  %.1144 = phi ptr [ %i.af, %bb.m ], [ %i.ae, %bb.l ] ; 5 uses
  %.0145 = trunc i64 %.0145.in to i32             ; 2 uses
  %i.ak = and i32 %2, 128
  %.not176 = icmp eq i32 %i.ak, 0
  br i1 %.not176, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = tail call ptr @xstrdup(ptr noundef nonnull %.1144) #18
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.al, ptr %i.am, align 8, !tbaa !65
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !81 ; 3 uses
  %.not177 = icmp eq ptr %i.ao, null
  br i1 %.not177, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !92
  %.not178 = icmp eq ptr %i.ap, null
  br i1 %.not178, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aq = tail call i32 @repo_read_index(ptr noundef nonnull %0) #18 ; 0 uses
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !81
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ar = phi ptr [ %.pre, %bb.r ], [ %i.ao, %bb.q ]
  %i.as = tail call i32 @index_name_pos(ptr noundef %i.ar, ptr noundef nonnull %.1144, i32 noundef %.0145) #18 ; 2 uses
  %.lobit = ashr i32 %i.as, 31
  %spec.select = xor i32 %.lobit, %i.as           ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !81 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !93 ; 2 uses
  %i.aw = icmp ult i32 %spec.select, %i.av
  br i1 %i.aw, label %.lr.ph202, label %._crit_edge

.lr.ph202:                                        ; preds = %bb.s
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !92
  %sext = shl i64 %.0145.in, 32
  %i.ay = ashr exact i64 %sext, 32
  %i.az = zext i32 %spec.select to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.av, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.u, !llvm.loop !111

bb.u:                                             ; preds = %.lr.ph202, %bb.t
  %indvars.iv = phi i64 [ %i.az, %.lr.ph202 ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !95 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !54
  %.not179 = icmp eq i32 %i.bd, %.0145
  br i1 %.not179, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 108
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.be, ptr nonnull %.1144, i64 %i.ay)
  %.not180 = icmp eq i32 %bcmp, 0
  br i1 %.not180, label %bb.w, label %._crit_edge

bb.w:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !54
  %i.bh = lshr i32 %i.bg, 12
  %i.bi = and i32 %i.bh, 3
  %i.bj = icmp eq i32 %i.bi, %.0141
  br i1 %i.bj, label %bb.x, label %bb.t

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef %i.af) #18
  %i.bk = getelementptr i8, ptr %i.bb, i64 52     ; 2 uses
  %.val = load i32, ptr %i.bk, align 4, !tbaa !54
  %i.bl = icmp eq i32 %.val, 16384
  br i1 %i.bl, label %bb.y, label %reject_tree_in_index.exit

bb.y:                                             ; preds = %bb.x
  br i1 %i.j, label %reject_tree_in_index.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @diagnose_invalid_index_path(ptr noundef nonnull %0, i32 noundef range(i32 0, 4) %.0141, ptr noundef %3, ptr noundef nonnull %.1144)
  br label %reject_tree_in_index.exit.thread

reject_tree_in_index.exit:                        ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bm, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !47
  %i.bq = load i32, ptr %i.bk, align 4, !tbaa !54
  %i.br = trunc i32 %i.bq to i16
  store i16 %i.br, ptr %5, align 8, !tbaa !113
  br label %reject_tree_in_index.exit.thread

._crit_edge:                                      ; preds = %bb.t, %bb.v, %bb.u, %bb.s
  br i1 %i.j, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !44
  switch i8 %i.bt, label %bb.ab [
    i8 0, label %bb.ac
    i8 47, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @diagnose_invalid_index_path(ptr noundef nonnull %0, i32 noundef %.0141, ptr noundef %3, ptr noundef nonnull %.1144)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.ab, %._crit_edge
  tail call void @free(ptr noundef %i.af) #18
  br label %reject_tree_in_index.exit.thread

.lr.ph:                                           ; preds = %bb.d, %bb.af
  %9 = phi i8 [ %.pr, %bb.af ], [ %i.i, %bb.d ]   ; 3 uses
  %.0146199 = phi i32 [ %.1147, %bb.af ], [ 0, %bb.d ] ; 3 uses
  %.2 = phi ptr [ %i.cb, %bb.af ], [ %1, %bb.d ]  ; 5 uses
  switch i8 %9, label %.split.thread [
    i8 0, label %reject_tree_in_index.exit.thread
    i8 64, label %.split
    i8 94, label %.split
  ]

.split:                                           ; preds = %.lr.ph, %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !44
  %i.bw = icmp eq i8 %i.bv, 123
  br i1 %i.bw, label %bb.ad, label %.split.thread

bb.ad:                                            ; preds = %.split
  %i.bx = add nsw i32 %.0146199, 1
  br label %bb.af

.split.thread:                                    ; preds = %.lr.ph, %.split
  %.not168 = icmp eq i32 %.0146199, 0
  br i1 %.not168, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %.split.thread
  %i.by = icmp eq i8 %9, 125
  %i.bz = sext i1 %i.by to i32
  %spec.select192 = add nsw i32 %.0146199, %i.bz
  br label %bb.af

.critedge:                                        ; preds = %.split.thread
  %i.ca = icmp eq i8 %9, 58
  br i1 %i.ca, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.critedge
  %.1147 = phi i32 [ %i.bx, %bb.ad ], [ %spec.select192, %bb.ae ], [ 0, %.critedge ]
  %.3 = phi ptr [ %i.bu, %bb.ad ], [ %.2, %bb.ae ], [ %.2, %.critedge ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.cb, align 1, !tbaa !44
  br label %.lr.ph, !llvm.loop !112

bb.ag:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.cc = ptrtoint ptr %.2 to i64
  %i.cd = ptrtoint ptr %1 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32                  ; 3 uses
  %i.cg = and i32 %2, -63
  %i.ch = or disjoint i32 %i.cg, 16
  %i.ci = call fastcc i32 @get_oid_1(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.cf, ptr noundef nonnull %7, i32 noundef %i.ch)
  %.not169.not = icmp eq i32 %i.ci, 0
  br i1 %.not169.not, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.ck = call fastcc ptr @resolve_relative_path(ptr noundef %0, ptr noundef nonnull %i.cj) ; 3 uses
  %.not170 = icmp eq ptr %i.ck, null
  %spec.select187 = select i1 %.not170, ptr %i.cj, ptr %i.ck ; 4 uses
  %i.cl = and i32 %2, 64
  %.not171 = icmp eq i32 %i.cl, 0
  br i1 %.not171, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = call i32 @get_tree_entry_follow_symlinks(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %spec.select187, ptr noundef %4, ptr noundef nonnull %i.e, ptr noundef nonnull %5) #18
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.cn = call i32 @get_tree_entry(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %spec.select187, ptr noundef %4, ptr noundef nonnull %5) #18 ; 3 uses
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = icmp ne i32 %i.d, 0
  %or.cond3 = and i1 %i.cp, %i.co
  br i1 %or.cond3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @diagnose_invalid_oid_path(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %spec.select187, ptr noundef %7, ptr noundef nonnull %1, i32 noundef %i.cf)
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ai
  %.0148 = phi i32 [ %i.cm, %bb.ai ], [ %i.cn, %bb.ak ], [ %i.cn, %bb.aj ]
  %i.cq = and i32 %2, 128
  %.not172 = icmp eq i32 %i.cq, 0
  br i1 %.not172, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cr = call ptr @xstrdup(ptr noundef nonnull %spec.select187) #18
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !65
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @free(ptr noundef %i.ck) #18
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ag
  %.not173 = icmp eq i32 %i.d, 0
  br i1 %.not173, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ct = call fastcc ptr @_(ptr noundef nonnull @.str.25)
  call void (ptr, ...) @die(ptr noundef %i.ct, i32 noundef %i.cf, ptr noundef nonnull %1) #19
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %spec.select188 = phi i32 [ %.0148, %bb.an ], [ %i.f, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %reject_tree_in_index.exit.thread

reject_tree_in_index.exit.thread:                 ; preds = %.lr.ph, %bb.y, %bb.z, %bb.aq, %bb.g, %reject_tree_in_index.exit, %bb.ac, %bb.c
  %.2153 = phi i32 [ 0, %bb.c ], [ -1, %bb.y ], [ %spec.select188, %bb.aq ], [ %i.v, %bb.g ], [ -1, %bb.ac ], [ 0, %reject_tree_in_index.exit ], [ -1, %bb.z ], [ %i.f, %.lr.ph ]
  ret i32 %.2153
}

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

declare i32 @odb_read_object_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @deref_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @collect_ambiguous(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  tail call void @oid_array_append(ptr noundef %1, ptr noundef %0) #18
  ret i32 0
}

declare void @oid_array_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @refs_for_each_reflog_ent_reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_main_ref_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @grab_nth_branch_switch(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i64 %4, i32 %5, ptr noundef %6, ptr nofree noundef captures(none) %7) #0 {
bb.a:
  %scevgep = getelementptr i8, ptr %6, i64 22     ; 3 uses
  %i.a = load i8, ptr %6, align 1, !tbaa !44
  %i.b = icmp eq i8 %i.a, 99
  br i1 %i.b, label %bb.b, label %skip_prefix_impl.exit.thread17

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !44
  %i.e = icmp eq i8 %i.d, 104
  br i1 %i.e, label %bb.c, label %skip_prefix_impl.exit.thread17

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !44
  %i.h = icmp eq i8 %i.g, 101
  br i1 %i.h, label %bb.d, label %skip_prefix_impl.exit.thread17

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !44
  %i.k = icmp eq i8 %i.j, 99
  br i1 %i.k, label %bb.e, label %skip_prefix_impl.exit.thread17

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !44
  %i.n = icmp eq i8 %i.m, 107
  br i1 %i.n, label %bb.f, label %skip_prefix_impl.exit.thread17

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !44
  %i.q = icmp eq i8 %i.p, 111
  br i1 %i.q, label %bb.g, label %skip_prefix_impl.exit.thread17

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !44
  %i.t = icmp eq i8 %i.s, 117
  br i1 %i.t, label %bb.h, label %skip_prefix_impl.exit.thread17

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !44
  %i.w = icmp eq i8 %i.v, 116
  br i1 %i.w, label %bb.i, label %skip_prefix_impl.exit.thread17

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load i8, ptr %i.x, align 1, !tbaa !44
  %i.z = icmp eq i8 %i.y, 58
  br i1 %i.z, label %bb.j, label %skip_prefix_impl.exit.thread17

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !44
  %i.ac = icmp eq i8 %i.ab, 32
  br i1 %i.ac, label %bb.k, label %skip_prefix_impl.exit.thread17

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !44
  %i.af = icmp eq i8 %i.ae, 109
  br i1 %i.af, label %bb.l, label %skip_prefix_impl.exit.thread17

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !44
  %i.ai = icmp eq i8 %i.ah, 111
  br i1 %i.ai, label %bb.m, label %skip_prefix_impl.exit.thread17

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !44
  %i.al = icmp eq i8 %i.ak, 118
  br i1 %i.al, label %bb.n, label %skip_prefix_impl.exit.thread17

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !44
  %i.ao = icmp eq i8 %i.an, 105
  br i1 %i.ao, label %bb.o, label %skip_prefix_impl.exit.thread17

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !44
  %i.ar = icmp eq i8 %i.aq, 110
  br i1 %i.ar, label %bb.p, label %skip_prefix_impl.exit.thread17

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !44
  %i.au = icmp eq i8 %i.at, 103
  br i1 %i.au, label %bb.q, label %skip_prefix_impl.exit.thread17

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !44
  %i.ax = icmp eq i8 %i.aw, 32
  br i1 %i.ax, label %bb.r, label %skip_prefix_impl.exit.thread17

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !44
  %i.ba = icmp eq i8 %i.az, 102
  br i1 %i.ba, label %bb.s, label %skip_prefix_impl.exit.thread17

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !44
  %i.bd = icmp eq i8 %i.bc, 114
  br i1 %i.bd, label %bb.t, label %skip_prefix_impl.exit.thread17

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 19
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !44
  %i.bg = icmp eq i8 %i.bf, 111
  br i1 %i.bg, label %bb.u, label %skip_prefix_impl.exit.thread17

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !44
  %i.bj = icmp eq i8 %i.bi, 109
  br i1 %i.bj, label %bb.v, label %skip_prefix_impl.exit.thread17

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 21
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !44
  %i.bm = icmp eq i8 %i.bl, 32
  br i1 %i.bm, label %skip_prefix_impl.exit, label %skip_prefix_impl.exit.thread17

skip_prefix_impl.exit:                            ; preds = %bb.v
  %i.bn = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %scevgep, ptr noundef nonnull dereferenceable(1) @.str.16) #17 ; 2 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %skip_prefix_impl.exit.thread17, label %bb.w

bb.w:                                             ; preds = %skip_prefix_impl.exit
  %i.bo = load i32, ptr %7, align 8, !tbaa !75
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %7, align 8, !tbaa !75
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.x, label %skip_prefix_impl.exit.thread17

bb.x:                                             ; preds = %bb.w
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %scevgep to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !76 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !49 ; 2 uses
  %.not9.i = icmp eq ptr %i.by, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.by, align 1, !tbaa !44
  %.pre = load ptr, ptr %i.bu, align 8, !tbaa !76
  br label %strbuf_setlen.exit

bb.z:                                             ; preds = %bb.x
  %i.bz = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !44
  %.not10.i = icmp eq i8 %i.bz, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #19
end_hunk_0
