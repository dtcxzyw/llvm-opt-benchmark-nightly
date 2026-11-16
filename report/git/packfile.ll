Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/packfile?download=true
inline.NumInlined: 251
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@open_packed_git:bb.a

bb.ah:                                            ; preds = %bb.af, %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !65 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !200
  %i.dp = call i32 @llvm.bswap.i32(i32 %i.do)     ; 2 uses
  %.not56.i = icmp eq i32 %i.dm, %i.dp
  br i1 %.not56.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.58, ptr noundef nonnull %i.ch, i32 noundef %i.dp, i32 noundef %i.dm) #20 ; 0 uses
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.dr = load i32, ptr %i.cj, align 8, !tbaa !65
  %i.ds = and i64 %i.g, 4294967295                ; 3 uses
  %i.dt = load i64, ptr %i.co, align 8, !tbaa !66
  %i.du = sub nsw i64 %i.dt, %i.ds
  %i.dv = call i64 @pread_in_full(i32 noundef %i.dr, ptr noundef nonnull %i.a, i64 noundef %i.ds, i64 noundef %i.du) #20 ; 2 uses
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dx = call i32 (ptr, ...) @error_errno(ptr noundef nonnull @.str.54, ptr noundef nonnull %i.ch) #20 ; 0 uses
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %.not57.i = icmp eq i64 %i.dv, %i.ds
  br i1 %.not57.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dy = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.59, ptr noundef nonnull %i.ch) #20 ; 0 uses
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !59
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !66
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec
  %i.ee = shl i64 %i.g, 1
  %i.ef = and i64 %i.ee, 4294967294
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 %i.eg
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 448
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !48
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %.val59.i = load i64, ptr %i.el, align 8, !tbaa !64
  %i.em = icmp eq i64 %.val59.i, 32
  %..i.i = select i1 %i.em, i64 32, i64 20
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(20) %i.a, ptr noundef nonnull readonly dereferenceable(20) %i.eh, i64 %..i.i)
  %.0.in.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.0.in.i.not.i, label %open_packed_git_1.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.60, ptr noundef nonnull %i.ch) #20 ; 0 uses
  br label %bb.ap

open_packed_git_1.exit:                           ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %close_pack_fd.exit

bb.ap:                                            ; preds = %bb.b, %bb.v, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.ai, %bb.ak, %bb.am, %.critedge.i, %bb.ao, %bb.ag, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !65 ; 2 uses
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %close_pack_fd.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = call i32 @close(i32 noundef %i.ep) #20  ; 0 uses
  %i.es = load i32, ptr @pack_open_fds, align 4, !tbaa !65
  %i.et = add i32 %i.es, -1
  store i32 %i.et, ptr @pack_open_fds, align 4, !tbaa !65
  store i32 -1, ptr %i.eo, align 8, !tbaa !65
  br label %close_pack_fd.exit

close_pack_fd.exit:                               ; preds = %bb.aq, %bb.ap, %open_packed_git_1.exit
  %.0 = phi i32 [ 0, %open_packed_git_1.exit ], [ -1, %bb.ap ], [ -1, %bb.aq ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #13 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !24
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !65
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.61, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare void @prepare_repo_settings(ptr noundef) local_unnamed_addr #1

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @xmmap_gently(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @die_errno(ptr noundef, ...) local_unnamed_addr #9

declare ptr @mmap_os_err() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @unuse_pack(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !73
  %i.d = add i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !73
  store ptr null, ptr %0, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @add_packed_git(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 6 uses
  %5 = alloca %struct.object_id, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = icmp ult i64 %2, 4
  br i1 %i.a, label %strip_suffix_mem.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, -4                           ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 2019846446
  %i.f = zext i1 %i.e to i32
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %strip_suffix_mem.exit, label %strip_suffix_mem.exit.thread

strip_suffix_mem.exit:                            ; preds = %bb.b
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.b, i64 9) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.c, label %st_add.exit

bb.c:                                             ; preds = %strip_suffix_mem.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.47, i64 noundef %i.b, i64 noundef 9) #19
  unreachable

st_add.exit:                                      ; preds = %strip_suffix_mem.exit
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.i, i64 1) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.d, label %st_add.exit41

bb.d:                                             ; preds = %st_add.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.47, i64 noundef %i.i, i64 noundef 1) #19
  unreachable

st_add.exit41:                                    ; preds = %st_add.exit
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 2 uses
  %i.m = shl i64 %i.l, 32
  %i.n = ashr exact i64 %i.m, 32                  ; 2 uses
  %i.o = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.n, i64 208) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.e, label %alloc_packed_git.exit

bb.e:                                             ; preds = %st_add.exit41
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.47, i64 noundef 208, i64 noundef %i.n) #19
  unreachable

alloc_packed_git.exit:                            ; preds = %st_add.exit41
  %i.q = extractvalue { i64, i1 } %i.o, 0
  %i.r = tail call ptr @xmalloc(i64 noundef %i.q) #20 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.r, i8 0, i64 200, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store i32 -1, ptr %i.s, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  store ptr %0, ptr %i.t, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 208 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b ; 4 uses
  %i.w = sub i64 %i.l, %i.b                       ; 4 uses
  %i.x = tail call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.17) #20 ; 0 uses
  %i.y = tail call i32 @access(ptr noundef nonnull %i.u, i32 noundef 0) #20
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %alloc_packed_git.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = or i16 %i.aa, 2
  store i16 %i.ab, ptr %i.z, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %alloc_packed_git.exit
  %i.ac = tail call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.19) #20 ; 0 uses
  %i.ad = tail call i32 @access(ptr noundef nonnull %i.u, i32 noundef 0) #20
  %.not36 = icmp eq i32 %i.ad, 0
  br i1 %.not36, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 8
  %i.ag = or i16 %i.af, 64
  store i16 %i.ag, ptr %i.ae, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = tail call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.20) #20 ; 0 uses
  %i.ai = tail call i32 @access(ptr noundef nonnull %i.u, i32 noundef 0) #20
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = or i16 %i.ak, 256
  store i16 %i.al, ptr %i.aj, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = tail call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.10) #20 ; 0 uses
  %i.an = call i32 @stat64(ptr noundef nonnull %i.u, ptr noundef nonnull %4) #20
  %.not38 = icmp eq i32 %i.an, 0
  br i1 %.not38, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !90
  %i.aq = and i32 %i.ap, 61440
  %i.ar = icmp eq i32 %i.aq, 32768
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @free(ptr noundef nonnull %i.r) #20
  br label %strip_suffix_mem.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  %i.aw = trunc i32 %3 to i16
  %i.ax = load i16, ptr %i.av, align 8
  %i.ay = and i16 %i.aw, 1
  %i.az = and i16 %i.ax, -2
  %i.ba = or disjoint i16 %i.az, %i.ay
  store i16 %i.ba, ptr %i.av, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !201
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !66
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !91 ; 2 uses
  %i.bi = icmp ult i64 %i.b, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = sub i64 0, %i.bh
  %i.bk = getelementptr inbounds i8, ptr %i.c, i64 %i.bj
  %i.bl = call i32 @get_oid_hex_algop(ptr noundef nonnull %i.bk, ptr noundef nonnull %5, ptr noundef nonnull %i.bf) #20
  %.not39 = icmp eq i32 %i.bl, 0
  %.pre = load ptr, ptr %i.be, align 8, !tbaa !48 ; 2 uses
  br i1 %.not39, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bm = phi ptr [ %.pre, %bb.o ], [ %i.bf, %bb.n ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 114
  %i.bo = getelementptr i8, ptr %i.bm, i64 16
  %.val40 = load i64, ptr %i.bo, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bn, i8 0, i64 %.val40, i1 false)
  br label %strip_suffix_mem.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 114
  %i.bq = getelementptr i8, ptr %.pre, i64 16
  %.val = load i64, ptr %i.bq, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bp, ptr nonnull readonly align 4 %5, i64 %.val, i1 false)
  br label %strip_suffix_mem.exit.thread

strip_suffix_mem.exit.thread:                     ; preds = %bb.a, %bb.b, %bb.p, %bb.q, %bb.m
  %.0 = phi ptr [ null, %bb.m ], [ %i.r, %bb.p ], [ %i.r, %bb.q ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %.0
}

declare i32 @xsnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @get_oid_hex_algop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @packfile_store_add_pack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @pack_open_fds, align 4, !tbaa !65
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr @pack_open_fds, align 4, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.019.in.i.i = phi ptr [ %i.e, %bb.c ], [ %.019.i.i, %bb.e ]
  %.0.i.i = phi ptr [ null, %bb.c ], [ %.019.i.i, %bb.e ] ; 3 uses
  %.019.i.i = load ptr, ptr %.019.in.i.i, align 8, !tbaa !56 ; 9 uses
  %.not.i.i = icmp eq ptr %.019.i.i, null
  br i1 %.not.i.i, label %packfile_list_remove_internal.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %.not21.i.i = icmp eq ptr %i.g, %1
  br i1 %.not21.i.i, label %bb.f, label %bb.d, !llvm.loop !1

bb.f:                                             ; preds = %bb.e
  %.not22.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not22.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %.019.i.i, align 8, !tbaa !54
  store ptr %i.h, ptr %.0.i.i, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.j = icmp eq ptr %i.i, %.019.i.i
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !54
  store ptr %i.k, ptr %i.e, align 8, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = icmp eq ptr %i.m, %.019.i.i
  %spec.select.i = select i1 %i.n, ptr %.0.i.i, ptr %i.m
  br label %packfile_list_append.exit

packfile_list_remove_internal.exit.i:             ; preds = %bb.d
  %i.o = tail call ptr @xmalloc(i64 noundef 16) #20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %1, ptr %i.p, align 8, !tbaa !57
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !58
  br label %packfile_list_append.exit

packfile_list_append.exit:                        ; preds = %bb.j, %packfile_list_remove_internal.exit.i
  %i.q = phi ptr [ %.pre.i, %packfile_list_remove_internal.exit.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  %.0.i = phi ptr [ %i.o, %packfile_list_remove_internal.exit.i ], [ %.019.i.i, %bb.j ] ; 3 uses
  store ptr null, ptr %.0.i, align 8, !tbaa !54
  %.not16.i = icmp eq ptr %i.q, null
  %..i = select i1 %.not16.i, ptr %i.e, ptr %i.q
  store ptr %.0.i, ptr %..i, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.u = tail call ptr @strmap_put(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef %1) #20 ; 0 uses
  ret void
}

declare ptr @strmap_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @packfile_store_load_pack(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
end_hunk_0
