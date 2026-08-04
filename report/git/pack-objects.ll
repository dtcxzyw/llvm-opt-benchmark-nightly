inline.NumInlined: 363
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@show_object__ma_allow_any:bb.a
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @show_object(ptr noundef nonnull %0, ptr noundef %1, ptr poison)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @show_object__ma_allow_promisor(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr @arg_missing_action, align 4, !tbaa !60
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.1, i32 noundef 4440, ptr noundef nonnull @__PRETTY_FUNCTION__.show_object__ma_allow_promisor) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @the_repository, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = tail call i32 @odb_has_object(ptr noundef %i.e, ptr noundef nonnull %i.f, i32 noundef 0) #21
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @to_pack, align 8, !tbaa !366
  %i.i = tail call i32 @is_promisor_object(ptr noundef %i.h, ptr noundef nonnull %i.f) #21
  %.not5 = icmp eq i32 %i.i, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @show_object(ptr noundef nonnull %0, ptr noundef %1, ptr poison)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_preferred_base_object(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.tree_desc, align 8          ; 4 uses
  %i.a = load i32, ptr @pack_name_hash_fn.seen_version, align 4, !tbaa !60 ; 4 uses
  %i.b = icmp slt i32 %i.a, 0
  %i.c = load i32, ptr @name_hash_version, align 4, !tbaa !60 ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr @pack_name_hash_fn.seen_version, align 4, !tbaa !60
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.a, %i.c
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.1, i32 noundef 317, ptr noundef nonnull @.str.162, i32 noundef %i.a, i32 noundef %i.c) #22
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i32 [ %i.a, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  switch i32 %i.d, label %bb.q [
    i32 1, label %bb.f
    i32 2, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %pack_name_hash_fn.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %bb.i
  %.07.ph.i.i = phi ptr [ %i.f, %bb.i ], [ %0, %bb.f ]
  %.0.ph.i.i = phi i32 [ %i.n, %bb.i ], [ 0, %bb.f ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.07.i.i = phi ptr [ %i.f, %bb.h ], [ %.07.ph.i.i, %.outer.i.i ] ; 2 uses
  %i.e = load i8, ptr %.07.i.i, align 1, !tbaa !59 ; 3 uses
  %.not10.i.i = icmp eq i8 %i.e, 0
  br i1 %.not10.i.i, label %pack_name_hash_fn.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1 ; 2 uses
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !59
  %i.j = and i8 %i.i, 1
  %.not11.i.i = icmp eq i8 %i.j, 0
  br i1 %.not11.i.i, label %bb.i, label %bb.g, !llvm.loop !367

bb.i:                                             ; preds = %bb.h
  %i.k = sext i8 %i.e to i32
  %i.l = lshr i32 %.0.ph.i.i, 2
  %i.m = shl nsw i32 %i.k, 24
  %i.n = add i32 %i.m, %i.l
  br label %.outer.i.i, !llvm.loop !367

bb.j:                                             ; preds = %bb.e
  %.not.i4.i = icmp eq ptr %0, null
  br i1 %.not.i4.i, label %pack_name_hash_fn.exit, label %.outer.i5.i.outer

.outer.i5.i.outer:                                ; preds = %bb.j, %bb.n
  %.018.ph.i.i.ph = phi ptr [ %i.p, %bb.n ], [ %0, %bb.j ]
  %.0.ph.i6.i.ph = phi i32 [ %i.w, %bb.n ], [ 0, %bb.j ] ; 2 uses
  br label %.outer.i5.i

.outer.i5.i:                                      ; preds = %.outer.i5.i.outer, %bb.o
  %.018.ph.i.i = phi ptr [ %i.p, %bb.o ], [ %.018.ph.i.i.ph, %.outer.i5.i.outer ]
  %.016.ph.i.i = phi i32 [ %i.aa, %bb.o ], [ 0, %.outer.i5.i.outer ] ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.outer.i5.i
  %.018.i.i = phi ptr [ %i.p, %bb.l ], [ %.018.ph.i.i, %.outer.i5.i ] ; 2 uses
  %i.o = load i8, ptr %.018.i.i, align 1, !tbaa !59 ; 4 uses
  %.not22.i.i = icmp eq i8 %i.o, 0
  br i1 %.not22.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 1 ; 3 uses
  %i.q = zext i8 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !59
  %i.t = and i8 %i.s, 1
  %.not23.i.i = icmp eq i8 %i.t, 0
  br i1 %.not23.i.i, label %bb.m, label %bb.k, !llvm.loop !368

bb.m:                                             ; preds = %bb.l
  %i.u = icmp eq i8 %i.o, 47
  br i1 %i.u, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.v = lshr i32 %.0.ph.i6.i.ph, 6
  %i.w = xor i32 %i.v, %.016.ph.i.i
  br label %.outer.i5.i.outer, !llvm.loop !368

bb.o:                                             ; preds = %bb.m
  %rev.i.i = tail call i8 @llvm.bitreverse.i8(i8 %i.o)
  %i.x = zext i8 %rev.i.i to i32
  %i.y = lshr i32 %.016.ph.i.i, 2
  %i.z = shl nuw i32 %i.x, 24
  %i.aa = add i32 %i.z, %i.y
  br label %.outer.i5.i, !llvm.loop !368

bb.p:                                             ; preds = %bb.k
  %i.ab = lshr i32 %.0.ph.i6.i.ph, 6
  %i.ac = xor i32 %i.ab, %.016.ph.i.i
  br label %pack_name_hash_fn.exit

bb.q:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.163, i32 noundef %i.d) #22
  unreachable

pack_name_hash_fn.exit:                           ; preds = %bb.g, %bb.f, %bb.j, %bb.p
  %.0.i = phi i32 [ 0, %bb.j ], [ 0, %bb.f ], [ %i.ac, %bb.p ], [ %.0.ph.i.i, %bb.g ] ; 3 uses
  %i.ad = load i32, ptr @num_preferred_base, align 4, !tbaa !60
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %check_pbase_path.exit, label %bb.r

bb.r:                                             ; preds = %pack_name_hash_fn.exit
  %i.ae = load i32, ptr @done_pbase_paths_num, align 4, !tbaa !60 ; 4 uses
  %i.af = load ptr, ptr @done_pbase_paths, align 8 ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.019.i.i = phi i32 [ 0, %bb.r ], [ %.120.i.i, %bb.t ] ; 5 uses
  %.016.i.i = phi i32 [ %i.ae, %bb.r ], [ %.117.i.i18, %bb.t ] ; 3 uses
  %i.ag = icmp slt i32 %.019.i.i, %.016.i.i
  br i1 %i.ag, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ah = sub nsw i32 %.016.i.i, %.019.i.i
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = add nuw nsw i32 %i.ai, %.019.i.i        ; 4 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !60 ; 2 uses
  %.not.i.i17 = icmp eq i32 %i.am, %.0.i
  %i.an = icmp ult i32 %i.am, %.0.i               ; 2 uses
  %i.ao = add nuw nsw i32 %i.aj, 1
  %.120.i.i = select i1 %i.an, i32 %.019.i.i, i32 %i.ao
  %.117.i.i18 = select i1 %i.an, i32 %i.aj, i32 %.016.i.i
  br i1 %.not.i.i17, label %done_pbase_path_pos.exit.i, label %bb.s, !llvm.loop !369

bb.u:                                             ; preds = %bb.s
  %i.ap = xor i32 %.019.i.i, -1
  br label %done_pbase_path_pos.exit.i

done_pbase_path_pos.exit.i:                       ; preds = %bb.t, %bb.u
  %.2.i.i = phi i32 [ %i.ap, %bb.u ], [ %i.aj, %bb.t ] ; 3 uses
  %i.aq = icmp sgt i32 %.2.i.i, -1
  br i1 %i.aq, label %check_pbase_path.exit, label %bb.v

bb.v:                                             ; preds = %done_pbase_path_pos.exit.i
  %i.ar = xor i32 %.2.i.i, -1                     ; 3 uses
  %i.as = load i32, ptr @done_pbase_paths_alloc, align 4, !tbaa !60 ; 2 uses
  %.not.i15 = icmp slt i32 %i.ae, %i.as
  br i1 %.not.i15, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = add nsw i32 %i.ae, 1
  %i.au = mul i32 %i.as, 3
  %i.av = add i32 %i.au, 48
  %i.aw = sdiv i32 %i.av, 2
  %..i = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 %i.at) ; 3 uses
  store i32 %..i, ptr @done_pbase_paths_alloc, align 4, !tbaa !60
  %i.ax = sext i32 %..i to i64                    ; 2 uses
  %mul.ov.i.i = icmp slt i32 %..i, 0
  br i1 %mul.ov.i.i, label %bb.x, label %st_mult.exit.i

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.164, i64 noundef 4, i64 noundef %i.ax) #22
  unreachable

st_mult.exit.i:                                   ; preds = %bb.w
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = tail call ptr @xrealloc(ptr noundef %i.af, i64 noundef %i.ay) #21 ; 2 uses
  store ptr %i.az, ptr @done_pbase_paths, align 8, !tbaa !210
  %.pre.i = load i32, ptr @done_pbase_paths_num, align 4, !tbaa !60
  br label %bb.y

bb.y:                                             ; preds = %st_mult.exit.i, %bb.v
  %i.ba = phi ptr [ %i.az, %st_mult.exit.i ], [ %i.af, %bb.v ] ; 2 uses
  %i.bb = phi i32 [ %.pre.i, %st_mult.exit.i ], [ %i.ae, %bb.v ] ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bc, ptr @done_pbase_paths_num, align 4, !tbaa !60
  %.not17.i = icmp slt i32 %i.bb, %i.ar
  br i1 %.not17.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = add nsw i32 %i.bc, %.2.i.i              ; 2 uses
  %.not.i18.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i18.i, label %bb.aa, label %st_mult.exit.i.i

st_mult.exit.i.i:                                 ; preds = %bb.z
  %2 = sext i32 %i.bd to i64
  %3 = zext nneg i32 %i.ar to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %3 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.be = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %5, ptr readonly align 1 %4, i64 %i.be, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %st_mult.exit.i.i
  %6 = zext nneg i32 %i.ar to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %6
  store i32 %.0.i, ptr %i.bf, align 4, !tbaa !60
  %i.bg = tail call i64 @strcspn(ptr noundef readonly %0, ptr noundef nonnull @.str.165) #24 ; 2 uses
  %.028 = load ptr, ptr @pbase_tree, align 8, !tbaa !199 ; 3 uses
  %.not1429 = icmp eq ptr %.028, null
  br i1 %.not1429, label %check_pbase_path.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.030.us = phi ptr [ %.0.us, %.lr.ph.split.us ], [ %.028, %.lr.ph ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.030.us, i64 8
  tail call fastcc void @add_object_entry(ptr noundef nonnull %i.bi, i32 noundef 2, ptr noundef null, i32 noundef 1)
  %.0.us = load ptr, ptr %.030.us, align 8, !tbaa !199 ; 2 uses
  %.not14.us = icmp eq ptr %.0.us, null
  br i1 %.not14.us, label %check_pbase_path.exit, label %.lr.ph.split.us, !llvm.loop !370

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.030 = phi ptr [ %.0, %.lr.ph.split ], [ %.028, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.030, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !204
  %i.bm = getelementptr inbounds nuw i8, ptr %.030, i64 64
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !371
  call void @init_tree_desc(ptr noundef nonnull %1, ptr noundef nonnull %i.bj, ptr noundef %i.bl, i64 noundef %i.bn) #21
  call fastcc void @add_pbase_object(ptr noundef %1, ptr noundef %0, i64 noundef %i.bg, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.0 = load ptr, ptr %.030, align 8, !tbaa !199  ; 2 uses
  %.not14 = icmp eq ptr %.0, null
  br i1 %.not14, label %check_pbase_path.exit, label %.lr.ph.split, !llvm.loop !370

check_pbase_path.exit:                            ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.aa, %done_pbase_path_pos.exit.i, %pack_name_hash_fn.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_object_entry(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !41
  %i.c = load ptr, ptr @progress_state, align 8, !tbaa !109
  %i.d = load i32, ptr @nr_seen, align 4, !tbaa !60
  %i.e = add i32 %i.d, 1                          ; 2 uses
  store i32 %i.e, ptr @nr_seen, align 4, !tbaa !60
  %i.f = zext i32 %i.e to i64
  tail call void @display_progress(ptr noundef %i.c, i64 noundef %i.f) #21
  %i.g = load ptr, ptr @reuse_packfile_bitmap, align 8, !tbaa !185 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @bitmap_git, align 8, !tbaa !181
  %i.i = tail call i32 @bitmap_walk_contains(ptr noundef %i.h, ptr noundef nonnull %i.g, ptr noundef %0) #21
  %.not8.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i, label %bb.c, label %have_duplicate_entry.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call ptr @packlist_find(ptr noundef nonnull @to_pack, ptr noundef %0) #21 ; 2 uses
  %.not9.i = icmp eq ptr %i.j, null
  br i1 %.not9.i, label %have_duplicate_entry.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not10.i = icmp eq i32 %3, 0
  br i1 %.not10.i, label %have_duplicate_entry.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, 274877906944
  %.not11.i = icmp eq i64 %i.m, 0
  br i1 %.not11.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr @nr_result, align 4, !tbaa !60
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @nr_result, align 4, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = or i64 %i.l, 274877906944
  store i64 %i.p, ptr %i.k, align 8
  br label %have_duplicate_entry.exit.thread

have_duplicate_entry.exit:                        ; preds = %bb.c
  %i.q = call fastcc range(i32 0, 2) i32 @want_object_in_pack_mtime(ptr noundef %0, i32 noundef range(i32 0, 2) %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  %.not12 = icmp eq i32 %i.q, 0
  br i1 %.not12, label %bb.h, label %bb.l

bb.h:                                             ; preds = %have_duplicate_entry.exit
  %i.r = load i32, ptr @write_bitmap_index, align 4, !tbaa !60
  switch i32 %i.r, label %bb.i [
    i32 0, label %have_duplicate_entry.exit.thread
    i32 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr @git_gettext_enabled, align 4, !tbaa !60
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @no_closure_warning, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %bb.i, %bb.j
  %.0.i16 = phi ptr [ %i.t, %bb.j ], [ @no_closure_warning, %bb.i ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i16) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_.exit
  store i32 0, ptr @write_bitmap_index, align 4, !tbaa !60
  br label %have_duplicate_entry.exit.thread

bb.l:                                             ; preds = %have_duplicate_entry.exit
  %i.u = load i32, ptr @pack_name_hash_fn.seen_version, align 4, !tbaa !60 ; 4 uses
  %i.v = icmp slt i32 %i.u, 0
  %i.w = load i32, ptr @name_hash_version, align 4, !tbaa !60 ; 4 uses
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.w, ptr @pack_name_hash_fn.seen_version, align 4, !tbaa !60
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %.not.i17 = icmp eq i32 %i.u, %i.w
  br i1 %.not.i17, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.1, i32 noundef 317, ptr noundef nonnull @.str.162, i32 noundef %i.u, i32 noundef %i.w) #22
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.x = phi i32 [ %i.u, %bb.n ], [ %i.w, %bb.m ] ; 2 uses
  switch i32 %i.x, label %bb.ab [
    i32 1, label %bb.q
    i32 2, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %pack_name_hash_fn.exit.thread, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.q, %bb.t
  %.07.ph.i.i = phi ptr [ %i.z, %bb.t ], [ %2, %bb.q ]
  %.0.ph.i.i = phi i32 [ %i.ah, %bb.t ], [ 0, %bb.q ] ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.outer.i.i
  %.07.i.i = phi ptr [ %i.z, %bb.s ], [ %.07.ph.i.i, %.outer.i.i ] ; 2 uses
  %i.y = load i8, ptr %.07.i.i, align 1, !tbaa !59 ; 3 uses
  %.not10.i.i = icmp eq i8 %i.y, 0
  br i1 %.not10.i.i, label %pack_name_hash_fn.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1 ; 2 uses
  %i.aa = zext i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !59
  %i.ad = and i8 %i.ac, 1
  %.not11.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not11.i.i, label %bb.t, label %bb.r, !llvm.loop !367

bb.t:                                             ; preds = %bb.s
  %i.ae = sext i8 %i.y to i32
  %i.af = lshr i32 %.0.ph.i.i, 2
  %i.ag = shl nsw i32 %i.ae, 24
  %i.ah = add i32 %i.ag, %i.af
  br label %.outer.i.i, !llvm.loop !367

bb.u:                                             ; preds = %bb.p
  %.not.i4.i = icmp eq ptr %2, null
  br i1 %.not.i4.i, label %pack_name_hash_fn.exit.thread, label %.outer.i5.i.outer

.outer.i5.i.outer:                                ; preds = %bb.u, %bb.y
  %.018.ph.i.i.ph = phi ptr [ %i.aj, %bb.y ], [ %2, %bb.u ]
  %.0.ph.i6.i.ph = phi i32 [ %i.aq, %bb.y ], [ 0, %bb.u ] ; 2 uses
  br label %.outer.i5.i

.outer.i5.i:                                      ; preds = %.outer.i5.i.outer, %bb.z
  %.018.ph.i.i = phi ptr [ %i.aj, %bb.z ], [ %.018.ph.i.i.ph, %.outer.i5.i.outer ]
  %.016.ph.i.i = phi i32 [ %i.au, %bb.z ], [ 0, %.outer.i5.i.outer ] ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.outer.i5.i
  %.018.i.i = phi ptr [ %i.aj, %bb.w ], [ %.018.ph.i.i, %.outer.i5.i ] ; 2 uses
  %i.ai = load i8, ptr %.018.i.i, align 1, !tbaa !59 ; 4 uses
  %.not22.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not22.i.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 1 ; 3 uses
  %i.ak = zext i8 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !59
end_hunk_0
