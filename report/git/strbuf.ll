Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/strbuf?download=true
inline.NumInlined: 143
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@strbuf_trim:bb.a
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 1
  %.not11.i = icmp eq i8 %i.r, 0
  br i1 %.not11.i, label %strbuf_ltrim.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i3
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i, i64 1
  %i.t = add i64 %i.m, -1                         ; 3 uses
  store i64 %i.t, ptr %i.a, align 8, !tbaa !23
  %.not.i4 = icmp eq i64 %i.t, 0
  br i1 %.not.i4, label %strbuf_ltrim.exit, label %.lr.ph.i3, !llvm.loop !1

strbuf_ltrim.exit:                                ; preds = %.lr.ph.i3, %bb.c, %strbuf_rtrim.exit
  %.0.lcssa.i = phi ptr [ %i.l, %strbuf_rtrim.exit ], [ %.014.i, %.lr.ph.i3 ], [ %scevgep.i, %bb.c ]
  %.lcssa.i5 = phi i64 [ 0, %strbuf_rtrim.exit ], [ %i.m, %.lr.ph.i3 ], [ 0, %bb.c ]
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %.0.lcssa.i, i64 %.lcssa.i5, i1 false)
  %i.u = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  %i.v = load i64, ptr %i.a, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  store i8 0, ptr %i.w, align 1, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strbuf_rtrim(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %.not7 = icmp eq i64 %.promoted, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21 ; 2 uses
  br i1 %.not7, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.j, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.pre, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 1
  %.not6 = icmp eq i8 %i.i, 0
  br i1 %.not6, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = add i64 %i.b, -1                         ; 3 uses
  store i64 %i.j, ptr %i.a, align 8, !tbaa !23
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !0

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.b, %.lr.ph ]
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %.lcssa
  store i8 0, ptr %i.k, align 1, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strbuf_ltrim(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load i64, ptr %i.c, align 8, !tbaa !23 ; 3 uses
  %.not13 = icmp eq i64 %.promoted, 0
  br i1 %.not13, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %i.b, i64 %.promoted
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.014 = phi ptr [ %i.j, %bb.b ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.d = phi i64 [ %i.k, %bb.b ], [ %.promoted, %.lr.ph.preheader ] ; 2 uses
  %i.e = load i8, ptr %.014, align 1, !tbaa !14
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 1
  %.not11 = icmp eq i8 %i.i, 0
  br i1 %.not11, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.k = add i64 %i.d, -1                         ; 3 uses
  store i64 %i.k, ptr %i.c, align 8, !tbaa !23
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %scevgep, %bb.b ], [ %.014, %.lr.ph ]
  %.lcssa = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.d, %.lr.ph ]
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %.0.lcssa, i64 %.lcssa, i1 false)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.m = load i64, ptr %i.c, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strbuf_trim_trailing_dir_sep(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %.not8 = icmp eq i64 %.promoted, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21 ; 2 uses
  br i1 %.not8, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.f, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.pre, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %.not7 = icmp eq i8 %i.e, 47
  br i1 %.not7, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = add i64 %i.b, -1                         ; 3 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !23
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !29

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.b, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 %.lcssa
  store i8 0, ptr %i.g, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strbuf_trim_trailing_newline(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 %i.b     ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.b, -1                         ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !23
  %.not10 = icmp eq i64 %i.i, 0
  br i1 %.not10, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.e, i64 -2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = icmp eq i8 %i.k, 13
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %i.b, -2                         ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.n = phi i64 [ %i.m, %bb.e ], [ %i.i, %bb.d ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @strbuf_reencode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = tail call i32 @same_encoding(ptr noundef %1, ptr noundef %2) #27
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = call ptr @reencode_string_len(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %i.a) #27 ; 3 uses
  %.not10 = icmp eq ptr %i.g, null
  br i1 %.not10, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.i = add i64 %i.h, 1
  %i.j = load i64, ptr %0, align 8, !tbaa !22
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %strbuf_release.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !21
  call void @free(ptr noundef %i.k) #27
  br label %strbuf_release.exit.i

strbuf_release.exit.i:                            ; preds = %bb.d, %bb.c
  store ptr %i.g, ptr %i.c, align 8, !tbaa !21
  store i64 %i.h, ptr %i.e, align 8, !tbaa !23
  store i64 %i.i, ptr %0, align 8, !tbaa !22
  %i.l = icmp eq i64 %i.h, -1
  br i1 %i.l, label %bb.e, label %st_add.exit19.i.i

bb.e:                                             ; preds = %strbuf_release.exit.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.h, i64 noundef 1) #26
  unreachable

st_add.exit19.i.i:                                ; preds = %strbuf_release.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.m, align 1, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %st_add.exit19.i.i
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %st_add.exit19.i.i ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare i32 @same_encoding(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @reencode_string_len(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strbuf_tolower(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load i8, ptr %.09, align 1, !tbaa !14    ; 2 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = shl i8 %i.i, 3
  %i.k = and i8 %i.j, 32
  %.0.i8 = or i8 %i.k, %i.f
  store i8 %.0.i8, ptr %.09, align 1, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %.09, i64 1 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.e
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @strbuf_split_buf(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %.not69 = icmp eq i64 %1, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp slt i32 %3, 1
  %i.b = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.04174 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.i ] ; 3 uses
  %.04373 = phi i64 [ 0, %.lr.ph ], [ %i.c, %bb.i ] ; 3 uses
  %.04472 = phi ptr [ null, %.lr.ph ], [ %.145, %bb.i ] ; 2 uses
  %.04771 = phi ptr [ %0, %.lr.ph ], [ %i.x, %bb.i ] ; 4 uses
  %.04870 = phi i64 [ %1, %.lr.ph ], [ %i.y, %bb.i ] ; 4 uses
  %i.c = add i64 %.04373, 1                       ; 3 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %or.cond = select i1 %i.a, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @memchr(ptr noundef %.04771, i32 noundef %2, i64 noundef %.04870) #28 ; 2 uses
  %.not55 = icmp eq ptr %i.e, null
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %.04771 to i64
  %reass.sub = sub i64 %i.f, %i.g
  %i.h = add i64 %reass.sub, 1
  %.0 = select i1 %.not55, i64 %.04870, i64 %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i64 [ %.0, %bb.c ], [ %.04870, %bb.b ]
  %i.i = tail call ptr @xmalloc(i64 noundef 24) #27 ; 5 uses
  %sext = shl i64 %.1, 32                         ; 2 uses
  %i.j = ashr exact i64 %sext, 32                 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) @__const.strbuf_addftime.munged_fmt, i64 24, i1 false)
  %.not.i = icmp eq i64 %sext, 0
  br i1 %.not.i, label %strbuf_init.exit, label %st_add.exit.i.i

st_add.exit.i.i:                                  ; preds = %bb.d
  %i.k = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.j, i64 1) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %st_add.exit.i.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.j, i64 noundef 1) #26
  unreachable

bb.f:                                             ; preds = %st_add.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !21
  %i.n = extractvalue { i64, i1 } %i.k, 0
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 24) ; 2 uses
  store i64 %..i.i, ptr %i.i, align 8, !tbaa !22
  %i.o = tail call ptr @xrealloc(ptr noundef null, i64 noundef %..i.i) #27 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !21
  store i8 0, ptr %i.o, align 1, !tbaa !14
  br label %strbuf_init.exit

strbuf_init.exit:                                 ; preds = %bb.d, %bb.f
  tail call void @strbuf_add(ptr noundef nonnull %i.i, ptr noundef %.04771, i64 noundef %i.j)
  %i.p = add i64 %.04373, 2                       ; 2 uses
  %i.q = icmp ugt i64 %i.p, %.04174
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %strbuf_init.exit
  %i.r = mul i64 %.04174, 3
  %i.s = add i64 %i.r, 48
  %i.t = lshr i64 %i.s, 1
  %. = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.p) ; 4 uses
  %mul.ov.i = icmp ugt i64 %., 2305843009213693951
  br i1 %mul.ov.i, label %bb.h, label %st_mult.exit

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.47, i64 noundef 8, i64 noundef %.) #26
  unreachable

st_mult.exit:                                     ; preds = %bb.g
  %i.u = shl nuw i64 %., 3
  %i.v = tail call ptr @xrealloc(ptr noundef %.04472, i64 noundef %i.u) #27
  br label %bb.i

bb.i:                                             ; preds = %st_mult.exit, %strbuf_init.exit
  %.145 = phi ptr [ %i.v, %st_mult.exit ], [ %.04472, %strbuf_init.exit ] ; 3 uses
  %.2 = phi i64 [ %., %st_mult.exit ], [ %.04174, %strbuf_init.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.145, i64 %.04373
  store ptr %i.i, ptr %i.w, align 8, !tbaa !26
  %i.x = getelementptr inbounds i8, ptr %.04771, i64 %i.j
  %i.y = sub i64 %.04870, %i.j                    ; 2 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.044.lcssa = phi ptr [ null, %bb.a ], [ %.145, %bb.i ] ; 2 uses
  %.043.lcssa = phi i64 [ 0, %bb.a ], [ %i.c, %bb.i ] ; 2 uses
  %.041.lcssa = phi i64 [ 0, %bb.a ], [ %.2, %bb.i ] ; 2 uses
  %i.z = add i64 %.043.lcssa, 1                   ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %.041.lcssa
  br i1 %i.aa, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.ab = mul nuw i64 %.041.lcssa, 3
  %i.ac = add nuw i64 %i.ab, 48
  %i.ad = lshr i64 %i.ac, 1
  %.58 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.z) ; 3 uses
  %mul.ov.i60 = icmp ugt i64 %.58, 2305843009213693951
  br i1 %mul.ov.i60, label %bb.k, label %st_mult.exit61

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.47, i64 noundef 8, i64 noundef %.58) #26
  unreachable

st_mult.exit61:                                   ; preds = %bb.j
  %i.ae = shl nuw i64 %.58, 3
  %i.af = tail call ptr @xrealloc(ptr noundef %.044.lcssa, i64 noundef %i.ae) #27
  br label %bb.l

bb.l:                                             ; preds = %st_mult.exit61, %._crit_edge
  %.246 = phi ptr [ %i.af, %st_mult.exit61 ], [ %.044.lcssa, %._crit_edge ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.246, i64 %.043.lcssa
  store ptr null, ptr %i.ag, align 8, !tbaa !26
  ret ptr %.246
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.not.i = icmp eq i64 %i.a, 0                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 %2) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.b, label %st_add.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.c, i64 noundef %2) #26
  unreachable

st_add.exit.i:                                    ; preds = %bb.a
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 1) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.c, label %st_add.exit19.i

bb.c:                                             ; preds = %st_add.exit.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.f, i64 noundef 1) #26
end_hunk_0
