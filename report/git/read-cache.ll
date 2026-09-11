Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/read-cache?download=true
inline.NumInlined: 280
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ie_match_stat:bb.a
  %.not29 = icmp eq i32 %i.a, 0
  br i1 %.not29, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !40
  %i.j = and i32 %i.i, 32768
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.g, label %is_racy_timestamp.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %i.m = and i32 %i.l, 2097152
  %.not31 = icmp eq i32 %i.m, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not31
  br i1 %or.cond, label %._crit_edge, label %is_racy_timestamp.exit.thread

._crit_edge:                                      ; preds = %bb.g
  %i.n = and i32 %i.l, 536870912
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.h, label %is_racy_timestamp.exit.thread

bb.h:                                             ; preds = %._crit_edge
  %i.o = tail call fastcc i32 @ce_match_stat_basic(ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.i, label %is_racy_timestamp.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40
  %i.r = and i32 %i.q, 61440
  %i.s = icmp eq i32 %i.r, 57344
  br i1 %i.s, label %is_racy_timestamp.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %0, i64 48
  %.val.i = load i32, ptr %i.t, align 8, !tbaa !55 ; 2 uses
  %.not.i.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i.i, label %is_racy_timestamp.exit.thread, label %is_racy_timestamp.exit

is_racy_timestamp.exit:                           ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !57
  %.not37 = icmp ugt i32 %.val.i, %i.v
  br i1 %.not37, label %is_racy_timestamp.exit.thread, label %bb.k

bb.k:                                             ; preds = %is_racy_timestamp.exit
  %.not35 = icmp eq i32 %i.c, 0
  br i1 %.not35, label %bb.l, label %is_racy_timestamp.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.w = tail call fastcc i32 @ce_modified_check_fs(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %is_racy_timestamp.exit.thread

is_racy_timestamp.exit.thread:                    ; preds = %bb.g, %bb.j, %bb.i, %bb.h, %is_racy_timestamp.exit, %bb.l, %bb.k, %._crit_edge, %bb.f, %bb.d
  %.025 = phi i32 [ 0, %bb.g ], [ 104, %._crit_edge ], [ 0, %bb.f ], [ 0, %bb.d ], [ %i.o, %bb.h ], [ 0, %is_racy_timestamp.exit ], [ %i.w, %bb.l ], [ 32, %bb.k ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.025
}

declare void @refresh_fsmonitor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ce_match_stat_basic(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.object_id, align 4          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = and i32 %i.b, 131072
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40   ; 3 uses
  %i.f = trunc i32 %i.e to i16
  %trunc = and i16 %i.f, -4096
  switch i16 %trunc, label %bb.j [
    i16 -32768, label %bb.c
    i16 -24576, label %bb.e
    i16 -8192, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %i.i = and i32 %i.h, 61440
  %.not27 = icmp eq i32 %i.i, 32768
  %i.j = select i1 %.not27, i32 0, i32 64         ; 2 uses
  %i.k = load i32, ptr @trust_executable_bit, align 4, !tbaa !40
  %.not28 = icmp eq i32 %i.k, 0
  br i1 %.not28, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = xor i32 %i.h, %i.e
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 8
  %spec.select = or disjoint i32 %i.j, %i.n
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !51
  %i.q = and i32 %i.p, 61440                      ; 2 uses
  %i.r = icmp eq i32 %i.q, 40960
  br i1 %i.r, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr @has_symlinks, align 4, !tbaa !40
  %.not26 = icmp eq i32 %i.s, 0
  %i.t = icmp eq i32 %i.q, 32768
  %or.cond = and i1 %i.t, %.not26
  %spec.select34 = select i1 %or.cond, i32 0, i32 64
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !51
  %i.w = and i32 %i.v, 61440
  %i.x = icmp eq i32 %i.w, 16384
  br i1 %i.x, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.y = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.aa = call i32 @repo_resolve_gitlink_ref(ptr noundef %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull @.str.38, ptr noundef nonnull %2) #28
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %ce_compare_gitlink.exit.thread, label %ce_compare_gitlink.exit

ce_compare_gitlink.exit.thread:                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.i

ce_compare_gitlink.exit:                          ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load i128, ptr %2, align 4
  %i.ae = load i128, ptr %i.ac, align 1
  %i.af = xor i128 %i.ad, %i.ae
  %i.ag = getelementptr i8, ptr %2, i64 16
  %i.ah = getelementptr i8, ptr %i.ac, i64 16
  %i.ai = load i128, ptr %i.ag, align 4
  %i.aj = load i128, ptr %i.ah, align 1
  %i.ak = xor i128 %i.ai, %i.aj
  %i.al = or i128 %i.af, %i.ak
  %i.am = icmp ne i128 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %bcmp.i.i.fr = freeze i32 %i.an
  %.not.i.i.not = icmp eq i32 %bcmp.i.i.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.not.i.i.not, label %bb.i, label %bb.m

bb.i:                                             ; preds = %ce_compare_gitlink.exit.thread, %ce_compare_gitlink.exit
  br label %bb.m

bb.j:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.16, i32 noundef 341, ptr noundef nonnull @.str.50, i32 noundef %i.e) #29
  unreachable

bb.k:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.c
  %.1 = phi i32 [ %spec.select34, %bb.f ], [ %spec.select, %bb.d ], [ %i.j, %bb.c ], [ 0, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = tail call i32 @match_stat_data(ptr noundef nonnull %i.ao, ptr noundef nonnull %1) #28
  %i.aq = or i32 %i.ap, %.1                       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !59
  %.not30 = icmp eq i32 %i.as, 0
  br i1 %.not30, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.au = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 448
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !78
  %i.ax = getelementptr i8, ptr %i.aw, i64 88
  %.val = load ptr, ptr %i.ax, align 8, !tbaa !155 ; 2 uses
  %i.ay = load i128, ptr %i.at, align 1
  %i.az = load i128, ptr %.val, align 1
  %i.ba = xor i128 %i.ay, %i.az
  %i.bb = getelementptr i8, ptr %i.at, i64 16
  %i.bc = getelementptr i8, ptr %.val, i64 16
  %i.bd = load i128, ptr %i.bb, align 1
  %i.be = load i128, ptr %i.bc, align 1
  %i.bf = xor i128 %i.bd, %i.be
  %i.bg = or i128 %i.ba, %i.bf
  %i.bh = icmp ne i128 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %.not.i.i36.not = icmp eq i32 %i.bi, 0
  %i.bj = or i32 %i.aq, 32
  %spec.select33 = select i1 %.not.i.i36.not, i32 %i.aq, i32 %i.bj
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %ce_compare_gitlink.exit, %bb.l, %bb.k, %bb.g, %bb.a
  %.023 = phi i32 [ 104, %bb.a ], [ %spec.select33, %bb.l ], [ 64, %bb.g ], [ %i.aq, %bb.k ], [ 0, %bb.i ], [ 32, %ce_compare_gitlink.exit ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 65) i32 @ce_modified_check_fs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_id, align 4          ; 5 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.strbuf, align 8             ; 12 uses
  %5 = alloca %struct.object_id, align 4          ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = trunc i32 %i.d to i16
  %trunc = and i16 %i.e, -4096
  switch i16 %trunc, label %ce_compare_data.exit.thread [
    i16 -32768, label %bb.b
    i16 -24576, label %bb.d
    i16 16384, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.g = tail call i32 @git_open_cloexec(ptr noundef nonnull %i.f, i32 noundef 0) #28 ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %ce_compare_data.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.i = call i32 @index_fd(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %i.g, ptr noundef nonnull %2, i32 noundef 3, ptr noundef nonnull %i.f, i32 noundef 0) #28
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %ce_compare_data.exit, label %ce_compare_data.exit.thread18

ce_compare_data.exit.thread18:                    ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %ce_compare_data.exit.thread

ce_compare_data.exit:                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = load i128, ptr %5, align 4
  %i.l = load i128, ptr %i.j, align 1
  %i.m = xor i128 %i.k, %i.l
  %i.n = getelementptr i8, ptr %5, i64 16
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load i128, ptr %i.n, align 4
  %i.q = load i128, ptr %i.o, align 1
  %i.r = xor i128 %i.p, %i.q
  %i.s = or i128 %i.m, %i.r
  %i.t = icmp ne i128 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not.i.i.not = icmp eq i32 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.not.i.i.not, label %bb.j, label %ce_compare_data.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !81   ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %xsize_t.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.59) #29
  unreachable

xsize_t.exit:                                     ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.do_write_index.sb, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.z = call i32 @strbuf_readlink(ptr noundef nonnull %4, ptr noundef nonnull %i.y, i64 noundef range(i64 0, -9223372036854775808) %i.w) #28
  %.not.i10 = icmp eq i32 %i.z, 0
  br i1 %.not.i10, label %bb.f, label %ce_compare_link.exit.thread

ce_compare_link.exit.thread:                      ; preds = %xsize_t.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %ce_compare_data.exit.thread

bb.f:                                             ; preds = %xsize_t.exit
  %i.aa = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = call ptr @odb_read_object(ptr noundef %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #28 ; 4 uses
  %.not10.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i, label %ce_compare_link.exit.thread23, label %bb.g

ce_compare_link.exit.thread23:                    ; preds = %bb.f
  call void @strbuf_release(ptr noundef nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %ce_compare_data.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.a, align 8, !tbaa !83  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !85
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %ce_compare_link.exit, label %ce_compare_data.exit.thread.critedge

ce_compare_link.exit:                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !86
  %bcmp = call i32 @bcmp(ptr nonnull %i.ae, ptr %i.ak, i64 %i.af)
  %i.al = icmp eq i32 %bcmp, 0
  call void @free(ptr noundef nonnull %i.ae) #28
  call void @strbuf_release(ptr noundef nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br i1 %i.al, label %bb.j, label %ce_compare_data.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.an = load i32, ptr %i.am, align 4, !tbaa !40
  %i.ao = and i32 %i.an, 61440
  %i.ap = icmp eq i32 %i.ao, 57344
  br i1 %i.ap, label %bb.i, label %ce_compare_data.exit.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.aq = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.as = call i32 @repo_resolve_gitlink_ref(ptr noundef %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.38, ptr noundef nonnull %3) #28
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %ce_compare_gitlink.exit, label %ce_compare_gitlink.exit.a

ce_compare_gitlink.exit.a:                        ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.av = load i128, ptr %3, align 4
  %i.aw = load i128, ptr %i.au, align 1
  %i.ax = xor i128 %i.av, %i.aw
  %i.ay = getelementptr i8, ptr %3, i64 16
  %i.az = getelementptr i8, ptr %i.au, i64 16
  %i.ba = load i128, ptr %i.ay, align 4
  %i.bb = load i128, ptr %i.az, align 1
  %i.bc = xor i128 %i.ba, %i.bb
  %i.bd = or i128 %i.ax, %i.bc
  %i.be = icmp ne i128 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %.not.i.i14.not = icmp eq i32 %i.bf, 0
  %6 = select i1 %.not.i.i14.not, i32 0, i32 32
  br label %ce_compare_gitlink.exit

ce_compare_gitlink.exit:                          ; preds = %bb.i, %ce_compare_gitlink.exit.a
  %.0.i14 = phi i32 [ %6, %ce_compare_gitlink.exit.a ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %ce_compare_data.exit.thread

bb.j:                                             ; preds = %ce_compare_link.exit, %ce_compare_data.exit
  br label %ce_compare_data.exit.thread

ce_compare_data.exit.thread.critedge:             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.ae) #28
  call void @strbuf_release(ptr noundef nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %ce_compare_data.exit.thread

ce_compare_data.exit.thread:                      ; preds = %ce_compare_data.exit.thread.critedge, %bb.b, %ce_compare_link.exit.thread23, %ce_compare_link.exit.thread, %ce_compare_data.exit.thread18, %bb.a, %bb.h, %ce_compare_link.exit, %ce_compare_data.exit, %bb.j, %ce_compare_gitlink.exit
  %.0 = phi i32 [ 32, %ce_compare_link.exit ], [ %.0.i14, %ce_compare_gitlink.exit ], [ 0, %bb.j ], [ 32, %ce_compare_data.exit ], [ 64, %bb.h ], [ 64, %bb.a ], [ 32, %ce_compare_link.exit.thread23 ], [ 32, %ce_compare_data.exit.thread18 ], [ 32, %ce_compare_link.exit.thread ], [ 32, %bb.b ], [ 32, %ce_compare_data.exit.thread.critedge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ie_modified(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ie_match_stat(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) ; 7 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %i.a, 72
  %.not19 = icmp eq i32 %i.b, 0
  br i1 %.not19, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %i.a, 32
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 57344
  br i1 %i.g, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !59
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.j = tail call fastcc i32 @ce_modified_check_fs(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not22 = icmp eq i32 %i.j, 0
  %i.k = or i32 %i.j, %i.a
  %spec.select = select i1 %.not22, i32 0, i32 %i.k
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.a, %bb.b ], [ %spec.select, %bb.f ], [ %i.a, %bb.d ], [ %i.a, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cmp_cache_name_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40
  %i.h = lshr i32 %i.g, 12
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  %i.o = lshr i32 %i.n, 12
  %i.p = and i32 %i.o, 3                          ; 2 uses
  %i.q = sext i32 %i.e to i64
  %i.r = sext i32 %i.l to i64
  %i.s = tail call i32 @name_compare(ptr noundef nonnull %i.c, i64 noundef %i.q, ptr noundef nonnull %i.j, i64 noundef %i.r) #28 ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.b, label %cache_name_stage_compare.exit

bb.b:                                             ; preds = %bb.a
  %i.t = icmp samesign ult i32 %i.i, %i.p
  br i1 %i.t, label %cache_name_stage_compare.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i32 %i.i, %i.p
  %..i = zext i1 %i.u to i32
  br label %cache_name_stage_compare.exit

cache_name_stage_compare.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ -1, %bb.b ], [ %i.s, %bb.a ], [ %..i, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @index_name_pos(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @index_name_stage_pos(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @index_name_stage_pos(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 4) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = icmp eq i32 %4, 0
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.h, %bb.a
  %.tr70 = phi i1 [ %i.d, %bb.a ], [ false, %bb.h ]
  %i.e = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %tailrecurse, %.thread56
  %.04073 = phi i32 [ %.141, %.thread56 ], [ %i.e, %tailrecurse ] ; 2 uses
  %.04272 = phi i32 [ %.143, %.thread56 ], [ 0, %tailrecurse ] ; 4 uses
  %i.g = sub nsw i32 %.04073, %.04272
  %i.h = lshr i32 %i.g, 1
  %i.i = add nuw nsw i32 %i.h, %.04272            ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !32
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 108
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40
  %i.s = lshr i32 %i.r, 12
  %i.t = and i32 %i.s, 3                          ; 2 uses
  %i.u = sext i32 %i.p to i64
  %i.v = tail call i32 @name_compare(ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull %i.n, i64 noundef %i.u) #28 ; 2 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.w = icmp samesign ult i32 %3, %i.t
  br i1 %i.w, label %.thread56, label %cache_name_stage_compare.exit

cache_name_stage_compare.exit:                    ; preds = %bb.b
  %.not66 = icmp samesign ugt i32 %3, %i.t
  br i1 %.not66, label %.thread, label %.thread58

bb.c:                                             ; preds = %.lr.ph
  %i.x = icmp slt i32 %i.v, 0
  br i1 %i.x, label %.thread56, label %.thread, !llvm.loop !156

.thread:                                          ; preds = %cache_name_stage_compare.exit, %bb.c
  %i.y = add nuw nsw i32 %i.i, 1
  br label %.thread56

.thread56:                                        ; preds = %bb.b, %bb.c, %.thread
  %.143 = phi i32 [ %.04272, %bb.c ], [ %i.y, %.thread ], [ %.04272, %bb.b ] ; 3 uses
  %.141 = phi i32 [ %i.i, %bb.c ], [ %.04073, %.thread ], [ %i.i, %bb.b ] ; 2 uses
  %i.z = icmp sgt i32 %.141, %.143
  br i1 %i.z, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.thread56, %tailrecurse
  %.042.lcssa = phi i32 [ 0, %tailrecurse ], [ %.143, %.thread56 ] ; 3 uses
  br i1 %.tr70, label %.thread63, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !47
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = icmp sgt i32 %.042.lcssa, 0
  %or.cond = and i1 %i.ac, %i.ab
  br i1 %or.cond, label %bb.e, label %.thread63

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %0, align 8, !tbaa !32
  %i.ae = zext nneg i32 %.042.lcssa to i64
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = icmp eq i32 %i.aj, 16384
  br i1 %i.ak, label %bb.f, label %.thread63

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.am = load i32, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = icmp ult i32 %i.am, %2
  br i1 %i.an, label %bb.g, label %.thread63

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 108
  %i.ap = zext i32 %i.am to i64
  %i.aq = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull %i.ao, i64 noundef %i.ap) #27
  %.not50 = icmp eq i32 %i.aq, 0
  br i1 %.not50, label %bb.h, label %.thread63

bb.h:                                             ; preds = %bb.g
  tail call void @ensure_full_index(ptr noundef nonnull %0) #28
  br label %tailrecurse

.thread63:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %._crit_edge
  %i.ar = xor i32 %.042.lcssa, -1
  br label %.thread58

.thread58:                                        ; preds = %cache_name_stage_compare.exit, %.thread63
  %.3 = phi i32 [ %i.ar, %.thread63 ], [ %i.i, %cache_name_stage_compare.exit ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @index_name_pos_sparse(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
end_hunk_0
