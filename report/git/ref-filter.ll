Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/ref-filter?download=true
inline.NumInlined: 236
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@err_bad_arg:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.84, i32 noundef 5) #24
  br label %_.exit

_.exit:                                           ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ @.str.84, %bb.a ]
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %0, ptr noundef %.0.i, i32 noundef %i.g, ptr noundef %1, ptr noundef %2) #24
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @strtoul_ui(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = tail call ptr @__errno_location() #27    ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #25
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = call i64 @__isoc23_strtoul(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 10) #24 ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !14
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22
  %.not9 = icmp eq i8 %i.g, 0
  %i.h = icmp ne ptr %i.f, %0
  %or.cond.not13 = and i1 %i.h, %.not9
  %.not10 = icmp ult i64 %i.d, 4294967296
  %or.cond11 = select i1 %or.cond.not13, i1 %.not10, i1 false
  br i1 %or.cond11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = trunc nuw i64 %i.d to i32
  store i32 %i.i, ptr %1, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @strvec_init(ptr noundef) local_unnamed_addr #4

declare ptr @strvec_push(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @strvec_pushf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @git_parse_maybe_bool(ptr noundef) local_unnamed_addr #4

declare ptr @xstrfmt(ptr noundef, ...) local_unnamed_addr #4

declare void @string_list_init_dup(ptr noundef) local_unnamed_addr #4

declare void @strbuf_init(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @format_set_trailers_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 7) i32 @parse_signature_option(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #15 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.117) #25
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.118) #25
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.119) #25
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.120) #25
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(22) @.str.121) #25
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.122) #25
  %.not13 = icmp eq i32 %i.f, 0
  %. = select i1 %.not13, i32 6, i32 -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 5, %bb.f ], [ %., %bb.g ], [ 4, %bb.e ], [ 3, %bb.d ], [ 1, %bb.c ], [ 2, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @string_list_split(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @refs_resolve_refdup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @get_main_ref_store(ptr noundef) local_unnamed_addr #4

declare i32 @color_parse(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #16

declare ptr @refs_ref_iterator_begin(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @start_ref_iterator_after(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.parse_sorting_atom.err, i64 24, i1 false)
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %i.a) #24
  %i.b = load i64, ptr %2, align 8, !tbaa !126    ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %.neg.i = add i64 %i.d, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.b, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.a
  call void @strbuf_grow(ptr noundef nonnull %2, i64 noundef 1) #24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !108 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.e = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.d, %strbuf_avail.exit.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %.pre-phi.i, ptr %i.h, align 8, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 1, ptr %i.i, align 1, !tbaa !22
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.k = load i64, ptr %i.h, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !22
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.n = call i32 @ref_iterator_seek(ptr noundef %0, ptr noundef %i.m, i32 noundef 0) #24
  call void @strbuf_release(ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %i.n
}

declare i32 @ref_iterator_seek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @do_for_each_ref_iterator(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @refs_head_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @refs_for_each_ref_in_prefixes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @apply_ref_filter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @git_gettext_enabled, align 4, !tbaa !14
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.150, i32 noundef 5) #24
  br label %_.exit

_.exit:                                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.c ], [ @.str.150, %bb.b ]
  %i.f = load ptr, ptr %0, align 8, !tbaa !238
  tail call void (ptr, ...) @warning(ptr noundef %.0.i, ptr noundef %i.f) #24
  br label %match_points_at.exit

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 4
  %.not53 = icmp eq i32 %i.g, 0
  br i1 %.not53, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr @git_gettext_enabled, align 4, !tbaa !14
  %.not4.i69 = icmp eq i32 %i.h, 0
  br i1 %.not4.i69, label %_.exit71, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.151, i32 noundef 5) #24
  br label %_.exit71

_.exit71:                                         ; preds = %bb.e, %bb.f
  %.0.i70 = phi ptr [ %i.i, %bb.f ], [ @.str.151, %bb.e ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !238
  tail call void (ptr, ...) @warning(ptr noundef %.0.i70, ptr noundef %i.j) #24
  br label %match_points_at.exit

bb.g:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !238    ; 6 uses
  %i.l = getelementptr i8, ptr %1, i64 108        ; 3 uses
  %.val = load i32, ptr %i.l, align 4, !tbaa !92  ; 5 uses
  switch i32 %.val, label %bb.h [
    i32 4, label %filter_ref_kind.exit.thread
    i32 8, label %filter_ref_kind.exit.thread
    i32 2, label %filter_ref_kind.exit.thread
  ]

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(5) @.str.19) #25
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %filter_ref_kind.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.h
  %i.n = tail call zeroext i1 @starts_with(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.16) #24
  br i1 %i.n, label %bb.j, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.o = tail call zeroext i1 @starts_with(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.17) #24
  br i1 %i.o, label %bb.j, label %.preheader.2.i.i

.preheader.2.i.i:                                 ; preds = %.preheader.1.i.i
  %i.p = tail call zeroext i1 @starts_with(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.18) #24
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.2.i.i
  %i.q = tail call i32 @is_pseudo_ref(ptr noundef nonnull %i.k) #24
  %.not10.i.i = icmp eq i32 %i.q, 0
  br i1 %.not10.i.i, label %bb.k, label %filter_ref_kind.exit.thread

bb.j:                                             ; preds = %.preheader.2.i.i, %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi ptr [ @ref_kind_from_refname.ref_kind, %.preheader.preheader.i.i ], [ getelementptr inbounds nuw (i8, ptr @ref_kind_from_refname.ref_kind, i64 16), %.preheader.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @ref_kind_from_refname.ref_kind, i64 32), %.preheader.2.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !60
  %.pre = load i32, ptr %i.l, align 4, !tbaa !92
  br label %filter_ref_kind.exit

bb.k:                                             ; preds = %bb.i
  %i.t = tail call i32 @is_root_ref(ptr noundef nonnull %i.k) #24
  %.not11.i.i = icmp eq i32 %i.t, 0
  %..i.i = select i1 %.not11.i.i, i32 16, i32 128
  br label %filter_ref_kind.exit.thread

filter_ref_kind.exit.thread:                      ; preds = %bb.g, %bb.g, %bb.g, %bb.k, %bb.i
  %.0.i72.ph = phi i32 [ 64, %bb.i ], [ %..i.i, %bb.k ], [ %.val, %bb.g ], [ %.val, %bb.g ], [ %.val, %bb.g ]
  %i.u = load i32, ptr %i.l, align 4, !tbaa !92
  br label %bb.l

filter_ref_kind.exit:                             ; preds = %bb.h, %bb.j
  %i.v = phi i32 [ %.val, %bb.h ], [ %.pre, %bb.j ] ; 2 uses
  %.0.i72 = phi i32 [ 32, %bb.h ], [ %i.s, %bb.j ] ; 2 uses
  %i.w = and i32 %i.v, 128
  %i.x = icmp ne i32 %i.w, 0
  %i.y = icmp eq i32 %.0.i72, 32
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %filter_ref_kind.exit.thread, %filter_ref_kind.exit
  %i.z = phi i32 [ %i.u, %filter_ref_kind.exit.thread ], [ %i.v, %filter_ref_kind.exit ]
  %.0.i7280 = phi i32 [ %.0.i72.ph, %filter_ref_kind.exit.thread ], [ %.0.i72, %filter_ref_kind.exit ] ; 2 uses
  %i.aa = and i32 %.0.i7280, %i.z
  %.not54 = icmp eq i32 %i.aa, 0
  br i1 %.not54, label %match_points_at.exit, label %bb.m

bb.m:                                             ; preds = %filter_ref_kind.exit, %bb.l
  %.0 = phi i32 [ %.0.i7280, %bb.l ], [ 128, %filter_ref_kind.exit ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !238   ; 5 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !94    ; 4 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %filter_pattern_match.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %.not10.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i, label %filter_pattern_match.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.af = load i8, ptr %i.ae, align 8             ; 2 uses
  %i.ag = and i8 %i.af, 2
  %.not11.i = icmp eq i8 %i.ag, 0
  %i.ah = lshr i8 %i.af, 2
  %i.ai = and i8 %i.ah, 1                         ; 2 uses
  br i1 %.not11.i, label %filter_pattern_match.exit.filter_pattern_match.exit.thread_crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #25
  %3 = trunc i64 %2 to i32
  %4 = or disjoint i8 %i.ai, 2
  %spec.select.i.i = zext nneg i8 %4 to i32
  br label %.lr.ph.i.i

5:                                                ; preds = %filter_pattern_match.exit.a
  %6 = getelementptr inbounds nuw i8, ptr %.02434.i.i, i64 8 ; 2 uses
  %7 = load ptr, ptr %6, align 8, !tbaa !49       ; 2 uses
  %.not28.i.i = icmp eq ptr %7, null
  br i1 %.not28.i.i, label %match_points_at.exit, label %.lr.ph.i.i, !llvm.loop !235

.lr.ph.i.i:                                       ; preds = %5, %bb.p
  %8 = phi ptr [ %7, %5 ], [ %i.ad, %bb.p ]       ; 4 uses
  %.02434.i.i = phi ptr [ %6, %5 ], [ %i.ac, %bb.p ]
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #25 ; 2 uses
  %10 = trunc i64 %9 to i32
  %.not29.i.i = icmp sgt i32 %10, %3
  br i1 %.not29.i.i, label %filter_pattern_match.exit.a, label %11

11:                                               ; preds = %.lr.ph.i.i
  %sext.i.i = shl i64 %9, 32                      ; 2 uses
  %12 = ashr exact i64 %sext.i.i, 32              ; 2 uses
  %13 = tail call i32 @strncmp(ptr noundef nonnull %i.ab, ptr noundef nonnull %8, i64 noundef %12) #25
  %.not30.i.i = icmp eq i32 %13, 0
  br i1 %.not30.i.i, label %14, label %filter_pattern_match.exit.a

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %i.ab, i64 %12
  %16 = load i8, ptr %15, align 1, !tbaa !22
  switch i8 %16, label %bb.q [
    i8 0, label %filter_pattern_match.exit.thread
    i8 47, label %filter_pattern_match.exit.thread
  ]

bb.q:                                             ; preds = %14
  %sext31.i.i = add i64 %sext.i.i, -4294967296
  %17 = ashr exact i64 %sext31.i.i, 32
  %18 = getelementptr inbounds i8, ptr %8, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !22
  %20 = icmp eq i8 %19, 47
  br i1 %20, label %filter_pattern_match.exit.thread, label %filter_pattern_match.exit.a

filter_pattern_match.exit.a:                      ; preds = %bb.q, %11, %.lr.ph.i.i
  %21 = tail call i32 @wildmatch(ptr noundef nonnull %8, ptr noundef nonnull %i.ab, i32 noundef %spec.select.i.i) #24
  %.not55.a = icmp eq i32 %21, 0
  br i1 %.not55.a, label %filter_pattern_match.exit.thread, label %5

filter_pattern_match.exit.filter_pattern_match.exit.thread_crit_edge: ; preds = %bb.o
  %22 = zext nneg i8 %i.ai to i32
  %23 = tail call fastcc i32 @match_pattern(ptr noundef nonnull %i.ac, ptr noundef %i.ab, i32 noundef %22)
  %.not55 = icmp eq i32 %23, 0
  br i1 %.not55, label %match_points_at.exit, label %filter_pattern_match.exit.thread

filter_pattern_match.exit.thread:                 ; preds = %filter_pattern_match.exit.a, %bb.q, %14, %14, %bb.n, %bb.m, %filter_pattern_match.exit.filter_pattern_match.exit.thread_crit_edge
  %24 = load ptr, ptr %0, align 8, !tbaa !238     ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !239
  %.not.i74 = icmp eq i64 %i.ak, 0
  br i1 %.not.i74, label %filter_exclude_match.exit.thread, label %bb.r

bb.r:                                             ; preds = %filter_pattern_match.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load i8, ptr %i.am, align 8             ; 2 uses
  %i.ao = and i8 %i.an, 2
  %.not8.i = icmp eq i8 %i.ao, 0
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !93 ; 3 uses
  %i.aq = lshr i8 %i.an, 2
  %i.ar = and i8 %i.aq, 1                         ; 2 uses
  br i1 %.not8.i, label %filter_exclude_match.exit, label %25

25:                                               ; preds = %bb.r
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #25
  %27 = trunc i64 %26 to i32
  %28 = or disjoint i8 %i.ar, 2
  %spec.select.i.i75 = zext nneg i8 %28 to i32
  %29 = load ptr, ptr %i.ap, align 8, !tbaa !49   ; 2 uses
  %.not2833.i.i = icmp eq ptr %29, null
  br i1 %.not2833.i.i, label %filter_exclude_match.exit.thread, label %.lr.ph.i.i76

30:                                               ; preds = %bb.t
  %31 = getelementptr inbounds nuw i8, ptr %.02434.i.i77, i64 8 ; 2 uses
  %32 = load ptr, ptr %31, align 8, !tbaa !49     ; 2 uses
  %.not28.i.i82 = icmp eq ptr %32, null
  br i1 %.not28.i.i82, label %filter_exclude_match.exit.thread, label %.lr.ph.i.i76, !llvm.loop !235

.lr.ph.i.i76:                                     ; preds = %25, %30
  %33 = phi ptr [ %32, %30 ], [ %29, %25 ]        ; 4 uses
  %.02434.i.i77 = phi ptr [ %31, %30 ], [ %i.ap, %25 ]
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #25 ; 2 uses
  %35 = trunc i64 %34 to i32
  %.not29.i.i78 = icmp sgt i32 %35, %27
  br i1 %.not29.i.i78, label %bb.t, label %36

36:                                               ; preds = %.lr.ph.i.i76
  %sext.i.i79 = shl i64 %34, 32                   ; 2 uses
  %37 = ashr exact i64 %sext.i.i79, 32            ; 2 uses
  %38 = tail call i32 @strncmp(ptr noundef nonnull %24, ptr noundef nonnull %33, i64 noundef %37) #25
  %.not30.i.i80 = icmp eq i32 %38, 0
  br i1 %.not30.i.i80, label %39, label %bb.t

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, ptr %24, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !22
  switch i8 %41, label %bb.s [
    i8 0, label %match_points_at.exit
    i8 47, label %match_points_at.exit
  ]

bb.s:                                             ; preds = %39
  %sext31.i.i84 = add i64 %sext.i.i79, -4294967296
  %42 = ashr exact i64 %sext31.i.i84, 32
  %43 = getelementptr inbounds i8, ptr %33, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !22
  %45 = icmp eq i8 %44, 47
  br i1 %45, label %match_points_at.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %36, %.lr.ph.i.i76
  %46 = tail call i32 @wildmatch(ptr noundef nonnull %33, ptr noundef nonnull %24, i32 noundef %spec.select.i.i75) #24
  %.not32.not.i.i81 = icmp eq i32 %46, 0
  br i1 %.not32.not.i.i81, label %match_points_at.exit, label %30

filter_exclude_match.exit:                        ; preds = %bb.r
  %47 = zext nneg i8 %i.ar to i32
  %48 = tail call fastcc i32 @match_pattern(ptr noundef %i.ap, ptr noundef %24, i32 noundef %47)
  %.not56 = icmp eq i32 %48, 0
  br i1 %.not56, label %filter_exclude_match.exit.thread, label %match_points_at.exit

filter_exclude_match.exit.thread:                 ; preds = %30, %25, %filter_pattern_match.exit.thread, %filter_exclude_match.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !240
  %.not57 = icmp eq i64 %i.at, 0
  br i1 %.not57, label %match_points_at.exit.thread, label %bb.u

bb.u:                                             ; preds = %filter_exclude_match.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !241 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !238
  %i.ay = tail call i32 @oid_array_lookup(ptr noundef nonnull %i.au, ptr noundef %i.aw) #24
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %match_points_at.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr @the_repository, align 8, !tbaa !47
  %i.bb = tail call ptr @parse_object_with_flags(ptr noundef %i.ba, ptr noundef %i.aw, i32 noundef 1) #24 ; 2 uses
  %.not25.i = icmp eq ptr %i.bb, null
  br i1 %.not25.i, label %.thread20.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.y
  %.01326.i = phi ptr [ %i.bm, %bb.y ], [ %i.bb, %bb.v ] ; 4 uses
  %i.bc = load i64, ptr %.01326.i, align 4
  %i.bd = and i64 %i.bc, 14
  %i.be = icmp eq i64 %i.bd, 8
  br i1 %i.be, label %bb.w, label %match_points_at.exit

bb.w:                                             ; preds = %.lr.ph.i
  %i.bf = load ptr, ptr @the_repository, align 8, !tbaa !47
  %i.bg = tail call i32 @parse_tag(ptr noundef %i.bf, ptr noundef nonnull %.01326.i) #24
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %.thread20.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = tail call ptr @get_tagged_oid(ptr noundef nonnull %.01326.i) #24
  %i.bj = tail call i32 @oid_array_lookup(ptr noundef nonnull %i.au, ptr noundef %i.bi) #24
  %i.bk = icmp sgt i32 %i.bj, -1
  br i1 %i.bk, label %match_points_at.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %.01326.i, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !153 ; 2 uses
  %.not.i76 = icmp eq ptr %i.bm, null
  br i1 %.not.i76, label %.thread20.i, label %.lr.ph.i

.thread20.i:                                      ; preds = %bb.y, %bb.w, %bb.v
  %i.bn = tail call fastcc ptr @_(ptr noundef nonnull @.str.153)
  tail call void (ptr, ...) @die(ptr noundef %i.bn, ptr noundef %i.ax) #26
  unreachable

match_points_at.exit.thread:                      ; preds = %bb.x, %bb.u, %filter_exclude_match.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !101
  %.not59 = icmp eq ptr %i.bp, null
  br i1 %.not59, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %match_points_at.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !102
  %.not60 = icmp eq ptr %i.br, null
  br i1 %.not60, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !141
  %.not61 = icmp eq ptr %i.bt, null
  br i1 %.not61, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !142
  %.not62 = icmp eq ptr %i.bv, null
  br i1 %.not62, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !242
  %.not63 = icmp eq i32 %i.bx, 0
  br i1 %.not63, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %match_points_at.exit.thread
  %i.by = load ptr, ptr @the_repository, align 8, !tbaa !47
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !241
  %i.cb = tail call ptr @lookup_commit_reference_gently(ptr noundef %i.by, ptr noundef %i.ca, i32 noundef 1) #24 ; 5 uses
  %.not64 = icmp eq ptr %i.cb, null
  br i1 %.not64, label %match_points_at.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !141 ; 2 uses
  %.not65 = icmp eq ptr %i.cd, null
  br i1 %.not65, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cf = tail call i32 @commit_contains(ptr noundef nonnull %1, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce) #24
  %.not66 = icmp eq i32 %i.cf, 0
  br i1 %.not66, label %match_points_at.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !142 ; 2 uses
  %.not67 = icmp eq ptr %i.ch, null
  br i1 %.not67, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cj = tail call i32 @commit_contains(ptr noundef nonnull %1, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci) #24
  %.not68 = icmp eq i32 %i.cj, 0
  br i1 %.not68, label %bb.ai, label %match_points_at.exit

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.ac
  %.048 = phi ptr [ %i.cb, %bb.ah ], [ %i.cb, %bb.ag ], [ null, %bb.ac ]
  %i.ck = load ptr, ptr %0, align 8, !tbaa !238
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !241
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !243
  %i.cp = tail call fastcc ptr @new_ref_array_item(ptr noundef %i.ck, ptr noundef %i.cm, ptr noundef %i.co) ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  store ptr %.048, ptr %i.cq, align 8, !tbaa !78
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !237
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 84
  store i32 %.0, ptr %i.ct, align 4, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !244 ; 2 uses
  %.not.i77 = icmp eq ptr %i.cv, null
  br i1 %.not.i77, label %xstrdup_or_null.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = tail call ptr @xstrdup(ptr noundef nonnull %i.cv) #24
  br label %xstrdup_or_null.exit

xstrdup_or_null.exit:                             ; preds = %bb.ai, %bb.aj
  %i.cx = phi ptr [ %i.cw, %bb.aj ], [ null, %bb.ai ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !49
  br label %match_points_at.exit

match_points_at.exit:                             ; preds = %5, %bb.t, %39, %39, %bb.s, %.lr.ph.i, %bb.ah, %bb.af, %bb.ad, %filter_exclude_match.exit, %filter_pattern_match.exit.filter_pattern_match.exit.thread_crit_edge, %bb.l, %xstrdup_or_null.exit, %_.exit71, %_.exit
  %.049 = phi ptr [ null, %_.exit ], [ null, %_.exit71 ], [ null, %filter_pattern_match.exit.filter_pattern_match.exit.thread_crit_edge ], [ null, %bb.af ], [ %i.cp, %xstrdup_or_null.exit ], [ null, %bb.ad ], [ null, %.lr.ph.i ], [ null, %filter_exclude_match.exit ], [ null, %bb.l ], [ null, %bb.ah ], [ null, %bb.t ], [ null, %bb.s ], [ null, %39 ], [ null, %39 ], [ null, %5 ]
  ret ptr %.049
}

declare void @warning(ptr noundef, ...) local_unnamed_addr #4

declare i32 @commit_contains(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @match_pattern(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %scevgep = getelementptr i8, ptr %1, i64 10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !22
  %i.c = icmp eq i8 %i.b, 114
  br i1 %i.c, label %bb.b, label %skip_prefix_impl.exit22

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !22
  %i.e = icmp eq i8 %i.d, 101
  br i1 %i.e, label %bb.c, label %skip_prefix_impl.exit22

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22
  %i.h = icmp eq i8 %i.g, 102
  br i1 %i.h, label %bb.d, label %skip_prefix_impl.exit.1

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22
  %i.k = icmp eq i8 %i.j, 115
  br i1 %i.k, label %bb.e, label %skip_prefix_impl.exit.1

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  %i.n = icmp eq i8 %i.m, 47
  br i1 %i.n, label %bb.f, label %skip_prefix_impl.exit.1

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22
  %i.q = icmp eq i8 %i.p, 116
  br i1 %i.q, label %bb.g, label %skip_prefix_impl.exit.1

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !22
  %i.t = icmp eq i8 %i.s, 97
  br i1 %i.t, label %bb.h, label %skip_prefix_impl.exit.1

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22
  %i.w = icmp eq i8 %i.v, 103
  br i1 %i.w, label %bb.i, label %skip_prefix_impl.exit.1

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 1, !tbaa !22
  %i.z = icmp eq i8 %i.y, 115
  br i1 %i.z, label %bb.j, label %skip_prefix_impl.exit.1

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !22
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %skip_prefix_impl.exit22, label %skip_prefix_impl.exit.1

skip_prefix_impl.exit.1:                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.pr = load i8, ptr %i.a, align 1, !tbaa !22
  %scevgep4651 = getelementptr i8, ptr %1, i64 11
  %i.ad = icmp eq i8 %.pr, 101
  br i1 %i.ad, label %skip_prefix_impl.exit.2, label %skip_prefix_impl.exit22

skip_prefix_impl.exit.2:                          ; preds = %skip_prefix_impl.exit.1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !22
  %i.ag = icmp eq i8 %i.af, 102
  br i1 %i.ag, label %skip_prefix_impl.exit.3, label %skip_prefix_impl.exit14.1

skip_prefix_impl.exit.3:                          ; preds = %skip_prefix_impl.exit.2
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !22
  %i.aj = icmp eq i8 %i.ai, 115
  br i1 %i.aj, label %skip_prefix_impl.exit.4, label %skip_prefix_impl.exit14.1

skip_prefix_impl.exit.4:                          ; preds = %skip_prefix_impl.exit.3
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22
  %i.am = icmp eq i8 %i.al, 47
  br i1 %i.am, label %skip_prefix_impl.exit.5, label %skip_prefix_impl.exit14.1

skip_prefix_impl.exit.5:                          ; preds = %skip_prefix_impl.exit.4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22
  %i.ap = icmp eq i8 %i.ao, 104
  br i1 %i.ap, label %skip_prefix_impl.exit.6, label %skip_prefix_impl.exit14.1

skip_prefix_impl.exit.6:                          ; preds = %skip_prefix_impl.exit.5
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !22
  %i.as = icmp eq i8 %i.ar, 101
  br i1 %i.as, label %skip_prefix_impl.exit.7, label %skip_prefix_impl.exit14.1

skip_prefix_impl.exit.7:                          ; preds = %skip_prefix_impl.exit.6
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !22
  %i.av = icmp eq i8 %i.au, 97
  br i1 %i.av, label %skip_prefix_impl.exit.8, label %skip_prefix_impl.exit14.1

skip_prefix_impl.exit.8:                          ; preds = %skip_prefix_impl.exit.7
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !22
  %i.ay = icmp eq i8 %i.ax, 100
  br i1 %i.ay, label %skip_prefix_impl.exit.9, label %skip_prefix_impl.exit14.1

skip_prefix_impl.exit.9:                          ; preds = %skip_prefix_impl.exit.8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = icmp eq i8 %i.ba, 115
  br i1 %i.bb, label %skip_prefix_impl.exit.10, label %skip_prefix_impl.exit14.1

skip_prefix_impl.exit.10:                         ; preds = %skip_prefix_impl.exit.9
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !22
  %i.be = icmp eq i8 %i.bd, 47
  br i1 %i.be, label %skip_prefix_impl.exit22, label %skip_prefix_impl.exit14.1

skip_prefix_impl.exit14.1:                        ; preds = %skip_prefix_impl.exit.10, %skip_prefix_impl.exit.9, %skip_prefix_impl.exit.8, %skip_prefix_impl.exit.7, %skip_prefix_impl.exit.6, %skip_prefix_impl.exit.5, %skip_prefix_impl.exit.4, %skip_prefix_impl.exit.3, %skip_prefix_impl.exit.2
  %.pr56 = load i8, ptr %i.a, align 1, !tbaa !22
  %scevgep4754 = getelementptr i8, ptr %1, i64 13
  %i.bf = icmp eq i8 %.pr56, 101
  br i1 %i.bf, label %skip_prefix_impl.exit14.2, label %skip_prefix_impl.exit22

skip_prefix_impl.exit14.2:                        ; preds = %skip_prefix_impl.exit14.1
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !22
  %i.bi = icmp eq i8 %i.bh, 102
  br i1 %i.bi, label %skip_prefix_impl.exit14.3, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit14.3:                        ; preds = %skip_prefix_impl.exit14.2
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !22
  %i.bl = icmp eq i8 %i.bk, 115
  br i1 %i.bl, label %skip_prefix_impl.exit14.4, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit14.4:                        ; preds = %skip_prefix_impl.exit14.3
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !22
  %i.bo = icmp eq i8 %i.bn, 47
  br i1 %i.bo, label %skip_prefix_impl.exit14.5, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit14.5:                        ; preds = %skip_prefix_impl.exit14.4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !22
  %i.br = icmp eq i8 %i.bq, 114
  br i1 %i.br, label %skip_prefix_impl.exit14.6, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit14.6:                        ; preds = %skip_prefix_impl.exit14.5
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !22
  %i.bu = icmp eq i8 %i.bt, 101
  br i1 %i.bu, label %skip_prefix_impl.exit14.7, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit14.7:                        ; preds = %skip_prefix_impl.exit14.6
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !22
  %i.bx = icmp eq i8 %i.bw, 109
  br i1 %i.bx, label %skip_prefix_impl.exit14.8, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit14.8:                        ; preds = %skip_prefix_impl.exit14.7
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !22
  %i.ca = icmp eq i8 %i.bz, 111
  br i1 %i.ca, label %skip_prefix_impl.exit14.9, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit14.9:                        ; preds = %skip_prefix_impl.exit14.8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !22
  %i.cd = icmp eq i8 %i.cc, 116
  br i1 %i.cd, label %skip_prefix_impl.exit14.10, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit14.10:                       ; preds = %skip_prefix_impl.exit14.9
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !22
  %i.cg = icmp eq i8 %i.cf, 101
  br i1 %i.cg, label %skip_prefix_impl.exit14.11, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit14.11:                       ; preds = %skip_prefix_impl.exit14.10
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22
  %i.cj = icmp eq i8 %i.ci, 115
  br i1 %i.cj, label %skip_prefix_impl.exit14.12, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit14.12:                       ; preds = %skip_prefix_impl.exit14.11
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !22
  %i.cm = icmp eq i8 %i.cl, 47
  br i1 %i.cm, label %skip_prefix_impl.exit22, label %skip_prefix_impl.exit18.1

skip_prefix_impl.exit18.1:                        ; preds = %skip_prefix_impl.exit14.12, %skip_prefix_impl.exit14.11, %skip_prefix_impl.exit14.10, %skip_prefix_impl.exit14.9, %skip_prefix_impl.exit14.8, %skip_prefix_impl.exit14.7, %skip_prefix_impl.exit14.6, %skip_prefix_impl.exit14.5, %skip_prefix_impl.exit14.4, %skip_prefix_impl.exit14.3, %skip_prefix_impl.exit14.2
  %.pr60.pr = load i8, ptr %i.a, align 1, !tbaa !22
  %i.cn = icmp eq i8 %.pr60.pr, 101
  br i1 %i.cn, label %skip_prefix_impl.exit18.2, label %skip_prefix_impl.exit22

skip_prefix_impl.exit18.2:                        ; preds = %skip_prefix_impl.exit18.1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 2
end_hunk_0
begin_hunk_1_@llvm.assume
!35 = !{!24, !11, i64 16}
!36 = !{!33, !16, i64 8}
!37 = !{!24, !11, i64 20}
!38 = !{!"object_id", !10, i64 0, !11, i64 32}
!39 = !{!"p1 _ZTS6object", !15, i64 0}
!40 = !{!"p1 long", !15, i64 0}
!41 = !{!"p1 _ZTS9object_id", !15, i64 0}
!42 = !{!"any p2 pointer", !15, i64 0}
!43 = !{!"object_info", !15, i64 0, !40, i64 8, !40, i64 16, !41, i64 24, !42, i64 32, !40, i64 40, !11, i64 48, !10, i64 56}
!44 = !{!"expand_data", !38, i64 0, !11, i64 36, !28, i64 40, !28, i64 48, !38, i64 56, !15, i64 96, !39, i64 104, !43, i64 112}
!45 = !{!44, !42, i64 144}
!46 = !{!"p1 _ZTS10repository", !15, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!38, !11, i64 32}
!49 = !{!16, !16, i64 0}
!50 = !{!"p2 _ZTS14ref_array_item", !42, i64 0}
!51 = !{!"p1 _ZTS8rev_info", !15, i64 0}
!52 = !{!"p1 _ZTS18ahead_behind_count", !15, i64 0}
!53 = !{!"ref_array", !11, i64 0, !11, i64 4, !50, i64 8, !51, i64 16, !52, i64 24, !28, i64 32}
!54 = !{!53, !11, i64 0}
!55 = !{!53, !11, i64 4}
!56 = !{!53, !50, i64 8}
!57 = !{!"p1 _ZTS14ref_array_item", !15, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"", !16, i64 0, !11, i64 8}
!60 = !{!59, !11, i64 8}
!61 = !{!"p2 _ZTS13hashmap_entry", !42, i64 0}
!62 = !{!"hashmap", !61, i64 0, !15, i64 8, !15, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40}
!63 = !{!"p2 _ZTS8worktree", !42, i64 0}
!64 = !{!"ref_to_worktree_map", !62, i64 0, !63, i64 48}
!65 = !{!64, !63, i64 48}
!66 = !{!53, !52, i64 24}
!67 = !{!"p1 _ZTS10atom_value", !15, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"atom_value", !16, i64 0, !28, i64 8, !15, i64 16, !28, i64 24, !31, i64 32}
!70 = !{!69, !16, i64 0}
!71 = !{!"p2 _ZTS18ahead_behind_count", !42, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"p2 omnipotent char", !42, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!"p1 _ZTS6commit", !15, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"ahead_behind_count", !28, i64 0, !28, i64 8, !11, i64 16, !11, i64 20}
!80 = !{!52, !52, i64 0}
!81 = !{!"p1 _ZTS9ref_array", !15, i64 0}
!82 = !{!"p1 _ZTS10ref_filter", !15, i64 0}
!83 = !{!"ref_filter_cbdata", !81, i64 0, !82, i64 8}
!84 = !{!83, !81, i64 0}
!85 = !{!83, !82, i64 8}
!86 = !{!"strvec", !73, i64 0, !28, i64 8, !28, i64 16}
!87 = !{!"oid_array", !41, i64 0, !28, i64 8, !28, i64 16, !11, i64 24}
!88 = !{!"p1 _ZTS11commit_list", !15, i64 0}
!89 = !{!"contains_cache", !11, i64 0, !11, i64 4, !11, i64 8, !42, i64 16}
!90 = !{!"", !89, i64 0, !89, i64 24}
!91 = !{!"ref_filter", !73, i64 0, !16, i64 8, !86, i64 16, !87, i64 40, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !11, i64 104, !11, i64 104, !11, i64 104, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !90, i64 128}
!92 = !{!91, !11, i64 108}
!93 = !{!91, !73, i64 16}
!94 = !{!91, !73, i64 0}
!95 = !{!88, !88, i64 0}
!96 = !{!"p1 _ZTS11ref_sorting", !15, i64 0}
!97 = !{!"ref_sorting", !96, i64 0, !11, i64 8, !11, i64 12}
!98 = !{!97, !96, i64 0}
!99 = !{!97, !11, i64 12}
!100 = !{!97, !11, i64 8}
!101 = !{!91, !88, i64 88}
!102 = !{!91, !88, i64 96}
!103 = !{!"p1 _ZTS10ref_format", !15, i64 0}
!104 = !{!"ref_filter_and_format_internal", !11, i64 0}
!105 = !{!"ref_filter_and_format_cbdata", !82, i64 0, !103, i64 8, !104, i64 16}
!106 = !{!105, !82, i64 0}
!107 = !{!105, !103, i64 8}
!108 = !{!29, !28, i64 8}
!109 = !{!24, !11, i64 32}
!110 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!24, !11, i64 28}
!113 = !{!33, !11, i64 16}
!114 = !{!69, !28, i64 8}
!115 = !{!69, !28, i64 24}
!116 = !{!"p1 _ZTS20ref_formatting_stack", !15, i64 0}
!117 = !{!"ref_formatting_state", !11, i64 0, !116, i64 8}
!118 = !{!117, !11, i64 0}
!119 = !{!"ref_formatting_stack", !116, i64 0, !29, i64 8, !15, i64 32, !15, i64 40, !15, i64 48}
!120 = !{!119, !116, i64 0}
!121 = !{!116, !116, i64 0}
!122 = !{!117, !116, i64 8}
!123 = !{!69, !15, i64 16}
!124 = !{!119, !15, i64 40}
!125 = !{!119, !15, i64 48}
!126 = !{!29, !28, i64 0}
!127 = !{!69, !31, i64 32}
!128 = !{!"p1 _ZTS8worktree", !15, i64 0}
!129 = !{!"worktree", !46, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !38, i64 48, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100}
!130 = !{!129, !16, i64 24}
!131 = !{!"p1 _ZTS13hashmap_entry", !15, i64 0}
!132 = !{!"hashmap_entry", !131, i64 0, !11, i64 8}
!133 = !{!"ref_to_worktree_entry", !132, i64 0, !128, i64 16}
!134 = !{!133, !128, i64 16}
!135 = !{!"p1 _ZTS16string_list_item", !15, i64 0}
!136 = !{!"string_list", !135, i64 0, !28, i64 8, !28, i64 16, !11, i64 24, !15, i64 32}
!137 = !{!136, !28, i64 8}
!138 = !{!136, !135, i64 0}
!139 = !{!"string_list_item", !16, i64 0, !15, i64 8}
!140 = !{!139, !16, i64 0}
!141 = !{!91, !88, i64 72}
!142 = !{!91, !88, i64 80}
!143 = !{!44, !15, i64 112}
!144 = !{!44, !40, i64 120}
!145 = !{!44, !40, i64 128}
!146 = !{!"refname_atom", !11, i64 0, !11, i64 4, !11, i64 8}
!147 = !{!146, !11, i64 0}
!148 = !{!"align", !11, i64 0, !11, i64 4}
!149 = !{!148, !11, i64 0}
!150 = !{!148, !11, i64 4}
!151 = !{!"object", !11, i64 0, !11, i64 0, !11, i64 4, !38, i64 8}
!152 = !{!"tag", !151, i64 0, !39, i64 48, !16, i64 56, !28, i64 64}
!153 = !{!152, !39, i64 48}
!154 = !{!119, !15, i64 32}
!155 = !{!119, !16, i64 24}
!156 = !{!119, !28, i64 16}
!157 = !{!"if_then_else", !11, i64 0, !16, i64 8, !11, i64 16, !11, i64 16, !11, i64 16}
!158 = !{!157, !16, i64 8}
!159 = !{!157, !11, i64 0}
!160 = !{!44, !15, i64 96}
!161 = !{!44, !11, i64 36}
!162 = !{!44, !28, i64 40}
!163 = distinct !{!163, !27}
!164 = distinct !{!164, !27}
!165 = distinct !{!165, !27}
!166 = !{!"", !16, i64 0, !11, i64 8, !11, i64 12, !15, i64 16}
!167 = !{!166, !16, i64 0}
!168 = !{!166, !15, i64 16}
!169 = !{!"wt_status_state", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !38, i64 72, !38, i64 108, !38, i64 144}
!170 = !{!169, !11, i64 12}
!171 = !{!169, !16, i64 40}
!172 = !{!169, !16, i64 56}
!173 = !{!169, !11, i64 24}
!174 = !{!169, !16, i64 64}
!175 = !{!169, !11, i64 32}
!176 = distinct !{!176, !27}
!177 = distinct !{!177, !27}
!178 = distinct !{!178, !27}
!179 = distinct !{!179, !27, !75, !76}
!180 = distinct !{!180, !27, !76, !75}
!181 = distinct !{!181, !27}
!182 = distinct !{!182, !27}
!183 = distinct !{!183, !27}
!184 = !{!53, !28, i64 32}
!185 = !{!79, !28, i64 0}
!186 = !{!79, !28, i64 8}
!187 = distinct !{!187, !27, !75, !76}
!188 = distinct !{!188, !27, !76, !75}
!189 = distinct !{!189, !27}
!190 = distinct !{!190, !27}
!191 = distinct !{!191, !27}
!192 = !{!89, !11, i64 4}
!193 = !{!89, !11, i64 0}
!194 = !{!89, !11, i64 8}
!195 = !{!89, !42, i64 16}
!196 = !{!91, !16, i64 8}
!197 = !{!"refs_for_each_ref_options", !16, i64 0, !16, i64 8, !16, i64 16, !73, i64 24, !28, i64 32, !11, i64 40}
!198 = !{!197, !73, i64 24}
!199 = !{!15, !15, i64 0}
!200 = distinct !{!200, !27}
!201 = distinct !{!201, !204}
!202 = distinct !{!202, !27}
!203 = distinct !{!203, !27}
!204 = !{!"llvm.loop.unroll.disable"}
!205 = distinct !{!205, !27}
!206 = !{!105, !11, i64 16}
!207 = distinct !{!207, !27}
!208 = distinct !{!208, !27}
!209 = distinct !{null}
!210 = distinct !{!210, !27}
!211 = !{ptr @strcasecmp, ptr @strcmp}
!212 = !{ptr @memcasecmp, ptr @memcmp}
!213 = distinct !{!213, !27}
!214 = distinct !{!214, !27}
!215 = distinct !{!215, !27}
!216 = distinct !{!216, !27}
!217 = distinct !{!217, !27}
!218 = distinct !{!218, !27}
!219 = distinct !{!219, !27}
!220 = !{!128, !128, i64 0}
!221 = !{!132, !11, i64 8}
!222 = !{!132, !131, i64 0}
!223 = !{!129, !16, i64 8}
!224 = !{!79, !11, i64 16}
!225 = !{!79, !11, i64 20}
!226 = !{!33, !11, i64 20}
!227 = !{i64 0, i64 32, !22, i64 32, i64 4, !14}
!228 = distinct !{!228, !27}
!229 = !{!"option", !11, i64 0, !11, i64 4, !16, i64 8, !15, i64 16, !28, i64 24, !16, i64 32, !16, i64 40, !11, i64 48, !15, i64 56, !28, i64 64, !15, i64 72, !28, i64 80, !15, i64 88}
!230 = !{!229, !15, i64 16}
!231 = !{!229, !16, i64 8}
!232 = !{!44, !41, i64 136}
!233 = distinct !{!233, !27}
!234 = distinct !{!234, !27}
!235 = distinct !{!235, !27}
!236 = !{!"reference", !16, i64 0, !16, i64 8, !41, i64 16, !41, i64 24, !11, i64 32}
!237 = !{!236, !11, i64 32}
!238 = !{!236, !16, i64 0}
!239 = !{!91, !28, i64 24}
!240 = !{!91, !28, i64 48}
!241 = !{!236, !41, i64 16}
!242 = !{!91, !11, i64 120}
!243 = !{!236, !41, i64 24}
!244 = !{!236, !16, i64 8}
!245 = distinct !{!245, !27}
!246 = distinct !{!246, !27}
!247 = distinct !{!247, !27}
!248 = distinct !{!248, !27}
!249 = distinct !{!249, !27}
!250 = distinct !{!250, !27}
!251 = distinct !{!251, !27}
!252 = distinct !{!252, !27}
!253 = !{!44, !39, i64 104}
!254 = !{!"p1 _ZTS15object_database", !15, i64 0}
!255 = !{!"p1 _ZTS18parsed_object_pool", !15, i64 0}
!256 = !{!"p1 _ZTS9ref_store", !15, i64 0}
!257 = !{!"_Bool", !10, i64 0}
!258 = !{!"p1 _ZTS8mem_pool", !15, i64 0}
!259 = !{!"strmap", !62, i64 0, !258, i64 48, !11, i64 56}
!260 = !{!"repo_path_cache", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48}
!261 = !{!"p1 _ZTS18fsmonitor_settings", !15, i64 0}
!262 = !{!"repo_settings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !261, i64 56, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !28, i64 96, !28, i64 104, !28, i64 112, !28, i64 120, !11, i64 128, !16, i64 136}
!263 = !{!"p1 _ZTS10config_set", !15, i64 0}
!264 = !{!"p1 _ZTS15submodule_cache", !15, i64 0}
!265 = !{!"p1 _ZTS11index_state", !15, i64 0}
!266 = !{!"p1 _ZTS12remote_state", !15, i64 0}
!267 = !{!"p1 _ZTS13git_hash_algo", !15, i64 0}
!268 = !{!"repo_config_values", !16, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!269 = !{!"p1 _ZTS6strmap", !15, i64 0}
!270 = !{!"p1 _ZTS22promisor_remote_config", !15, i64 0}
!271 = !{!"repository", !16, i64 0, !16, i64 8, !254, i64 16, !255, i64 24, !256, i64 32, !257, i64 40, !259, i64 48, !259, i64 112, !260, i64 176, !16, i64 232, !16, i64 240, !16, i64 248, !257, i64 256, !257, i64 257, !16, i64 264, !262, i64 272, !263, i64 416, !264, i64 424, !265, i64 432, !266, i64 440, !267, i64 448, !267, i64 456, !268, i64 464, !11, i64 512, !16, i64 520, !11, i64 528, !11, i64 532, !269, i64 536, !11, i64 544, !259, i64 552, !136, i64 616, !16, i64 656, !270, i64 664, !11, i64 672, !11, i64 676, !11, i64 680, !11, i64 684, !11, i64 688, !257, i64 689, !257, i64 690}
!272 = !{!271, !254, i64 16}
!273 = !{!44, !28, i64 48}
!274 = !{!152, !16, i64 56}
!275 = !{!"p1 _ZTS4tree", !15, i64 0}
!276 = !{!"commit", !151, i64 0, !28, i64 48, !88, i64 56, !275, i64 64, !11, i64 72}
!277 = !{!276, !88, i64 56}
!278 = !{!"commit_list", !77, i64 0, !88, i64 8}
!279 = !{!278, !77, i64 0}
!280 = !{!"signature_check", !16, i64 0, !28, i64 8, !11, i64 16, !28, i64 24, !16, i64 32, !16, i64 40, !10, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !11, i64 88}
!281 = !{!280, !16, i64 32}
!282 = !{!280, !16, i64 56}
!283 = !{!280, !10, i64 48}
!284 = !{!280, !11, i64 88}
!285 = !{!280, !16, i64 64}
!286 = !{!280, !16, i64 72}
!287 = !{!280, !16, i64 80}
!288 = distinct !{!288, !27}
!289 = distinct !{!289, !27}
!290 = !{!146, !11, i64 4}
!291 = !{!146, !11, i64 8}
!292 = distinct !{!292, !27}
!293 = distinct !{!293, !27}
!294 = distinct !{!294, !27}
!295 = distinct !{!295, !27}
!296 = distinct !{!296, !27}
!297 = distinct !{!297, !27, !299}
!298 = distinct !{!298, !27}
!299 = !{!"llvm.loop.peeled.count", i32 1}
!300 = distinct !{!300, !27}
!301 = distinct !{!301, !27}
!302 = distinct !{!302, !27}
!303 = distinct !{!303, !27}
!304 = distinct !{!304, !27}
end_hunk_1
