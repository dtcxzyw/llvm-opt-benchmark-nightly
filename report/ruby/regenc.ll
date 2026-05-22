inline.NumInlined: 16
inline.NumDeleted: 1
begin_hunk_0_@onigenc_str_bytelen_null:bb.a

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @onigenc_get_left_adjust_char_head(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call ptr %i.b(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %0) #11
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @onigenc_ascii_apply_all_case_fold(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef readnone captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %bb.e, label %bb.c, !llvm.loop !29

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr @OnigAsciiLowerMap, i64 %indvars.iv ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30   ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !7
  %i.e = load i32, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.f = call i32 %1(i32 noundef %i.e, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %2) #11 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %i.a, align 4, !tbaa !7
  %i.g = call i32 %1(i32 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %2) #11 ; 2 uses
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.014 = phi i32 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @onigenc_ascii_get_case_fold_codes_by_str(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readnone captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef readnone captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !26      ; 2 uses
  %i.b = add i8 %i.a, -65
  %or.cond = icmp ult i8 %i.b, 26
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i8 %i.a, -97
  %or.cond14 = icmp ult i8 %i.c, 26
  br i1 %or.cond14, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink17 = phi i32 [ 32, %bb.a ], [ -32, %bb.b ]
  store i32 1, ptr %3, align 4, !tbaa !33
  %i.d = getelementptr i8, ptr %3, i64 4
  store i32 1, ptr %i.d, align 4, !tbaa !35
  %i.e = load i8, ptr %1, align 1, !tbaa !26
  %i.f = zext i8 %i.e to i32
  %i.g = add nsw i32 %.sink17, %i.f
  %i.h = getelementptr i8, ptr %3, i64 8
  store i32 %i.g, ptr %i.h, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @onigenc_apply_all_case_fold_with_map(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 26
  br i1 %exitcond.not.i, label %onigenc_ascii_apply_all_case_fold.exit, label %bb.c, !llvm.loop !29

bb.c:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.d = getelementptr [8 x i8], ptr @OnigAsciiLowerMap, i64 %indvars.iv.i ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30   ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !7
  %i.g = load i32, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.h = call i32 %4(i32 noundef %i.g, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef %5) #11, !inline_history !36 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %onigenc_ascii_apply_all_case_fold.exit.thread

bb.d:                                             ; preds = %bb.c
  store i32 %i.g, ptr %i.b, align 4, !tbaa !7
  %i.i = call i32 %4(i32 noundef %i.f, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef %5) #11, !inline_history !36 ; 2 uses
  %.not17.i = icmp eq i32 %i.i, 0
  br i1 %.not17.i, label %bb.b, label %onigenc_ascii_apply_all_case_fold.exit.thread

onigenc_ascii_apply_all_case_fold.exit.thread:    ; preds = %bb.d, %bb.c
  %.014.i.ph = phi i32 [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.loopexit

onigenc_ascii_apply_all_case_fold.exit:           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.j = icmp sgt i32 %0, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %onigenc_ascii_apply_all_case_fold.exit
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4        ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  store i32 %i.m, ptr %i.c, align 4, !tbaa !7
  %i.n = load i32, ptr %i.k, align 4, !tbaa !32
  %i.o = call i32 %4(i32 noundef %i.n, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef %5) #11 ; 2 uses
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.p = load i32, ptr %i.k, align 4, !tbaa !32
  store i32 %i.p, ptr %i.c, align 4, !tbaa !7
  %i.q = load i32, ptr %i.l, align 4, !tbaa !30
  %i.r = call i32 %4(i32 noundef %i.q, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef %5) #11 ; 2 uses
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %bb.e, label %.loopexit

._crit_edge:                                      ; preds = %bb.e, %onigenc_ascii_apply_all_case_fold.exit
  %.not32 = icmp eq i32 %2, 0
  br i1 %.not32, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 493921239155, ptr %i.a, align 8
  %i.s = call i32 %4(i32 noundef 223, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef %5) #11, !inline_history !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.lr.ph, %onigenc_ascii_apply_all_case_fold.exit.thread, %._crit_edge, %bb.g
  %.028 = phi i32 [ %i.s, %bb.g ], [ %.014.i.ph, %onigenc_ascii_apply_all_case_fold.exit.thread ], [ 0, %._crit_edge ], [ %i.o, %.lr.ph ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i32 %.028
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 5) i32 @onigenc_get_case_fold_codes_by_str_with_map(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(address) %4, ptr noundef readnone captures(address) %5, ptr noundef writeonly captures(none) %6) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %4, align 1, !tbaa !26      ; 4 uses
  %i.b = add i8 %i.a, -65
  %or.cond82 = icmp ult i8 %i.b, 26
  br i1 %or.cond82, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %6, align 4, !tbaa !33
  %i.c = getelementptr i8, ptr %6, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !35
  %i.d = load i8, ptr %4, align 1, !tbaa !26
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 32
  %i.g = getelementptr i8, ptr %6, i64 8
  store i32 %i.f, ptr %i.g, align 4, !tbaa !7
  %i.h = load i8, ptr %4, align 1, !tbaa !26
  %i.i = icmp eq i8 %i.h, 83
  %i.j = icmp ne i32 %2, 0
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %4, i64 1          ; 2 uses
  %i.l = icmp ugt ptr %5, %i.k
  br i1 %i.l, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.k, align 1, !tbaa !26
  switch i8 %i.m, label %.loopexit [
    i8 83, label %bb.e
    i8 115, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.n = getelementptr i8, ptr %6, i64 20
  store i32 2, ptr %i.n, align 4, !tbaa !33
  %7 = getelementptr i8, ptr %6, i64 24
  store i32 1, ptr %7, align 4, !tbaa !35
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.a
  %i.o = add i8 %i.a, -97
  %or.cond83 = icmp ult i8 %i.o, 26
  br i1 %or.cond83, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %6, align 4, !tbaa !33
  %i.p = getelementptr i8, ptr %6, i64 4
  store i32 1, ptr %i.p, align 4, !tbaa !35
  %i.q = load i8, ptr %4, align 1, !tbaa !26
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -32
  %i.t = getelementptr i8, ptr %6, i64 8
  store i32 %i.s, ptr %i.t, align 4, !tbaa !7
  %i.u = load i8, ptr %4, align 1, !tbaa !26
  %i.v = icmp eq i8 %i.u, 115
  %i.w = icmp ne i32 %2, 0
  %or.cond3 = and i1 %i.w, %i.v
  br i1 %or.cond3, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %4, i64 1          ; 2 uses
  %i.y = icmp ugt ptr %5, %i.x
  br i1 %i.y, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.z = load i8, ptr %i.x, align 1, !tbaa !26
  switch i8 %i.z, label %.loopexit [
    i8 115, label %bb.j
    i8 83, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.aa = getelementptr i8, ptr %6, i64 20
  store i32 2, ptr %i.aa, align 4, !tbaa !33
  %8 = getelementptr i8, ptr %6, i64 24
  store i32 1, ptr %8, align 4, !tbaa !35
  br label %.loopexit.sink.split

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp eq i8 %i.a, -33
  %i.ac = icmp ne i32 %2, 0
  %or.cond5 = and i1 %i.ac, %i.ab
  br i1 %or.cond5, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %.not90 = icmp sgt i32 %0, 0
  br i1 %.not90, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ad = zext i8 %i.a to i32                     ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  store <4 x i32> <i32 1, i32 2, i32 115, i32 115>, ptr %6, align 4, !tbaa !7
  %i.ae = getelementptr i8, ptr %6, i64 20
  store <4 x i32> <i32 1, i32 2, i32 83, i32 83>, ptr %i.ae, align 4, !tbaa !7
  %i.af = getelementptr i8, ptr %6, i64 40
  store <4 x i32> <i32 1, i32 2, i32 115, i32 83>, ptr %i.af, align 4, !tbaa !7
  %i.ag = getelementptr i8, ptr %6, i64 60
  store i32 1, ptr %i.ag, align 4, !tbaa !33
  %i.ah = getelementptr i8, ptr %6, i64 64
  store i32 2, ptr %i.ah, align 4, !tbaa !35
  %9 = getelementptr i8, ptr %6, i64 68
  store i32 83, ptr %9, align 4, !tbaa !7
  br label %.loopexit.sink.split

bb.m:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.n, !llvm.loop !39

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, %i.ad
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %6, align 4, !tbaa !33
  %i.al = getelementptr i8, ptr %6, i64 4
  store i32 1, ptr %i.al, align 4, !tbaa !35
  %i.am = getelementptr i8, ptr %i.ai, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !30
  br label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %i.ai, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !30
  %i.aq = icmp eq i32 %i.ap, %i.ad
  br i1 %i.aq, label %bb.q, label %bb.m

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %6, align 4, !tbaa !33
  %i.ar = getelementptr i8, ptr %6, i64 4
  store i32 1, ptr %i.ar, align 4, !tbaa !35
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.e, %bb.j, %bb.l, %bb.q, %bb.o
  %.sink109 = phi i64 [ 8, %bb.o ], [ 8, %bb.q ], [ 72, %bb.l ], [ 28, %bb.j ], [ 28, %bb.e ]
  %.sink = phi i32 [ %i.an, %bb.o ], [ %i.aj, %bb.q ], [ 115, %bb.l ], [ 223, %bb.j ], [ 223, %bb.e ]
  %.1.ph = phi i32 [ 1, %bb.o ], [ 1, %bb.q ], [ 4, %bb.l ], [ 2, %bb.j ], [ 2, %bb.e ]
  %i.as = getelementptr i8, ptr %6, i64 %.sink109
  store i32 %.sink, ptr %i.as, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.loopexit.sink.split, %.preheader, %bb.g, %bb.h, %bb.i, %bb.b, %bb.c, %bb.d
  %.1 = phi i32 [ 1, %bb.i ], [ 1, %bb.h ], [ 0, %.preheader ], [ 1, %bb.b ], [ %.1.ph, %.loopexit.sink.split ], [ 1, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %bb.m ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_not_support_get_ctype_code_range(i32 noundef %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2, ptr noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  ret i32 -2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @onigenc_is_mbc_newline_0x0a(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !26
  %i.c = icmp eq i8 %i.b, 10
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @onigenc_ascii_mbc_case_fold(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef readnone captures(none) %2, ptr noundef writeonly captures(none) initializes((0, 1)) %3, ptr noundef readnone captures(none) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  store i8 %i.e, ptr %3, align 1, !tbaa !26
  %i.f = load ptr, ptr %1, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %1, align 8, !tbaa !21
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_single_byte_mbc_enc_len(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @onigenc_single_byte_mbc_to_code(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !26
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_single_byte_code_to_mbclen(i32 noundef %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @onigenc_single_byte_code_to_mbc(i32 noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i32 %0, 255
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eRangeError, align 8, !tbaa !40
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str, i32 noundef %0) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = trunc nuw i32 %0 to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !26
  ret i32 1
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef ptr @onigenc_single_byte_left_adjust_char_head(ptr noundef readnone captures(none) %0, ptr noundef readnone returned captures(ret: address, provenance) %1, ptr noundef readnone captures(none) %2, ptr noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_always_true_is_allowed_reverse_match(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_always_false_is_allowed_reverse_match(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @onigenc_ascii_is_code_ctype(i32 noundef %0, i32 noundef %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [2 x i8], ptr @OnigEncAsciiCtypeTable, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !42
  %i.e = zext i16 %i.d to i32
  %i.f = lshr i32 %i.e, %1
  %i.g = and i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @onigenc_mbn_mbc_to_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult ptr %1, %2
  br i1 %i.f, label %onigenc_mbclen.exit, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !tbaa !26
  %i.h = zext i8 %i.g to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = tail call i32 %i.i(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0) #11, !inline_history !20 ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = icmp ugt ptr %i.m, %2
  %i.o = ptrtoint ptr %2 to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %.0.i = select i1 %i.n, i32 %i.r, i32 %i.j
  br label %onigenc_mbclen.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp slt i32 %i.j, -1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  br label %onigenc_mbclen.exit

bb.g:                                             ; preds = %bb.e
  %i.x = icmp ult ptr %1, %2
  %i.y = zext i1 %i.x to i32
  br label %onigenc_mbclen.exit

onigenc_mbclen.exit:                              ; preds = %bb.b, %bb.g, %bb.f, %bb.d
  %i.z = phi i32 [ %i.y, %bb.g ], [ %.0.i, %bb.d ], [ %i.w, %bb.f ], [ %i.b, %bb.b ] ; 3 uses
  %i.aa = load i8, ptr %1, align 1, !tbaa !26
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %i.ac = icmp eq i32 %i.z, 1
  br i1 %i.ac, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %onigenc_mbclen.exit
  %.02326 = getelementptr i8, ptr %1, i64 1       ; 2 uses
  %i.ad = icmp sgt i32 %i.z, 1
  %.not27 = icmp ult ptr %.02326, %2
  %or.cond28 = and i1 %i.ad, %.not27
  br i1 %or.cond28, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02331 = phi ptr [ %.023, %.lr.ph ], [ %.02326, %.preheader ] ; 2 uses
  %.030 = phi i32 [ %i.ah, %.lr.ph ], [ %i.ab, %.preheader ]
  %.02229 = phi i32 [ %i.ai, %.lr.ph ], [ 1, %.preheader ]
  %i.ae = load i8, ptr %.02331, align 1, !tbaa !26
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl i32 %.030, 8
end_hunk_0
