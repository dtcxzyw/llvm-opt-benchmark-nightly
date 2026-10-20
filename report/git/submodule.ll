Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/submodule?download=true
inline.NumInlined: 118
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@get_next_submodule:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !257
  call void @strvec_pushv(ptr noundef nonnull %0, ptr noundef %i.ed) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %get_fetch_task_from_changed.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !258
  call void @strvec_pushv(ptr noundef nonnull %0, ptr noundef %i.ef) #18
  %i.eg = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !154
  %i.ei = call ptr @strvec_push(ptr noundef nonnull %0, ptr noundef %i.eh) #18 ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !144
  %i.el = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !152
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !129
  %i.eo = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %0, ptr noundef nonnull @.str.135, ptr noundef %i.ek, ptr noundef %i.en) #18 ; 0 uses
  store ptr %.0, ptr %3, align 8, !tbaa !255
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !152
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !60
  %i.et = call ptr @string_list_insert(ptr noundef nonnull %i.ep, ptr noundef %i.es) #18 ; 0 uses
  br label %bb.ai

.loopexit:                                        ; preds = %bb.ac, %.loopexit73
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !155 ; 3 uses
  %.not54 = icmp eq i32 %i.ev, 0
  br i1 %.not54, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !146
  %i.ey = sext i32 %i.ev to i64
  %i.ez = getelementptr [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !157 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(136) @__const.absorb_git_dir_into_superproject_recurse.cp, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.relocate_single_git_dir_into_superproject.new_gitdir, i64 24, i1 false)
  %i.fc = add nsw i32 %i.ev, -1
  store i32 %i.fc, ptr %i.eu, align 8, !tbaa !155
  call void @child_process_init(ptr noundef %0) #18
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @prepare_other_repo_env(ptr noundef nonnull %i.fd, ptr noundef nonnull @.str.147) #18
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 8
  %i.fg = or i8 %i.ff, 8
  store i8 %i.fg, ptr %i.fe, align 8
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !151
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !127
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !125
  call void @strvec_init(ptr noundef %0) #18
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !258
  call void @strvec_pushv(ptr noundef %0, ptr noundef %i.fl) #18
  %i.fm = call ptr @strvec_push(ptr noundef %0, ptr noundef nonnull @.str.136) #18 ; 0 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !144
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !152
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !129
  %i.fs = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef %0, ptr noundef nonnull @.str.135, ptr noundef %i.fo, ptr noundef %i.fr) #18 ; 0 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i8 8, ptr %i.ft, align 8
  %i.fu = load ptr, ptr %i.fp, align 8, !tbaa !152
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !129
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %5, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.137, ptr noundef %i.fv, ptr noundef null) #18
  %i.fw = call i32 @pipe_command(ptr noundef nonnull %5, ptr noundef null, i64 noundef 0, ptr noundef nonnull %6, i64 noundef 0, ptr noundef null, i64 noundef 0) #18
  %.not55 = icmp eq i32 %i.fw, 0
  br i1 %.not55, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @strbuf_trim_trailing_newline(ptr noundef nonnull %6) #18
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !62
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.str.138.sink = phi ptr [ %i.fy, %bb.ag ], [ @.str.138, %bb.af ]
  %i.fz = call ptr @strvec_push(ptr noundef nonnull %0, ptr noundef %.str.138.sink) #18 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %6) #18
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !158
  %i.gc = call i32 @oid_array_for_each_unique(ptr noundef %i.gb, ptr noundef nonnull @append_oid_to_argv, ptr noundef nonnull %0) #18 ; 0 uses
  store ptr %i.fb, ptr %3, align 8, !tbaa !255
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %bb.ah, %bb.ae
  %.050 = phi i32 [ 1, %bb.ae ], [ 1, %bb.ah ], [ 0, %.loopexit ]
  ret i32 %.050
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fetch_start_failure(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((60, 64)) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 1, ptr %i.a, align 4, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8               ; 2 uses
  %i.d = and i8 %i.c, 1
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  tail call void @free(ptr noundef %i.f) #18
  %.pre.i = load i8, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i8 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.h = and i8 %i.g, -2
  store i8 %i.h, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !152
  %i.j = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %.not10.i = icmp eq ptr %i.j, null
  br i1 %.not10.i, label %fetch_task_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @repo_clear(ptr noundef nonnull %i.j) #18
  %.pre11.i = load ptr, ptr %2, align 8, !tbaa !151
  br label %fetch_task_free.exit

fetch_task_free.exit:                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.c ], [ %.pre11.i, %bb.d ]
  tail call void @free(ptr noundef %i.k) #18
  store ptr null, ptr %2, align 8, !tbaa !151
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @strvec_clear(ptr noundef nonnull %i.l) #18
  tail call void @free(ptr noundef nonnull %2) #18
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fetch_finish(i32 noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %.not38 = icmp eq ptr %i.b, null
  br i1 %.not38, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.21, i32 noundef 1780, ptr noundef nonnull @.str.148) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not39 = icmp eq i32 %0, 0
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 1, ptr %i.c, align 4, !tbaa !147
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.149, ptr noundef %i.f) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %.not40 = icmp eq ptr %i.h, null
  br i1 %.not40, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = tail call ptr @string_list_lookup(ptr noundef nonnull %i.i, ptr noundef %i.l) #18 ; 2 uses
  %.not41 = icmp eq ptr %i.m, null
  br i1 %.not41, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !128  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !151
  tail call void @oid_array_filter(ptr noundef nonnull %i.p, ptr noundef nonnull @commit_missing_in_sub, ptr noundef %i.q) #18
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !259
  %.not42 = icmp eq i64 %i.s, 0
  br i1 %.not42, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.p, ptr %i.g, align 8, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !155  ; 2 uses
  %4 = add nsw i32 %i.u, 1                        ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !260  ; 2 uses
  %5 = icmp sgt i32 %4, %i.w
  br i1 %5, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 144
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !146
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.x = mul i32 %i.w, 3
  %i.y = add i32 %i.x, 48
  %i.z = sdiv i32 %i.y, 2
  %. = tail call i32 @llvm.smax.i32(i32 %i.z, i32 %4) ; 3 uses
  store i32 %., ptr %i.v, align 4, !tbaa !260
  %i.aa = sext i32 %. to i64                      ; 2 uses
  %i.ab = icmp slt i32 %., 0
  br i1 %i.ab, label %bb.k, label %st_mult.exit

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.150, i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %i.aa) #20
  unreachable

st_mult.exit:                                     ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !146
  %i.ae = shl nuw nsw i64 %i.aa, 3
  %i.af = tail call ptr @xrealloc(ptr noundef %i.ad, i64 noundef %i.ae) #18 ; 2 uses
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !146
  %.pre45 = load i32, ptr %i.t, align 8, !tbaa !155 ; 2 uses
  %.pre44 = add nsw i32 %.pre45, 1
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %st_mult.exit
  %.pre-phi = phi i32 [ %4, %._crit_edge ], [ %.pre44, %st_mult.exit ]
  %i.ag = phi i32 [ %i.u, %._crit_edge ], [ %.pre45, %st_mult.exit ]
  %i.ah = phi ptr [ %.pre, %._crit_edge ], [ %i.af, %st_mult.exit ]
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  store ptr %3, ptr %i.aj, align 8, !tbaa !157
  store i32 %.pre-phi, ptr %i.t, align 8, !tbaa !155
  br label %bb.q

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8             ; 2 uses
  %i.am = and i8 %i.al, 1
  %.not.i = icmp eq i8 %i.am, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !152
  tail call void @free(ptr noundef %i.an) #18
  %.pre.i = load i8, ptr %i.ak, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = phi i8 [ %.pre.i, %bb.n ], [ %i.al, %bb.m ]
  %i.ap = and i8 %i.ao, -2
  store i8 %i.ap, ptr %i.ak, align 8
  store ptr null, ptr %i.a, align 8, !tbaa !152
  %i.aq = load ptr, ptr %3, align 8, !tbaa !151   ; 2 uses
  %.not10.i = icmp eq ptr %i.aq, null
  br i1 %.not10.i, label %fetch_task_free.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @repo_clear(ptr noundef nonnull %i.aq) #18
  %.pre11.i = load ptr, ptr %3, align 8, !tbaa !151
  br label %fetch_task_free.exit

fetch_task_free.exit:                             ; preds = %bb.o, %bb.p
  %i.ar = phi ptr [ null, %bb.o ], [ %.pre11.i, %bb.p ]
  tail call void @free(ptr noundef %i.ar) #18
  store ptr null, ptr %3, align 8, !tbaa !151
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @strvec_clear(ptr noundef nonnull %i.as) #18
  tail call void @free(ptr noundef nonnull %3) #18
  br label %bb.q

bb.q:                                             ; preds = %fetch_task_free.exit, %bb.l
  ret i32 0
}

declare i32 @repo_read_index(ptr noundef) local_unnamed_addr #2

declare void @strvec_pushv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @string_list_sort(ptr noundef) local_unnamed_addr #2

declare void @run_processes_parallel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @is_submodule_modified(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.child_process, align 8      ; 11 uses
  %3 = alloca %struct.strbuf, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.absorb_git_dir_into_superproject_recurse.cp, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.relocate_single_git_dir_into_superproject.new_gitdir, i64 24, i1 false)
  %i.a = tail call i32 @validate_submodule_path(ptr noundef %0)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @common_exit(ptr noundef nonnull @.str.21, i32 noundef 1890, i32 noundef 128) #18
  tail call void @exit(i32 noundef %i.c) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.14, ptr noundef %0) #18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = call ptr @read_gitfile_gently(ptr noundef %i.e, ptr noundef null) #18 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %i.d, align 8
  %spec.select = select i1 %.not, ptr %i.g, ptr %i.f ; 3 uses
  %i.h = call i32 @is_git_directory(ptr noundef %spec.select) #18
  %.not29 = icmp eq i32 %i.h, 0
  br i1 %.not29, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @is_directory(ptr noundef %spec.select) #18
  %.not30 = icmp eq i32 %i.i, 0
  br i1 %.not30, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call fastcc ptr @_(ptr noundef nonnull @.str.54)
  call void (ptr, ...) @die(ptr noundef %i.j, ptr noundef %spec.select) #20
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !121
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %.not9.i = icmp eq ptr %i.l, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.l, align 1, !tbaa !63
  br label %strbuf_setlen.exit

bb.h:                                             ; preds = %bb.f
  %i.m = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !63
  %.not10.i = icmp eq i8 %i.m, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.152, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #20
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.g, %bb.h
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef null) #18
  %i.n = icmp ne i32 %1, 0                        ; 2 uses
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %strbuf_setlen.exit
  %i.o = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull @.str.57) #18 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %strbuf_setlen.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @prepare_other_repo_env(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.28) #18
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = or i8 %i.r, 9
  store i8 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  store i32 -1, ptr %i.t, align 4, !tbaa !126
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %0, ptr %i.u, align 8, !tbaa !125
  %i.v = call i32 @start_command(ptr noundef nonnull %2) #18
  %.not31 = icmp eq i32 %i.v, 0
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = call fastcc ptr @_(ptr noundef nonnull @.str.58)
  call void (ptr, ...) @die(ptr noundef %i.w, ptr noundef %0) #20
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.x = load i32, ptr %i.t, align 4, !tbaa !126
  %i.y = call ptr @xfdopen(i32 noundef %i.x, ptr noundef nonnull @.str.59) #18 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.w, %bb.m
  %.024 = phi i32 [ 0, %bb.m ], [ %.3, %bb.w ]    ; 3 uses
  %i.z = call i32 @strbuf_getwholeline(ptr noundef nonnull %3, ptr noundef %i.y, i32 noundef 10) #18
  %.not32.not.not.not.not.not = icmp ne i32 %i.z, -1 ; 2 uses
  br i1 %.not32.not.not.not.not.not, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !62  ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !63  ; 3 uses
  %i.ac = icmp eq i8 %i.ab, 63
  %i.ad = or i32 %.024, 1                         ; 2 uses
  %spec.select35 = select i1 %i.ac, i32 %i.ad, i32 %.024 ; 3 uses
  switch i8 %i.ab, label %bb.w [
    i8 117, label %bb.p
    i8 49, label %bb.p
    i8 50, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !121
  %i.af = icmp ult i64 %i.ae, 9
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.21, i32 noundef 1929, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.aa) #20
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 5 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !63
  %i.ai = icmp eq i8 %i.ah, 83
  br i1 %i.ai, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !63
  %i.al = icmp eq i8 %i.ak, 85
  %spec.select36 = select i1 %i.al, i32 %i.ad, i32 %spec.select35
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2 = phi i32 [ %spec.select35, %bb.r ], [ %spec.select36, %bb.s ] ; 2 uses
  switch i8 %i.ab, label %bb.u [
    i8 117, label %bb.v
    i8 50, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.am = load i32, ptr %i.ag, align 1
  %i.an = icmp ne i32 %i.am, 1429089875
  %i.ao = zext i1 %i.an to i32
  %.not33 = icmp eq i32 %i.ao, 0
  br i1 %.not33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.u
  %i.ap = or i32 %.2, 2
end_hunk_0
