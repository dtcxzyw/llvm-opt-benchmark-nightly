Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/options?download=true
inline.NumInlined: 57
inline.NumDeleted: 15
begin_hunk_0_@mi_option_init:bb.a

bb.n:                                             ; preds = %bb.m
  %i.aj = call zeroext i1 @_mi_streq(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.80) #15
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  store i64 0, ptr %0, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.ak, align 8, !tbaa !15
  br label %bb.ae

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !32
  %i.al = tail call ptr @__errno_location() #17   ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !24
  %i.am = call i64 @strtol(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 10) #15 ; 5 uses
  %i.an = load i32, ptr %i.al, align 4, !tbaa !24
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25 ; 3 uses
  br i1 %i.ao, label %bb.q, label %mi_option_has_size_in_kib.exit

bb.q:                                             ; preds = %bb.p
  switch i32 %i.aq, label %._crit_edge52 [
    i32 44, label %bb.r
    i32 23, label %bb.r
    i32 9, label %bb.r
    i32 45, label %bb.r
  ]

._crit_edge52:                                    ; preds = %bb.q
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %bb.y

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.ar = call i64 @llvm.smax.i64(i64 %i.am, i64 0) ; 5 uses
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !21  ; 2 uses
  switch i8 %i.at, label %bb.v [
    i8 75, label %thread-pre-split
    i8 77, label %bb.s
    i8 71, label %bb.t
    i8 84, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.au = icmp sgt i64 %i.am, 18014398509481983
  %i.av = shl i64 %i.ar, 10
  br label %thread-pre-split

bb.t:                                             ; preds = %bb.r
  %i.aw = icmp sgt i64 %i.am, 17592186044415
  %i.ax = shl i64 %i.ar, 20
  br label %thread-pre-split

bb.u:                                             ; preds = %bb.r
  %i.ay = icmp sgt i64 %i.am, 17179869183
  %i.az = shl i64 %i.ar, 30
  br label %thread-pre-split

bb.v:                                             ; preds = %bb.r
  %i.ba = add nuw i64 %i.ar, 1023
  %i.bb = lshr i64 %i.ba, 10
  br label %bb.w

thread-pre-split:                                 ; preds = %bb.r, %bb.t, %bb.u, %bb.s
  %.0.ph = phi i64 [ %i.az, %bb.u ], [ %i.ax, %bb.t ], [ %i.av, %bb.s ], [ %i.ar, %bb.r ]
  %.0.shrunk.ph = phi i1 [ %i.ay, %bb.u ], [ %i.aw, %bb.t ], [ %i.au, %bb.s ], [ false, %bb.r ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 3 uses
  store ptr %i.bc, ptr %i.c, align 8, !tbaa !32
  %.pr = load i8, ptr %i.bc, align 1, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %thread-pre-split, %bb.v
  %i.bd = phi i8 [ %.pr, %thread-pre-split ], [ %i.at, %bb.v ]
  %i.be = phi ptr [ %i.bc, %thread-pre-split ], [ %i.as, %bb.v ] ; 4 uses
  %.0 = phi i64 [ %.0.ph, %thread-pre-split ], [ %i.bb, %bb.v ]
  %.0.shrunk = phi i1 [ %.0.shrunk.ph, %thread-pre-split ], [ false, %bb.v ]
  switch i8 %i.bd, label %.thread45 [
    i8 73, label %bb.x
    i8 66, label %.thread45.sink.split
  ]

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !21
  %i.bh = icmp eq i8 %i.bg, 66
  br i1 %i.bh, label %.thread45.sink.split, label %.thread45

.thread45.sink.split:                             ; preds = %bb.w, %bb.x
  %.sink57 = phi i64 [ 2, %bb.x ], [ 1, %bb.w ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink57 ; 2 uses
  store ptr %i.bi, ptr %i.c, align 8, !tbaa !32
  br label %.thread45

.thread45:                                        ; preds = %.thread45.sink.split, %bb.w, %bb.x
  %i.bj = phi ptr [ %i.be, %bb.w ], [ %i.be, %bb.x ], [ %i.bi, %.thread45.sink.split ]
  %i.bk = call i64 @llvm.umin.i64(i64 %.0, i64 9007199254740991)
  %spec.select = select i1 %.0.shrunk, i64 9007199254740991, i64 %i.bk
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge52, %.thread45
  %i.bl = phi ptr [ %.pre, %._crit_edge52 ], [ %i.bj, %.thread45 ]
  %.033.ph = phi i64 [ %i.am, %._crit_edge52 ], [ %spec.select, %.thread45 ]
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !21
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.z, label %mi_option_has_size_in_kib.exit

bb.z:                                             ; preds = %bb.y
  call void @mi_option_set(i32 noundef %i.aq, i64 noundef %.033.ph) #14
  br label %bb.ad

mi_option_has_size_in_kib.exit:                   ; preds = %bb.p, %bb.y
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bo, align 8, !tbaa !15
  %i.bp = icmp eq i32 %i.aq, 2
  br i1 %i.bp, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %mi_option_has_size_in_kib.exit
  %i.bq = load i64, ptr %0, align 8, !tbaa !18
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i64 1, ptr %0, align 8, !tbaa !18
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !23
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.81, ptr noundef %i.bs) #14
  store i64 0, ptr %0, align 8, !tbaa !18
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %mi_option_has_size_in_kib.exit
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !23
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.81, ptr noundef %i.bt) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.ae

.thread43:                                        ; preds = %bb.b, %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bu, align 8, !tbaa !15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.d, %bb.j, %bb.ad, %bb.o, %.thread43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden i64 @mi_option_get_clamp(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 46
  br i1 %i.a, label %mi_option_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull %i.c) #14, !inline_history !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !18
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.d
  %.0.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.h = icmp slt i64 %.0.i, %1
  %i.i = tail call i64 @llvm.smin.i64(i64 %.0.i, i64 %2)
  %i.j = select i1 %i.h, i64 %1, i64 %i.i
  ret i64 %i.j
}

; Function Attrs: nooutline nounwind uwtable
define hidden range(i64 0, -1023) i64 @mi_option_get_size(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 46
  br i1 %i.a, label %mi_option_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull %i.c) #14, !inline_history !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !18  ; 2 uses
  %i.h = tail call i64 @llvm.smax.i64(i64 %i.g, i64 0) ; 2 uses
  %1 = icmp sgt i64 %i.g, 18014398509481983
  %2 = shl i64 %i.h, 10
  %3 = select i1 %1, i64 9223372036854775807, i64 %2
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.d
  %.0.i = phi i64 [ %3, %bb.d ], [ 0, %bb.a ]
  %.0.i.a = phi i64 [ %i.h, %bb.d ], [ 0, %bb.a ]
  switch i32 %0, label %mi_option_has_size_in_kib.exit [
    i32 44, label %bb.e
    i32 23, label %bb.e
    i32 9, label %bb.e
    i32 45, label %bb.e
  ]

bb.e:                                             ; preds = %mi_option_get.exit, %mi_option_get.exit, %mi_option_get.exit, %mi_option_get.exit
  br label %mi_option_has_size_in_kib.exit

mi_option_has_size_in_kib.exit:                   ; preds = %bb.e, %mi_option_get.exit
  %.0 = phi i64 [ %.0.i.a, %mi_option_get.exit ], [ %.0.i, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nofree nooutline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set(i32 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ugt i32 %0, 46
  br i1 %i.a, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %.tr14 = phi i32 [ %.tr14.be, %.lr.ph.backedge ], [ %0, %bb.a ]
  %i.b = zext nneg i32 %.tr14 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
  store i64 %1, ptr %i.c, align 16, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 2, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25
  switch i32 %i.f, label %.thread [
    i32 29, label %bb.b
    i32 30, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 960), align 16, !tbaa !18
  %i.h = icmp slt i64 %i.g, %1
  br i1 %i.h, label %.lr.ph.backedge, label %.thread

.lr.ph.backedge:                                  ; preds = %bb.b, %bb.c
  %.tr14.be = phi i32 [ 29, %bb.c ], [ 30, %bb.b ]
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 928), align 16, !tbaa !18
  %i.j = icmp sgt i64 %i.i, %1
  br i1 %i.j, label %.lr.ph.backedge, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set_default(i32 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i32 %0, 46
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %i.c, align 16, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree nooutline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set_enabled(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i1 %1 to i64                        ; 3 uses
  %i.b = icmp ugt i32 %0, 46
  br i1 %i.b, label %mi_option_set.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i.backedge
  %.tr14.i = phi i32 [ %.tr14.i.be, %.lr.ph.i.backedge ], [ %0, %bb.a ]
  %i.c = zext nneg i32 %.tr14.i to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.c ; 3 uses
  store i64 %i.a, ptr %i.d, align 16, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 2, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  switch i32 %i.g, label %mi_option_set.exit [
    i32 29, label %bb.b
    i32 30, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 960), align 16, !tbaa !18
  %i.i = icmp slt i64 %i.h, %i.a
  br i1 %i.i, label %.lr.ph.i.backedge, label %mi_option_set.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 928), align 16, !tbaa !18
  %i.k = icmp sgt i64 %i.j, %i.a
  br i1 %i.k, label %.lr.ph.i.backedge, label %mi_option_set.exit

.lr.ph.i.backedge:                                ; preds = %bb.c, %bb.b
  %.tr14.i.be = phi i32 [ 29, %bb.c ], [ 30, %bb.b ]
  br label %.lr.ph.i

mi_option_set.exit:                               ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_set_enabled_default(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i1 %1 to i64
  %i.b = icmp ugt i32 %0, 46
  br i1 %i.b, label %mi_option_set_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  %.not.i = icmp eq i32 %i.f, 2
  br i1 %.not.i, label %mi_option_set_default.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.a, ptr %i.d, align 16, !tbaa !18
  br label %mi_option_set_default.exit

mi_option_set_default.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree nooutline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_enable(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ugt i32 %0, 46
  br i1 %i.a, label %mi_option_set_enabled.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i.backedge
  %.tr14.i.i = phi i32 [ %.tr14.i.i.be, %.lr.ph.i.i.backedge ], [ %0, %bb.a ]
  %i.b = zext nneg i32 %.tr14.i.i to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
  store i64 1, ptr %i.c, align 16, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 2, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25
  switch i32 %i.f, label %mi_option_set_enabled.exit [
    i32 29, label %bb.b
    i32 30, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 960), align 16, !tbaa !18
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i.i.backedge, label %mi_option_set_enabled.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 928), align 16, !tbaa !18
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %.lr.ph.i.i.backedge, label %mi_option_set_enabled.exit

.lr.ph.i.i.backedge:                              ; preds = %bb.c, %bb.b
  %.tr14.i.i.be = phi i32 [ 29, %bb.c ], [ 30, %bb.b ]
  br label %.lr.ph.i.i

mi_option_set_enabled.exit:                       ; preds = %.lr.ph.i.i, %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree nooutline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mi_option_disable(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ugt i32 %0, 46
  br i1 %i.a, label %mi_option_set_enabled.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i.backedge
  %.tr14.i.i = phi i32 [ %.tr14.i.i.be, %.lr.ph.i.i.backedge ], [ %0, %bb.a ]
  %i.b = zext nneg i32 %.tr14.i.i to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @mi_options, i64 %i.b ; 3 uses
  store i64 0, ptr %i.c, align 16, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 2, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25
  switch i32 %i.f, label %mi_option_set_enabled.exit [
    i32 29, label %bb.b
    i32 30, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 960), align 16, !tbaa !18
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.backedge, label %mi_option_set_enabled.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 928), align 16, !tbaa !18
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.backedge, label %mi_option_set_enabled.exit

.lr.ph.i.i.backedge:                              ; preds = %bb.c, %bb.b
  %.tr14.i.i.be = phi i32 [ 29, %bb.c ], [ 30, %bb.b ]
  br label %.lr.ph.i.i

mi_option_set_enabled.exit:                       ; preds = %.lr.ph.i.i, %bb.b, %bb.c, %bb.a
  ret void
}
end_hunk_0
