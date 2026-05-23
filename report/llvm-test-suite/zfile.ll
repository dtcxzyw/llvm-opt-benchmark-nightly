inline.NumInlined: 7
begin_hunk_0_@zread:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.h = load i8, ptr %i.g, align 4, !tbaa !38
  %.not26 = icmp ne i8 %i.h, 0
  %i.i = and i16 %i.b, 512
  %.not27.not = icmp eq i16 %i.i, 0
  %or.cond = or i1 %.not27.not, %.not26
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.n, ptr %i.e, align 8, !tbaa !24
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = zext i8 %i.o to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.s = tail call i32 %i.r(ptr noundef nonnull %i.e) #13 ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 0, ptr %0, align 8, !tbaa !16
  store i16 4, ptr %i.a, align 8, !tbaa !17
  br label %bb.j

bb.g:                                             ; preds = %.thread, %bb.e
  %i.u = phi i32 [ %i.p, %.thread ], [ %i.s, %bb.e ]
  %i.v = sext i32 %i.u to i64
  store i64 %i.v, ptr %0, align 8, !tbaa !16
  store i16 20, ptr %i.a, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.w, ptr @osp, align 8, !tbaa !22
  %i.x = load ptr, ptr @ostop, align 8, !tbaa !22
  %i.y = icmp ugt ptr %i.w, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr @osp, align 8, !tbaa !22
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i16 1, ptr %i.w, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 4, ptr %i.z, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.c, %bb.b, %bb.a, %bb.h
  %.1 = phi i32 [ -20, %bb.a ], [ -7, %bb.c ], [ 0, %bb.f ], [ -16, %bb.h ], [ -7, %bb.b ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zunread(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !17
  %i.c = and i16 %i.b, 252
  %.not = icmp eq i16 %i.c, 12
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.i = load i8, ptr %i.h, align 4, !tbaa !38
  %.not13 = icmp eq i8 %i.i, 0
  br i1 %.not13, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !17
  %i.l = and i16 %i.k, 252
  %i.m = icmp eq i16 %i.l, 20
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.critedge
  %i.n = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.o = icmp ugt i64 %i.n, 255
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = trunc nuw i64 %i.n to i8
  %i.q = tail call i32 @sungetc(ptr noundef nonnull %i.f, i8 noundef zeroext %i.p) #13
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @osp, align 8, !tbaa !22
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  store ptr %i.t, ptr @osp, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %.critedge, %bb.c, %bb.b, %bb.a, %bb.f
  %.1 = phi i32 [ -20, %bb.a ], [ -20, %.critedge ], [ -15, %bb.d ], [ 0, %bb.f ], [ -7, %bb.c ], [ -7, %bb.b ], [ -12, %bb.e ]
  ret i32 %.1
}

declare i32 @sungetc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zwrite(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = and i16 %i.b, 252
  %.not = icmp eq i16 %i.c, 12
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.i = load i8, ptr %i.h, align 4, !tbaa !38
  %.not20 = icmp eq i8 %i.i, 0
  %i.j = and i16 %i.b, 256
  %.not21.not = icmp eq i16 %i.j, 0
  %or.cond = or i1 %.not21.not, %.not20
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !17
  %i.m = and i16 %i.l, 252
  %i.n = icmp eq i16 %i.m, 20
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.p = icmp ugt i64 %i.o, 255
  br i1 %i.p, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = trunc nuw i64 %i.o to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.v, ptr %i.f, align 8, !tbaa !24
  store i8 %i.u, ptr %i.v, align 1, !tbaa !16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.y = trunc nuw i64 %i.o to i8
  %i.z = tail call i32 %i.x(ptr noundef nonnull %i.f, i8 noundef zeroext %i.y) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = load ptr, ptr @osp, align 8, !tbaa !22
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -32
  store ptr %i.ab, ptr @osp, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i
  %.1 = phi i32 [ -20, %bb.a ], [ -7, %bb.c ], [ -20, %bb.d ], [ 0, %bb.i ], [ -15, %bb.e ], [ -7, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zreadhexstring(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.stream_s, align 8           ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %2 = trunc i16 %i.e to i8
  %trunc = and i8 %2, -4
  switch i8 %trunc, label %bb.m [
    i8 12, label %bb.b
    i8 52, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.j = load i8, ptr %i.i, align 4, !tbaa !38
  %.not = icmp ne i8 %i.j, 0
  %i.k = and i16 %i.e, 512
  %.not41.not = icmp eq i16 %i.k, 0
  %or.cond = or i1 %.not41.not, %.not
  br i1 %or.cond, label %bb.m, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.m = getelementptr inbounds i8, ptr %0, i64 -6
  %i.n = load i16, ptr %i.m, align 2, !tbaa !21
  %i.o = zext i16 %i.n to i32
  call void @sread_string(ptr noundef nonnull %1, ptr noundef %i.l, i32 noundef %i.o) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.037 = phi ptr [ %i.g, %bb.c ], [ %1, %bb.d ]  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !17
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = and i32 %i.r, 252
  %i.t = icmp eq i32 %i.s, 52
  br i1 %i.t, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.u = and i32 %i.r, 256
  %.not42.not = icmp eq i32 %i.u, 0
  br i1 %.not42.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !21
  %i.y = zext i16 %i.x to i32
  %i.z = call i32 @sreadhex(ptr noundef nonnull %.037, ptr noundef %i.v, i32 noundef %i.y, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13 ; 2 uses
  switch i32 %i.z, label %bb.m [
    i32 1, label %bb.h
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ab = trunc i32 %i.aa to i16
  store i16 %i.ab, ptr %i.w, align 2, !tbaa !21
  %i.ac = load i16, ptr %i.p, align 8, !tbaa !17
  %i.ad = or i16 %i.ac, -32768
  store i16 %i.ad, ptr %i.p, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = icmp eq ptr %.037, %1
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %1, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !40
  %i.ao = add nsw i64 %i.al, %i.an                ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %0, i64 -6 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !21
  %i.ar = trunc i64 %i.ao to i16
  %i.as = sub i16 %i.aq, %i.ar
  store i16 %i.as, ptr %i.ap, align 2, !tbaa !21
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.au = and i64 %i.ao, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  store ptr %i.av, ptr %i.c, align 8, !tbaa !16
  %i.aw = load i16, ptr %i.d, align 8, !tbaa !17
  %i.ax = or i16 %i.aw, -32768
  store i16 %i.ax, ptr %i.d, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.az = load ptr, ptr @ostop, align 8, !tbaa !22
  %.not43 = icmp ugt ptr %i.ay, %i.az             ; 2 uses
  %spec.store.select = select i1 %.not43, ptr %0, ptr %i.ay
  store ptr %spec.store.select, ptr @osp, align 8
  br i1 %.not43, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !41
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.034 = phi ptr [ %i.ay, %bb.j ], [ %0, %bb.k ] ; 2 uses
  %i.ba = trunc nuw nsw i32 %i.z to i16
  %i.bb = sub nuw nsw i16 1, %i.ba
  store i16 %i.bb, ptr %.034, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %.034, i64 8
  store i16 4, ptr %i.bc, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a, %bb.j, %bb.l
  %.3 = phi i32 [ -12, %bb.g ], [ -20, %bb.a ], [ -7, %bb.c ], [ -20, %bb.e ], [ -7, %bb.f ], [ 0, %bb.l ], [ -16, %bb.j ], [ -7, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.3
}

declare void @sread_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sreadhex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zwritehexstring(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = and i16 %i.b, 252
  %.not = icmp eq i16 %i.c, 12
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 10 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.i = load i8, ptr %i.h, align 4, !tbaa !38
  %.not32 = icmp eq i8 %i.i, 0
  %i.j = and i16 %i.b, 256
  %.not33.not = icmp eq i16 %i.j, 0
  %or.cond = or i1 %.not33.not, %.not32
  br i1 %or.cond, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !17
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = and i32 %i.m, 252
  %i.o = icmp eq i32 %i.n, 52
  br i1 %i.o, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.m, 512
  %.not34.not = icmp eq i32 %i.p, 0
  br i1 %.not34.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.r = load i16, ptr %i.q, align 2, !tbaa !21   ; 2 uses
  %.not3536 = icmp eq i16 %i.r, 0
  br i1 %.not3536, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.s = zext i16 %i.r to i32
  %i.t = load ptr, ptr %0, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.m
  %.in = phi i32 [ %i.s, %.lr.ph ], [ %i.w, %bb.m ]
  %.02737 = phi ptr [ %i.t, %.lr.ph ], [ %i.x, %bb.m ] ; 2 uses
  %i.w = add nsw i32 %.in, -1                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02737, i64 1
  %i.y = load i8, ptr %.02737, align 1, !tbaa !16 ; 4 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !28
  %i.ab = icmp ult ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = lshr i8 %i.y, 4
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @.str.11, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !24
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.ai = lshr i8 %i.y, 4
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @.str.11, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = tail call i32 %i.ah(ptr noundef nonnull %i.f, i8 noundef zeroext %i.al) #13 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_0
