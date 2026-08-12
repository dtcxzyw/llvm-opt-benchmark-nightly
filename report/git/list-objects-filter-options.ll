inline.NumInlined: 44
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@gently_parse_list_objects_filter:bb.a

bb.q:                                             ; preds = %skip_prefix_impl.exit57.12
  %i.fg = load i32, ptr @git_gettext_enabled, align 4, !tbaa !19
  %.not4.i65 = icmp eq i32 %i.fg, 0
  br i1 %.not4.i65, label %_.exit67, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fh = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #17
  br label %_.exit67

_.exit67:                                         ; preds = %bb.q, %bb.r
  %.0.i66 = phi ptr [ %i.fh, %bb.r ], [ @.str.18, %bb.q ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %2, ptr noundef %.0.i66, ptr noundef nonnull %scevgep104) #17
  br label %bb.u

bb.s:                                             ; preds = %skip_prefix_impl.exit57.12
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.fe, ptr %i.fi, align 8, !tbaa !22
  store i32 5, ptr %i.a, align 8, !tbaa !12
  br label %bb.u

skip_prefix_impl.exit64.1:                        ; preds = %skip_prefix_impl.exit64.preheader
  %i.fj = load i8, ptr %i.k, align 1, !tbaa !20
  %i.fk = icmp eq i8 %i.fj, 111
  br i1 %i.fk, label %skip_prefix_impl.exit64.2, label %skip_prefix_impl.exit71

skip_prefix_impl.exit64.2:                        ; preds = %skip_prefix_impl.exit64.1
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !20
  %i.fn = icmp eq i8 %i.fm, 109
  br i1 %i.fn, label %skip_prefix_impl.exit64.3, label %skip_prefix_impl.exit71

skip_prefix_impl.exit64.3:                        ; preds = %skip_prefix_impl.exit64.2
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !20
  %i.fq = icmp eq i8 %i.fp, 98
  br i1 %i.fq, label %skip_prefix_impl.exit64.4, label %skip_prefix_impl.exit71

skip_prefix_impl.exit64.4:                        ; preds = %skip_prefix_impl.exit64.3
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !20
  %i.ft = icmp eq i8 %i.fs, 105
  br i1 %i.ft, label %skip_prefix_impl.exit64.5, label %skip_prefix_impl.exit71

skip_prefix_impl.exit64.5:                        ; preds = %skip_prefix_impl.exit64.4
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !20
  %i.fw = icmp eq i8 %i.fv, 110
  br i1 %i.fw, label %skip_prefix_impl.exit64.6, label %skip_prefix_impl.exit71

skip_prefix_impl.exit64.6:                        ; preds = %skip_prefix_impl.exit64.5
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !20
  %i.fz = icmp eq i8 %i.fy, 101
  br i1 %i.fz, label %skip_prefix_impl.exit64.7, label %skip_prefix_impl.exit71

skip_prefix_impl.exit64.7:                        ; preds = %skip_prefix_impl.exit64.6
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !20
  %i.gc = icmp eq i8 %i.gb, 58
  br i1 %i.gc, label %skip_prefix_impl.exit64.8, label %skip_prefix_impl.exit71

skip_prefix_impl.exit64.8:                        ; preds = %skip_prefix_impl.exit64.7
  %i.gd = tail call fastcc i32 @parse_combine_filter(ptr noundef nonnull %0, ptr noundef nonnull %scevgep105, ptr noundef %2)
  br label %bb.u

skip_prefix_impl.exit71:                          ; preds = %skip_prefix_impl.exit.1, %skip_prefix_impl.exit.2, %skip_prefix_impl.exit.3, %skip_prefix_impl.exit.4, %skip_prefix_impl.exit53.11, %skip_prefix_impl.exit53.10, %skip_prefix_impl.exit53.9, %skip_prefix_impl.exit53.8, %skip_prefix_impl.exit53.7, %skip_prefix_impl.exit53.6, %skip_prefix_impl.exit53.5, %skip_prefix_impl.exit53.4, %skip_prefix_impl.exit53.3, %skip_prefix_impl.exit53.2, %skip_prefix_impl.exit53.1, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %skip_prefix_impl.exit46.1, %skip_prefix_impl.exit57.1, %skip_prefix_impl.exit57.2, %skip_prefix_impl.exit57.3, %skip_prefix_impl.exit57.4, %skip_prefix_impl.exit57.5, %skip_prefix_impl.exit57.6, %skip_prefix_impl.exit57.7, %skip_prefix_impl.exit57.8, %skip_prefix_impl.exit57.9, %skip_prefix_impl.exit57.10, %skip_prefix_impl.exit57.11, %skip_prefix_impl.exit64.preheader, %skip_prefix_impl.exit64.1, %skip_prefix_impl.exit64.2, %skip_prefix_impl.exit64.3, %skip_prefix_impl.exit64.4, %skip_prefix_impl.exit64.5, %skip_prefix_impl.exit64.6, %skip_prefix_impl.exit64.7, %.preheader.11
  %i.ge = load i32, ptr @git_gettext_enabled, align 4, !tbaa !19
  %.not4.i72 = icmp eq i32 %i.ge, 0
  br i1 %.not4.i72, label %_.exit74, label %bb.t

bb.t:                                             ; preds = %skip_prefix_impl.exit71
  %i.gf = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #17
  br label %_.exit74

_.exit74:                                         ; preds = %skip_prefix_impl.exit71, %bb.t
  %.0.i73 = phi ptr [ %i.gf, %bb.t ], [ @.str.20, %skip_prefix_impl.exit71 ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %2, ptr noundef %.0.i73, ptr noundef nonnull %1) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) @__const.list_objects_filter_init.blank, i64 88, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_.exit67, %bb.s, %skip_prefix_impl.exit53.12, %_.exit60, %bb.a, %_.exit74, %skip_prefix_impl.exit64.8, %skip_prefix_impl.exit46.11, %bb.n, %_.exit49, %bb.k, %bb.j, %bb.h, %_.exit
  %.1 = phi i32 [ 0, %bb.k ], [ 1, %_.exit74 ], [ 0, %bb.n ], [ 1, %_.exit49 ], [ 0, %skip_prefix_impl.exit46.11 ], [ 0, %bb.a ], [ 1, %skip_prefix_impl.exit53.12 ], [ %i.gd, %skip_prefix_impl.exit64.8 ], [ 0, %bb.j ], [ 0, %bb.h ], [ 1, %_.exit ], [ 1, %_.exit60 ], [ 1, %_.exit67 ], [ 0, %bb.s ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !20
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !19
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.32, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare i32 @git_parse_ulong(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #5

declare i32 @type_from_string_gently(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_combine_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.parse_combine_filter.sub, i64 24, i1 false)
  %i.a = load i8, ptr %1, align 1, !tbaa !20
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @git_gettext_enabled, align 4, !tbaa !19
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #17
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.h, %bb.c ], [ @.str.33, %bb.b ] ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #16
  tail call void @strbuf_add(ptr noundef %2, ptr noundef nonnull %.0.i, i64 noundef %i.i) #17
  br label %bb.x

bb.d:                                             ; preds = %.preheader, %bb.v
  %.018 = phi i32 [ %.119, %bb.v ], [ 0, %.preheader ] ; 2 uses
  %.017 = phi ptr [ %i.bf, %bb.v ], [ %1, %.preheader ] ; 4 uses
  %i.j = load i8, ptr %.017, align 1, !tbaa !20
  %.not20 = icmp ne i8 %i.j, 0
  %.not21 = icmp eq i32 %.018, 0
  %or.cond = and i1 %.not21, %.not20
  br i1 %or.cond, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @strchrnul(ptr noundef nonnull %.017, i32 noundef 43) #16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !23
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not9.i = icmp eq ptr %i.l, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.l, align 1, !tbaa !20
  br label %strbuf_setlen.exit

bb.g:                                             ; preds = %bb.e
  %i.m = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !20
  %.not10.i = icmp eq i8 %i.m, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.f, %bb.g
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %.017 to i64
  %i.p = sub i64 %i.n, %i.o
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.017, i64 noundef %i.p) #17
  %i.q = load i64, ptr %i.b, align 8, !tbaa !23
  %.not22 = icmp eq i64 %i.q, 0
  br i1 %.not22, label %bb.v, label %bb.i

bb.i:                                             ; preds = %strbuf_setlen.exit
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !25   ; 6 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = icmp eq i64 %i.s, -1
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.7, i32 noundef 155, ptr noundef nonnull @.str.25) #15, !inline_history !26
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %4 = icmp ugt i64 %i.t, %i.v
  br i1 %4, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !28
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.w = mul i64 %i.v, 3
  %i.x = add i64 %i.w, 48
  %i.y = lshr i64 %i.x, 1
  %..i = call i64 @llvm.umax.i64(i64 %i.y, i64 %i.t) ; 4 uses
  store i64 %..i, ptr %i.e, align 8, !tbaa !27
  %i.z = icmp ugt i64 %..i, 209622091746699450
  br i1 %i.z, label %bb.m, label %st_mult.exit

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @die(ptr noundef nonnull @.str.41, i64 noundef 88, i64 noundef %..i) #15
  unreachable

st_mult.exit:                                     ; preds = %bb.l
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.ab = mul nuw i64 %..i, 88
  %i.ac = call ptr @xrealloc(ptr noundef %i.aa, i64 noundef %i.ab) #17, !inline_history !26 ; 2 uses
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !28
  %.pre41 = load i64, ptr %i.d, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %st_mult.exit
  %i.ad = phi i64 [ %i.s, %._crit_edge ], [ %.pre41, %st_mult.exit ]
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %i.ac, %st_mult.exit ]
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %i.ae, i64 %i.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, i8 0, i64 88, i1 false)
  store i64 %i.t, ptr %i.d, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) @__const.list_objects_filter_init.blank, i64 88, i1 false)
  %i.ai = call ptr @url_percent_decode(ptr noundef %i.r) #17, !inline_history !26 ; 2 uses
  %i.aj = load i8, ptr %i.r, align 1, !tbaa !20   ; 2 uses
  %.not12.i = icmp eq i8 %i.aj, 0
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.r
  %i.ak = phi i8 [ %i.aq, %bb.r ], [ %i.aj, %bb.n ] ; 3 uses
  %.013.i = phi ptr [ %i.ap, %bb.r ], [ %i.r, %bb.n ] ; 2 uses
  %i.al = icmp slt i8 %i.ak, 33
  br i1 %i.al, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.am = zext nneg i8 %i.ak to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.39, i32 %i.am, i64 24)
  %.not10.i29 = icmp eq ptr %memchr.i, null
  br i1 %.not10.i29, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %i.an = load i32, ptr @git_gettext_enabled, align 4, !tbaa !19
  %.not4.i.i = icmp eq i32 %i.an, 0
  br i1 %.not4.i.i, label %has_reserved_character.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #17
  %.pre.i = load i8, ptr %.013.i, align 1, !tbaa !20
  br label %has_reserved_character.exit

bb.r:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20  ; 2 uses
  %.not.i30 = icmp eq i8 %i.aq, 0
  br i1 %.not.i30, label %.loopexit, label %.lr.ph.i, !llvm.loop !29

has_reserved_character.exit:                      ; preds = %bb.p, %bb.q
  %i.ar = phi i8 [ %.pre.i, %bb.q ], [ %i.ak, %bb.p ]
  %.0.i.i = phi ptr [ %i.ao, %bb.q ], [ @.str.38, %bb.p ]
  %i.as = sext i8 %i.ar to i32
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %2, ptr noundef %.0.i.i, i32 noundef %i.as) #17
  br label %parse_combine_subfilter.exit

.loopexit:                                        ; preds = %bb.r, %bb.n
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw [88 x i8], ptr %i.at, i64 %i.s
  %i.av = call i32 @gently_parse_list_objects_filter(ptr noundef %i.au, ptr noundef %i.ai, ptr noundef %2), !inline_history !26 ; 2 uses
  %.not41.i = icmp eq i32 %i.av, 0
  br i1 %.not41.i, label %bb.s, label %parse_combine_subfilter.exit

bb.s:                                             ; preds = %.loopexit
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw [88 x i8], ptr %i.aw, i64 %i.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !12
  %i.ba = icmp eq i32 %i.az, 7
  br i1 %i.ba, label %bb.t, label %parse_combine_subfilter.exit

bb.t:                                             ; preds = %bb.s
  %i.bb = load i32, ptr @git_gettext_enabled, align 4, !tbaa !19
  %.not4.i26 = icmp eq i32 %i.bb, 0
  br i1 %.not4.i26, label %_.exit28, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #17
  br label %_.exit28

_.exit28:                                         ; preds = %bb.t, %bb.u
  %.0.i27 = phi ptr [ %i.bc, %bb.u ], [ @.str.37, %bb.t ] ; 2 uses
  %i.bd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i27) #16
  call void @strbuf_add(ptr noundef %2, ptr noundef nonnull %.0.i27, i64 noundef %i.bd) #17
  br label %parse_combine_subfilter.exit

parse_combine_subfilter.exit:                     ; preds = %has_reserved_character.exit, %.loopexit, %bb.s, %_.exit28
  %.0.i25 = phi i32 [ 1, %has_reserved_character.exit ], [ %i.av, %.loopexit ], [ 1, %_.exit28 ], [ 0, %bb.s ]
  call void @free(ptr noundef %i.ai) #17, !inline_history !26
  br label %bb.v

bb.v:                                             ; preds = %parse_combine_subfilter.exit, %strbuf_setlen.exit
  %.119 = phi i32 [ %.0.i25, %parse_combine_subfilter.exit ], [ 0, %strbuf_setlen.exit ] ; 2 uses
  %i.be = load i8, ptr %i.k, align 1, !tbaa !20
  %.not23 = icmp eq i8 %i.be, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  br i1 %.not23, label %bb.w, label %bb.d

bb.w:                                             ; preds = %bb.d, %bb.v
  %.2 = phi i32 [ %.119, %bb.v ], [ %.018, %bb.d ] ; 2 uses
  call void @strbuf_release(ptr noundef nonnull %3) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 6, ptr %i.bg, align 8, !tbaa !12
  %.not24 = icmp eq i32 %.2, 0
  br i1 %.not24, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %.335 = phi i32 [ 1, %.thread ], [ %.2, %bb.w ]
  call void @list_objects_filter_release(ptr noundef %0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.336 = phi i32 [ %.335, %bb.x ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.336
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @list_objects_filter_init(ptr nofree noundef writeonly captures(none) initializes((0, 88)) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) @__const.list_objects_filter_init.blank, i64 88, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @list_objects_filter_die_if_populated(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @_(ptr noundef nonnull @.str.21)
  tail call void (ptr, ...) @die(ptr noundef %i.c) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @parse_list_objects_filter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.parse_combine_filter.sub, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.7, i32 noundef 280, ptr noundef nonnull @.str.22) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  switch i32 %i.d, label %bb.h [
    i32 0, label %bb.d
    i32 7, label %bb.g
    i32 6, label %transform_to_combine_type.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @gently_parse_list_objects_filter(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2)
  %.not39 = icmp eq i32 %i.e, 0
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  call void (ptr, ...) @die(ptr noundef nonnull @.str.23, ptr noundef %i.g) #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.h) #17
  br label %filter_spec_append_urlencode.exit

bb.g:                                             ; preds = %bb.c
  %i.i = tail call fastcc ptr @_(ptr noundef nonnull @.str.24)
  tail call void (ptr, ...) @die(ptr noundef %i.i) #15
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.j = tail call ptr @xcalloc(i64 noundef 2, i64 noundef 88) #17 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false), !tbaa.struct !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) @__const.list_objects_filter_init.blank, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 2, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.m, align 8, !tbaa !25
  store i32 6, ptr %i.c, align 8, !tbaa !12
  tail call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, i64 noundef 8) #17
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.i, label %list_objects_filter_spec.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.7, i32 noundef 329, ptr noundef nonnull @.str.26) #15
  unreachable

list_objects_filter_spec.exit.i:                  ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  tail call void @strbuf_addstr_urlencode(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull @allow_unencoded) #17
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @trace_default_key, i64 8), align 8, !tbaa !37
  %.not.i.i.i = icmp eq i32 %i.u, 0
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @trace_default_key, i64 12), align 4
  %.not4.i.i = trunc i8 %i.v to i1
  %.not.i14.i = select i1 %.not.i.i.i, i1 %.not4.i.i, i1 false
  br i1 %.not.i14.i, label %filter_spec_append_urlencode.exit.i, label %bb.j

bb.j:                                             ; preds = %list_objects_filter_spec.exit.i
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  tail call void (ptr, i32, ptr, ptr, ...) @trace_printf_key_fl(ptr noundef nonnull @.str.7, i32 noundef 231, ptr noundef nonnull @trace_default_key, ptr noundef nonnull @.str.42, ptr noundef %i.x) #17
  br label %filter_spec_append_urlencode.exit.i

filter_spec_append_urlencode.exit.i:              ; preds = %bb.j, %list_objects_filter_spec.exit.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !28
  tail call void @strbuf_release(ptr noundef %i.y) #17
  br label %transform_to_combine_type.exit

transform_to_combine_type.exit:                   ; preds = %bb.c, %filter_spec_append_urlencode.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !25  ; 4 uses
  %i.ab = add i64 %i.aa, 1                        ; 3 uses
  %i.ac = icmp eq i64 %i.aa, -1
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %transform_to_combine_type.exit
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.7, i32 noundef 299, ptr noundef nonnull @.str.25) #15
  unreachable

bb.l:                                             ; preds = %transform_to_combine_type.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %3 = icmp ugt i64 %i.ab, %i.ae
  br i1 %3, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.af = mul i64 %i.ae, 3
  %i.ag = add i64 %i.af, 48
  %i.ah = lshr i64 %i.ag, 1
  %. = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ab) ; 4 uses
  store i64 %., ptr %i.ad, align 8, !tbaa !27
  %i.ai = icmp ugt i64 %., 209622091746699450
  br i1 %i.ai, label %bb.n, label %st_mult.exit

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.41, i64 noundef 88, i64 noundef %.) #15
  unreachable

st_mult.exit:                                     ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !28
  %i.al = mul nuw i64 %., 88
  %i.am = tail call ptr @xrealloc(ptr noundef %i.ak, i64 noundef %i.al) #17 ; 2 uses
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !28
  %.pre44 = load i64, ptr %i.z, align 8, !tbaa !25
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %st_mult.exit
  %i.an = phi i64 [ %i.aa, %._crit_edge ], [ %.pre44, %st_mult.exit ]
  %i.ao = phi ptr [ %.pre, %._crit_edge ], [ %i.am, %st_mult.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = getelementptr inbounds nuw [88 x i8], ptr %i.ao, i64 %i.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, i8 0, i64 88, i1 false)
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !25
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw [88 x i8], ptr %i.ar, i64 %i.aa ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.as, ptr noundef nonnull align 8 dereferenceable(88) @__const.list_objects_filter_init.blank, i64 88, i1 false)
  %i.at = call i32 @gently_parse_list_objects_filter(ptr noundef nonnull %i.as, ptr noundef %1, ptr noundef nonnull %2)
  %.not40 = icmp eq i32 %i.at, 0
  br i1 %.not40, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  call void (ptr, ...) @die(ptr noundef nonnull @.str.23, ptr noundef %i.av) #15
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !12
  %i.ay = icmp eq i32 %i.ax, 7
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = call fastcc ptr @_(ptr noundef nonnull @.str.24)
  call void (ptr, ...) @die(ptr noundef %i.az) #15
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ba = load i64, ptr %0, align 8, !tbaa !39    ; 2 uses
  %.not.i.i41 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i41, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !23 ; 2 uses
  %.neg.i = add i64 %i.bc, 1                      ; 2 uses
  %.not.i = icmp eq i64 %i.ba, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.s
  call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #17
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !23 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.bd = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.bc, %strbuf_avail.exit.i ]
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.pre-phi.i, ptr %i.bf, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 43, ptr %i.bg, align 1, !tbaa !20
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  store i8 0, ptr %i.bj, align 1, !tbaa !20
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !36
  call void @strbuf_addstr_urlencode(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @allow_unencoded) #17
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @trace_default_key, i64 8), align 8, !tbaa !37
  %.not.i.i42 = icmp eq i32 %i.bl, 0
  %i.bm = load i8, ptr getelementptr inbounds nuw (i8, ptr @trace_default_key, i64 12), align 4
  %.not4.i = trunc i8 %i.bm to i1
  %.not.i43 = select i1 %.not.i.i42, i1 %.not4.i, i1 false
  br i1 %.not.i43, label %filter_spec_append_urlencode.exit, label %bb.t

bb.t:                                             ; preds = %strbuf_addch.exit
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk
  call void (ptr, i32, ptr, ptr, ...) @trace_printf_key_fl(ptr noundef nonnull @.str.7, i32 noundef 231, ptr noundef nonnull @trace_default_key, ptr noundef nonnull @.str.42, ptr noundef %i.bo) #17
  br label %filter_spec_append_urlencode.exit

filter_spec_append_urlencode.exit:                ; preds = %bb.t, %strbuf_addch.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @opt_parse_list_objects_filter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = icmp eq i32 %2, 0
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @list_objects_filter_release(ptr noundef %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @parse_list_objects_filter(ptr noundef %i.b, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @list_objects_filter_spec(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.7, i32 noundef 329, ptr noundef nonnull @.str.26) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_list_objects_filter_spec(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @strbuf_release(ptr noundef nonnull %0) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef %i.e) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.d, label %list_objects_filter_spec.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.7, i32 noundef 329, ptr noundef nonnull @.str.26) #15
  unreachable

list_objects_filter_spec.exit:                    ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  ret ptr %i.i
}

declare void @strbuf_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @list_objects_filter_release(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b
end_hunk_0
