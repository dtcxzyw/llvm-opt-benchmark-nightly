inline.NumInlined: 56
inline.NumDeleted: 18
begin_hunk_0_@refreshLine:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.je = sext i32 %.promoted46.i to i64
  %i.jf = getelementptr inbounds i8, ptr %i.jc, i64 %i.je
  %sext33.i = shl i64 %i.hy, 32
  %i.jg = ashr exact i64 %sext33.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jf, ptr readonly align 1 %.025.lcssa.i, i64 %i.jg, i1 false)
  br label %abAppend.exit29.i.sink.split

abAppend.exit29.i.sink.split:                     ; preds = %abAppend.exit28.i, %.preheader.i10, %bb.al
  %.lcssa45.i.sink = phi ptr [ %i.jc, %bb.al ], [ %.promoted.i6, %.preheader.i10 ], [ %i.iy, %abAppend.exit28.i ]
  %.lcssa47.i.sink = phi i32 [ %i.ja, %bb.al ], [ %.promoted46.i, %.preheader.i10 ], [ %i.ix, %abAppend.exit28.i ]
  store ptr %.lcssa45.i.sink, ptr %1, align 8
  store i32 %.lcssa47.i.sink, ptr %i.hz, align 8
  br label %abAppend.exit29.i

abAppend.exit29.i:                                ; preds = %abAppend.exit29.i.sink.split, %bb.ak
  %i.jh = trunc i64 %i.hg to i32
  call void @refreshShowHints(ptr noundef nonnull %1, ptr noundef readonly %0, i32 noundef %i.jh) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false)
  %i.ji = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 2 uses
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.jl = load i32, ptr %i.hz, align 8, !tbaa !28 ; 3 uses
  %i.jm = add nsw i32 %i.jl, %i.jj                ; 2 uses
  %i.jn = sext i32 %i.jm to i64                   ; 2 uses
  %i.jo = tail call ptr @realloc(ptr noundef %i.jk, i64 noundef %i.jn) #27 ; 3 uses
  %i.jp = icmp eq ptr %i.jo, null
  %.pre = sext i32 %i.jl to i64                   ; 2 uses
  br i1 %i.jp, label %abAppend.exit30.i, label %bb.am

bb.am:                                            ; preds = %abAppend.exit29.i
  %i.jq = getelementptr inbounds i8, ptr %i.jo, i64 %.pre
  %sext34.i = shl i64 %i.ji, 32
  %i.jr = ashr exact i64 %sext34.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jq, ptr nonnull readonly align 16 %i.a, i64 %i.jr, i1 false)
  br label %abAppend.exit30.i

abAppend.exit30.i:                                ; preds = %abAppend.exit29.i, %bb.am
  %.pre.i8.pre-phi = phi i64 [ %i.jn, %bb.am ], [ %.pre, %abAppend.exit29.i ] ; 2 uses
  %i.js = phi i32 [ %i.jm, %bb.am ], [ %i.jl, %abAppend.exit29.i ]
  %i.jt = phi ptr [ %i.jo, %bb.am ], [ %i.jk, %abAppend.exit29.i ] ; 2 uses
  %i.ju = trunc i64 %.lcssa37.i to i32
  %i.jv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.18, i32 noundef %i.ju) #24 ; 0 uses
  %i.jw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 2 uses
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = add nsw i32 %i.js, %i.jx
  %i.jz = sext i32 %i.jy to i64                   ; 2 uses
  %i.ka = tail call ptr @realloc(ptr noundef %i.jt, i64 noundef %i.jz) #27 ; 3 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %refreshSingleLine.exit, label %bb.an

bb.an:                                            ; preds = %abAppend.exit30.i
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 %.pre.i8.pre-phi
  %sext35.i = shl i64 %i.jw, 32
  %i.kd = ashr exact i64 %sext35.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kc, ptr nonnull readonly align 16 %i.a, i64 %i.kd, i1 false)
  br label %refreshSingleLine.exit

refreshSingleLine.exit:                           ; preds = %abAppend.exit30.i, %bb.an
  %.pre-phi.i9 = phi i64 [ %i.jz, %bb.an ], [ %.pre.i8.pre-phi, %abAppend.exit30.i ]
  %i.ke = phi ptr [ %i.ka, %bb.an ], [ %i.jt, %abAppend.exit30.i ] ; 2 uses
  %i.kf = tail call i64 @write(i32 noundef %i.hi, ptr noundef %i.ke, i64 noundef %.pre-phi.i9) #24 ; 0 uses
  tail call void @free(ptr noundef %i.ke) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ao

bb.ao:                                            ; preds = %refreshSingleLine.exit, %refreshMultiLine.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditMoveLeft(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditMoveRight(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.b, 1
  store i64 %i.e, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditMoveHome(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditMoveEnd(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditHistoryNext(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @history_len, align 4, !tbaa !7 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @history, align 8, !tbaa !44 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.a, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.j) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = tail call noalias ptr @strdup(ptr noundef %i.l) #24
  %i.n = load i32, ptr @history_len, align 4, !tbaa !7 ; 4 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.p = xor i32 %i.o, -1
  %i.q = add i32 %i.n, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.r
  store ptr %i.m, ptr %i.s, align 8, !tbaa !19
  %i.t = icmp eq i32 %1, 1
  %i.u = select i1 %i.t, i32 1, i32 -1
  %i.v = add nsw i32 %i.o, %i.u                   ; 4 uses
  store i32 %i.v, ptr %i.d, align 8, !tbaa !45
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !45
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.not = icmp slt i32 %i.v, %i.n
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.n, -1
  store i32 %i.x, ptr %i.d, align 8, !tbaa !45
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.z = xor i32 %i.v, -1
  %i.aa = add nsw i32 %i.n, %i.z
  %2 = zext nneg i32 %i.aa to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %2
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !29
  %i.af = tail call ptr @strncpy(ptr noundef %i.y, ptr noundef %i.ac, i64 noundef %i.ae) #24 ; 0 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !29
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  store i8 0, ptr %i.aj, align 1, !tbaa !25
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #25 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.al, ptr %i.am, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.al, ptr %i.an, align 8, !tbaa !21
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditDelete(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.e = icmp ult i64 %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = xor i64 %i.d, -1
  %i.k = add i64 %i.b, %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !21
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !25
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditBackspace(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not14 = icmp eq i64 %i.d, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.i = sub i64 %i.d, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.g, i64 %i.i, i1 false)
  %i.j = load i64, ptr %i.a, align 8, !tbaa !30
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.a, align 8, !tbaa !30
  %i.l = load i64, ptr %i.c, align 8, !tbaa !21
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.c, align 8, !tbaa !21
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !25
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditDeletePrevWord(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %.not25 = icmp eq i64 %i.b, 0
  br i1 %.not25, label %.critedge..critedge2_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.e = phi i64 [ %i.b, %.lr.ph ], [ %i.j, %bb.c ] ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %.lr.ph28

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.e, -1                         ; 3 uses
  store i64 %i.j, ptr %i.a, align 8, !tbaa !30
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.critedge..critedge2_crit_edge, label %bb.b, !llvm.loop !46

.critedge..critedge2_crit_edge:                   ; preds = %bb.c, %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %.critedge2

.lr.ph28:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph28, %bb.e
  %i.m = phi i64 [ %i.e, %.lr.ph28 ], [ %i.q, %bb.e ] ; 3 uses
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !25
  %.not23 = icmp eq i8 %i.p, 32
  br i1 %.not23, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %i.m, -1                         ; 3 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !30
  %.not22 = icmp eq i64 %i.q, 0
  br i1 %.not22, label %.critedge2, label %bb.d, !llvm.loop !47

.critedge2:                                       ; preds = %bb.d, %bb.e, %.critedge..critedge2_crit_edge
  %i.r = phi ptr [ %.pre, %.critedge..critedge2_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %.lcssa = phi i64 [ 0, %.critedge..critedge2_crit_edge ], [ %i.m, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.neg = sub i64 %.lcssa, %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.lcssa
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21
  %reass.sub = sub i64 %i.v, %i.b
  %i.w = add i64 %reass.sub, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.t, i64 %i.w, i1 false)
  %i.x = load i64, ptr %i.u, align 8, !tbaa !21
  %i.y = add i64 %.neg, %i.x
  store i64 %i.y, ptr %i.u, align 8, !tbaa !21
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoisePrintKeyCodes() local_unnamed_addr #9 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.b = tail call fastcc i32 @enableRawMode() #29
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %disableRawMode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 538976288, ptr %.sroa.0, align 4
  %.sroa.0.1..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.3..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = call i64 @read(i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef 1) #24
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.1..sroa_idx4, i64 3, i1 false)
  %i.g = load i8, ptr %i.a, align 1, !tbaa !25    ; 3 uses
  store i8 %i.g, ptr %.sroa.0.3..sroa_idx5, align 1, !tbaa !25
  %.sroa.0.0..sroa.0.0.lhsv = load i32, ptr %.sroa.0, align 4
  %.not3 = icmp eq i32 %.sroa.0.0..sroa.0.0.lhsv, 1953068401
  br i1 %.not3, label %bb.g, label %bb.e
end_hunk_0
begin_hunk_1_@linenoise:bb.a

bb.cv:                                            ; preds = %thread-pre-split.i.i
  call void @linenoiseEditDeletePrevWord(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

.thread.i.i:                                      ; preds = %bb.cn, %bb.ba, %bb.aw, %bb.at, %bb.aj, %._crit_edge.i.i
  %.1.ph.i.i = phi i32 [ %i.cl, %._crit_edge.i.i ], [ %i.em, %bb.aj ], [ -1, %bb.ba ], [ -1, %bb.aw ], [ %i.fa, %bb.at ], [ -1, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.hn = icmp eq i32 %.1.ph.i.i, -1
  br label %linenoiseEdit.exit.i

linenoiseEditMoveLeft.exit.i.i:                   ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %enableReverseSearchMode.exit.i.i, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.am, %bb.al, %thread-pre-split.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.ho = load i32, ptr %3, align 8, !tbaa !57
  %i.hp = call i64 @read(i32 noundef %i.ho, ptr noundef nonnull %i.c, i64 noundef 1) #24
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = icmp slt i32 %i.hq, 1
  br i1 %i.hr, label %._crit_edge.i.i, label %bb.v

linenoiseEdit.exit.i:                             ; preds = %.thread.i.i, %getColumns.exit.i.i
  %.2.i.i = phi i1 [ %i.hn, %.thread.i.i ], [ true, %getColumns.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.b.i6.i = load i1, ptr @rawmode, align 4
  br i1 %.b.i6.i, label %bb.cw, label %linenoiseRaw.exit

bb.cw:                                            ; preds = %linenoiseEdit.exit.i
  %i.hs = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @orig_termios) #24
  %.not.i7.i = icmp eq i32 %i.hs, -1
  br i1 %.not.i7.i, label %linenoiseRaw.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i1 false, ptr @rawmode, align 4
  br label %linenoiseRaw.exit

linenoiseRaw.exit:                                ; preds = %linenoiseEdit.exit.i, %bb.cw, %bb.cx
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  br i1 %.2.i.i, label %linenoiseNoTTY.exit, label %bb.cy

bb.cy:                                            ; preds = %linenoiseRaw.exit
  %i.ht = call noalias ptr @strdup(ptr noundef nonnull %i.e) #24
  br label %linenoiseNoTTY.exit

linenoiseNoTTY.exit:                              ; preds = %bb.i, %bb.i, %isUnsupportedTerm.exit.thread, %.thread.sink.split.i, %bb.d, %linenoiseRaw.exit, %.critedge, %isUnsupportedTerm.exit, %bb.cy
  %.1 = phi ptr [ null, %linenoiseRaw.exit ], [ null, %isUnsupportedTerm.exit ], [ %i.ht, %bb.cy ], [ %i.ao, %.critedge ], [ null, %bb.d ], [ null, %.thread.sink.split.i ], [ null, %isUnsupportedTerm.exit.thread ], [ %.3.i, %bb.i ], [ %.3.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  ret ptr %.1
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @linenoiseFree(ptr noundef captures(none) %0) local_unnamed_addr #17 {
bb.a:
  tail call void @free(ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @linenoiseHistoryAdd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @history, align 8, !tbaa !44 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @history_max_len, align 4, !tbaa !7
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #26 ; 5 uses
  store ptr %i.f, ptr @history, align 8, !tbaa !44
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @history_max_len, align 4, !tbaa !7
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #26 ; 3 uses
  store ptr %i.k, ptr @history_sensitive, align 8, !tbaa !63
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #24
  store ptr null, ptr @history, align 8, !tbaa !44
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr @history_max_len, align 4, !tbaa !7
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.o, i1 false)
  %i.p = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.p, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.q = phi ptr [ %i.f, %bb.e ], [ %i.a, %bb.a ] ; 5 uses
  %i.r = load i32, ptr @history_len, align 4, !tbaa !7 ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %i.q, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %0) #25
  %.not8 = icmp eq i32 %i.w, 0
  br i1 %.not8, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = tail call noalias ptr @strdup(ptr noundef %0) #24 ; 2 uses
  %.not9 = icmp eq ptr %i.x, null
  br i1 %.not9, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr @history_len, align 4, !tbaa !7 ; 3 uses
  %i.z = load i32, ptr @history_max_len, align 4, !tbaa !7
  %i.aa = icmp eq i32 %i.y, %i.z
  %.pre = load ptr, ptr @history_sensitive, align 8, !tbaa !63 ; 3 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.ab) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = add nsw i32 %i.y, -1                    ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.ac, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.ah = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.pre, ptr nonnull align 4 %i.ag, i64 %i.ah, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = phi i32 [ %i.ad, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aj
  store ptr %i.x, ptr %i.ak, align 8, !tbaa !19
  %i.al = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.aj
  store i32 %1, ptr %i.al, align 4, !tbaa !7
  %i.am = add nsw i32 %i.ai, 1
  store i32 %i.am, ptr @history_len, align 4, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.b, %bb.k, %bb.d
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.d ], [ 1, %bb.k ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind optsize memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @linenoiseHistorySetMaxLen(i32 noundef %0) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @history, align 8, !tbaa !44 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  %.pre = load i32, ptr @history_len, align 4, !tbaa !7 ; 4 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64                  ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #26 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #26 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #24
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %0, %.pre
  br i1 %i.j, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.f
  %i.k = sub nuw nsw i32 %.pre, %0
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.m) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !65

.critedge:                                        ; preds = %.lr.ph, %bb.f
  %.028 = phi i32 [ %.pre, %bb.f ], [ %0, %.lr.ph ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.g, i1 false)
  %i.n = load i32, ptr @history_len, align 4, !tbaa !7 ; 2 uses
  %i.o = sub nsw i32 %i.n, %.028
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.p
  %i.r = sext i32 %.028 to i64                    ; 2 uses
  %i.s = shl nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  %i.t = load ptr, ptr @history_sensitive, align 8, !tbaa !63 ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.p
  %i.v = shl nsw i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 4 %i.u, i64 %i.v, i1 false)
  tail call void @free(ptr noundef nonnull %i.b) #24
  tail call void @free(ptr noundef %i.t) #24
  store ptr %i.e, ptr @history, align 8, !tbaa !44
  store ptr %i.h, ptr @history_sensitive, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.b
  %i.w = phi i32 [ %i.n, %.critedge ], [ %.pre, %bb.b ]
  store i32 %0, ptr @history_max_len, align 4, !tbaa !7
  %i.x = icmp sgt i32 %i.w, %0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %0, ptr @history_len, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.c, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.h ], [ 1, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind optsize uwtable
define dso_local range(i32 -1, 1) i32 @linenoiseHistorySave(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i32 @umask(i32 noundef 127) #24
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.9) #29 ; 4 uses
  %i.c = tail call i32 @umask(i32 noundef %i.a) #24 ; 0 uses
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @fileno(ptr noundef nonnull %i.b) #24
  %i.f = tail call i32 @fchmod(i32 noundef %i.e, i32 noundef 384) #24 ; 0 uses
  %i.g = load i32, ptr @history_len, align 4, !tbaa !7 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %.pre14 = load ptr, ptr @history_sensitive, align 8, !tbaa !63
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.i = phi i32 [ %i.g, %.lr.ph.preheader ], [ %i.q, %bb.d ]
  %i.j = phi ptr [ %.pre14, %.lr.ph.preheader ], [ %i.r, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr @history, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.10, ptr noundef %i.o) #24 ; 0 uses
  %.pre = load ptr, ptr @history_sensitive, align 8, !tbaa !63
  %.pre15 = load i32, ptr @history_len, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.q = phi i32 [ %i.i, %.lr.ph ], [ %.pre15, %bb.c ] ; 2 uses
  %i.r = phi ptr [ %i.j, %.lr.ph ], [ %.pre, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.u = tail call i32 @fclose(ptr noundef nonnull %i.b) #29 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.010 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.a ]
  ret i32 %.010
}

; Function Attrs: nounwind optsize
declare i32 @umask(i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind optsize
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define dso_local range(i32 -1, 1) i32 @linenoiseHistoryLoad(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.11) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef nonnull %i.b) #29
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.e = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 13) #25 ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %i.f = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 10) #25 ; 2 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.c, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.b
  %.013 = phi ptr [ %i.f, %bb.b ], [ %i.e, %.lr.ph ]
  store i8 0, ptr %.013, align 1, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.g = call i32 @linenoiseHistoryAdd(ptr noundef nonnull %i.a, i32 noundef 0) #29 ; 0 uses
  %i.h = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef nonnull %i.b) #29
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.i = call i32 @fclose(ptr noundef nonnull %i.b) #29 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.07 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.07
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @searchInHistory(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.linenoiseHistorySearchResult) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #19 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load i32, ptr @history_len, align 4, !tbaa !7 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %char0 = load i8, ptr %1, align 1
  %.not10 = icmp eq i8 %char0, 0
  br i1 %.not10, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.b9 = load i1, ptr @cycle_to_next_search, align 4 ; 2 uses
  %.pre33 = add nsw i32 %i.a, -1                  ; 2 uses
  br i1 %.b9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = load i32, ptr @search_result_history_index, align 4, !tbaa !7 ; 2 uses
  %.pre32 = load i32, ptr @reverse_search_direction, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = load i32, ptr @reverse_search_direction, align 4, !tbaa !7 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  %i.e = select i1 %i.d, i32 %.pre33, i32 0
  %.pre = load i32, ptr @search_result_history_index, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = phi i32 [ %i.c, %bb.e ], [ %.pre32, %bb.d ]
  %i.g = phi i32 [ %.pre, %bb.e ], [ %i.b, %bb.d ]
  %i.h = phi i32 [ %i.e, %bb.e ], [ %i.b, %bb.d ]
  %i.i = load ptr, ptr @history, align 8, !tbaa !44 ; 2 uses
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  %i.l = icmp eq i32 %i.f, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  %.016 = phi i32 [ %i.h, %bb.f ], [ %i.ai, %bb.n ] ; 5 uses
  %i.m = sext i32 %.016 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 5 uses
end_hunk_1
