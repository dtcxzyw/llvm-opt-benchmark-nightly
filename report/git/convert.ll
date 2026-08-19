inline.NumInlined: 114
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@convert_to_working_tree_ca_internal:bb.a
  call void @free(ptr noundef %.034.i) #22
  br label %bb.ba

crlf_to_worktree.exit:                            ; preds = %bb.x, %bb.y, %bb.y, %bb.y, %bb.z, %text_eol_is_crlf.exit.i.i, %output_eol.exit.i, %._crit_edge.i.i, %._crit_edge.i.i, %._crit_edge.i.i, %bb.ap, %text_eol_is_crlf.exit.i.i.i, %output_eol.exit.i.i, %output_eol.exit.thread.i.i, %bb.at
  br i1 %.not54, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %crlf_to_worktree.exit.thread, %crlf_to_worktree.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !21
  br label %bb.bb

bb.bb:                                            ; preds = %crlf_to_worktree.exit, %bb.ba, %bb.v, %bb.w
  %.146 = phi i64 [ %i.fa, %bb.ba ], [ %.045, %crlf_to_worktree.exit ], [ %.045, %bb.v ], [ %.045, %bb.w ] ; 3 uses
  %.1 = phi ptr [ %i.ey, %bb.ba ], [ %.044, %crlf_to_worktree.exit ], [ %.044, %bb.v ], [ %.044, %bb.w ] ; 3 uses
  %.0 = phi i32 [ 1, %bb.ba ], [ 0, %crlf_to_worktree.exit ], [ %.052.i71, %bb.v ], [ %.052.i71, %bb.w ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !59 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %.not.i66 = icmp eq ptr %i.fc, null
  br i1 %.not.i66, label %encode_to_worktree.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fd = icmp eq ptr %.1, null
  %i.fe = icmp ne i64 %.146, 0
  %or.cond.i67 = or i1 %i.fe, %i.fd
  br i1 %or.cond.i67, label %bb.bd, label %encode_to_worktree.exit

bb.bd:                                            ; preds = %bb.bc
  %i.ff = call ptr @reencode_string_len(ptr noundef %.1, i64 noundef %.146, ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.a) #22 ; 2 uses
  %.not14.i = icmp eq ptr %i.ff, null
  br i1 %.not14.i, label %bb.be, label %encode_to_worktree.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.fg = load i32, ptr @git_gettext_enabled, align 4, !tbaa !22
  %.not4.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #22
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.bf, %bb.be
  %.0.i.i = phi ptr [ %i.fh, %bb.bf ], [ @.str.54, %bb.be ]
  %i.fi = call i32 (ptr, ...) @error(ptr noundef %.0.i.i, ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.fc) #22 ; 0 uses
  br label %encode_to_worktree.exit

encode_to_worktree.exit.thread:                   ; preds = %bb.bd
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.fk = add i64 %i.fj, 1
  call void @strbuf_attach(ptr noundef %4, ptr noundef nonnull %i.ff, i64 noundef %i.fj, i64 noundef %i.fk) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bg

encode_to_worktree.exit:                          ; preds = %bb.bb, %bb.bc, %_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not55 = icmp eq i32 %.0, 0
  br i1 %.not55, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %encode_to_worktree.exit.thread, %encode_to_worktree.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !21
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %encode_to_worktree.exit
  %.0.i68118 = phi i32 [ 1, %bb.bg ], [ 0, %encode_to_worktree.exit ]
  %.247 = phi i64 [ %i.fo, %bb.bg ], [ %.146, %encode_to_worktree.exit ]
  %.2 = phi ptr [ %i.fm, %bb.bg ], [ %.1, %encode_to_worktree.exit ]
  %i.fp = load ptr, ptr %0, align 8, !tbaa !58
  %i.fq = call fastcc i32 @apply_filter(ptr noundef %1, ptr noundef %.2, i64 noundef %.247, i32 noundef -1, ptr noundef %4, ptr noundef %i.fp, i32 noundef 2, ptr noundef %6, ptr noundef %7) ; 2 uses
  %.not56 = icmp eq i32 %i.fq, 0
  br i1 %.not56, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.fr = load ptr, ptr %0, align 8, !tbaa !58    ; 2 uses
  %.not57 = icmp eq ptr %i.fr, null
  br i1 %.not57, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !66
  %.not58 = icmp eq i32 %i.ft, 0
  br i1 %.not58, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fu = call fastcc ptr @_(ptr noundef nonnull @.str.79)
  %i.fv = load ptr, ptr %0, align 8, !tbaa !58
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !54
  call void (ptr, ...) @die(ptr noundef %i.fu, ptr noundef %1, ptr noundef %i.fw) #23
  unreachable

bb.bl:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.fx = or i32 %i.fq, %.0.i68118
  ret i32 %i.fx
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @convert_to_working_tree_ca(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @convert_to_working_tree_ca_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @renormalize_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.conv_attrs, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @convert_attrs(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1)
  %i.a = call fastcc i32 @convert_to_working_tree_ca_internal(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef 1, ptr noundef null, ptr noundef null) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i64 [ %i.e, %bb.b ], [ %3, %bb.a ]
  %.0 = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ]
  %i.f = tail call i32 @convert_to_git(ptr noundef %0, ptr noundef %1, ptr noundef %.0, i64 noundef %.014, ptr noundef %4, i32 noundef 4)
  %i.g = or i32 %i.f, %i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @is_null_stream_filter(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, @null_filter_singleton
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_stream_filter_ca(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %bb.c, label %cascade_filter.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %bb.d, label %cascade_filter.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %.not11.i = icmp eq ptr %i.g, null
  br i1 %.not11.i, label %bb.e, label %cascade_filter.exit

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %.not12.i = icmp eq ptr %i.i, null
  br i1 %.not12.i, label %bb.f, label %cascade_filter.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50   ; 2 uses
  %i.l = add i32 %i.k, -5
  %switch.and.i = and i32 %i.l, -3
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %cascade_filter.exit, label %classify_conv_attrs.exit

classify_conv_attrs.exit:                         ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !53
  %.not9 = icmp eq i32 %i.n, 0
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %classify_conv_attrs.exit
  %i.o = tail call ptr @xmalloc(i64 noundef 112) #22 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = tail call ptr @oid_to_hex(ptr noundef %1) #22
  %i.r = tail call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.p, i64 noundef 69, ptr noundef nonnull @.str.83, ptr noundef %i.q) #22 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @strbuf_init(ptr noundef nonnull %i.s, i64 noundef 0) #22
  store ptr @ident_vtbl, ptr %i.o, align 8, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i32 0, ptr %i.t, align 8, !tbaa !123
  %.pre = load i32, ptr %i.j, align 4, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %classify_conv_attrs.exit
  %i.u = phi i32 [ %.pre, %bb.g ], [ %i.k, %classify_conv_attrs.exit ] ; 2 uses
  %.0 = phi ptr [ %i.o, %bb.g ], [ null, %classify_conv_attrs.exit ] ; 6 uses
  switch i32 %i.u, label %bb.j [
    i32 1, label %output_eol.exit.thread23
    i32 4, label %output_eol.exit.thread
    i32 3, label %output_eol.exit.thread23
    i32 0, label %output_eol.exit.thread
    i32 7, label %output_eol.exit.thread
    i32 6, label %output_eol.exit.thread23
    i32 2, label %bb.i
    i32 5, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.v = load i32, ptr @auto_crlf, align 4, !tbaa !22
  switch i32 %i.v, label %text_eol_is_crlf.exit.i [
    i32 1, label %output_eol.exit.thread
    i32 -1, label %output_eol.exit.thread23
  ]

text_eol_is_crlf.exit.i:                          ; preds = %bb.i
  %i.w = load i32, ptr @core_eol, align 4, !tbaa !22
  %.fr.i = freeze i32 %i.w
  %.not.i11 = icmp eq i32 %.fr.i, 1
  br i1 %.not.i11, label %output_eol.exit.thread, label %output_eol.exit.thread23

bb.j:                                             ; preds = %bb.h
  %i.x = load i32, ptr @git_gettext_enabled, align 4, !tbaa !22
  %.not4.i.i = icmp eq i32 %i.x, 0
  br i1 %.not4.i.i, label %output_eol.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #22
  br label %output_eol.exit

output_eol.exit:                                  ; preds = %bb.j, %bb.k
  %.0.i3.i = phi ptr [ %i.y, %bb.k ], [ @.str.85, %bb.j ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i3.i, i32 noundef %i.u) #22
  %i.z = load i32, ptr @core_eol, align 4, !tbaa !22
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %output_eol.exit.thread, label %output_eol.exit.thread23

output_eol.exit.thread:                           ; preds = %bb.h, %bb.h, %bb.h, %text_eol_is_crlf.exit.i, %bb.i, %output_eol.exit
  %i.ab = tail call noundef ptr @xcalloc(i64 noundef 1, i64 noundef 16) #22 ; 4 uses
  store ptr @lf_to_crlf_vtbl, ptr %i.ab, align 8, !tbaa !124
  %.not.i12 = icmp eq ptr %.0, null
  %.not20.i = icmp eq ptr %.0, @null_filter_singleton
  %or.cond.i = or i1 %.not.i12, %.not20.i
  br i1 %or.cond.i, label %cascade_filter.exit, label %bb.l

bb.l:                                             ; preds = %output_eol.exit.thread
  %.not21.i = icmp eq ptr %i.ab, @null_filter_singleton
  br i1 %.not21.i, label %cascade_filter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = tail call ptr @xmalloc(i64 noundef 1056) #22 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.0, ptr %i.ad, align 8, !tbaa !126
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !129
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1052
  store i32 0, ptr %i.af, align 4, !tbaa !130
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1048
  store i32 0, ptr %i.ag, align 8, !tbaa !131
  store ptr @cascade_vtbl, ptr %i.ac, align 8, !tbaa !132
  br label %cascade_filter.exit

output_eol.exit.thread23:                         ; preds = %bb.h, %bb.h, %bb.i, %text_eol_is_crlf.exit.i, %bb.h, %output_eol.exit
  %.not.i14 = icmp eq ptr %.0, null
  %spec.select = select i1 %.not.i14, ptr @null_filter_singleton, ptr %.0
  br label %cascade_filter.exit

cascade_filter.exit:                              ; preds = %output_eol.exit.thread23, %bb.f, %bb.d, %bb.e, %bb.c, %bb.b, %bb.m, %bb.l, %output_eol.exit.thread
  %.08 = phi ptr [ %spec.select, %output_eol.exit.thread23 ], [ %.0, %bb.l ], [ %i.ac, %bb.m ], [ %i.ab, %output_eol.exit.thread ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ]
  ret ptr %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 4) i32 @classify_conv_attrs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %.not11 = icmp eq ptr %i.g, null
  br i1 %.not11, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %.not12 = icmp eq ptr %i.i, null
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50
  %i.l = add i32 %i.k, -5
  %switch.and = and i32 %i.l, -3
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %i.m = select i1 %switch.selectcmp, i32 0, i32 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.m, %bb.f ], [ 2, %bb.b ], [ 1, %bb.c ], [ 0, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_stream_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.conv_attrs, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @convert_attrs(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1)
  %i.a = call ptr @get_stream_filter_ca(ptr noundef nonnull %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @free_stream_filter(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  tail call void %i.c(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stream_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !133
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call i32 %i.b(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @init_checkout_metadata(ptr nofree noundef writeonly captures(none) initializes((0, 80)) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not12 = icmp eq ptr %2, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(32) %2, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.c, ptr %i.d, align 4, !tbaa !137
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not13 = icmp eq ptr %3, null
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(32) %3, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.g, ptr %i.h, align 4, !tbaa !137
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @clone_checkout_metadata(ptr nofree noundef writeonly captures(none) initializes((0, 80)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(32) %2, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.c, ptr %i.d, align 4, !tbaa !137
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare void @subprocess_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @parse_config_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xstrncmpz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @xmemdupz(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @git_config_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @git_config_bool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @same_encoding(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @filter_buffer_or_fd(i32 %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.child_process, align 8      ; 9 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %4 = alloca %struct.strbuf, align 8             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) @__const.filter_buffer_or_fd.child_process, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  store ptr %i.c, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.trace_encoding.trace, i64 24, i1 false)
  %i.d = call i32 @strbuf_expand_step(ptr noundef nonnull %4, ptr noundef nonnull %i.a) #22
  %.not51 = icmp eq i32 %i.d, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 1    ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  switch i8 %i.i, label %skip_prefix_impl.exit32 [
    i8 37, label %bb.c
    i8 102, label %bb.d
  ]
end_hunk_0
