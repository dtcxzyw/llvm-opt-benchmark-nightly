inline.NumInlined: 81
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@prune:bb.a
  store ptr null, ptr %i.g, align 16, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.142, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 2, ptr %i.i, align 16, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1, ptr %i.l, align 16, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i32 8, ptr %i.n, align 16, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 100
  store i32 118, ptr %i.o, align 4, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr @.str.94, ptr %i.p, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.b, ptr %i.q, align 16, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 4, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.s, align 16, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr @.str.143, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i32 2, ptr %i.u, align 16, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %i.v, i8 0, i64 140, i1 false)
  %i.w = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull @git_notes_prune_usage, i32 noundef 0) #14
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = call fastcc ptr @_(ptr noundef nonnull @.str.15)
  %i.y = call i32 (ptr, ...) @error(ptr noundef %i.x) #14 ; 0 uses
  call void @usage_with_options(ptr noundef nonnull @git_notes_prune_usage, ptr noundef nonnull %4) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @init_notes(ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 2) #14
  %.val7.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @default_notes_tree, i64 32), align 8 ; 2 uses
  %i.z = call zeroext i1 @starts_with(ptr noundef %.val7.i, ptr noundef nonnull @.str.19) #14
  br i1 %i.z, label %init_notes_check.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = call fastcc ptr @_(ptr noundef nonnull @.str.20)
  call void (ptr, ...) @die(ptr noundef %i.aa, ptr noundef nonnull @.str.11, ptr noundef %.val7.i) #15
  unreachable

init_notes_check.exit:                            ; preds = %bb.c
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !30
  %.not6 = icmp ne i32 %i.ab, 0
  %i.ac = zext i1 %.not6 to i32
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !30
  %.not7 = icmp eq i32 %i.ad, 0
  %i.ae = select i1 %.not7, i32 0, i32 3
  %i.af = or i32 %i.ae, %i.ac
  call void @prune_notes(ptr noundef nonnull @default_notes_tree, i32 noundef %i.af) #14
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !30
  %.not8 = icmp eq i32 %i.ag, 0
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %init_notes_check.exit
  %i.ah = load ptr, ptr @the_repository, align 8, !tbaa !26
  call void @commit_notes(ptr noundef %i.ah, ptr noundef nonnull @default_notes_tree, ptr noundef nonnull @.str.144) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %init_notes_check.exit
  call void @free_notes(ptr noundef nonnull @default_notes_tree) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_ref(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca [1 x %struct.option], align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  %i.a = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull @git_notes_get_ref_usage, i32 noundef 0) #14
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @_(ptr noundef nonnull @.str.15)
  %i.c = call i32 (ptr, ...) @error(ptr noundef %i.b) #14 ; 0 uses
  call void @usage_with_options(ptr noundef nonnull @git_notes_get_ref_usage, ptr noundef nonnull %4) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @the_repository, align 8, !tbaa !26
  %i.e = call ptr @default_notes_ref(ptr noundef %i.d) #14 ; 2 uses
  %i.f = call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.e) ; 0 uses
  call void @free(ptr noundef %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 0
}

declare void @repo_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @git_default_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @parse_options(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !71
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !30
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.159, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @usage_with_options(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @expand_notes_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @repo_get_oid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #5

declare ptr @get_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #3

declare i32 @for_each_note(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @list_each_note(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @oid_to_hex(ptr noundef %1) #14
  %i.b = tail call ptr @oid_to_hex(ptr noundef %0) #14
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %i.a, ptr noundef %i.b) ; 0 uses
  ret i32 0
}

declare void @free_notes(ptr noundef) local_unnamed_addr #3

declare void @init_notes(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @starts_with(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_msg_arg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = tail call ptr @xmalloc(i64 noundef 32) #14 ; 3 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.44, i32 noundef 279, ptr noundef nonnull @.str.49) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  tail call void @strbuf_init(ptr noundef nonnull %i.d, i64 noundef %i.e) #14
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  tail call void @strbuf_add(ptr noundef nonnull %i.d, ptr noundef nonnull %1, i64 noundef %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34   ; 5 uses
  %i.i = add nuw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp eq i64 %i.h, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.44, i32 noundef 283, ptr noundef nonnull @.str.50) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !92   ; 2 uses
  %.not30 = icmp ult i64 %i.h, %i.l
  br i1 %.not30, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = mul i64 %i.l, 3
  %i.n = add i64 %i.m, 48
  %i.o = lshr i64 %i.n, 1
  %. = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.i) ; 4 uses
  store i64 %., ptr %i.k, align 8, !tbaa !92
  %i.p = icmp ugt i64 %., 2305843009213693951
  br i1 %i.p, label %bb.g, label %st_mult.exit

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.51, i64 noundef 8, i64 noundef %.) #15
  unreachable

st_mult.exit:                                     ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.s = shl nuw i64 %., 3
  %i.t = tail call ptr @xrealloc(ptr noundef %i.r, i64 noundef %i.s) #14 ; 2 uses
  store ptr %i.t, ptr %i.q, align 8, !tbaa !93
  %.pre30 = load i64, ptr %i.g, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %st_mult.exit
  %i.u = phi i64 [ %i.h, %._crit_edge ], [ %.pre30, %st_mult.exit ]
  %i.v = phi ptr [ %.pre, %._crit_edge ], [ %i.t, %st_mult.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  store i64 0, ptr %i.x, align 8
  store i64 %i.i, ptr %i.g, align 8, !tbaa !34
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.h
  store ptr %i.c, ptr %i.z, align 8, !tbaa !94
  store i32 1, ptr %i.c, align 8, !tbaa !96
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_file_arg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = tail call ptr @xmalloc(i64 noundef 32) #14 ; 3 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %sub_0, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.44, i32 noundef 294, ptr noundef nonnull @.str.49) #15
  unreachable

sub_0:                                            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  tail call void @strbuf_init(ptr noundef nonnull %i.d, i64 noundef 0) #14
  %i.e = load i8, ptr %1, align 1
  %.not34.a = icmp eq i8 %i.e, 45
  br i1 %.not34.a, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %.tail.thread

bb.c:                                             ; preds = %.tail
  %i.i = tail call i64 @strbuf_read(ptr noundef nonnull %i.d, i32 noundef 0, i64 noundef 1024) #14
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc ptr @_(ptr noundef nonnull @.str.53)
  tail call void (ptr, ...) @die_errno(ptr noundef %i.k, ptr noundef nonnull %1) #15
  unreachable

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.l = tail call i64 @strbuf_read_file(ptr noundef nonnull %i.d, ptr noundef nonnull %1, i64 noundef 1024) #14
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.tail.thread
  %i.n = tail call fastcc ptr @_(ptr noundef nonnull @.str.54)
  tail call void (ptr, ...) @die_errno(ptr noundef %i.n, ptr noundef nonnull %1) #15
  unreachable

bb.f:                                             ; preds = %bb.c, %.tail.thread
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34   ; 5 uses
  %i.q = add nuw i64 %i.p, 1                      ; 2 uses
  %i.r = icmp eq i64 %i.p, -1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.44, i32 noundef 303, ptr noundef nonnull @.str.50) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !92   ; 2 uses
  %.not34 = icmp ult i64 %i.p, %i.t
  br i1 %.not34, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = mul i64 %i.t, 3
  %i.v = add i64 %i.u, 48
  %i.w = lshr i64 %i.v, 1
  %. = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.q) ; 4 uses
  store i64 %., ptr %i.s, align 8, !tbaa !92
  %i.x = icmp ugt i64 %., 2305843009213693951
  br i1 %i.x, label %bb.j, label %st_mult.exit

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.51, i64 noundef 8, i64 noundef %.) #15
  unreachable

st_mult.exit:                                     ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.aa = shl nuw i64 %., 3
  %i.ab = tail call ptr @xrealloc(ptr noundef %i.z, i64 noundef %i.aa) #14 ; 2 uses
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !93
  %.pre35 = load i64, ptr %i.o, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %st_mult.exit
  %i.ac = phi i64 [ %i.p, %._crit_edge ], [ %.pre35, %st_mult.exit ]
  %i.ad = phi ptr [ %.pre, %._crit_edge ], [ %i.ab, %st_mult.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  store i64 0, ptr %i.af, align 8
  store i64 %i.q, ptr %i.o, align 8, !tbaa !34
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !93
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.p
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !94
  store i32 1, ptr %i.c, align 8, !tbaa !96
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_reedit_arg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.44, i32 noundef 345, ptr noundef nonnull @.str.49) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  store i32 1, ptr %i.b, align 8, !tbaa !98
  %i.c = tail call i32 @parse_reuse_arg(ptr noundef %0, ptr noundef %1, i32 noundef 0) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_reuse_arg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.object_id, align 4          ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 5 uses
  %i.e = tail call ptr @xmalloc(i64 noundef 32) #14 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.44, i32 noundef 318, ptr noundef nonnull @.str.49) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  tail call void @strbuf_init(ptr noundef nonnull %i.f, i64 noundef 0) #14
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !26
  %i.h = call i32 @repo_get_oid(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull %3) #14
  %.not39 = icmp eq i32 %i.h, 0
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call fastcc ptr @_(ptr noundef nonnull @.str.16)
  call void (ptr, ...) @die(ptr noundef %i.i, ptr noundef %1) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = call ptr @odb_read_object(ptr noundef %i.l, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 4 uses
  %.not40 = icmp eq ptr %i.m, null
  br i1 %.not40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = call fastcc ptr @_(ptr noundef nonnull @.str.55)
  call void (ptr, ...) @die(ptr noundef %i.n, ptr noundef %1) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.a, align 4, !tbaa !30
  %.not41 = icmp eq i32 %i.o, 3
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @strbuf_release(ptr noundef nonnull %i.f) #14
  call void @free(ptr noundef nonnull %i.m) #14
  call void @free(ptr noundef nonnull %i.e) #14
  %i.p = call fastcc ptr @_(ptr noundef nonnull @.str.56)
  call void (ptr, ...) @die(ptr noundef %i.p, ptr noundef %1) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.b, align 8, !tbaa !70
  call void @strbuf_add(ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, i64 noundef %i.q) #14
  call void @free(ptr noundef nonnull %i.m) #14
  %i.r = load i64, ptr %i.b, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34   ; 5 uses
  %i.v = add nuw i64 %i.u, 1                      ; 2 uses
  %i.w = icmp eq i64 %i.u, -1
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.44, i32 noundef 336, ptr noundef nonnull @.str.50) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !92   ; 2 uses
  %.not42 = icmp ult i64 %i.u, %i.y
  br i1 %.not42, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.z = mul i64 %i.y, 3
  %i.aa = add i64 %i.z, 48
  %i.ab = lshr i64 %i.aa, 1
  %. = call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.v) ; 4 uses
  store i64 %., ptr %i.x, align 8, !tbaa !92
  %i.ac = icmp ugt i64 %., 2305843009213693951
  br i1 %i.ac, label %bb.m, label %st_mult.exit

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @die(ptr noundef nonnull @.str.51, i64 noundef 8, i64 noundef %.) #15
  unreachable

st_mult.exit:                                     ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93
  %i.af = shl nuw i64 %., 3
  %i.ag = call ptr @xrealloc(ptr noundef %i.ae, i64 noundef %i.af) #14 ; 2 uses
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !93
  %.pre42 = load i64, ptr %i.t, align 8, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %st_mult.exit
  %i.ah = phi i64 [ %i.u, %._crit_edge ], [ %.pre42, %st_mult.exit ]
  %i.ai = phi ptr [ %.pre, %._crit_edge ], [ %i.ag, %st_mult.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  store i64 0, ptr %i.ak, align 8
  store i64 %i.v, ptr %i.t, align 8, !tbaa !34
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.u
  store ptr %i.e, ptr %i.am, align 8, !tbaa !94
  store i32 0, ptr %i.e, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @parse_separator_arg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #8 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %.not4 = icmp eq ptr %1, null
  %i.a = select i1 %.not4, ptr @.str.57, ptr %1
  %.sink = select i1 %.not, ptr %i.a, ptr null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  store ptr %.sink, ptr %i.c, align 8, !tbaa !12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @concat_messages(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.strbuf, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.remove_cmd.sb, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34
  %.not15 = icmp eq i64 %i.b, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %strbuf_setlen.exit
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %strbuf_setlen.exit ] ; 3 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !40
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %append_separator.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @separator, align 8, !tbaa !12 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %append_separator.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #16 ; 3 uses
  %.not3.i = icmp eq i64 %i.k, 0
  br i1 %.not3.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !71
  %i.o = icmp eq i8 %i.n, 10
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @strbuf_add(ptr noundef nonnull %i.c, ptr noundef nonnull %i.j, i64 noundef %i.k) #14
  br label %append_separator.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.57) #14
  br label %append_separator.exit

append_separator.exit:                            ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.014
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !99
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef %i.t, i64 noundef %i.v) #14
  call void @strbuf_addbuf(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #14
  %i.w = load i32, ptr %i.f, align 4, !tbaa !101
  switch i32 %i.w, label %.thread [
    i32 -1, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %append_separator.exit
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.014
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !96
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %append_separator.exit, %bb.h
  call void @strbuf_stripspace(ptr noundef nonnull %i.c, ptr noundef null) #14
  br label %.thread

.thread:                                          ; preds = %append_separator.exit, %bb.h, %bb.i
  store i64 0, ptr %i.g, align 8, !tbaa !72
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !28  ; 2 uses
  %.not9.i = icmp eq ptr %i.ac, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  store i8 0, ptr %i.ac, align 1, !tbaa !71
  br label %strbuf_setlen.exit

bb.k:                                             ; preds = %.thread
  %i.ad = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !71
  %.not10.i = icmp eq i8 %i.ad, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.j, %bb.k
  %i.ae = add nuw i64 %.014, 1                    ; 2 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %strbuf_setlen.exit, %bb.a
  call void @strbuf_release(ptr noundef nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_note_data(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @unlink_or_warn(ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.d) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @strbuf_release(ptr noundef nonnull %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !34
  %.not1011 = icmp eq i64 %i.g, 0
  br i1 %.not1011, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.j = phi i64 [ %i.h, %.lr.ph ], [ %i.t, %bb.d ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
end_hunk_0
