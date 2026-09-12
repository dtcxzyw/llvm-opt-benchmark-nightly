Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/files-backend?download=true
inline.NumInlined: 200
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@files_for_each_reflog_ent_reverse:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %._crit_edge

strbuf_setlen.exit85.thread:                      ; preds = %strbuf_setlen.exit85, %.split119.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.bp = icmp sgt i64 %i.v, 0
  br i1 %i.bp, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %strbuf_setlen.exit85.thread, %strbuf_setlen.exit85.thread.thread, %bb.f
  %.162.lcssa = phi i32 [ 0, %bb.f ], [ %.6.ph, %strbuf_setlen.exit85.thread.thread ], [ 0, %strbuf_setlen.exit85.thread ] ; 2 uses
  %i.bq = icmp eq i32 %.162.lcssa, 0
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp ne i64 %i.bs, 0
  %or.cond = select i1 %i.bq, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.9, i32 noundef 2321, ptr noundef nonnull @.str.122) #19
  unreachable

bb.x:                                             ; preds = %._crit_edge.thread, %.thread97, %._crit_edge
  %.7100 = phi i32 [ -1, %.thread97 ], [ %.162.lcssa, %._crit_edge ], [ -1, %._crit_edge.thread ]
  %i.bu = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %4) #18
  br label %bb.y

bb.y:                                             ; preds = %files_downcast.exit, %bb.x
  %.067 = phi i32 [ %.7100, %bb.x ], [ -1, %files_downcast.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %.067
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @files_reflog_exists(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 6 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %.not.i = icmp eq ptr %i.a, @refs_be_files
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.9, i32 noundef 167, ptr noundef nonnull @.str.10, ptr noundef %i.b, ptr noundef nonnull @.str.123) #19, !inline_history !0
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = and i32 %i.d, 1
  %.not11.i.not = icmp eq i32 %i.e, 0
  br i1 %.not11.i.not, label %bb.d, label %files_downcast.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.9, i32 noundef 173, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.123, i32 noundef 1, i32 noundef %i.d) #19, !inline_history !0
  unreachable

files_downcast.exit:                              ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.files_fsck_refs_content.referent, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call fastcc void @files_reflog_path(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = call i32 @lstat64(ptr noundef %i.g, ptr noundef nonnull %3) #18
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 61440
  %i.l = icmp eq i32 %i.k, 32768
  %i.m = select i1 %.not, i1 %i.l, i1 false
  %i.n = zext i1 %i.m to i32
  call void @strbuf_release(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @files_create_reflog(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %.not.i = icmp eq ptr %i.b, @refs_be_files
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.9, i32 noundef 167, ptr noundef nonnull @.str.10, ptr noundef %i.c, ptr noundef nonnull @.str.124) #19, !inline_history !0
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = and i32 %i.e, 2
  %.not11.i.not = icmp eq i32 %i.f, 0
  br i1 %.not11.i.not, label %bb.d, label %files_downcast.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.9, i32 noundef 173, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.124, i32 noundef 2, i32 noundef %i.e) #19, !inline_history !0
  unreachable

files_downcast.exit:                              ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.g = call fastcc i32 @log_ref_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef %i.a, ptr noundef %2)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %files_downcast.exit
  %i.h = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 @close(i32 noundef %i.h) #18    ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %files_downcast.exit
  %.0 = phi i32 [ -1, %files_downcast.exit ], [ 0, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @files_delete_reflog(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %.not.i = icmp eq ptr %i.a, @refs_be_files
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.9, i32 noundef 167, ptr noundef nonnull @.str.10, ptr noundef %i.b, ptr noundef nonnull @.str.125) #19, !inline_history !0
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = and i32 %i.d, 2
  %.not11.i.not = icmp eq i32 %i.e, 0
  br i1 %.not11.i.not, label %bb.d, label %files_downcast.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.9, i32 noundef 173, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.125, i32 noundef 2, i32 noundef %i.d) #19, !inline_history !0
  unreachable

files_downcast.exit:                              ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.files_fsck_refs_content.referent, i64 24, i1 false)
  call fastcc void @files_reflog_path(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = call i32 @remove_path(ptr noundef %i.g) #18
  call void @strbuf_release(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @files_reflog_expire(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.lock_file, align 8          ; 12 uses
  %8 = alloca %struct.expire_reflog_cb, align 8   ; 10 uses
  %9 = alloca %struct.strbuf, align 8             ; 5 uses
  %10 = alloca %struct.strbuf, align 8            ; 6 uses
  %11 = alloca %struct.strbuf, align 8            ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %.not.i = icmp eq ptr %i.b, @refs_be_files
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.9, i32 noundef 167, ptr noundef nonnull @.str.10, ptr noundef %i.c, ptr noundef nonnull @.str.126) #19, !inline_history !0
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = and i32 %i.e, 2
  %.not11.i.not = icmp eq i32 %i.f, 0
  br i1 %.not11.i.not, label %bb.d, label %files_downcast.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.9, i32 noundef 173, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.126, i32 noundef 2, i32 noundef %i.e) #19, !inline_history !0
  unreachable

files_downcast.exit:                              ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.files_fsck_refs_content.referent, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) @__const.files_fsck_refs_content.referent, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 2 uses
  %i.i = trunc i32 %2 to i8                       ; 2 uses
  %12 = lshr i8 %i.i, 2
  %13 = and i8 %12, 1
  %i.j = shl i8 %i.i, 1
  %i.k = and i8 %i.j, 2                           ; 2 uses
  %i.l = or disjoint i8 %13, %i.k
  store i8 %i.l, ptr %i.h, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %6, ptr %i.m, align 8, !tbaa !120
  store ptr %4, ptr %8, align 8, !tbaa !121
  %i.n = call fastcc ptr @lock_ref_oid_basic(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %10) ; 17 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %files_downcast.exit
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.31, ptr noundef %1, ptr noundef %i.p) #18 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %10) #18
  br label %unlock_ref.exit

bb.f:                                             ; preds = %files_downcast.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.s = call i32 @refs_reflog_exists(ptr noundef nonnull %0, ptr noundef %1) #18
  %.not51 = icmp eq i32 %i.s, 0
  br i1 %.not51, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 60 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !61
  %i.v = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !tbaa !61
  %.not.i69 = icmp eq i32 %i.v, 0
  br i1 %.not.i69, label %bb.h, label %unlock_ref.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = call i32 @rollback_lock_file(ptr noundef nonnull %i.w) #18 ; 0 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !62
  call void @free(ptr noundef %i.y) #18
  call void @free(ptr noundef nonnull %i.n) #18
  br label %unlock_ref.exit

bb.i:                                             ; preds = %bb.f
  call fastcc void @files_reflog_path(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %1)
  %i.z = call ptr @strbuf_detach(ptr noundef nonnull %9, ptr noundef null) #18 ; 6 uses
  %.not52 = icmp eq i8 %i.k, 0
  br i1 %.not52, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aa = call i32 @hold_lock_file_for_update_timeout_mode(ptr noundef nonnull %7, ptr noundef %i.z, i32 noundef 0, i64 noundef 0, i32 noundef 438) #18
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) @__const.files_fsck_refs_content.referent, i64 24, i1 false)
  %i.ac = tail call ptr @__errno_location() #21
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22
  call void @unable_to_lock_message(ptr noundef %i.z, i32 noundef %i.ad, ptr noundef nonnull %11) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.89, ptr noundef %i.af) #18 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ae

bb.l:                                             ; preds = %bb.j
  %.val = load ptr, ptr %7, align 8, !tbaa !67
  %i.ah = call ptr @fdopen_tempfile(ptr noundef %.val, ptr noundef nonnull @.str.53) #18 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !122
  %.not53 = icmp eq ptr %i.ah, null
  br i1 %.not53, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.val64 = load ptr, ptr %7, align 8, !tbaa !67
  %i.aj = call ptr @get_tempfile_path(ptr noundef %.val64) #18
  %i.ak = tail call ptr @__errno_location() #21
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22
  %i.am = call ptr @strerror(i32 noundef %i.al) #18
  %i.an = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.128, ptr noundef %i.aj, ptr noundef %i.am) #18 ; 0 uses
  br label %bb.ae

bb.n:                                             ; preds = %bb.l, %bb.i
  call void %3(ptr noundef %1, ptr noundef nonnull %i.r, ptr noundef %6) #18
  %i.ao = call i32 @refs_for_each_reflog_ent(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @expire_reflog_ent, ptr noundef nonnull %8) #18 ; 0 uses
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !120
  call void %5(ptr noundef %i.ap) #18
  %i.aq = load i8, ptr %i.h, align 4
  %i.ar = and i8 %i.aq, 2
  %.not54 = icmp eq i8 %i.ar, 0
  br i1 %.not54, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.as = and i32 %2, 2
  %.not55 = icmp eq i32 %i.as, 0
  br i1 %.not55, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.au = load i128, ptr %i.at, align 1
  %i.av = getelementptr i8, ptr %i.at, i64 16
  %i.aw = load i128, ptr %i.av, align 1
  %i.ax = or i128 %i.au, %i.aw
  %i.ay = icmp ne i128 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %.not.i70.not = icmp eq i32 %i.az, 0
  br i1 %.not.i70.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ba = call ptr @refs_resolve_ref_unsafe(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, ptr noundef null, ptr noundef nonnull %i.a) #18
  %.not57 = icmp eq ptr %i.ba, null
  %i.bb = load i32, ptr %i.a, align 4
  %i.bc = trunc i32 %i.bb to i1
  %i.bd = select i1 %.not57, i1 true, i1 %i.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.0 = phi i1 [ true, %bb.p ], [ %i.bd, %bb.q ], [ true, %bb.o ]
  %.val65 = load ptr, ptr %7, align 8, !tbaa !67
  %i.be = call i32 @close_tempfile_gently(ptr noundef %.val65) #18
  %.not59 = icmp eq i32 %i.be, 0
  br i1 %.not59, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = tail call ptr @__errno_location() #21
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22
  %i.bh = call ptr @strerror(i32 noundef %i.bg) #18
  %i.bi = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.129, ptr noundef %i.z, ptr noundef %i.bh) #18 ; 0 uses
  %i.bj = call i32 @rollback_lock_file(ptr noundef nonnull %7) #18 ; 0 uses
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  br i1 %.0, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %.val67 = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.bl = call i32 @get_tempfile_fd(ptr noundef %.val67) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bn = call ptr @oid_to_hex(ptr noundef nonnull %i.bm) #18
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !82
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 448
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !124
  %i.bu = call i64 @write_in_full(i32 noundef %i.bl, ptr noundef %i.bn, i64 noundef %i.bt) #18
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val66 = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.bw = call i32 @get_tempfile_fd(ptr noundef %.val66) #18
  %i.bx = call i64 @write_in_full(i32 noundef %i.bw, ptr noundef nonnull @.str.130, i64 noundef 1) #18
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val68 = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.bz = call i32 @close_tempfile_gently(ptr noundef %.val68) #18
  %.not.i71.not = icmp eq i32 %i.bz, 0
  br i1 %.not.i71.not, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.val63 = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.ca = call ptr @get_tempfile_path(ptr noundef %.val63) #18
  %i.cb = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.131, ptr noundef %i.ca) #18 ; 0 uses
  %i.cc = call i32 @rollback_lock_file(ptr noundef nonnull %7) #18 ; 0 uses
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.cd = call i32 @commit_lock_file(ptr noundef nonnull %7) #18
  %.not61 = icmp eq i32 %i.cd, 0
  br i1 %.not61, label %bb.ac, label %bb.z

.thread:                                          ; preds = %bb.w
  %i.ce = call i32 @commit_lock_file(ptr noundef nonnull %7) #18
  %.not6176 = icmp eq i32 %i.ce, 0
  br i1 %.not6176, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread, %bb.y
  %i.cf = tail call ptr @__errno_location() #21
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !22
  %i.ch = call ptr @strerror(i32 noundef %i.cg) #18
  %i.ci = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.132, ptr noundef %i.z, ptr noundef %i.ch) #18 ; 0 uses
  br label %bb.ac

bb.aa:                                            ; preds = %.thread
  %i.cj = call fastcc i32 @commit_ref(ptr noundef nonnull %i.n)
  %.not62 = icmp eq i32 %i.cj, 0
  br i1 %.not62, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.cl = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.133, ptr noundef %i.ck) #18 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.s, %bb.z, %bb.ab, %bb.aa, %bb.x, %bb.n
  %.1 = phi i32 [ 0, %bb.n ], [ -1, %bb.s ], [ -1, %bb.x ], [ -1, %bb.z ], [ -1, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  call void @free(ptr noundef %i.z) #18
end_hunk_0
