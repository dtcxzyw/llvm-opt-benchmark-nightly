Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/dir?download=true
inline.NumInlined: 229
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@match_pathname:bb.a
  br label %fnmatch_icase_mem.exit

fnmatch_icase_mem.exit:                           ; preds = %bb.o, %bb.p
  %.0.i = phi ptr [ %i.ao, %bb.p ], [ %.042, %bb.o ]
  %i.ap = load i32, ptr @ignore_case, align 4, !tbaa !36
  %.not17.i = icmp ne i32 %i.ap, 0
  %i.aq = zext i1 %.not17.i to i32
  %spec.select.i = or disjoint i32 %i.aq, 2
  %i.ar = call i32 @wildmatch(ptr noundef %.014.i, ptr noundef %.0.i, i32 noundef %spec.select.i) #25
  call void @strbuf_release(ptr noundef nonnull %7) #25
  call void @strbuf_release(ptr noundef nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %git_fspathncmp.exit58, %bb.g, %bb.a, %bb.c, %git_fspathncmp.exit, %fnmatch_icase_mem.exit
  %.047 = phi i32 [ %i.at, %fnmatch_icase_mem.exit ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %git_fspathncmp.exit58 ], [ 0, %git_fspathncmp.exit ], [ 0, %bb.c ], [ 1, %bb.k ]
  ret i32 %.047
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 3) i32 @path_matches_pattern_list(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.pattern_entry, align 8      ; 7 uses
  %7 = alloca %struct.pattern_entry, align 8      ; 7 uses
  %8 = alloca %struct.strbuf, align 8             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.connect_wt_gitdir_in_nested.sub_gd, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !131
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @last_matching_pattern_from_list(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) ; 2 uses
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %i.f = lshr i32 %i.e, 4
  %.lobit = and i32 %i.f, 1
  %. = xor i32 %.lobit, 1
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !132
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %strbuf_addch.exit, label %bb.v

strbuf_addch.exit:                                ; preds = %bb.d
  call void @strbuf_grow(ptr noundef nonnull %8, i64 noundef 1) #25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !27 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 %.pre7.i, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i
  store i8 47, ptr %i.k, align 1, !tbaa !21
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.m = load i64, ptr %i.j, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !21
  %i.o = sext i32 %1 to i64
  call void @strbuf_add(ptr noundef nonnull %8, ptr noundef %0, i64 noundef %i.o) #25
  %i.p = load i64, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not28 = icmp eq i64 %i.p, 0
  %.pre42 = load ptr, ptr %i.i, align 8, !tbaa !28 ; 4 uses
  br i1 %.not28, label %bb.g, label %bb.e

bb.e:                                             ; preds = %strbuf_addch.exit
  %i.q = add i64 %i.p, -1                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pre42, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !21
  %i.t = icmp eq i8 %i.s, 47
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @strbuf_add(ptr noundef nonnull %8, ptr noundef nonnull @.str.5, i64 noundef 1) #25
  %.val35.pre = load i64, ptr %i.j, align 8, !tbaa !27
  %.val36.pre = load ptr, ptr %i.i, align 8, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %strbuf_addch.exit
  %i.u = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.pre42, i32 noundef 47) #27 ; 2 uses
  %.not29 = icmp eq ptr %i.u, null
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %.pre42 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = select i1 %.not29, i64 0, i64 %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val36 = phi ptr [ %.val36.pre, %bb.f ], [ %.pre42, %bb.g ] ; 3 uses
  %.val35 = phi i64 [ %.val35.pre, %bb.f ], [ %i.p, %bb.g ]
  %.021 = phi i64 [ %i.q, %bb.f ], [ %i.y, %bb.g ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.val36, ptr %i.aa, align 8, !tbaa !123
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.val35, ptr %i.ab, align 8, !tbaa !122
  %i.ac = load i32, ptr @ignore_case, align 4, !tbaa !36
  %.not.i.i37 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @strihash(ptr noundef %.val36) #25
  br label %hashmap_contains_path.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = call i32 @strhash(ptr noundef %.val36) #25
  br label %hashmap_contains_path.exit

hashmap_contains_path.exit:                       ; preds = %bb.i, %bb.j
  %i.af = phi i32 [ %i.ad, %bb.i ], [ %i.ae, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !124
  store ptr null, ptr %7, align 8, !tbaa !125
  %i.ah = call ptr @hashmap_get(ptr noundef nonnull %i.z, ptr noundef nonnull %7, ptr noundef null) #25
  %.not40 = icmp eq ptr %i.ah, null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.not40, label %bb.k, label %bb.u

bb.k:                                             ; preds = %hashmap_contains_path.exit
  %.not31 = icmp eq i64 %.021, 0
  br i1 %.not31, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr %8, align 8, !tbaa !29
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.ai, i64 1)
  %i.aj = icmp ugt i64 %.021, %spec.select.i
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.31, i32 noundef 167, ptr noundef nonnull @.str.32) #26
  unreachable

bb.n:                                             ; preds = %bb.l
  store i64 %.021, ptr %i.j, align 8, !tbaa !27
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %.not9.i = icmp eq ptr %i.ak, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.021
  store i8 0, ptr %i.al, align 1, !tbaa !21
  %.val.pre = load i64, ptr %i.j, align 8, !tbaa !27
  %.val34.pre = load ptr, ptr %i.i, align 8, !tbaa !28
  br label %strbuf_setlen.exit

bb.p:                                             ; preds = %bb.n
  %i.am = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !21
  %.not10.i = icmp eq i8 %i.am, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.o, %bb.p
  %.val34 = phi ptr [ %.val34.pre, %bb.o ], [ @strbuf_slopbuf, %bb.p ] ; 3 uses
  %.val = phi i64 [ %.val.pre, %bb.o ], [ %.021, %bb.p ]
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.val34, ptr %i.ao, align 8, !tbaa !123
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.val, ptr %i.ap, align 8, !tbaa !122
  %i.aq = load i32, ptr @ignore_case, align 4, !tbaa !36
  %.not.i.i38 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i38, label %bb.s, label %bb.r

bb.r:                                             ; preds = %strbuf_setlen.exit
  %i.ar = call i32 @strihash(ptr noundef %.val34) #25
  br label %hashmap_contains_path.exit39

bb.s:                                             ; preds = %strbuf_setlen.exit
  %i.as = call i32 @strhash(ptr noundef %.val34) #25
  br label %hashmap_contains_path.exit39

hashmap_contains_path.exit39:                     ; preds = %bb.r, %bb.s
  %i.at = phi i32 [ %i.ar, %bb.r ], [ %i.as, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.at, ptr %i.au, align 8, !tbaa !124
  store ptr null, ptr %6, align 8, !tbaa !125
  %i.av = call ptr @hashmap_get(ptr noundef nonnull %i.an, ptr noundef nonnull %6, ptr noundef null) #25
  %.not41 = icmp eq ptr %i.av, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.not41, label %bb.t, label %bb.u

bb.t:                                             ; preds = %hashmap_contains_path.exit39
  %i.aw = call i32 @hashmap_contains_parent(ptr noundef nonnull %i.z, ptr noundef %0, ptr noundef nonnull %8)
  %.not33 = icmp eq i32 %i.aw, 0
  %spec.select = select i1 %.not33, i32 0, i32 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %hashmap_contains_path.exit39, %bb.k, %hashmap_contains_path.exit
  %.022 = phi i32 [ 2, %hashmap_contains_path.exit ], [ 1, %bb.k ], [ 1, %hashmap_contains_path.exit39 ], [ %spec.select, %bb.t ]
  call void @strbuf_release(ptr noundef nonnull %8) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.u
  %.0 = phi i32 [ -1, %bb.b ], [ %.022, %bb.u ], [ %., %bb.c ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @last_matching_pattern_from_list(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 8, !tbaa !128    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %0 to i64
  %.neg = sub i64 %i.e, %i.d
  %i.f = trunc i64 %.neg to i32
  %i.g = add i32 %1, %i.f
  %i.h = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !130  ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36   ; 2 uses
  %i.q = and i32 %i.p, 8
  %.not45 = icmp eq i32 %i.q, 0
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %3, align 4, !tbaa !36
  %i.s = tail call fastcc i32 @resolve_dtype(i32 noundef %i.r, ptr noundef %5, ptr noundef %0, i32 noundef %1) ; 2 uses
  store i32 %i.s, ptr %3, align 4, !tbaa !36
  %.not46 = icmp eq i32 %i.s, 4
  br i1 %.not46, label %._crit_edge, label %select.unfold

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.o, align 4, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.t = phi i32 [ %.pre, %._crit_edge ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = and i32 %i.t, 1
  %.not47 = icmp eq i32 %i.u, 0
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  %i.x = tail call i32 @match_basename(ptr noundef %2, i32 noundef %i.g, ptr noundef nonnull %i.l, i32 noundef %i.n, i32 noundef %i.w, i32 noundef %i.t)
  %.not50 = icmp eq i32 %i.x, 0
  br i1 %.not50, label %select.unfold, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !36   ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre64 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !118 ; 2 uses
  br i1 %i.aa, label %._crit_edge63, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr i8, ptr %.pre64, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !21
  %i.af = icmp eq i8 %i.ae, 47
  br i1 %i.af, label %._crit_edge63, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str, i32 noundef 1459, ptr noundef nonnull @__PRETTY_FUNCTION__.last_matching_pattern_from_list) #26
  unreachable

._crit_edge63:                                    ; preds = %bb.f, %bb.g
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.z, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !36
  %i.ai = tail call i32 @match_pathname(ptr noundef %0, i32 noundef %1, ptr noundef %.pre64, i32 noundef %spec.select, ptr noundef nonnull %i.l, i32 noundef %i.n, i32 noundef %i.ah)
  %.not49 = icmp eq i32 %i.ai, 0
  br i1 %.not49, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.e, %._crit_edge63, %bb.c
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %bb.b, label %.thread, !llvm.loop !5

.thread:                                          ; preds = %select.unfold, %._crit_edge63, %bb.e, %bb.a
  %.041 = phi ptr [ null, %bb.a ], [ null, %select.unfold ], [ %i.k, %._crit_edge63 ], [ %i.k, %bb.e ]
  ret ptr %.041
}

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @strbuf_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @init_sparse_checkout_patterns(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !137
  %i.b = tail call ptr @repo_config_values(ptr noundef %i.a) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !203
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !146
  %.not6 = icmp eq ptr %i.f, null
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #25 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !146
  %i.h = load ptr, ptr @the_repository, align 8, !tbaa !137
  %i.i = tail call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.h, ptr noundef nonnull @.str.18) #25 ; 2 uses
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !137
  %i.k = tail call ptr @repo_config_values(ptr noundef %i.j) #25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !147
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.m, ptr %i.n, align 8, !tbaa !131
  %i.o = tail call fastcc range(i32 -1, 1) i32 @add_patterns(ptr noundef %i.i, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %i.g, ptr noundef null, i32 noundef 0, ptr noundef null)
  tail call void @free(ptr noundef %i.i) #25
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !146
  tail call void @free(ptr noundef %i.q) #25
  store ptr null, ptr %i.e, align 8, !tbaa !146
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.a ], [ -1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare ptr @repo_config_values(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @get_sparse_checkout_patterns(ptr noundef initializes((24, 28)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !137
  %i.b = tail call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.a, ptr noundef nonnull @.str.18) #25 ; 2 uses
  %i.c = load ptr, ptr @the_repository, align 8, !tbaa !137
  %i.d = tail call ptr @repo_config_values(ptr noundef %i.c) #25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.f, ptr %i.g, align 8, !tbaa !131
  %i.h = tail call fastcc range(i32 -1, 1) i32 @add_patterns(ptr noundef %i.b, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef null)
  tail call void @free(ptr noundef %i.b) #25
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @path_in_sparse_checkout(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 8, ptr %i.a, align 4, !tbaa !36
  %i.b = load i8, ptr %0, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %path_in_sparse_checkout_1.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @init_sparse_checkout_patterns(ptr noundef %1)
  %.not29.i = icmp eq i32 %i.c, 0
  br i1 %.not29.i, label %bb.c, label %path_in_sparse_checkout_1.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27 ; 2 uses
  %.not34.i = icmp eq i64 %i.d, 0
  br i1 %.not34.i, label %path_in_sparse_checkout_1.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = ptrtoint ptr %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.lr.ph.i
  %.02533.i = phi ptr [ %i.e, %.preheader.lr.ph.i ], [ %.0.i.lcssa, %.critedge.i ] ; 3 uses
  %.0.i7 = getelementptr inbounds i8, ptr %.02533.i, i64 -1 ; 3 uses
end_hunk_0
begin_hunk_1_@add_path_to_appropriate_result_list:bb.a
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21
  %i.aj = icmp eq i8 %i.ai, 47
  br i1 %i.aj, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr i8, ptr %i.w, i64 16
  %.val.i = load i32, ptr %i.ak, align 8, !tbaa !40
  %i.al = and i32 %.val.i, 16
  %.not.i36.i = icmp eq i32 %i.al, 0
  br i1 %.not.i36.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = tail call i32 @strncasecmp(ptr noundef nonnull readonly %i.ag, ptr noundef readonly %i.k, i64 noundef range(i64 -2147483648, 2147483648) %i.v) #27
  br label %ps_strncmp.exit38.i

bb.r:                                             ; preds = %bb.p
  %i.an = tail call i32 @strncmp(ptr noundef nonnull readonly %i.ag, ptr noundef readonly %i.k, i64 noundef range(i64 -2147483648, 2147483648) %i.v) #27
  br label %ps_strncmp.exit38.i

ps_strncmp.exit38.i:                              ; preds = %bb.r, %bb.q
  %.0.i37.i = phi i32 [ %i.am, %bb.q ], [ %i.an, %bb.r ]
  %.not34.i = icmp eq i32 %.0.i37.i, 0
  br i1 %.not34.i, label %exclude_matches_pathspec.exit, label %.critedge.i

.critedge.i:                                      ; preds = %ps_strncmp.exit38.i, %bb.o, %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %add_untracked.exit, label %bb.j, !llvm.loop !268

exclude_matches_pathspec.exit:                    ; preds = %ps_strncmp.exit38.i, %ps_strncmp.exit.i, %.exclude_matches_pathspec.exit_crit_edge
  %.pre-phi = phi i32 [ %.pre33, %.exclude_matches_pathspec.exit_crit_edge ], [ %i.n, %ps_strncmp.exit.i ], [ %i.n, %ps_strncmp.exit38.i ]
  %i.ao = phi ptr [ %.pre, %.exclude_matches_pathspec.exit_crit_edge ], [ %i.k, %ps_strncmp.exit.i ], [ %i.k, %ps_strncmp.exit38.i ]
  %i.ap = tail call ptr @dir_add_ignored(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %i.ao, i32 noundef %.pre-phi) ; 0 uses
  br label %add_untracked.exit

bb.s:                                             ; preds = %bb.a
  %i.aq = load i32, ptr %0, align 8, !tbaa !58
  %i.ar = and i32 %i.aq, 1
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.t, label %add_untracked.exit

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !27
  %i.aw = trunc i64 %i.av to i32
  tail call fastcc void @dir_add_name(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %i.at, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %2, align 8, !tbaa !156
  %.not23 = icmp eq ptr %i.ax, null
  br i1 %.not23, label %add_untracked.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !28
  %i.az = sext i32 %5 to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %.not.i28 = icmp eq ptr %1, null
  br i1 %.not.i28, label %add_untracked.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !36
  %i.bd = add i32 %i.bc, 1                        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !36 ; 2 uses
  %i.bg = icmp ugt i32 %i.bd, %i.bf
  br i1 %i.bg, label %st_mult.exit.i, label %bb.w

st_mult.exit.i:                                   ; preds = %bb.v
  %i.bh = mul i32 %i.bf, 3
  %i.bi = add i32 %i.bh, 48
  %i.bj = lshr i32 %i.bi, 1
  %..i = tail call i32 @llvm.umax.i32(i32 %i.bj, i32 %i.bd) ; 2 uses
  store i32 %..i, ptr %i.be, align 4, !tbaa !36
  %i.bk = zext i32 %..i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !158
  %i.bn = shl nuw nsw i64 %i.bk, 3
  %i.bo = tail call ptr @xrealloc(ptr noundef %i.bm, i64 noundef %i.bn) #25
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !158
  br label %bb.w

bb.w:                                             ; preds = %st_mult.exit.i, %bb.v
  %i.bp = tail call ptr @xstrdup(ptr noundef %i.ba) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !158
  %i.bs = load i32, ptr %i.bb, align 8, !tbaa !36 ; 2 uses
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bb, align 8, !tbaa !36
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bu
  store ptr %i.bp, ptr %i.bv, align 8, !tbaa !118
  br label %add_untracked.exit

add_untracked.exit:                               ; preds = %.critedge.i, %.preheader.i, %bb.g, %bb.f, %bb.w, %bb.u, %bb.a, %bb.t, %bb.s, %bb.c, %exclude_matches_pathspec.exit, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @directory_exists_in_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ignore_case, align 4, !tbaa !36
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @index_dir_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null) #25
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %directory_exists_in_index_icase.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @ignore_case, align 4, !tbaa !36
  %i.d = tail call ptr @index_file_exists(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.c) #25 ; 2 uses
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36
  %i.g = and i32 %i.f, 61440
  %i.h = icmp eq i32 %i.g, 57344
  br i1 %i.h, label %directory_exists_in_index_icase.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %directory_exists_in_index_icase.exit

bb.f:                                             ; preds = %bb.a
  %i.i = tail call i32 @index_name_pos(ptr noundef %0, ptr noundef %1, i32 noundef %2) #25 ; 2 uses
  %.lobit = ashr i32 %i.i, 31
  %spec.select = xor i32 %.lobit, %i.i            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !180  ; 2 uses
  %i.l = icmp ult i32 %spec.select, %i.k
  br i1 %i.l, label %.lr.ph, label %directory_exists_in_index_icase.exit

.lr.ph:                                           ; preds = %bb.f
  %i.m = load ptr, ptr %0, align 8, !tbaa !133
  %i.n = sext i32 %2 to i64                       ; 2 uses
  %i.o = zext i32 %spec.select to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 108 ; 2 uses
  %i.s = tail call i32 @strncmp(ptr noundef nonnull %i.r, ptr noundef %1, i64 noundef %i.n) #27
  %.not28 = icmp eq i32 %i.s, 0
  br i1 %.not28, label %bb.h, label %directory_exists_in_index_icase.exit

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21    ; 2 uses
  %i.v = icmp ugt i8 %i.u, 47
  br i1 %i.v, label %directory_exists_in_index_icase.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.u, label %bb.k [
    i8 47, label %directory_exists_in_index_icase.exit
    i8 0, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !36
  %i.y = and i32 %i.x, 61440
  %i.z = icmp eq i32 %i.y, 57344
  br i1 %i.z, label %directory_exists_in_index_icase.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.k, %lftr.wideiv
  br i1 %exitcond.not, label %directory_exists_in_index_icase.exit, label %bb.g

directory_exists_in_index_icase.exit:             ; preds = %bb.k, %bb.i, %bb.j, %bb.g, %bb.h, %bb.f, %bb.e, %bb.d, %bb.b
  %.2 = phi i32 [ 2, %bb.d ], [ 1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 2, %bb.j ], [ 1, %bb.i ], [ 0, %bb.k ], [ 0, %bb.h ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @treat_directory(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, ptr nofree noundef readonly captures(address_is_null) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.strbuf, align 8             ; 10 uses
  %i.a = add nsw i32 %4, -1
  %i.b = tail call fastcc i32 @directory_exists_in_index(ptr noundef %1, ptr noundef %3, i32 noundef %i.a) ; 2 uses
  switch i32 %i.b, label %default.unreachable169 [
    i32 1, label %match_pathspec_with_flags.exit.thread
    i32 2, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %match_pathspec_with_flags.exit.thread

default.unreachable169:                           ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %7, null
  %i.d = icmp ne i32 %6, 0                        ; 6 uses
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %match_pathspec_with_flags.exit.thread140, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call fastcc i32 @do_match_pathspec(ptr noundef %1, ptr noundef nonnull readonly %7, ptr noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef null, i32 noundef 4) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !45
  %i.h = and i32 %i.g, 32
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp ne i32 %i.e, 0
  %or.cond.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i, label %bb.e, label %match_pathspec_with_flags.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call fastcc i32 @do_match_pathspec(ptr noundef %1, ptr noundef nonnull readonly %7, ptr noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef null, i32 noundef 5)
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %match_pathspec_with_flags.exit.thread140, label %match_pathspec_with_flags.exit.thread

match_pathspec_with_flags.exit:                   ; preds = %bb.d
  %.not112 = icmp eq i32 %i.e, 0
  br i1 %.not112, label %match_pathspec_with_flags.exit.thread, label %match_pathspec_with_flags.exit.thread140

match_pathspec_with_flags.exit.thread140:         ; preds = %bb.e, %match_pathspec_with_flags.exit, %bb.c
  %.0103 = phi i32 [ 0, %bb.c ], [ %i.e, %match_pathspec_with_flags.exit ], [ %i.e, %bb.e ] ; 2 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.m = and i32 %i.l, 520
  %or.cond132.not = icmp eq i32 %i.m, 8
  br i1 %or.cond132.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %match_pathspec_with_flags.exit.thread140
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.connect_wt_gitdir_in_nested.sub_gd, i64 24, i1 false)
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #27
  call void @strbuf_add(ptr noundef nonnull %8, ptr noundef nonnull %3, i64 noundef %i.n) #25
  %i.o = call i32 @is_nonbare_repository_dir(ptr noundef nonnull %8) #25
  %.not115 = icmp eq i32 %i.o, 0
  br i1 %.not115, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  call void @strbuf_release(ptr noundef nonnull %8) #25
  br label %.thread145

bb.g:                                             ; preds = %bb.f
  call void @strbuf_add(ptr noundef nonnull %8, ptr noundef nonnull @.str.12, i64 noundef 4) #25
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.r = call ptr @real_pathdup(ptr noundef %i.q, i32 noundef 1) #25 ; 2 uses
  %i.s = load ptr, ptr @the_repository, align 8, !tbaa !137
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !179
  %i.u = call ptr @real_pathdup(ptr noundef %i.t, i32 noundef 1) #25 ; 2 uses
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %i.u) #27
  %.not117 = icmp eq i32 %i.v, 0
  call void @free(ptr noundef %i.u) #25
  call void @free(ptr noundef %i.r) #25
  call void @strbuf_release(ptr noundef nonnull %8) #25
  br i1 %.not117, label %.thread145, label %bb.h

.thread145:                                       ; preds = %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pre = load i32, ptr %0, align 8, !tbaa !58
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr %0, align 8, !tbaa !58
  %i.x = and i32 %i.w, 512
  %i.y = icmp ne i32 %i.x, 0
  %i.z = icmp eq i32 %.0103, 2
  %or.cond3 = or i1 %i.z, %i.y
  %9 = select i1 %i.d, i32 2, i32 3
  %spec.select137 = select i1 %or.cond3, i32 0, i32 %9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %match_pathspec_with_flags.exit.thread

bb.i:                                             ; preds = %.thread145, %match_pathspec_with_flags.exit.thread140
  %i.aa = phi i32 [ %.pre, %.thread145 ], [ %i.l, %match_pathspec_with_flags.exit.thread140 ] ; 7 uses
  %i.ab = and i32 %i.aa, 2
  %.not118 = icmp eq i32 %i.ab, 0
  br i1 %.not118, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ac = and i32 %i.aa, 288
  %i.ad = icmp eq i32 %i.ac, 288
  %or.cond134.not = and i1 %i.d, %i.ad
  br i1 %or.cond134.not, label %bb.k, label %match_pathspec_with_flags.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ae = and i32 %i.aa, 4
  %.not121 = icmp eq i32 %i.ae, 0
  br i1 %.not121, label %match_pathspec_with_flags.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call fastcc i32 @read_directory_recursive(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, i32 noundef %4, ptr noundef %2, i32 noundef 1, i32 noundef 1, ptr noundef %7)
  %i.ag = icmp eq i32 %i.af, 2
  %. = select i1 %i.ag, i32 2, i32 0
  br label %match_pathspec_with_flags.exit.thread

bb.m:                                             ; preds = %bb.i
  %i.ah = icmp eq i32 %.0103, 2
  br i1 %i.ah, label %match_pathspec_with_flags.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.d, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ai = and i32 %i.aa, 4
  %.not122 = icmp eq i32 %i.ai, 0
  %i.aj = and i32 %i.aa, 288
  %or.cond135.not = icmp eq i32 %i.aj, 288
  %or.cond149 = or i1 %.not122, %or.cond135.not
  br i1 %or.cond149, label %match_pathspec_with_flags.exit.thread, label %bb.p

.critedge:                                        ; preds = %bb.n
  %i.ak = and i32 %i.aa, 37
  %.not125 = icmp eq i32 %i.ak, 0
  br i1 %.not125, label %match_pathspec_with_flags.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge
  %i.al = and i32 %i.aa, 36
  %i.am = icmp eq i32 %i.al, 4                    ; 2 uses
  %i.an = zext i1 %i.am to i32
  %i.ao = and i1 %i.d, %i.am
  %i.ap = zext i1 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !94 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !92 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !74
  %i.aw = sext i32 %5 to i64
  %i.ax = getelementptr inbounds i8, ptr %3, i64 %i.aw
  %i.ay = sub nsw i32 %4, %5
  %i.az = call fastcc ptr @lookup_untracked(ptr noundef %i.av, ptr noundef %2, ptr noundef %i.ax, i32 noundef %i.ay)
  %i.ba = call fastcc i32 @read_directory_recursive(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, i32 noundef %4, ptr noundef %i.az, i32 noundef %i.an, i32 noundef %i.ap, ptr noundef %7) ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 2
  %.pre161 = load i32, ptr %0, align 8, !tbaa !58 ; 4 uses
  br i1 %i.bb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bc = and i32 %.pre161, 288
  %i.bd = icmp eq i32 %i.bc, 288
  br i1 %i.bd, label %bb.s, label %.preheader150

.preheader150:                                    ; preds = %bb.q
  %i.be = load i32, ptr %i.aq, align 8, !tbaa !94
  %i.bf = icmp slt i32 %i.ar, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader150
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = sext i32 %i.ar to i64
  %.pre159 = load ptr, ptr %i.bg, align 8, !tbaa !95
  br label %bb.r

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre160.pre = load i32, ptr %0, align 8, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader150
  %.pre160 = phi i32 [ %.pre160.pre, %._crit_edge.loopexit ], [ %.pre161, %.preheader150 ]
  store i32 %i.ar, ptr %i.aq, align 8, !tbaa !94
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %i.bi = phi ptr [ %.pre159, %.lr.ph ], [ %i.bl, %bb.r ]
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !154
  call void @free(ptr noundef %i.bk) #25
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %indvars.iv
  store ptr null, ptr %i.bm, align 8, !tbaa !154
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bn = load i32, ptr %i.aq, align 8, !tbaa !94
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.r, label %._crit_edge.loopexit, !llvm.loop !269

bb.s:                                             ; preds = %._crit_edge, %bb.q, %bb.p
  %i.bq = phi i32 [ %.pre161, %bb.p ], [ %.pre160, %._crit_edge ], [ %.pre161, %bb.q ]
  %.1105 = phi i32 [ %i.ba, %bb.p ], [ 2, %._crit_edge ], [ 0, %bb.q ] ; 2 uses
  %i.br = and i32 %i.bq, 160
  %or.cond136 = icmp eq i32 %i.br, 32
  br i1 %or.cond136, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.s
  %i.bs = load i32, ptr %i.as, align 4, !tbaa !92
  %i.bt = icmp slt i32 %i.at, %i.bs
  br i1 %i.bt, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = sext i32 %i.at to i64
  %.pre162 = load ptr, ptr %i.bu, align 8, !tbaa !93
  br label %bb.t

._crit_edge154:                                   ; preds = %bb.t, %.preheader
  store i32 %i.at, ptr %i.as, align 4, !tbaa !92
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph153, %bb.t
  %i.bw = phi ptr [ %.pre162, %.lr.ph153 ], [ %i.bz, %bb.t ]
  %indvars.iv156 = phi i64 [ %i.bv, %.lr.ph153 ], [ %indvars.iv.next157, %bb.t ] ; 3 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %indvars.iv156
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !154
  call void @free(ptr noundef %i.by) #25
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !93 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %indvars.iv156
  store ptr null, ptr %i.ca, align 8, !tbaa !154
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.cb = load i32, ptr %i.as, align 4, !tbaa !92
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next157, %i.cc
  br i1 %i.cd, label %bb.t, label %._crit_edge154, !llvm.loop !270

bb.u:                                             ; preds = %._crit_edge154, %bb.s
  %i.ce = icmp eq i32 %.1105, 0
  br i1 %i.ce, label %bb.v, label %match_pathspec_with_flags.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cf = load i32, ptr %0, align 8, !tbaa !58
  %i.cg = and i32 %i.cf, 4
  %.not131 = icmp eq i32 %i.cg, 0
  %10 = select i1 %i.d, i32 2, i32 3
  %spec.select = select i1 %.not131, i32 %10, i32 0
  br label %match_pathspec_with_flags.exit.thread

match_pathspec_with_flags.exit.thread:            ; preds = %bb.e, %bb.h, %bb.v, %bb.u, %.critedge, %bb.o, %bb.m, %bb.j, %bb.l, %bb.k, %match_pathspec_with_flags.exit, %bb.a, %bb.b
  %.1 = phi i32 [ %i.b, %bb.a ], [ 0, %bb.b ], [ 1, %bb.j ], [ 2, %bb.o ], [ 3, %.critedge ], [ 0, %bb.e ], [ 1, %bb.m ], [ %., %bb.l ], [ 2, %bb.k ], [ 0, %match_pathspec_with_flags.exit ], [ %spec.select137, %bb.h ], [ %spec.select, %bb.v ], [ %.1105, %bb.u ]
  ret i32 %.1
}

declare i32 @index_dir_find(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @is_nonbare_repository_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dir_add_name(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ignore_case, align 4, !tbaa !36
  %i.b = tail call ptr @index_file_exists(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.a) #25
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !92   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !271  ; 2 uses
  %.not21 = icmp slt i32 %i.d, %i.f
  br i1 %.not21, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.d, 1
  %i.h = mul i32 %i.f, 3
  %i.i = add i32 %i.h, 48
  %i.j = sdiv i32 %i.i, 2
  %. = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.g) ; 3 uses
  store i32 %., ptr %i.e, align 8, !tbaa !271
  %i.k = sext i32 %. to i64                       ; 2 uses
  %mul.ov.i = icmp slt i32 %., 0
  br i1 %mul.ov.i, label %bb.d, label %st_mult.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.37, i64 noundef 8, i64 noundef %i.k) #26
  unreachable

st_mult.exit:                                     ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = tail call ptr @xrealloc(ptr noundef %i.m, i64 noundef %i.n) #25
  store ptr %i.o, ptr %i.l, align 8, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %st_mult.exit
  %i.p = sext i32 %3 to i64                       ; 3 uses
  %i.q = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.p, i64 4) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.f, label %st_add.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.36, i64 noundef 4, i64 noundef %i.p) #26
  unreachable

st_add.exit.i:                                    ; preds = %bb.e
  %i.s = extractvalue { i64, i1 } %i.q, 0         ; 2 uses
  %i.t = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.s, i64 1) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.g, label %dir_entry_new.exit

bb.g:                                             ; preds = %st_add.exit.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.36, i64 noundef %i.s, i64 noundef 1) #26
  unreachable

dir_entry_new.exit:                               ; preds = %st_add.exit.i
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = tail call noundef ptr @xcalloc(i64 noundef 1, i64 noundef %i.v) #25 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr readonly align 1 %2, i64 %i.p, i1 false)
  store i32 %3, ptr %i.w, align 4, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !92  ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !92
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ac
  store ptr %i.w, ptr %i.ad, align 8, !tbaa !154
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %dir_entry_new.exit
  ret void
}

declare void @warning_errno(ptr noundef, ...) local_unnamed_addr #2

declare void @refresh_fsmonitor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #22

declare i32 @trace2_is_enabled() local_unnamed_addr #2

declare void @trace2_data_string_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @trace2_data_intmax_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @repo_resolve_gitlink_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ewah_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @repo_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @repo_read_index(ptr noundef) local_unnamed_addr #2

declare void @ensure_full_index(ptr noundef) local_unnamed_addr #2

declare ptr @submodule_from_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @null_oid(ptr noundef) local_unnamed_addr #2

declare i32 @is_submodule_active(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @submodule_name_to_gitdir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @repo_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = distinct !{!4, !22}
!5 = distinct !{!5, !22}
!6 = distinct !{!6, !22}
!7 = distinct !{!7, !22}
!8 = distinct !{!8, !22}
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 8, !"PIC Level", i32 2}
end_hunk_1
