Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/clamfi?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0_@init_actions:bb.a
  %i.bw = icmp eq i8 %i.bm, 37
  br i1 %i.bw, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.bx = load i8, ptr %i.bn, align 1, !tbaa !33
  %i.by = icmp eq i8 %i.bx, 118
  br i1 %i.by, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.not65 = icmp eq i32 %.071, 0
  br i1 %.not65, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bz = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.50) #18 ; 0 uses
  %i.ca = load ptr, ptr @rejectfmt, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.ca) #18
  br label %.critedge

bb.ah:                                            ; preds = %bb.af
  %i.cb = getelementptr inbounds nuw i8, ptr %.04369, i64 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.04170, i64 2
  store i8 115, ptr %i.bv, align 1, !tbaa !33
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds nuw i8, ptr %.04170, i64 3
  store i8 37, ptr %i.cd, align 1, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %.04170, i64 2
  store i8 37, ptr %i.ce, align 1, !tbaa !33
  store i8 37, ptr %i.bv, align 1, !tbaa !33
  %i.cf = getelementptr inbounds nuw i8, ptr %.04170, i64 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ad
  %.144 = phi ptr [ %i.cb, %bb.ah ], [ %i.bn, %bb.ai ], [ %i.bn, %bb.ad ] ; 2 uses
  %.142 = phi ptr [ %i.cc, %bb.ah ], [ %i.cf, %bb.ai ], [ %i.bv, %bb.ad ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.ah ], [ %.071, %bb.ai ], [ %.071, %bb.ad ]
  %i.cg = load i8, ptr %.144, align 1, !tbaa !33  ; 2 uses
  %.not63 = icmp eq i8 %i.cg, 0
  br i1 %.not63, label %._crit_edge, label %bb.ab

._crit_edge:                                      ; preds = %bb.aj, %.preheader
  %.041.lcssa = phi ptr [ %i.bi, %.preheader ], [ %.142, %bb.aj ]
  store i8 0, ptr %.041.lcssa, align 1, !tbaa !33
  br label %.critedge

bb.ak:                                            ; preds = %bb.t
  %i.ch = load ptr, ptr %i.ax, align 8, !tbaa !44
  %i.ci = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.51, ptr noundef %i.ch) #18 ; 0 uses
  br label %.critedge

bb.al:                                            ; preds = %bb.s
  store ptr @action_quarantine, ptr @InfectedAction, align 8, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %bb.ag, %bb.ac, %bb.aa, %bb.al, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %._crit_edge, %bb.ak, %bb.r, %bb.o, %bb.j, %bb.e
  %.147 = phi i32 [ 1, %bb.e ], [ 1, %bb.j ], [ 1, %bb.o ], [ 1, %bb.r ], [ 1, %bb.ak ], [ 0, %bb.al ], [ 0, %._crit_edge ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ 1, %bb.aa ], [ 1, %bb.ac ], [ 1, %bb.ag ]
  ret i32 %.147
}

declare ptr @optget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 5) i32 @parse_action(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.69) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.70) #19
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.71) #19
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.72) #19
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.73) #19
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.74, ptr noundef %0) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ -1, %bb.f ], [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ], [ 4, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @action_accept(ptr nofree readnone captures(none) %0) #12 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @action_defer(ptr nofree readnone captures(none) %0) #12 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @action_reject(ptr nofree readnone captures(none) %0) #12 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @action_blackhole(ptr nofree readnone captures(none) %0) #12 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal range(i32 3, 5) i32 @action_quarantine(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @smfi_quarantine(ptr noundef %0, ptr noundef nonnull @.str.75) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.76) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 4, %bb.b ], [ 3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @action_reject_msg(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = load ptr, ptr @rejectfmt, align 8, !tbaa !26
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @smfi_getpriv(ptr noundef %0) #18 ; 2 uses
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @rejectfmt, align 8, !tbaa !26
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef %i.d, ptr noundef %i.e) #18 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 0, ptr %i.g, align 1, !tbaa !33
  %i.h = call i32 @smfi_setreply(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @clamfi_envfrom(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @smfi_getsymval(ptr noundef %0, ptr noundef nonnull @.str.52) #18 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @smtpauthed(ptr noundef nonnull %i.a) #18
  %.not23 = icmp eq i32 %i.b, 0
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.a) #18 ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !26
  %i.e = tail call i32 @allowed(ptr noundef %i.d, i32 noundef 1) #18
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %1, align 8, !tbaa !26
  %i.g = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.54, ptr noundef %i.f) #18 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.h = tail call noalias dereferenceable_or_null(1512) ptr @malloc(i64 noundef 1512) #22 ; 11 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.55) #18 ; 0 uses
  %i.j = load i32, ptr @FailAction, align 4, !tbaa !16
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %2 = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 4294967295, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 -1, ptr %i.l, align 4, !tbaa !22
  store i64 4294967296, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 0, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = load i32, ptr @multircpt, align 4, !tbaa !16
  %.not26 = icmp eq i32 %i.o, 0
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  store i32 0, ptr %i.q, align 4, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = load i32, ptr @addxvirus, align 4, !tbaa !16
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  store i32 0, ptr %i.t, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i32 0, ptr %i.u, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = tail call i32 @smfi_setpriv(ptr noundef %0, ptr noundef nonnull %i.h) #18 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 3, %bb.c ], [ 3, %bb.e ], [ 0, %bb.l ], [ %i.j, %bb.g ]
  ret i32 %.0
}

declare i32 @smtpauthed(ptr noundef) local_unnamed_addr #2

declare i32 @allowed(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @smfi_setpriv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @clamfi_envrcpt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @smfi_getpriv(ptr noundef %0) #18 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !26
  %i.e = tail call i32 @allowed(ptr noundef %i.d, i32 noundef 0) #18
  %i.f = load i32, ptr %i.b, align 4, !tbaa !15
  %i.g = and i32 %i.f, %i.e
  store i32 %i.g, ptr %i.b, align 4, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load i32, ptr @multircpt, align 4, !tbaa !16
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %i.m = add i32 %i.l, 1
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %i.o) #23 ; 3 uses
  %.not25 = icmp eq ptr %i.p, null
  br i1 %.not25, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.p, ptr %i.i, align 8, !tbaa !25
  %i.q = load i32, ptr %i.k, align 4, !tbaa !24   ; 2 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.k, align 4, !tbaa !24
  %i.s = load ptr, ptr %1, align 8, !tbaa !26
  %i.t = tail call noalias ptr @strdup(ptr noundef %i.s) #18 ; 2 uses
  %i.u = zext i32 %i.q to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  store ptr %i.t, ptr %i.v, align 8, !tbaa !26
  %.not26 = icmp eq ptr %i.t, null
  br i1 %.not26, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.f, %bb.e
  %.str.57.sink = phi ptr [ @.str.56, %bb.e ], [ @.str.57, %bb.f ]
  %i.w = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull %.str.57.sink) #18 ; 0 uses
  tail call fastcc void @nullify(ptr noundef %0, ptr noundef %i.a, i32 noundef 4)
  tail call void @free(ptr noundef nonnull %i.a) #18
  %i.x = load i32, ptr @FailAction, align 4, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.d, %bb.f, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.x, %.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

declare i32 @nc_connect_rand(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @smfi_chgheader(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @smfi_addheader(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @smfi_insheader(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @smfi_quarantine(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @smfi_setreply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"any p2 pointer", !9, i64 0}
!12 = !{!"p2 omnipotent char", !11, i64 0}
!13 = !{!"CLAMFI", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !5, i64 84}
!14 = !{!13, !6, i64 52}
!15 = !{!13, !6, i64 60}
!16 = !{!6, !6, i64 0}
!17 = !{!13, !10, i64 8}
!18 = !{!13, !10, i64 16}
!19 = !{!13, !10, i64 24}
!20 = !{!13, !6, i64 68}
!21 = !{!13, !6, i64 72}
!22 = !{!13, !6, i64 44}
!23 = !{!13, !6, i64 48}
!24 = !{!13, !6, i64 76}
!25 = !{!13, !12, i64 32}
!26 = !{!10, !10, i64 0}
!27 = !{!13, !6, i64 40}
!28 = !{!13, !6, i64 56}
!29 = !{!13, !6, i64 80}
!30 = !{!13, !6, i64 64}
!31 = !{!9, !9, i64 0}
!32 = !{!13, !10, i64 0}
!33 = !{!5, !5, i64 0}
!34 = !{!"p1 short", !9, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"short", !5, i64 0}
!37 = !{!36, !36, i64 0}
end_hunk_0
