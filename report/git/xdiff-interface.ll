Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/xdiff-interface?download=true
inline.NumInlined: 19
inline.NumDeleted: 10
loop-unroll.NumUnrolled: 2
begin_hunk_0_@xdiff_set_find_func:bb.a
  store i32 1, ptr %i.b, align 8, !tbaa !52
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = phi i32 [ %i.h, %bb.d ], [ 1, %bb.a ]    ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !26
  switch i8 %i.f, label %bb.d [
    i8 0, label %bb.e
    i8 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !55

bb.e:                                             ; preds = %bb.b
  %i.i = sext i32 %i.d to i64                     ; 2 uses
  %i.j = icmp slt i32 %i.d, 0
  br i1 %i.j, label %bb.f, label %st_mult.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.22, i64 noundef 72, i64 noundef range(i64 -2147483648, 2147483648) %i.i) #15
  unreachable

st_mult.exit:                                     ; preds = %bb.e
  %i.k = mul nuw nsw i64 %i.i, 72
  %i.l = tail call ptr @xmalloc(i64 noundef %i.k) #14
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !56
  %i.n = load i32, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %st_mult.exit, %bb.n
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %bb.n ], [ 0, %st_mult.exit ] ; 3 uses
  %i.p = phi i32 [ %i.aj, %bb.n ], [ %i.n, %st_mult.exit ]
  %.03950 = phi ptr [ %i.ai, %bb.n ], [ %1, %st_mult.exit ] ; 6 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %indvars.iv57 ; 2 uses
  %.not43 = icmp eq ptr %.03950, null
  br i1 %.not43, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.6, i32 noundef 267, ptr noundef nonnull @.str.7) #15
  unreachable

bb.h:                                             ; preds = %.lr.ph
  %i.s = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.03950, i32 noundef 10) #16 ; 3 uses
  %i.t = load i8, ptr %.03950, align 1, !tbaa !26
  %i.u = icmp eq i8 %i.t, 33                      ; 2 uses
  %i.v = zext i1 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i32 %i.v, ptr %i.w, align 8, !tbaa !57
  %i.x = add nsw i32 %i.p, -1
  %i.y = zext i32 %i.x to i64
  %i.z = icmp eq i64 %indvars.iv57, %i.y
  %or.cond = select i1 %i.u, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.8, ptr noundef nonnull %.03950) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = load i8, ptr %.03950, align 1, !tbaa !26
  %i.ab = icmp eq i8 %i.aa, 33
  %spec.select.idx = zext i1 %i.ab to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.03950, i64 %spec.select.idx ; 3 uses
  %.not44 = icmp eq ptr %i.s, null                ; 2 uses
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = ptrtoint ptr %i.s to i64
  %i.ad = ptrtoint ptr %spec.select to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = tail call ptr @xstrndup(ptr noundef nonnull %spec.select, i64 noundef %i.ae) #14 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.037 = phi ptr [ %i.af, %bb.k ], [ %spec.select, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.af, %bb.k ], [ null, %bb.j ]
  %i.ag = tail call i32 @regcomp(ptr noundef nonnull %i.r, ptr noundef %.037, i32 noundef %2) #14
  %.not45 = icmp eq i32 %i.ag, 0
  br i1 %.not45, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.9, ptr noundef %.037) #15
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @free(ptr noundef %.0) #14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ai = select i1 %.not44, ptr null, ptr %i.ah
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !52  ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next58, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.n, %st_mult.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i64 -2147483648, 2147483648) i64 @ff_regexp(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %5 = alloca [2 x %struct.regmatch_t], align 16  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 %1
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26
  %i.e = icmp eq i8 %i.d, 10
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i64 %1, -2                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  %i.i = icmp eq i8 %i.h, 13
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = add nsw i64 %1, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.040 = phi i64 [ %1, %bb.a ], [ %i.j, %bb.e ], [ %1, %bb.b ], [ %i.f, %bb.d ]
  %i.k = load i32, ptr %4, align 8, !tbaa !52
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = trunc i64 %.040 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %5, align 16, !tbaa !62
  store i32 %i.n, ptr %i.o, align 4, !tbaa !64
  %i.r = call i32 @regexec(ptr noundef %i.q, ptr noundef %0, i64 noundef 2, ptr noundef nonnull %5, i32 noundef 4) #14
  %.not44 = icmp eq i32 %i.r, 0
  br i1 %.not44, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !57
  %.not45 = icmp eq i32 %i.t, 0
  br i1 %.not45, label %..loopexit_crit_edge, label %.thread

..loopexit_crit_edge:                             ; preds = %bb.h
  %.pre = load i32, ptr %4, align 8, !tbaa !52
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.u = load i32, ptr %4, align 8, !tbaa !52     ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.g, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %bb.i, %..loopexit_crit_edge
  %i.x = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.u, %bb.i ]
  %.03755.in = phi i64 [ %indvars.iv, %..loopexit_crit_edge ], [ %indvars.iv.next, %bb.i ]
  %.03755 = trunc i64 %.03755.in to i32
  %.not46 = icmp sgt i32 %i.x, %.03755
  br i1 %.not46, label %bb.j, label %.thread

bb.j:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !62   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1                   ; 2 uses
  %.val52 = load i32, ptr %5, align 16
  %i.ab = select i1 %i.aa, i32 %i.z, i32 %.val52  ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aa, i64 12, i64 4
  %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.ae = load i32, ptr %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !64
  %i.af = sub nsw i32 %i.ae, %i.ab
  %i.ag = sext i32 %i.af to i64
  %spec.select53 = call i64 @llvm.smin.i64(i64 %3, i64 %i.ag)
  %spec.select = trunc i64 %spec.select53 to i32  ; 3 uses
  %i.ah = icmp sgt i32 %spec.select, 0
  br i1 %i.ah, label %.lr.ph58, label %.critedge

.lr.ph58:                                         ; preds = %bb.j, %bb.k
  %.157 = phi i32 [ %7, %bb.k ], [ %spec.select, %bb.j ] ; 4 uses
  %6 = zext nneg i32 %.157 to i64
  %i.ai = getelementptr i8, ptr %i.ad, i64 %6
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !26
  %i.ao = and i8 %i.an, 1
  %.not47 = icmp eq i8 %i.ao, 0
  br i1 %.not47, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph58
  %7 = add nsw i32 %.157, -1
  %i.ap = icmp sgt i32 %.157, 1
  br i1 %i.ap, label %.lr.ph58, label %.critedge, !llvm.loop !66

.critedge:                                        ; preds = %.lr.ph58, %bb.k, %bb.j
  %.1.lcssa = phi i32 [ %spec.select, %bb.j ], [ 0, %bb.k ], [ %.157, %.lr.ph58 ]
  %8 = sext i32 %.1.lcssa to i64                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %i.ad, i64 %8, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.h, %.loopexit, %.critedge
  %.2 = phi i64 [ -1, %.loopexit ], [ %8, %.critedge ], [ -1, %bb.h ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i64 %.2
}

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @xdiff_clear_find_func(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %indvars.iv
  tail call void @regfree(ptr noundef %i.i) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !52
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %bb.c, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.n) #14
  tail call void @free(ptr noundef nonnull %i.d) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @regfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @xdiff_hash_string(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.c = and i64 %2, 30
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i64 @xdl_hash_record_with_whitespace(ptr noundef nonnull %i.a, ptr noundef %i.b, i64 noundef %2) #14
  br label %xdl_hash_record.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call i64 @xdl_hash_record_verbatim(ptr noundef nonnull %i.a, ptr noundef %i.b) #14
  br label %xdl_hash_record.exit

xdl_hash_record.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xdiff_compare_lines(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @xdl_recmatch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #14
  ret i32 %i.a
}

declare i32 @xdl_recmatch(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 3) i32 @parse_conflict_style_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.10) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.11) #16
  %.not3 = icmp eq i32 %i.b, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.12) #16
  %.not4 = icmp ne i32 %i.c, 0
  %. = sext i1 %.not4 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.b ], [ %., %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @conflict_style_name(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %switch.selectcmp = icmp eq i32 %0, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.11, ptr @.str.12
  %switch.selectcmp1 = icmp eq i32 %0, 1
  %switch.select2 = select i1 %switch.selectcmp1, ptr @.str.10, ptr %switch.select
  ret ptr %switch.select2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @git_xmerge_config(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(20) @.str.13) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %1, null
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @config_error_nonbool(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.10) #16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %parse_conflict_style_name.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.11) #16
  %.not3.i = icmp eq i32 %i.d, 0
  br i1 %.not3.i, label %parse_conflict_style_name.exit.thread, label %parse_conflict_style_name.exit

parse_conflict_style_name.exit.thread:            ; preds = %bb.e, %bb.d
  %.0.i.ph = phi i32 [ 1, %bb.d ], [ 2, %bb.e ]
  store i32 %.0.i.ph, ptr @git_xmerge_style, align 4, !tbaa !68
  br label %bb.i

parse_conflict_style_name.exit:                   ; preds = %bb.e
  %i.e = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.12) #16
  %.not4.i = icmp ne i32 %i.e, 0                  ; 2 uses
  %..i = sext i1 %.not4.i to i32
  store i32 %..i, ptr @git_xmerge_style, align 4, !tbaa !68
  br i1 %.not4.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %parse_conflict_style_name.exit
  %i.f = load i32, ptr @git_gettext_enabled, align 4, !tbaa !68
  %.not.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i12, label %_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #14
  br label %_.exit

_.exit:                                           ; preds = %bb.f, %bb.g
  %.0.i13 = phi ptr [ %i.g, %bb.g ], [ @.str.14, %bb.f ]
  %i.h = tail call i32 (ptr, ...) @error(ptr noundef %.0.i13, ptr noundef nonnull %1, ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.i = tail call i32 @git_default_config(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  br label %bb.i

bb.i:                                             ; preds = %parse_conflict_style_name.exit.thread, %parse_conflict_style_name.exit, %bb.h, %_.exit, %bb.c
  %.0 = phi i32 [ %i.i, %bb.h ], [ -1, %_.exit ], [ -1, %bb.c ], [ 0, %parse_conflict_style_name.exit ], [ 0, %parse_conflict_style_name.exit.thread ]
  ret i32 %.0
}

declare i32 @config_error_nonbool(ptr noundef) local_unnamed_addr #2

declare i32 @git_default_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
