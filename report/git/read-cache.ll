Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/read-cache?download=true
inline.NumInlined: 280
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@remove_marked_cache_entries:bb.a
bb.c:                                             ; preds = %.lr.ph.split.us
  %i.k = add i32 %.032.us, 1
  %i.l = zext i32 %.032.us to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l
  store ptr %i.f, ptr %i.m, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %.pre43, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %.1.us = phi i32 [ %.032.us, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next41, %i.o
  br i1 %i.p, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !157

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %i.q = phi i32 [ %i.ae, %bb.g ], [ %i.c, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.032 = phi i32 [ %.1, %bb.g ], [ 0, %.lr.ph ]  ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !40
  %i.v = and i32 %i.u, 131072
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 108
  tail call void @cache_tree_invalidate_path(ptr noundef nonnull %0, ptr noundef nonnull %i.w) #28
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  tail call void @untracked_cache_remove_from_index(ptr noundef nonnull %0, ptr noundef nonnull %i.y) #28
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !34
  tail call void @remove_name_hash(ptr noundef nonnull %0, ptr noundef %i.z) #28
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !34
  tail call void @save_or_free_index_entry(ptr noundef nonnull %0, ptr noundef %i.aa) #28
  %.pre = load i32, ptr %i.b, align 4, !tbaa !42
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  %i.ab = add i32 %.032, 1
  %i.ac = zext i32 %.032 to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac
  store ptr %i.s, ptr %i.ad, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %.pre, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  %.1 = phi i32 [ %.032, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph.split, label %._crit_edge, !llvm.loop !157

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %.0.lcssa = phi i32 [ %.1.us, %bb.d ], [ %.1, %bb.g ] ; 2 uses
  %.lcssa = phi i32 [ %i.n, %bb.d ], [ %i.ae, %bb.g ]
  %i.ah = icmp eq i32 %.0.lcssa, %.lcssa
  br i1 %i.ah, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = or i32 %i.aj, 4
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !41
  store i32 %.0.lcssa, ptr %i.b, align 4, !tbaa !42
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @remove_file_from_index(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call fastcc i32 @index_name_stage_pos(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.b, i32 noundef 0, i32 noundef 1) ; 2 uses
  %.lobit = ashr i32 %i.c, 31
  %spec.select = xor i32 %.lobit, %i.c            ; 6 uses
  tail call void @cache_tree_invalidate_path(ptr noundef %0, ptr noundef nonnull %1) #28
  tail call void @untracked_cache_remove_from_index(ptr noundef %0, ptr noundef nonnull %1) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42
  %i.f = icmp ult i32 %spec.select, %i.e
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = zext nneg i32 %spec.select to i64
  %i.h = sext i32 %spec.select to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %remove_index_entry_at.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %1) #27
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  tail call void @record_resolve_undo(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #28
  tail call void @remove_name_hash(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #28
  tail call void @save_or_free_index_entry(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #28
  %i.o = load i32, ptr %i.i, align 4, !tbaa !41
  %i.p = or i32 %i.o, 4
  store i32 %i.p, ptr %i.i, align 4, !tbaa !41
  %i.q = load i32, ptr %i.d, align 4, !tbaa !42
  %i.r = add i32 %i.q, -1                         ; 3 uses
  store i32 %i.r, ptr %i.d, align 4, !tbaa !42
  %.not.i = icmp ult i32 %spec.select, %i.r
  br i1 %.not.i, label %remove_index_entry_at.exit, label %.critedge

remove_index_entry_at.exit:                       ; preds = %bb.c
  %i.s = sub nuw i32 %i.r, %spec.select
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %0, align 8, !tbaa !32
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.h ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.v, ptr nonnull readonly align 1 %i.w, i64 %i.x, i1 false)
  %.pre = load i32, ptr %i.d, align 4, !tbaa !42
  %i.y = icmp ult i32 %spec.select, %.pre
  br i1 %i.y, label %bb.b, label %.critedge, !llvm.loop !158

.critedge:                                        ; preds = %bb.c, %bb.b, %remove_index_entry_at.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @set_object_name_for_intent_to_add_entry(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.object_id, align 4          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.d = call i32 @odb_write_object_ext(ptr noundef %i.c, ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 3, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #28
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call fastcc ptr @_(ptr noundef nonnull @.str.1)
  call void (ptr, ...) @die(ptr noundef %i.e) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.h, ptr %i.i, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !45
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_to_index(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.object_id, align 4          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51   ; 5 uses
  %i.c = and i32 %3, 3
  %i.d = and i32 %3, 2                            ; 2 uses
  %i.e = and i32 %3, 16                           ; 2 uses
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  %i.f = or disjoint i32 %i.e, 3
  %.not108 = icmp eq i32 %i.d, 0
  %.lobit = lshr exact i32 %i.d, 1
  %i.g = and i32 %3, 64
  %.not109 = icmp eq i32 %i.g, 0                  ; 2 uses
  %spec.select.v = select i1 %.not109, i32 1, i32 5
  %spec.select = xor i32 %spec.select.v, %.lobit
  %i.h = and i32 %i.b, 61440                      ; 6 uses
  %trunc = trunc nuw i32 %i.h to i16              ; 3 uses
  switch i16 %trunc, label %bb.b [
    i16 -32768, label %bb.d
    i16 -24576, label %bb.d
    i16 16384, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i = icmp eq i32 %i.i, 0
  br i1 %.not4.i, label %_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #28
  br label %_.exit

_.exit:                                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.c ], [ @.str.2, %bb.b ]
  %i.k = tail call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef %1) #28 ; 0 uses
  br label %discard_cache_entry.exit

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 2 uses
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp eq i32 %i.h, 16384
  %i.o = icmp ne i32 %i.m, 0
  %or.cond7 = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond7, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %bb.d
  %sext = shl i64 %i.l, 32
  %i.p = ashr exact i64 %sext, 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.p, %.preheader.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.q = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !45
  %i.t = icmp eq i8 %i.s, 47
  br i1 %i.t, label %bb.e, label %.critedge.loopexit.split.loop.exit221

bb.e:                                             ; preds = %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.old6.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.old6.not, label %.critedge, label %.preheader

.critedge.loopexit.split.loop.exit221:            ; preds = %.preheader
  %i.u = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.loopexit.split.loop.exit221, %bb.d
  %.1 = phi i32 [ %i.m, %bb.d ], [ %i.u, %.critedge.loopexit.split.loop.exit221 ], [ 0, %bb.e ] ; 5 uses
  %i.v = sext i32 %.1 to i64                      ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.z, null
  br i1 %.not10.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %.critedge
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i.i = phi ptr [ %0, %bb.g ], [ %i.z, %bb.f ]
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 224 ; 3 uses
  %i.aa = load ptr, ptr %.0.i.i, align 8, !tbaa !39 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i.i, label %bb.i, label %make_empty_cache_entry.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call ptr @xmalloc(i64 noundef 24) #28 ; 2 uses
  store ptr %i.ab, ptr %.0.i.i, align 8, !tbaa !39
  tail call void @mem_pool_init(ptr noundef %i.ab, i64 noundef 0) #28
  %.pre.i.i = load ptr, ptr %.0.i.i, align 8, !tbaa !39
  br label %make_empty_cache_entry.exit

make_empty_cache_entry.exit:                      ; preds = %bb.h, %bb.i
  %i.ac = phi ptr [ %.pre.i.i, %bb.i ], [ %i.aa, %bb.h ]
  %i.ad = add nsw i64 %i.v, 109
  %i.ae = tail call ptr @mem_pool_calloc(ptr noundef %i.ac, i64 noundef 1, i64 noundef %i.ad) #28 ; 19 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 60 ; 3 uses
  store i32 1, ptr %i.af, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 108 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr nonnull align 1 %1, i64 %i.v, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 5 uses
  store i32 %.1, ptr %i.ah, align 8, !tbaa !40
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %make_empty_cache_entry.exit
  tail call void @fill_stat_cache_info(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef %2)
  br label %bb.l

bb.k:                                             ; preds = %make_empty_cache_entry.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !40
  %i.ak = or i32 %i.aj, 536870912
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = load i32, ptr @trust_executable_bit, align 4, !tbaa !40
  %i.am = icmp ne i32 %i.al, 0
  %i.an = load i32, ptr @has_symlinks, align 4
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp eq i32 %i.h, 40960
  br i1 %i.ap, label %create_ce_mode.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp eq i32 %i.b, 16384
  br i1 %i.aq, label %create_ce_mode.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i16 %trunc, label %bb.p [
    i16 16384, label %create_ce_mode.exit
    i16 -8192, label %create_ce_mode.exit
  ]

bb.p:                                             ; preds = %bb.o
  %i.ar = and i32 %i.b, 64
  %.not.i = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not.i, i32 33188, i32 33261
  br label %create_ce_mode.exit

bb.q:                                             ; preds = %bb.l
  %i.at = tail call fastcc i32 @index_name_stage_pos(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %.1, i32 noundef 0, i32 noundef 1) ; 4 uses
  %i.au = icmp sgt i32 %i.at, -1
  br i1 %i.au, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %bb.q
  %.pre = load ptr, ptr %0, align 8, !tbaa !32
  %.phi.trans.insert = zext nneg i32 %i.at to i64
  %.phi.trans.insert178 = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.phi.trans.insert
  %.pre179 = load ptr, ptr %.phi.trans.insert178, align 8, !tbaa !34
  br label %index_name_pos_also_unmerged.exit

bb.r:                                             ; preds = %bb.q
  %i.av = xor i32 %i.at, -1                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !42 ; 2 uses
  %.not.i120 = icmp ugt i32 %i.ax, %i.av
  br i1 %.not.i120, label %bb.s, label %index_name_pos_also_unmerged.exit

bb.s:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.az = zext nneg i32 %i.av to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !34 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !40
  %.not.i.i121 = icmp eq i32 %.1, %i.bd
  br i1 %.not.i.i121, label %compare_name.exit.i, label %index_name_pos_also_unmerged.exit

compare_name.exit.i:                              ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 108
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %i.be, i64 %i.v)
  %.not34.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not34.i, label %bb.t, label %index_name_pos_also_unmerged.exit

bb.t:                                             ; preds = %compare_name.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !40
  %i.bh = and i32 %i.bg, 12288
  %i.bi = icmp eq i32 %i.bh, 4096
  br i1 %i.bi, label %bb.u, label %index_name_pos_also_unmerged.exit

bb.u:                                             ; preds = %bb.t
  %i.bj = sub nsw i32 0, %i.at                    ; 2 uses
  %i.bk = icmp ugt i32 %i.ax, %i.bj
  br i1 %i.bk, label %bb.v, label %index_name_pos_also_unmerged.exit

bb.v:                                             ; preds = %bb.u
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !40
  %i.bq = and i32 %i.bp, 12288
  %i.br = icmp eq i32 %i.bq, 8192
  br i1 %i.br, label %bb.w, label %index_name_pos_also_unmerged.exit

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !40
  %.not.i28.i = icmp eq i32 %.1, %i.bt
  br i1 %.not.i28.i, label %compare_name.exit30.i, label %index_name_pos_also_unmerged.exit

compare_name.exit30.i:                            ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 108
  %bcmp.i29.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %i.bu, i64 %i.v)
end_hunk_0
