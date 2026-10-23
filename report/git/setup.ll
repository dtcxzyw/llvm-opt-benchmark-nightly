Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/setup?download=true
inline.NumInlined: 186
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@discover_git_directory_reason:bb.a
bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit33:                             ; preds = %bb.r, %bb.s
  %i.bk = load i64, ptr %1, align 8, !tbaa !22
  %spec.select.i34 = call i64 @llvm.usub.sat.i64(i64 %i.bk, i64 1)
  %i.bl = icmp ugt i64 %i.b, %spec.select.i34
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %strbuf_setlen.exit33
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.96, i32 noundef 167, ptr noundef nonnull @.str.97) #21
  unreachable

bb.v:                                             ; preds = %strbuf_setlen.exit33
  store i64 %i.b, ptr %i.a, align 8, !tbaa !21
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !20 ; 2 uses
  %.not9.i35 = icmp eq ptr %i.bm, @strbuf_slopbuf
  br i1 %.not9.i35, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.b
  store i8 0, ptr %i.bn, align 1, !tbaa !13
  br label %strbuf_setlen.exit37

bb.x:                                             ; preds = %bb.v
  %i.bo = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !13
  %.not10.i36 = icmp eq i8 %i.bo, 0
  br i1 %.not10.i36, label %strbuf_setlen.exit37, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit37:                             ; preds = %bb.w, %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @string_list_clear(ptr noundef nonnull %i.bp, i32 noundef 0) #20
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @string_list_clear(ptr noundef nonnull %i.bq, i32 noundef 0) #20
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !58
  call void @free(ptr noundef %i.bs) #20
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59
  call void @free(ptr noundef %i.bu) #20
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !60
  call void @free(ptr noundef %i.bw) #20
  br label %bb.aa

bb.z:                                             ; preds = %strbuf_setlen.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @string_list_clear(ptr noundef nonnull %i.bx, i32 noundef 0) #20
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @string_list_clear(ptr noundef nonnull %i.by, i32 noundef 0) #20
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !58
  call void @free(ptr noundef %i.ca) #20
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !59
  call void @free(ptr noundef %i.cc) #20
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !60
  call void @free(ptr noundef %i.ce) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z, %strbuf_setlen.exit37, %bb.c
  %.0 = phi i32 [ %i.m, %bb.z ], [ %i.m, %bb.c ], [ -6, %strbuf_setlen.exit37 ], [ -7, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %.0
}

declare i32 @strbuf_getcwd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -5, 4) i32 @setup_git_directory_gently_1(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %5 = alloca %struct.string_list, align 8        ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.123) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 23 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %.val = load i8, ptr %i.g, align 1, !tbaa !13
  %i.h = icmp eq i8 %.val, 47                     ; 2 uses
  %i.i = zext i1 %i.h to i32                      ; 2 uses
  %i.j = tail call ptr @getenv(ptr noundef nonnull @.str.57) #20 ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #19
  tail call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.j, i64 noundef %i.k) #20
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %.not92 = icmp eq ptr %i.d, null
  br i1 %.not92, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.l = or disjoint i32 %i.i, -2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.m = call i32 @string_list_split(ptr noundef nonnull %5, ptr noundef nonnull %i.d, ptr noundef nonnull @setup_git_directory_gently_1.path_sep, i32 noundef -1) #20 ; 0 uses
  call void @filter_string_list(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull @canonicalize_ceiling_entry, ptr noundef nonnull %i.b) #20
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.o = call i32 @longest_ancestor_length(ptr noundef %i.n, ptr noundef nonnull %5) #20
  %.fr = freeze i32 %i.o                          ; 2 uses
  call void @string_list_clear(ptr noundef nonnull %5, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.p = icmp slt i32 %.fr, 0
  %i.q = or disjoint i32 %i.i, -2
  %spec.select = select i1 %i.p, i32 %i.q, i32 %.fr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.r = phi i32 [ %spec.select, %bb.d ], [ %i.l, %.thread ]
  br i1 %i.h, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %.not9 = icmp eq i8 %i.w, 47
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %0, align 8, !tbaa !22
  %i.y = and i64 %i.x, -3
  %or.cond = icmp eq i64 %i.y, 0
  br i1 %or.cond, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %bb.h
  call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #20
  %.pre.i = load i64, ptr %i.s, align 8, !tbaa !21 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !20
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %bb.h, %strbuf_avail.exit.thread.i
  %i.z = phi ptr [ %.pre, %strbuf_avail.exit.thread.i ], [ %i.v, %bb.h ]
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ 2, %bb.h ]
  %i.aa = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ 1, %bb.h ]
  store i64 %.pre-phi.i, ptr %i.s, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 47, ptr %i.ab, align 1, !tbaa !13
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  store i8 0, ptr %i.ae, align 1, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %strbuf_addch.exit, %bb.g, %bb.f, %bb.e
  %.078 = phi i32 [ 1, %bb.g ], [ 2, %strbuf_addch.exit ], [ 1, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.af = call i32 @git_env_bool(ptr noundef nonnull @.str.124, i32 noundef 0) #20
  %.not95 = icmp eq i32 %i.af, 0                  ; 2 uses
  br i1 %.not95, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ah = call i32 @stat64(ptr noundef %i.ag, ptr noundef nonnull %4) #20
  %.not.i111 = icmp eq i32 %i.ah, 0
  br i1 %.not.i111, label %get_device_or_die.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = call fastcc ptr @_(ptr noundef nonnull @.str.129)
  call void (ptr, ...) @die_errno(ptr noundef %i.ai, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, ptr noundef %i.ag) #21
  unreachable

get_device_or_die.exit:                           ; preds = %bb.j
  %i.aj = load i64, ptr %4, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.l

bb.l:                                             ; preds = %get_device_or_die.exit, %bb.i
  %.077 = phi i64 [ %i.aj, %get_device_or_die.exit ], [ 0, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not100 = icmp eq i32 %2, 0                    ; 3 uses
  %i.al = sext i32 %i.r to i64                    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !21 ; 5 uses
  %i.an = trunc i64 %i.am to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !14
  %i.ao = icmp slt i32 %.078, %i.an               ; 2 uses
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = load i64, ptr %0, align 8, !tbaa !22    ; 2 uses
  %.not.i.i112 = icmp eq i64 %i.ap, 0
  %.neg.i114 = add i64 %i.am, 1                   ; 2 uses
  %.not.i115 = icmp eq i64 %i.ap, %.neg.i114
  %or.cond8 = or i1 %.not.i.i112, %.not.i115
  br i1 %or.cond8, label %strbuf_avail.exit.thread.i117, label %strbuf_addch.exit121

strbuf_avail.exit.thread.i117:                    ; preds = %bb.n
  call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #20
  %.pre.i119 = load i64, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  %.pre7.i120 = add i64 %.pre.i119, 1
  br label %strbuf_addch.exit121

strbuf_addch.exit121:                             ; preds = %bb.n, %strbuf_avail.exit.thread.i117
  %.pre-phi.i116 = phi i64 [ %.pre7.i120, %strbuf_avail.exit.thread.i117 ], [ %.neg.i114, %bb.n ]
  %i.aq = phi i64 [ %.pre.i119, %strbuf_avail.exit.thread.i117 ], [ %i.am, %bb.n ]
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !20
  store i64 %.pre-phi.i116, ptr %i.ak, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 47, ptr %i.as, align 1, !tbaa !13
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.au = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  store i8 0, ptr %i.av, align 1, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %strbuf_addch.exit121, %bb.m
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, i64 noundef 4) #20
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.ax = call ptr @read_gitfile_gently(ptr noundef %i.aw, ptr noundef nonnull %i.c) ; 2 uses
  %.not96 = icmp eq ptr %i.ax, null
  br i1 %.not96, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !14  ; 2 uses
  switch i32 %i.ay, label %bb.w [
    i32 9, label %bb.z
    i32 10, label %bb.q
    i32 1, label %bb.s
    i32 2, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.ba = call i32 @is_git_directory(ptr noundef %i.az)
  %.not99 = icmp eq i32 %i.ba, 0
  br i1 %.not99, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bc = call ptr @xstrdup(ptr noundef %i.bb) #20
  br label %bb.z

bb.s:                                             ; preds = %bb.p
  br i1 %.not100, label %.critedge.thread5, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = call fastcc ptr @_(ptr noundef nonnull @.str.125)
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !20
  call void (ptr, ...) @die(ptr noundef %i.bd, ptr noundef %i.be) #21
  unreachable

bb.u:                                             ; preds = %bb.p
  br i1 %.not100, label %.critedge.thread5, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = call fastcc ptr @_(ptr noundef nonnull @.str.126)
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !20
  call void (ptr, ...) @die(ptr noundef %i.bf, ptr noundef %i.bg) #21
  unreachable

bb.w:                                             ; preds = %bb.p
  br i1 %.not100, label %.critedge.thread5, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !20
  call void @read_gitfile_error_die(i32 noundef %i.ay, ptr noundef %i.bh, ptr noundef null)
  br label %bb.z

bb.y:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bj = call ptr @xstrdup(ptr noundef %i.bi) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.p, %bb.x, %bb.r, %bb.q, %bb.y
  %.080 = phi ptr [ %i.ax, %bb.y ], [ null, %bb.x ], [ null, %bb.p ], [ @.str.19, %bb.r ], [ null, %bb.q ] ; 4 uses
  %.074 = phi ptr [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.p ], [ %i.bc, %bb.r ], [ null, %bb.q ] ; 3 uses
  %.073 = phi ptr [ %i.bj, %bb.y ], [ null, %bb.x ], [ null, %bb.p ], [ null, %bb.r ], [ null, %bb.q ] ; 2 uses
  %sext = shl i64 %i.am, 32
  %i.bk = ashr exact i64 %sext, 32                ; 3 uses
  %i.bl = load i64, ptr %0, align 8, !tbaa !22
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 1)
  %i.bm = icmp ugt i64 %i.bk, %spec.select.i
  br i1 %i.bm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.96, i32 noundef 167, ptr noundef nonnull @.str.97) #21
  unreachable

bb.ab:                                            ; preds = %bb.z
  store i64 %i.bk, ptr %i.ak, align 8, !tbaa !21
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %.not9.i = icmp eq ptr %i.bn, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk
  store i8 0, ptr %i.bo, align 1, !tbaa !13
  br label %strbuf_setlen.exit

bb.ad:                                            ; preds = %bb.ab
  %i.bp = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !13
  %.not10.i = icmp eq i8 %i.bp, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.ac, %bb.ad
  %.not101 = icmp eq ptr %.080, null
  br i1 %.not101, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %strbuf_setlen.exit
  %.not109 = icmp eq ptr %.074, null
  %i.bq = select i1 %.not109, ptr %.080, ptr %.074
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bs = call fastcc i32 @ensure_valid_ownership(ptr noundef %.073, ptr noundef %i.br, ptr noundef nonnull %i.bq)
  %.not110 = icmp eq i32 %i.bs, 0
  br i1 %.not110, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.080) #19
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %.080, i64 noundef %i.bt) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.0 = phi i32 [ 2, %bb.ag ], [ -4, %bb.af ]
  call void @free(ptr noundef %.074) #20
  call void @free(ptr noundef %.073) #20
  br label %.critedge.thread5

bb.ai:                                            ; preds = %strbuf_setlen.exit
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bv = call i32 @is_git_directory(ptr noundef %i.bu)
  %.not102 = icmp eq i32 %i.bv, 0
  br i1 %.not102, label %6, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !20
  call void @trace2_data_string_fl(ptr noundef nonnull @.str.18, i32 noundef 1675, ptr noundef nonnull @.str.127, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef %i.bw) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 1, ptr %i.a, align 4, !tbaa !14
  call void @git_protected_config(ptr noundef nonnull @allowed_bare_repo_cb, ptr noundef nonnull %i.a) #20
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ak, label %is_implicit_bare_repo.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bz = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.ca = call i32 @ends_with_path_components(ptr noundef %i.bz, ptr noundef nonnull @.str.19) #20
  %.not.i122 = icmp eq i32 %i.ca, 0
  br i1 %.not.i122, label %bb.al, label %is_implicit_bare_repo.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.cb = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(1) @.str.130) #19
  %.not3.i = icmp eq ptr %i.cb, null
  br i1 %.not3.i, label %is_implicit_bare_repo.exit, label %is_implicit_bare_repo.exit.thread

is_implicit_bare_repo.exit:                       ; preds = %bb.al
  %i.cc = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(1) @.str.131) #19
  %.not4.i.not = icmp eq ptr %i.cc, null
  br i1 %.not4.i.not, label %.critedge.thread5, label %is_implicit_bare_repo.exit.thread

is_implicit_bare_repo.exit.thread:                ; preds = %bb.ak, %bb.al, %is_implicit_bare_repo.exit, %bb.aj
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.ce = call fastcc i32 @ensure_valid_ownership(ptr noundef null, ptr noundef null, ptr noundef %i.cd)
  %.not108 = icmp eq i32 %i.ce, 0
  br i1 %.not108, label %.critedge.thread5, label %bb.am

bb.am:                                            ; preds = %is_implicit_bare_repo.exit.thread
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull @.str.23, i64 noundef 1) #20
  br label %.critedge.thread5

6:                                                ; preds = %bb.ai
  br i1 %i.ao, label %.preheader.preheader, label %.critedge.thread5

.preheader.preheader:                             ; preds = %6
  %7 = and i64 %i.am, 4294967295
  %indvars.iv.next124 = add nsw i64 %7, -1        ; 2 uses
  %8 = icmp sgt i64 %indvars.iv.next124, %i.al
  br i1 %8, label %.lr.ph.preheader, label %.critedge.thread5

.lr.ph.preheader:                                 ; preds = %.preheader.preheader
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next125, -1 ; 2 uses
  %i.cg = icmp sgt i64 %indvars.iv.next, %i.al
  br i1 %i.cg, label %.lr.ph, label %.critedge.thread5, !llvm.loop !102

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader
  %indvars.iv.next125 = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.next124, %.lr.ph.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %indvars.iv.next125
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %.not10 = icmp eq i8 %i.ci, 47
  br i1 %.not10, label %bb.an, label %.preheader, !llvm.loop !102

bb.an:                                            ; preds = %.lr.ph
  %i.cj = trunc nsw i64 %indvars.iv.next125 to i32 ; 2 uses
  %i.ck = call i32 @llvm.smax.i32(i32 %i.cj, i32 %.078)
  %i.cl = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cm = load i64, ptr %0, align 8, !tbaa !22
  %spec.select.i123 = call i64 @llvm.usub.sat.i64(i64 %i.cm, i64 1)
  %i.cn = icmp ult i64 %spec.select.i123, %i.cl
  br i1 %i.cn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.96, i32 noundef 167, ptr noundef nonnull @.str.97) #21
  unreachable

bb.ap:                                            ; preds = %bb.an
  store i64 %i.cl, ptr %i.ak, align 8, !tbaa !21
  %.not9.i124 = icmp eq ptr %i.cf, @strbuf_slopbuf
  br i1 %.not9.i124, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !13
  br label %strbuf_setlen.exit126

bb.ar:                                            ; preds = %bb.ap
  %i.cp = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !13
  %.not10.i125 = icmp eq i8 %i.cp, 0
  br i1 %.not10.i125, label %strbuf_setlen.exit126, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit126:                            ; preds = %bb.aq, %bb.ar
  br i1 %.not95, label %bb.at, label %.critedge

bb.at:                                            ; preds = %strbuf_setlen.exit126
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.cr = call i32 @stat64(ptr noundef %i.cq, ptr noundef nonnull %3) #20
  %.not.i127 = icmp eq i32 %i.cr, 0
  br i1 %.not.i127, label %get_device_or_die.exit128, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cs = call fastcc ptr @_(ptr noundef nonnull @.str.129)
  call void (ptr, ...) @die_errno(ptr noundef %i.cs, i32 noundef range(i32 -1, 2147483647) %i.cj, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, ptr noundef %i.cq) #21
  unreachable

get_device_or_die.exit128:                        ; preds = %bb.at
  %i.ct = load i64, ptr %3, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not106 = icmp eq i64 %.077, %i.ct
  br i1 %.not106, label %.critedge, label %.critedge.thread5

.critedge.thread5:                                ; preds = %bb.w, %6, %get_device_or_die.exit128, %.preheader.preheader, %.preheader, %bb.ah, %bb.am, %is_implicit_bare_repo.exit, %is_implicit_bare_repo.exit.thread, %bb.u, %bb.s
  %.182.ph = phi i32 [ %.0, %bb.ah ], [ -3, %bb.s ], [ -3, %bb.u ], [ -5, %is_implicit_bare_repo.exit ], [ 3, %bb.am ], [ -4, %is_implicit_bare_repo.exit.thread ], [ -1, %.preheader ], [ -3, %bb.w ], [ -1, %6 ], [ -2, %get_device_or_die.exit128 ], [ -1, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.av

.critedge:                                        ; preds = %strbuf_setlen.exit126, %get_device_or_die.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.m

bb.av:                                            ; preds = %.critedge.thread5, %bb.b
  %.2 = phi i32 [ 1, %bb.b ], [ %.182.ph, %.critedge.thread5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare void @strbuf_insert(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @warning(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @apply_repository_format(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @verify_repository_format(ptr noundef %1, ptr noundef %3)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %2, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %xstrdup_or_null.exit29, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.14) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %xstrdup_or_null.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @xstrdup(ptr noundef nonnull %i.d) #20
  br label %xstrdup_or_null.exit

xstrdup_or_null.exit:                             ; preds = %bb.c, %bb.d
  %i.f = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.g = tail call ptr @getenv(ptr noundef nonnull @.str.47) #20 ; 2 uses
  %.not.i28 = icmp eq ptr %i.g, null
  br i1 %.not.i28, label %xstrdup_or_null.exit29, label %bb.e

bb.e:                                             ; preds = %xstrdup_or_null.exit
  %i.h = tail call ptr @xstrdup(ptr noundef nonnull %i.g) #20
  br label %xstrdup_or_null.exit29

xstrdup_or_null.exit29:                           ; preds = %bb.e, %xstrdup_or_null.exit, %bb.b
  %.026 = phi ptr [ null, %bb.b ], [ %i.f, %xstrdup_or_null.exit ], [ %i.f, %bb.e ] ; 2 uses
  %.0 = phi ptr [ null, %bb.b ], [ null, %xstrdup_or_null.exit ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !65
  tail call void @repo_set_hash_algo(ptr noundef %0, i32 noundef %i.j) #20
  %i.k = tail call ptr @odb_new(ptr noundef %0, ptr noundef %.026, ptr noundef %.0) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !66
  tail call void @repo_set_compat_hash_algo(ptr noundef %0, i32 noundef %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60
  tail call void @repo_set_ref_storage_format(ptr noundef %0, i32 noundef %i.p, ptr noundef %i.r) #20
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i32 %i.v, ptr %i.w, align 4, !tbaa !105
  %i.x = load <2 x i32>, ptr %i.s, align 8, !tbaa !14
  store <2 x i32> %i.x, ptr %i.t, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59   ; 2 uses
  %.not.i30 = icmp eq ptr %i.z, null
  br i1 %.not.i30, label %xstrdup_or_null.exit31, label %bb.f

bb.f:                                             ; preds = %xstrdup_or_null.exit29
  %i.aa = tail call ptr @xstrdup(ptr noundef nonnull %i.z) #20
  br label %xstrdup_or_null.exit31

xstrdup_or_null.exit31:                           ; preds = %xstrdup_or_null.exit29, %bb.f
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %xstrdup_or_null.exit29 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !106
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !107
  tail call void @free(ptr noundef %.0) #20
  tail call void @free(ptr noundef %.026) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %xstrdup_or_null.exit31
  %.027 = phi i32 [ 0, %xstrdup_or_null.exit31 ], [ -1, %bb.a ]
  ret i32 %.027
}

declare void @repo_set_hash_algo(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @odb_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @repo_set_compat_hash_algo(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @repo_set_ref_storage_format(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @enter_repo(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 4 uses
  %4 = alloca %struct.strbuf, align 8             ; 5 uses
  %5 = alloca %struct.strbuf, align 8             ; 5 uses
  %6 = alloca %struct.stat, align 8               ; 14 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge68.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %2, 1
  %.not54 = icmp eq i32 %i.a, 0
  br i1 %.not54, label %bb.c, label %bb.av

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.04186 = phi i32 [ %i.j, %bb.d ], [ %i.c, %bb.c ] ; 5 uses
  %i.e = zext nneg i32 %.04186 to i64
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.j = add nsw i32 %.04186, -1
  %i.k = icmp sgt i32 %.04186, 2
  br i1 %i.k, label %.lr.ph, label %.critedge.thread, !llvm.loop !108

.critedge:                                        ; preds = %.lr.ph
  %i.l = icmp samesign ugt i32 %.04186, 4095
  br i1 %i.l, label %.critedge68.thread, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %bb.c, %.critedge
  %.04185 = phi i32 [ %.04186, %.critedge ], [ %i.c, %bb.c ], [ 1, %bb.d ]
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 8), align 8, !tbaa !21
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !20 ; 2 uses
  %.not9.i = icmp eq ptr %i.m, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.thread
  store i8 0, ptr %i.m, align 1, !tbaa !13
  br label %strbuf_setlen.exit

bb.f:                                             ; preds = %.critedge.thread
  %i.n = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !13
  %.not10.i = icmp eq i8 %i.n, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.e, %bb.f
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.validated_path, i64 8), align 8, !tbaa !21
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.validated_path, i64 16), align 8, !tbaa !20 ; 2 uses
  %.not9.i72 = icmp eq ptr %i.o, @strbuf_slopbuf
  br i1 %.not9.i72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %strbuf_setlen.exit
  store i8 0, ptr %i.o, align 1, !tbaa !13
  br label %strbuf_setlen.exit74

bb.i:                                             ; preds = %strbuf_setlen.exit
  %i.p = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !13
  %.not10.i73 = icmp eq i8 %i.p, 0
  br i1 %.not10.i73, label %strbuf_setlen.exit74, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit74:                             ; preds = %bb.h, %bb.i
  %i.q = sext i32 %.04185 to i64                  ; 2 uses
  tail call void @strbuf_add(ptr noundef nonnull @enter_repo.used_path, ptr noundef nonnull %1, i64 noundef %i.q) #20
  tail call void @strbuf_add(ptr noundef nonnull @enter_repo.validated_path, ptr noundef nonnull %1, i64 noundef %i.q) #20
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enter_repo.used_path, i64 16), align 8, !tbaa !20 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = icmp eq i8 %i.s, 126
  br i1 %i.t, label %bb.k, label %bb.m

bb.k:                                             ; preds = %strbuf_setlen.exit74
  %i.u = tail call ptr @interpolate_path(ptr noundef nonnull %i.r, i32 noundef 0) #20 ; 3 uses
  %.not55.not = icmp eq ptr %i.u, null
end_hunk_0
