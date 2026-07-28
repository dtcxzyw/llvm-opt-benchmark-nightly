inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@t1_builder_init:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @t1_builder_done(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_builder_check_points(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.e = load i16, ptr %i.d, align 2, !tbaa !147
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  %i.h = load i16, ptr %i.g, align 2, !tbaa !150
  %i.i = sext i16 %i.h to i32
  %i.j = add i32 %1, %i.f
  %i.k = add i32 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !151
  %.not = icmp ugt i32 %i.k, %i.m
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.c, i32 noundef %1, i32 noundef 0) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define internal void @t1_builder_add_point(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.d = load i8, ptr %i.c, align 4, !tbaa !107
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !153
  %i.i = sext i16 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !154
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.i
  %i.n = tail call i64 @FT_RoundFix(i64 noundef %1) #19
  %i.o = ashr i64 %i.n, 16
  store i64 %i.o, ptr %i.j, align 8, !tbaa !155
  %i.p = tail call i64 @FT_RoundFix(i64 noundef %2) #19
  %i.q = ashr i64 %i.p, 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !156
  %.not12 = icmp eq i8 %3, 0
  %i.s = select i1 %.not12, i8 2, i8 1
  store i8 %i.s, ptr %i.m, align 1, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !153
  %i.v = add i16 %i.u, 1
  store i16 %i.v, ptr %i.t, align 2, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_builder_add_point1(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.d = load i16, ptr %i.c, align 2, !tbaa !147
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  %i.g = load i16, ptr %i.f, align 2, !tbaa !150
  %i.h = sext i16 %i.g to i32
  %i.i = add nsw i32 %i.e, 1
  %i.j = add nsw i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !151
  %.not.i = icmp ugt i32 %i.j, %i.l
  br i1 %.not.i, label %t1_builder_check_points.exit, label %t1_builder_check_points.exit.thread

t1_builder_check_points.exit:                     ; preds = %bb.a
  %i.m = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef 0) #19 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %t1_builder_check_points.exit.thread, label %bb.c

t1_builder_check_points.exit.thread:              ; preds = %bb.a, %t1_builder_check_points.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !136  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.q = load i8, ptr %i.p, align 4, !tbaa !107
  %.not.i5 = icmp eq i8 %i.q, 0
  br i1 %.not.i5, label %t1_builder_add_point.exit, label %bb.b

bb.b:                                             ; preds = %t1_builder_check_points.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !152
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !153
  %i.v = sext i16 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !154
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.v
  %i.aa = tail call i64 @FT_RoundFix(i64 noundef %1) #19
  %i.ab = ashr i64 %i.aa, 16
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !155
  %i.ac = tail call i64 @FT_RoundFix(i64 noundef %2) #19
  %i.ad = ashr i64 %i.ac, 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !156
  store i8 1, ptr %i.z, align 1, !tbaa !38
  br label %t1_builder_add_point.exit

t1_builder_add_point.exit:                        ; preds = %t1_builder_check_points.exit.thread, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !153
  %i.ah = add i16 %i.ag, 1
  store i16 %i.ah, ptr %i.af, align 2, !tbaa !153
  br label %bb.c

bb.c:                                             ; preds = %t1_builder_add_point.exit, %t1_builder_check_points.exit
  %i.ai = phi i32 [ 0, %t1_builder_add_point.exit ], [ %i.m, %t1_builder_check_points.exit ]
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_builder_add_contour(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.d = load i8, ptr %i.c, align 4, !tbaa !107
  %.not17 = icmp eq i8 %i.d, 0
  br i1 %.not17, label %.sink.split.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !157
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.k = load i16, ptr %i.j, align 8, !tbaa !158
  %i.l = sext i16 %i.k to i32
  %i.m = add nsw i32 %i.i, 1
  %i.n = add nsw i32 %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !159
  %.not18 = icmp ugt i32 %i.n, %i.p
  br i1 %.not18, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 1) #19 ; 2 uses
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d
  %i.r = load i16, ptr %i.b, align 8, !tbaa !160  ; 3 uses
  %i.s = icmp sgt i16 %i.r, 0
  br i1 %i.s, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %.thread
  %i.t = zext nneg i16 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !153
  %i.w = add i16 %i.v, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161
  %1 = add nuw nsw i64 %i.t, 4294967295
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %2
  store i16 %i.w, ptr %3, align 2, !tbaa !44
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.b, %bb.e
  %.pre = load i16, ptr %i.b, align 8, !tbaa !160
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.thread
  %.sink24 = phi i16 [ %i.r, %.thread ], [ %.pre, %.sink.split.sink.split ]
  %i.z = add i16 %.sink24, 1
  store i16 %i.z, ptr %i.b, align 8, !tbaa !160
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.a
  %.0 = phi i32 [ 3, %bb.a ], [ %i.q, %bb.d ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_builder_start_point(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !103
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %t1_builder_add_point1.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %i.a, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 6 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %t1_builder_add_point1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !107
  %.not17.i = icmp eq i8 %i.g, 0
  br i1 %.not17.i, label %.sink.split.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i16, ptr %i.j, align 8, !tbaa !157
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.n = load i16, ptr %i.m, align 8, !tbaa !158
  %i.o = sext i16 %i.n to i32
  %i.p = add nsw i32 %i.l, 1
  %i.q = add nsw i32 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !159
  %.not18.i = icmp ugt i32 %i.q, %i.s
  br i1 %.not18.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef 1) #19 ; 2 uses
  %.not19.i = icmp eq i32 %i.t, 0
  br i1 %.not19.i, label %.thread.i, label %t1_builder_add_point1.exit

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.u = load i16, ptr %i.e, align 8, !tbaa !160  ; 3 uses
  %i.v = icmp sgt i16 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread.i
  %i.w = zext nneg i16 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !153
  %i.z = add i16 %i.y, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  %3 = add nuw nsw i64 %i.w, 4294967295
  %4 = and i64 %3, 4294967295
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %4
  store i16 %i.z, ptr %5, align 2, !tbaa !44
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.f, %bb.c
  %.pre.i = load i16, ptr %i.e, align 8, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.sink.split.i, %.thread.i
  %.sink24.i = phi i16 [ %i.u, %.thread.i ], [ %.pre.i, %.sink.split.sink.split.i ]
  %i.ac = add i16 %.sink24.i, 1
  store i16 %i.ac, ptr %i.e, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 26
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !147
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 98
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !150
  %i.ak = sext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ah, 1
  %i.am = add nsw i32 %i.al, %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !151
  %.not.i.i = icmp ugt i32 %i.am, %i.ao
  br i1 %.not.i.i, label %t1_builder_check_points.exit.i, label %t1_builder_check_points.exit.thread.i

t1_builder_check_points.exit.i:                   ; preds = %bb.g
  %i.ap = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.ae, i32 noundef 1, i32 noundef 0) #19 ; 2 uses
  %.not.i8 = icmp eq i32 %i.ap, 0
  br i1 %.not.i8, label %t1_builder_check_points.exit.thread.i, label %t1_builder_add_point1.exit

t1_builder_check_points.exit.thread.i:            ; preds = %t1_builder_check_points.exit.i, %bb.g
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !136 ; 4 uses
  %i.ar = load i8, ptr %i.f, align 4, !tbaa !107
  %.not.i5.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i5.i, label %t1_builder_add_point.exit.i, label %bb.h

bb.h:                                             ; preds = %t1_builder_check_points.exit.thread.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !152
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !153
  %i.aw = sext i16 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !154
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.aw
  %i.bb = tail call i64 @FT_RoundFix(i64 noundef %1) #19
  %i.bc = ashr i64 %i.bb, 16
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !155
  %i.bd = tail call i64 @FT_RoundFix(i64 noundef %2) #19
  %i.be = ashr i64 %i.bd, 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !156
  store i8 1, ptr %i.ba, align 1, !tbaa !38
  br label %t1_builder_add_point.exit.i

t1_builder_add_point.exit.i:                      ; preds = %bb.h, %t1_builder_check_points.exit.thread.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 2 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !153
  %i.bi = add i16 %i.bh, 1
  store i16 %i.bi, ptr %i.bg, align 2, !tbaa !153
  br label %t1_builder_add_point1.exit

t1_builder_add_point1.exit:                       ; preds = %bb.e, %bb.b, %t1_builder_add_point.exit.i, %t1_builder_check_points.exit.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ap, %t1_builder_check_points.exit.i ], [ 0, %t1_builder_add_point.exit.i ], [ %i.t, %bb.e ], [ 3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @t1_builder_close_contour(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 11 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %i.b, align 8, !tbaa !160  ; 7 uses
  %i.d = icmp slt i16 %i.c, 2
  br i1 %i.d, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.e = zext nneg i16 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161
  %1 = add nuw nsw i64 %i.e, 4294967294
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %2
  %i.h = load i16, ptr %3, align 2, !tbaa !44
  %i.i = sext i16 %i.h to i32
  %i.j = add nsw i32 %i.i, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not33 = icmp eq i16 %i.c, 0
  br i1 %.not33, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !153
  br label %bb.f

bb.d:                                             ; preds = %.thread, %bb.c
  %i.k = phi i32 [ %i.j, %.thread ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !153  ; 2 uses
  %i.n = sext i16 %i.m to i32
  %i.o = icmp eq i32 %i.k, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = add i16 %i.c, -1
  store i16 %i.p, ptr %i.b, align 8, !tbaa !160
  br label %bb.o

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.q = phi i16 [ %i.m, %bb.d ], [ %.pre, %._crit_edge ] ; 7 uses
  %i.r = phi i32 [ %i.k, %bb.d ], [ 0, %._crit_edge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.t = icmp sgt i16 %i.q, 1
  br i1 %i.t, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i16 %i.q to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152  ; 2 uses
  %i.x = sext i32 %i.r to i64
  %i.y = getelementptr inbounds [16 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !154
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1
  %i.af = load i64, ptr %i.y, align 8, !tbaa !155
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !155
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !156
  %i.ak = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !156
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = load i8, ptr %i.ae, align 1, !tbaa !38
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = add nsw i16 %i.q, -1                    ; 2 uses
  store i16 %i.ap, ptr %i.s, align 2, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.j, %bb.i, %bb.f
  %i.aq = phi i16 [ %i.q, %bb.g ], [ %i.q, %bb.h ], [ %i.ap, %bb.j ], [ %i.q, %bb.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.ar = icmp sgt i16 %i.c, 0
  br i1 %i.ar, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.as = sext i16 %i.aq to i32
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  %i.au = icmp eq i32 %i.r, %i.at
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = add nsw i16 %i.c, -1
  store i16 %i.av, ptr %i.b, align 8, !tbaa !160
  %i.aw = add i16 %i.aq, -1
  store i16 %i.aw, ptr %i.s, align 2, !tbaa !153
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ax = trunc i32 %i.at to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !161
  %i.ba = zext nneg i16 %i.c to i64
  %i.bb = getelementptr [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -2
  store i16 %i.ax, ptr %i.bc, align 2, !tbaa !44
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.m, %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @t1_decoder_init(ptr nofree noundef writeonly captures(none) initializes((0, 3000)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i32 noundef %7, ptr noundef %8) #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3000) %0, i8 0, i64 3000, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = tail call ptr @ft_module_get_service(ptr noundef %i.b, ptr noundef nonnull @.str.76, i8 noundef zeroext 1) #19 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store ptr %i.c, ptr %i.d, align 8, !tbaa !163
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.e, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 1, ptr %i.f, align 4, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110
  store ptr %i.j, ptr %0, align 8, !tbaa !122
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %t1_builder_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !134
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !135
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.q, ptr %i.r, align 8, !tbaa !136
  tail call void @FT_GlyphLoader_Rewind(ptr noundef %i.m) #19, !inline_history !170
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.u, ptr %i.v, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !144
  %.not29.i = icmp eq i8 %6, 0
  br i1 %.not29.i, label %t1_builder_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !145
  store ptr %i.z, ptr %i.w, align 8, !tbaa !144
  br label %t1_builder_init.exit

t1_builder_init.exit:                             ; preds = %bb.b, %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) @t1_builder_funcs, i64 64, i1 false), !tbaa.struct !146
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !171
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2696
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !172
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2704
  store ptr %4, ptr %i.ag, align 8, !tbaa !173
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store i32 %7, ptr %i.ah, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store ptr %5, ptr %i.ai, align 8, !tbaa !175
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store ptr %8, ptr %i.aj, align 8, !tbaa !176
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2936
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) @t1_decoder_funcs, i64 32, i1 false), !tbaa.struct !21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %t1_builder_init.exit
  %.1 = phi i32 [ 0, %t1_builder_init.exit ], [ 7, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @t1_decoder_done(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !177
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %t1_builder_done.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !tbaa.struct !99
  br label %t1_builder_done.exit

end_hunk_0
begin_hunk_1_@cf2_decoder_parse_charstrings:bb.a
  br i1 %i.nv, label %bb.bh, label %.loopexit230.i.i.i

bb.bh:                                            ; preds = %._crit_edge243.i.i.i
  %i.or = load i64, ptr %i.nw, align 8, !tbaa !42
  %i.os = trunc i64 %i.or to i32
  %i.ot = shl i32 %i.os, 16                       ; 2 uses
  %i.ou = sub i32 %i.oa, %i.ot
  %i.ov = call i32 @llvm.abs.i32(i32 %i.ou, i1 false) ; 2 uses
  %i.ow = icmp slt i32 %i.ov, %.2.i.i.i
  %i.ox = icmp slt i32 %i.ov, %i.nq
  %or.cond212.i.i.i = select i1 %i.ow, i1 %i.ox, i1 false
  br i1 %or.cond212.i.i.i, label %bb.bi, label %.loopexit230.i.i.i

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.ot, ptr %i.nz, align 4, !tbaa !347
  br label %.loopexit230.i.i.i

bb.bj:                                            ; preds = %bb.bl, %.lr.ph249.i.i.i
  %.3248.i.i.i = phi i32 [ 2147483647, %.lr.ph249.i.i.i ], [ %.4.i.i.i, %bb.bl ] ; 2 uses
  %.1186247.i.i.i = phi i64 [ 2, %.lr.ph249.i.i.i ], [ %i.pi, %bb.bl ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.1186247.i.i.i
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !42
  %i.pa = trunc i64 %i.oz to i32
  %i.pb = shl i32 %i.pa, 16
  %i.pc = add nsw i32 %i.pb, %i.oe                ; 3 uses
  %i.pd = sub i32 %i.oa, %i.pc
  %i.pe = call i32 @llvm.abs.i32(i32 %i.pd, i1 false) ; 3 uses
  %i.pf = icmp slt i32 %i.pe, %.3248.i.i.i
  %i.pg = icmp slt i32 %i.pe, %i.nq
  %or.cond213.i.i.i = select i1 %i.pf, i1 %i.pg, i1 false
  br i1 %or.cond213.i.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.pc, ptr %i.nz, align 4, !tbaa !347
  %i.ph = icmp eq i32 %i.oa, %i.pc
  br i1 %i.ph, label %.loopexit230.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.4.i.i.i = phi i32 [ %i.pe, %bb.bk ], [ %.3248.i.i.i, %bb.bj ]
  %i.pi = add nuw nsw i64 %.1186247.i.i.i, 2      ; 2 uses
  %i.pj = icmp samesign ult i64 %i.pi, %i.ix
  br i1 %i.pj, label %bb.bj, label %.loopexit230.i.i.i, !llvm.loop !352

.loopexit230.i.i.i:                               ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %._crit_edge243.i.i.i, %.preheader.i.i.i
  %i.pk = add nuw nsw i64 %.2194251.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.pk, %i.nt
  br i1 %exitcond.not.i.i.i, label %._crit_edge254.i.i.i, label %bb.be, !llvm.loop !353

._crit_edge254.i.i.i:                             ; preds = %.loopexit230.i.i.i, %._crit_edge.i.i.i
  %i.pl = icmp sgt i32 %.3190.lcssa.i.i.i, 0
  %.pre270.i.i.i = load i32, ptr %i.ia, align 4, !tbaa !354 ; 2 uses
  br i1 %i.pl, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %._crit_edge254.i.i.i
  %i.pm = sext i32 %.pre270.i.i.i to i64
  %i.pn = zext nneg i32 %.3190.lcssa.i.i.i to i64 ; 2 uses
  %i.po = call i64 @FT_DivFix(i64 noundef 65536, i64 noundef %i.pn) #19
  %i.pp = icmp slt i64 %i.po, %i.pm
  br i1 %i.pp, label %bb.bn, label %._crit_edge269.i.i.i

._crit_edge269.i.i.i:                             ; preds = %bb.bm
  %.pre.i.i.i = load i32, ptr %i.ia, align 4, !tbaa !354
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.pq = call i64 @FT_DivFix(i64 noundef 65536, i64 noundef %i.pn) #19
  %i.pr = trunc i64 %i.pq to i32                  ; 2 uses
  store i32 %i.pr, ptr %i.ia, align 4, !tbaa !354
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge269.i.i.i, %._crit_edge254.i.i.i
  %i.ps = phi i32 [ %.pre.i.i.i, %._crit_edge269.i.i.i ], [ %i.pr, %bb.bn ], [ %.pre270.i.i.i, %._crit_edge254.i.i.i ] ; 2 uses
  %i.pt = load i32, ptr %i.hw, align 8, !tbaa !326 ; 2 uses
  %i.pu = icmp slt i32 %i.pt, %i.ps
  br i1 %i.pu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pv = getelementptr inbounds nuw i8, ptr %.068, i64 320
  store i8 1, ptr %i.pv, align 8, !tbaa !355
  %i.pw = sext i32 %i.pt to i64
  %i.px = sext i32 %i.ps to i64
  %i.py = call i64 @FT_MulDiv(i64 noundef 39322, i64 noundef %i.pw, i64 noundef %i.px) #19
  %i.pz = trunc i64 %i.py to i32
  %i.qa = sub i32 39322, %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %.068, i64 336
  %spec.store.select.i.i.i = call i32 @llvm.smin.i32(i32 %i.qa, i32 32767)
  store i32 %spec.store.select.i.i.i, ptr %i.qb, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.qc = load i8, ptr %i.gb, align 2, !tbaa !313
  %.not.i.i.i = icmp eq i8 %i.qc, 0
  br i1 %.not.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qd = getelementptr inbounds nuw i8, ptr %.068, i64 336
  store i32 0, ptr %i.qd, align 8, !tbaa !356
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.qe = load i32, ptr %i.nr, align 4, !tbaa !342 ; 2 uses
  %i.qf = zext i32 %i.qe to i64
  %.not262.i.i.i = icmp eq i32 %i.qe, 0
  br i1 %.not262.i.i.i, label %cf2_font_setup.exit.i, label %.lr.ph257.i.i.i

.lr.ph257.i.i.i:                                  ; preds = %bb.bs
  %i.qg = getelementptr inbounds nuw i8, ptr %.068, i64 408
  %i.qh = getelementptr inbounds nuw i8, ptr %.068, i64 336
  %i.qi = load i32, ptr %i.hw, align 8, !tbaa !326
  %i.qj = sext i32 %i.qi to i64
  %i.qk = load i32, ptr %i.qh, align 8, !tbaa !356 ; 2 uses
  %i.ql = add i32 %i.qk, 32768
  %invariant.op = sub i32 32768, %i.qk
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.lr.ph257.i.i.i
  %.3195255.i.i.i = phi i64 [ 0, %.lr.ph257.i.i.i ], [ %i.ra, %bb.bt ] ; 2 uses
  %i.qm = getelementptr inbounds nuw [20 x i8], ptr %i.qg, i64 %.3195255.i.i.i ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qo = load i8, ptr %i.qn, align 4, !tbaa !346
  %.not208.i.i.i = icmp eq i8 %i.qo, 0
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !347
  %i.qr = sext i32 %i.qq to i64
  %i.qs = mul nsw i64 %i.qr, %i.qj                ; 2 uses
  %i.qt = ashr i64 %i.qs, 63
  %i.qu = add nsw i64 %i.qs, 32768
  %i.qv = add nsw i64 %i.qu, %i.qt
  %i.qw = lshr i64 %i.qv, 16
  %i.qx = trunc i64 %i.qw to i32                  ; 2 uses
  %i.qy = add i32 %i.ql, %i.qx
  %.reass.i.reass.i.reass.reass = add i32 %i.qx, %invariant.op
  %.sink268.in.i.i.i = select i1 %.not208.i.i.i, i32 %i.qy, i32 %.reass.i.reass.i.reass.reass
  %.sink268.i.i.i = and i32 %.sink268.in.i.i.i, -65536
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  store i32 %.sink268.i.i.i, ptr %i.qz, align 4, !tbaa !357
  %i.ra = add nuw nsw i64 %.3195255.i.i.i, 1      ; 2 uses
  %exitcond264.not.i.i.i = icmp eq i64 %i.ra, %i.qf
  br i1 %exitcond264.not.i.i.i, label %cf2_font_setup.exit.i, label %bb.bt, !llvm.loop !358

cf2_font_setup.exit.i:                            ; preds = %bb.bt, %bb.bs, %bb.av, %bb.ad
  %.pr.i = load i32, ptr %i.di, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i85 = icmp eq i32 %.pr.i, 0
  br i1 %.not.i85, label %.peel.begin.i, label %cf2_getGlyphOutline.exit.thread

.peel.begin.i:                                    ; preds = %cf2_font_setup.exit.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.068, i64 308 ; 2 uses
  store i8 0, ptr %i.rb, align 4, !tbaa !324
  %i.rc = getelementptr inbounds nuw i8, ptr %.068, i64 257
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !323
  %i.re = getelementptr inbounds nuw i8, ptr %.068, i64 208 ; 3 uses
  %i.rf = load ptr, ptr %i.ae, align 8, !tbaa !359
  store i32 0, ptr %i.re, align 8, !tbaa !360
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !361
  call void @FT_GlyphLoader_Rewind(ptr noundef %i.rh) #19
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %.068, ptr noundef nonnull readonly %4, ptr noundef nonnull %i.ad, ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %i.c)
  %i.ri = load i32, ptr %i.di, align 8, !tbaa !3
  %.not19.peel.i = icmp eq i32 %i.ri, 0
  br i1 %.not19.peel.i, label %bb.bu, label %cf2_getGlyphOutline.exit.thread

bb.bu:                                            ; preds = %.peel.begin.i
  %i.rj = icmp eq i8 %i.rd, 0
  br i1 %i.rj, label %.loopexit29.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rk = load i32, ptr %i.re, align 8, !tbaa !362
  %i.rl = icmp sgt i32 %i.rk, -1
  br i1 %i.rl, label %.loopexit29.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i8 1, ptr %i.rb, align 4, !tbaa !324
  %i.rm = load ptr, ptr %i.ae, align 8, !tbaa !359
  store i32 0, ptr %i.re, align 8, !tbaa !360
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !361
  call void @FT_GlyphLoader_Rewind(ptr noundef %i.ro) #19
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %.068, ptr noundef nonnull readonly %4, ptr noundef nonnull %i.ad, ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %i.c)
  %i.rp = load i32, ptr %i.di, align 8, !tbaa !3
  %.not19.i = icmp eq i32 %i.rp, 0
  br i1 %.not19.i, label %.loopexit29.i, label %cf2_getGlyphOutline.exit.thread

.loopexit29.i:                                    ; preds = %bb.bw, %bb.bv, %bb.bu
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !359 ; 2 uses
  %i.rq = getelementptr i8, ptr %.val.i, i64 40
  %.val.i21.i = load ptr, ptr %i.rq, align 8, !tbaa !81 ; 11 uses
  %.not.i.i22.i = icmp eq ptr %.val.i21.i, null
  br i1 %.not.i.i22.i, label %cf2_getGlyphOutline.exit, label %bb.bx

bb.bx:                                            ; preds = %.loopexit29.i
  %i.rr = load i16, ptr %.val.i21.i, align 8, !tbaa !160 ; 7 uses
  %i.rs = icmp slt i16 %i.rr, 2
  br i1 %i.rs, label %bb.by, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bx
  %i.rt = zext nneg i16 %i.rr to i64
  %i.ru = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 24
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !161
  %6 = add nuw nsw i64 %i.rt, 4294967294
  %7 = and i64 %6, 4294967295
  %8 = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %7
  %i.rw = load i16, ptr %8, align 2, !tbaa !44
  %i.rx = sext i16 %i.rw to i32
  %i.ry = add nsw i32 %i.rx, 1
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.not33.i.i.i = icmp eq i16 %i.rr, 0
  br i1 %.not33.i.i.i, label %._crit_edge.i.i23.i, label %bb.bz

._crit_edge.i.i23.i:                              ; preds = %bb.by
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2
  %.pre.i.i24.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2, !tbaa !153
  br label %bb.cb

bb.bz:                                            ; preds = %bb.by, %.thread.i.i.i
  %i.rz = phi i32 [ %i.ry, %.thread.i.i.i ], [ 0, %bb.by ] ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !153 ; 2 uses
  %i.sc = sext i16 %i.sb to i32
  %i.sd = icmp eq i32 %i.rz, %i.sc
  br i1 %i.sd, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.se = add i16 %i.rr, -1
  store i16 %i.se, ptr %.val.i21.i, align 8, !tbaa !160
  br label %cf2_getGlyphOutline.exit

bb.cb:                                            ; preds = %bb.bz, %._crit_edge.i.i23.i
  %i.sf = phi i16 [ %i.sb, %bb.bz ], [ %.pre.i.i24.i, %._crit_edge.i.i23.i ] ; 7 uses
  %i.sg = phi i32 [ %i.rz, %bb.bz ], [ 0, %._crit_edge.i.i23.i ] ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2 ; 2 uses
  %i.si = icmp sgt i16 %i.sf, 1
  br i1 %i.si, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.sj = zext nneg i16 %i.sf to i64              ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !152 ; 2 uses
  %i.sm = sext i32 %i.sg to i64
  %i.sn = getelementptr inbounds [16 x i8], ptr %i.sl, i64 %i.sm ; 2 uses
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sl, i64 %i.sj ; 2 uses
  %i.sp = getelementptr inbounds i8, ptr %i.so, i64 -16
  %i.sq = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !154
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sj
  %i.st = getelementptr inbounds i8, ptr %i.ss, i64 -1
  %i.su = load i64, ptr %i.sn, align 8, !tbaa !155
  %i.sv = load i64, ptr %i.sp, align 8, !tbaa !155
  %i.sw = icmp eq i64 %i.su, %i.sv
  br i1 %i.sw, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !156
  %i.sz = getelementptr inbounds i8, ptr %i.so, i64 -8
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !156
  %i.tb = icmp eq i64 %i.sy, %i.ta
  br i1 %i.tb, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.tc = load i8, ptr %i.st, align 1, !tbaa !38
  %i.td = icmp eq i8 %i.tc, 1
  br i1 %i.td, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.te = add nsw i16 %i.sf, -1                   ; 2 uses
  store i16 %i.te, ptr %i.sh, align 2, !tbaa !153
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %i.tf = phi i16 [ %i.sf, %bb.cc ], [ %i.sf, %bb.cd ], [ %i.te, %bb.cf ], [ %i.sf, %bb.ce ], [ %i.sf, %bb.cb ] ; 2 uses
  %i.tg = icmp sgt i16 %i.rr, 0
  br i1 %i.tg, label %bb.ch, label %cf2_getGlyphOutline.exit

bb.ch:                                            ; preds = %bb.cg
  %i.th = sext i16 %i.tf to i32
  %i.ti = add nsw i32 %i.th, -1                   ; 2 uses
  %i.tj = icmp eq i32 %i.sg, %i.ti
  br i1 %i.tj, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.tk = add nsw i16 %i.rr, -1
  store i16 %i.tk, ptr %.val.i21.i, align 8, !tbaa !160
  %i.tl = add i16 %i.tf, -1
  store i16 %i.tl, ptr %i.sh, align 2, !tbaa !153
  br label %cf2_getGlyphOutline.exit

bb.cj:                                            ; preds = %bb.ch
  %i.tm = trunc i32 %i.ti to i16
  %i.tn = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 24
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !161
  %i.tp = zext nneg i16 %i.rr to i64
  %i.tq = getelementptr [2 x i8], ptr %i.to, i64 %i.tp
  %i.tr = getelementptr i8, ptr %i.tq, i64 -2
  store i16 %i.tm, ptr %i.tr, align 2, !tbaa !44
  br label %cf2_getGlyphOutline.exit

cf2_getGlyphOutline.exit.thread:                  ; preds = %cf2_font_setup.exit.thread.i, %cf2_font_setup.exit.i, %.peel.begin.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %cf2_setGlyphWidth.exit

cf2_getGlyphOutline.exit:                         ; preds = %.loopexit29.i, %bb.ca, %bb.cg, %bb.ci, %bb.cj
  %i.ts = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !361
  call void @FT_GlyphLoader_Add(ptr noundef %i.tt) #19
  %.pr = load i32, ptr %i.di, align 8, !tbaa !3
  %i.tu = load i32, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not83 = icmp eq i32 %.pr, 0
  br i1 %.not83, label %bb.ck, label %cf2_setGlyphWidth.exit

bb.ck:                                            ; preds = %cf2_getGlyphOutline.exit
  %.val84 = load ptr, ptr %i.ae, align 8, !tbaa !359 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.val84, i64 92
  %i.tw = load i8, ptr %i.tv, align 4, !tbaa !195
  %.not.i86 = icmp eq i8 %i.tw, 0
  br i1 %.not.i86, label %bb.cl, label %cf2_setGlyphWidth.exit

bb.cl:                                            ; preds = %bb.ck
  %i.tx = add i32 %i.tu, 32768
  %i.ty = lshr i32 %i.tx, 16
  %i.tz = zext nneg i32 %i.ty to i64
  %sext.i = shl nuw i64 %i.tz, 48
  %i.ua = ashr exact i64 %sext.i, 48
  %i.ub = getelementptr inbounds nuw i8, ptr %.val84, i64 1072
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !363
  store i64 %i.ua, ptr %i.uc, align 8, !tbaa !42
  br label %cf2_setGlyphWidth.exit

cf2_setGlyphWidth.exit:                           ; preds = %bb.q, %bb.p, %bb.r, %bb.cl, %bb.ck, %cf2_getGlyphOutline.exit.thread, %cf2_getGlyphOutline.exit
  %.0 = phi i32 [ 3, %cf2_getGlyphOutline.exit.thread ], [ 0, %bb.cl ], [ 3, %cf2_getGlyphOutline.exit ], [ 0, %bb.ck ], [ 164, %bb.r ], [ 36, %bb.p ], [ 164, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.cm

bb.cm:                                            ; preds = %bb.d, %bb.b, %cf2_setGlyphWidth.exit
  %.1 = phi i32 [ %.0, %cf2_setGlyphWidth.exit ], [ 8, %bb.b ], [ 64, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @afm_parser_init(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call ptr @ft_mem_alloc(ptr noundef %1, i64 noundef 32, ptr noundef nonnull %i.a) #19 ; 5 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !364
  store ptr %2, ptr %i.b, align 8, !tbaa !366
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !367
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 2, ptr %i.f, align 8, !tbaa !368
  store ptr %1, ptr %0, align 8, !tbaa !369
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !373
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal void @afm_parser_done(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !369
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !373
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef %i.c) #19
  store ptr null, ptr %i.b, align 8, !tbaa !373
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @afm_parser_parse(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca [4 x %struct.AFM_ValueRec_], align 16 ; 12 uses
  %3 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca [5 x %struct.AFM_ValueRec_], align 16 ; 15 uses
  %5 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %6 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %7 = alloca [4 x %struct.AFM_ValueRec_], align 16 ; 19 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !369    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !374  ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %afm_parser_next_key.exit.thread, label %bb.b
end_hunk_1
begin_hunk_2_@cff_builder_init:bb.a
bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) @cff_builder_funcs, i64 64, i1 false), !tbaa.struct !146
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cff_builder_done(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !407  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !412
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_check_points(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !411  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.e = load i16, ptr %i.d, align 2, !tbaa !147
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  %i.h = load i16, ptr %i.g, align 2, !tbaa !150
  %i.i = sext i16 %i.h to i32
  %i.j = add i32 %1, %i.f
  %i.k = add i32 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !151
  %.not = icmp ugt i32 %i.k, %i.m
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.c, i32 noundef %1, i32 noundef 0) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cff_builder_add_point(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.d = load i8, ptr %i.c, align 1, !tbaa !405
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !153
  %i.i = sext i16 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !154
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.i
  %i.n = ashr i64 %1, 10
  store i64 %i.n, ptr %i.j, align 8, !tbaa !155
  %i.o = ashr i64 %2, 10
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !156
  %.not12 = icmp eq i8 %3, 0
  %i.q = select i1 %.not12, i8 2, i8 1
  store i8 %i.q, ptr %i.m, align 1, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !153
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 2, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_builder_add_point1(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.d = load i16, ptr %i.c, align 2, !tbaa !147
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  %i.g = load i16, ptr %i.f, align 2, !tbaa !150
  %i.h = sext i16 %i.g to i32
  %i.i = add nsw i32 %i.e, 1
  %i.j = add nsw i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !151
  %.not.i = icmp ugt i32 %i.j, %i.l
  br i1 %.not.i, label %cff_check_points.exit, label %cff_check_points.exit.thread

cff_check_points.exit:                            ; preds = %bb.a
  %i.m = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef 0) #19 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %cff_check_points.exit.thread, label %bb.c

cff_check_points.exit.thread:                     ; preds = %bb.a, %cff_check_points.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !413  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.q = load i8, ptr %i.p, align 1, !tbaa !405
  %.not.i5 = icmp eq i8 %i.q, 0
  br i1 %.not.i5, label %cff_builder_add_point.exit, label %bb.b

bb.b:                                             ; preds = %cff_check_points.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !152
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !153
  %i.v = sext i16 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !154
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.v
  %i.aa = ashr i64 %1, 10
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !155
  %i.ab = ashr i64 %2, 10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !156
  store i8 1, ptr %i.z, align 1, !tbaa !38
  br label %cff_builder_add_point.exit

cff_builder_add_point.exit:                       ; preds = %cff_check_points.exit.thread, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !153
  %i.af = add i16 %i.ae, 1
  store i16 %i.af, ptr %i.ad, align 2, !tbaa !153
  br label %bb.c

bb.c:                                             ; preds = %cff_builder_add_point.exit, %cff_check_points.exit
  %i.ag = phi i32 [ 0, %cff_builder_add_point.exit ], [ %i.m, %cff_check_points.exit ]
  ret i32 %i.ag
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_builder_add_contour(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.d = load i8, ptr %i.c, align 1, !tbaa !405
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.sink.split.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !411  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !157
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.k = load i16, ptr %i.j, align 8, !tbaa !158
  %i.l = sext i16 %i.k to i32
  %i.m = add nsw i32 %i.i, 1
  %i.n = add nsw i32 %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !159
  %.not15 = icmp ugt i32 %i.n, %i.p
  br i1 %.not15, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 1) #19 ; 2 uses
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b, %bb.c
  %i.r = load i16, ptr %i.b, align 8, !tbaa !160  ; 3 uses
  %i.s = icmp sgt i16 %i.r, 0
  br i1 %i.s, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %.thread
  %i.t = zext nneg i16 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !153
  %i.w = add i16 %i.v, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161
  %1 = add nuw nsw i64 %i.t, 4294967295
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %2
  store i16 %i.w, ptr %3, align 2, !tbaa !44
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.a, %bb.d
  %.pre = load i16, ptr %i.b, align 8, !tbaa !160
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.thread
  %.sink20 = phi i16 [ %i.r, %.thread ], [ %.pre, %.sink.split.sink.split ]
  %i.z = add i16 %.sink20, 1
  store i16 %i.z, ptr %i.b, align 8, !tbaa !160
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ %i.q, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_builder_start_point(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !87
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %cff_builder_add_contour.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !413  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !405
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %.sink.split.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !411  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i16, ptr %i.i, align 8, !tbaa !157
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.m = load i16, ptr %i.l, align 8, !tbaa !158
  %i.n = sext i16 %i.m to i32
  %i.o = add nsw i32 %i.k, 1
  %i.p = add nsw i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !159
  %.not15.i = icmp ugt i32 %i.p, %i.r
  br i1 %.not15.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef 1) #19 ; 2 uses
  %.not16.i = icmp eq i32 %i.s, 0
  br i1 %.not16.i, label %.thread.i, label %cff_builder_add_contour.exit

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.t = load i16, ptr %i.d, align 8, !tbaa !160  ; 3 uses
  %i.u = icmp sgt i16 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.i
  %i.v = zext nneg i16 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !153
  %i.y = add i16 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161
  %3 = add nuw nsw i64 %i.v, 4294967295
  %4 = and i64 %3, 4294967295
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %4
  store i16 %i.y, ptr %5, align 2, !tbaa !44
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.e, %bb.b
  %.pre.i = load i16, ptr %i.d, align 8, !tbaa !160
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %.sink.split.sink.split.i
  %.sink20.i = phi i16 [ %i.t, %.thread.i ], [ %.pre.i, %.sink.split.sink.split.i ]
  %i.ab = add i16 %.sink20.i, 1
  store i16 %i.ab, ptr %i.d, align 8, !tbaa !160
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !411 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 26
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !147
  %i.ag = sext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 98
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !150
  %i.aj = sext i16 %i.ai to i32
  %i.ak = add nsw i32 %i.ag, 1
  %i.al = add nsw i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !151
  %.not.i.i = icmp ugt i32 %i.al, %i.an
  br i1 %.not.i.i, label %cff_check_points.exit.i, label %cff_check_points.exit.thread.i

cff_check_points.exit.i:                          ; preds = %bb.f
  %i.ao = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.ad, i32 noundef 1, i32 noundef 0) #19 ; 2 uses
  %.not.i9 = icmp eq i32 %i.ao, 0
  br i1 %.not.i9, label %cff_check_points.exit.thread.i, label %cff_builder_add_contour.exit

cff_check_points.exit.thread.i:                   ; preds = %cff_check_points.exit.i, %bb.f
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !413 ; 4 uses
  %i.aq = load i8, ptr %i.e, align 1, !tbaa !405
  %.not.i5.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i5.i, label %cff_builder_add_point.exit.i, label %bb.g

bb.g:                                             ; preds = %cff_check_points.exit.thread.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !152
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !153
  %i.av = sext i16 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !154
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.av
  %i.ba = ashr i64 %1, 10
  store i64 %i.ba, ptr %i.aw, align 8, !tbaa !155
  %i.bb = ashr i64 %2, 10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !156
  store i8 1, ptr %i.az, align 1, !tbaa !38
  br label %cff_builder_add_point.exit.i

cff_builder_add_point.exit.i:                     ; preds = %bb.g, %cff_check_points.exit.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 2 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !153
  %i.bf = add i16 %i.be, 1
  store i16 %i.bf, ptr %i.bd, align 2, !tbaa !153
  br label %cff_builder_add_contour.exit

cff_builder_add_contour.exit:                     ; preds = %cff_builder_add_point.exit.i, %cff_check_points.exit.i, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.d ], [ 0, %cff_builder_add_point.exit.i ], [ %i.ao, %cff_check_points.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cff_builder_close_contour(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 11 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %i.b, align 8, !tbaa !160  ; 7 uses
  %i.d = icmp slt i16 %i.c, 2
  br i1 %i.d, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.e = zext nneg i16 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161
  %1 = add nuw nsw i64 %i.e, 4294967294
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %2
  %i.h = load i16, ptr %3, align 2, !tbaa !44
  %i.i = sext i16 %i.h to i32
  %i.j = add nsw i32 %i.i, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not33 = icmp eq i16 %i.c, 0
  br i1 %.not33, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !153
  br label %bb.f

bb.d:                                             ; preds = %.thread, %bb.c
  %i.k = phi i32 [ %i.j, %.thread ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !153  ; 2 uses
  %i.n = sext i16 %i.m to i32
  %i.o = icmp eq i32 %i.k, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = add i16 %i.c, -1
  store i16 %i.p, ptr %i.b, align 8, !tbaa !160
  br label %bb.o

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.q = phi i16 [ %i.m, %bb.d ], [ %.pre, %._crit_edge ] ; 7 uses
  %i.r = phi i32 [ %i.k, %bb.d ], [ 0, %._crit_edge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.t = icmp sgt i16 %i.q, 1
  br i1 %i.t, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i16 %i.q to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152  ; 2 uses
  %i.x = sext i32 %i.r to i64
  %i.y = getelementptr inbounds [16 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !154
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1
  %i.af = load i64, ptr %i.y, align 8, !tbaa !155
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !155
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !156
  %i.ak = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !156
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = load i8, ptr %i.ae, align 1, !tbaa !38
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = add nsw i16 %i.q, -1                    ; 2 uses
  store i16 %i.ap, ptr %i.s, align 2, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.j, %bb.i, %bb.f
  %i.aq = phi i16 [ %i.q, %bb.g ], [ %i.q, %bb.h ], [ %i.ap, %bb.j ], [ %i.q, %bb.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.ar = icmp sgt i16 %i.c, 0
  br i1 %i.ar, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.as = sext i16 %i.aq to i32
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  %i.au = icmp eq i32 %i.r, %i.at
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = add nsw i16 %i.c, -1
  store i16 %i.av, ptr %i.b, align 8, !tbaa !160
  %i.aw = add i16 %i.aq, -1
  store i16 %i.aw, ptr %i.s, align 2, !tbaa !153
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ax = trunc i32 %i.at to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !161
  %i.ba = zext nneg i16 %i.c to i64
  %i.bb = getelementptr [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -2
  store i16 %i.ax, ptr %i.bc, align 2, !tbaa !44
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.m, %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cff_decoder_init(ptr nofree noundef writeonly captures(none) initializes((0, 1520)) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1520) %0, i8 0, i64 1520, i1 false)
  store i8 1, ptr %i.c, align 1, !tbaa !405
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !406
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !407
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !408
  store ptr %i.g, ptr %0, align 8, !tbaa !409
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %cff_builder_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !410
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !131  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !411
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.l, ptr %i.m, align 8, !tbaa !412
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %i.o, align 8, !tbaa !413
  tail call void @FT_GlyphLoader_Rewind(ptr noundef %i.j) #19, !inline_history !420
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.r = icmp ne i8 %4, 0
  %i.s = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.s, %i.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br i1 %or.cond.i, label %bb.c, label %cff_builder_init.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !137
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !141  ; 2 uses
  %.not37.i = icmp eq ptr %i.v, null
  br i1 %.not37.i, label %cff_builder_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !414
  store ptr %i.w, ptr %i.p, align 8, !tbaa !417
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !410
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !145
  store ptr %i.z, ptr %i.q, align 8, !tbaa !418
  br label %cff_builder_init.exit

cff_builder_init.exit:                            ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) @cff_builder_funcs, i64 64, i1 false), !tbaa.struct !146
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.b, ptr %i.ac, align 8, !tbaa !421
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !424 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1444
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !425
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !426
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !427
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1700
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !428
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %cff_compute_bias.exit, label %bb.e

bb.e:                                             ; preds = %cff_builder_init.exit
  %i.am = icmp ult i32 %i.ae, 1240
  br i1 %i.am, label %cff_compute_bias.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = icmp ult i32 %i.ae, 33900
  %..i = select i1 %i.an, i32 1131, i32 32768
  br label %cff_compute_bias.exit

cff_compute_bias.exit:                            ; preds = %cff_builder_init.exit, %bb.e, %bb.f
  %.0.i = phi i32 [ 107, %bb.e ], [ 0, %cff_builder_init.exit ], [ %..i, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1452
  store i32 %.0.i, ptr %i.ao, align 4, !tbaa !429
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1484
  store i32 %5, ptr %i.ap, align 4, !tbaa !430
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1504
  store ptr %6, ptr %i.aq, align 8, !tbaa !431
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1512
  store ptr %7, ptr %i.ar, align 8, !tbaa !432
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @cff_decoder_prepare(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) #0 {
bb.a:
end_hunk_2
begin_hunk_3_@ps_tofixedarray:bb.a
  br i1 %i.as, label %.lr.ph.i.us50, label %skip_spaces.exit.us61, !llvm.loop !40

skip_spaces.exit.us61:                            ; preds = %skip_comment.exit.i.us59, %.lr.ph.i.us50
  %storemerge.lcssa.i.us62 = phi ptr [ %i.ar, %skip_comment.exit.i.us59 ], [ %storemerge8.i.us51, %.lr.ph.i.us50 ] ; 7 uses
  store ptr %storemerge.lcssa.i.us62, ptr %i.a, align 8, !tbaa !26
  %.not31.us63 = icmp ult ptr %storemerge.lcssa.i.us62, %1
  br i1 %.not31.us63, label %bb.l, label %.thread41

bb.l:                                             ; preds = %skip_spaces.exit.us61
  %i.at = load i8, ptr %storemerge.lcssa.i.us62, align 1, !tbaa !38
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %.split46.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not33.us64 = icmp sgt i32 %2, 0
  br i1 %.not33.us64, label %.then.us, label %.thread41

.then.us:                                         ; preds = %bb.m
  %i.av = call fastcc i64 @PS_Conv_ToFixed(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.e)
  store i64 %i.av, ptr %3, align 8, !tbaa !42
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ax = icmp eq ptr %storemerge.lcssa.i.us62, %i.aw
  %spec.select87 = select i1 %i.ax, i32 -1, i32 1
  br label %.thread41

.split.split:                                     ; preds = %.thread
  br i1 %i.j, label %.lr.ph.i.preheader, label %.thread41

.lr.ph.i.preheader:                               ; preds = %.split.split
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %bb.r ] ; 5 uses
  %i.ay = phi ptr [ %i.g, %.lr.ph.i.preheader ], [ %i.bn, %bb.r ]
  br label %bb.n

bb.n:                                             ; preds = %skip_comment.exit.i, %.lr.ph.i
  %storemerge8.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.be, %skip_comment.exit.i ] ; 11 uses
  %i.az = load i8, ptr %storemerge8.i, align 1, !tbaa !38
  switch i8 %i.az, label %skip_spaces.exit [
    i8 32, label %skip_comment.exit.i
    i8 13, label %skip_comment.exit.i
    i8 10, label %skip_comment.exit.i
    i8 9, label %skip_comment.exit.i
    i8 12, label %skip_comment.exit.i
    i8 0, label %skip_comment.exit.i
    i8 37, label %.lr.ph.preheader.i.i
  ]

.lr.ph.preheader.i.i:                             ; preds = %bb.n
  %i.ba = ptrtoaddr ptr %storemerge8.i to i64
  %i.bb = sub i64 %i.h, %i.ba
  %scevgep.i.i = getelementptr i8, ptr %storemerge8.i, i64 %i.bb
  br label %.lr.ph.i.i

.lr.ph.ithread-pre-split.i:                       ; preds = %bb.o
  %.pr.i = load i8, ptr %i.bd, align 1, !tbaa !38
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.ithread-pre-split.i, %.lr.ph.preheader.i.i
  %i.bc = phi i8 [ %.pr.i, %.lr.ph.ithread-pre-split.i ], [ 37, %.lr.ph.preheader.i.i ]
  %.09.i.i = phi ptr [ %i.bd, %.lr.ph.ithread-pre-split.i ], [ %storemerge8.i, %.lr.ph.preheader.i.i ] ; 3 uses
  switch i8 %i.bc, label %bb.o [
    i8 13, label %skip_comment.exit.i
    i8 10, label %skip_comment.exit.i
  ]

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1 ; 3 uses
  %exitcond.not.i.i = icmp eq ptr %i.bd, %1
  br i1 %exitcond.not.i.i, label %skip_comment.exit.i, label %.lr.ph.ithread-pre-split.i, !llvm.loop !39

skip_comment.exit.i:                              ; preds = %bb.o, %.lr.ph.i.i, %.lr.ph.i.i, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %.0.i = phi ptr [ %storemerge8.i, %bb.n ], [ %storemerge8.i, %bb.n ], [ %storemerge8.i, %bb.n ], [ %storemerge8.i, %bb.n ], [ %storemerge8.i, %bb.n ], [ %storemerge8.i, %bb.n ], [ %scevgep.i.i, %bb.o ], [ %.09.i.i, %.lr.ph.i.i ], [ %.09.i.i, %.lr.ph.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 3 uses
  %i.bf = icmp ult ptr %i.be, %1
  br i1 %i.bf, label %bb.n, label %skip_spaces.exit, !llvm.loop !40

skip_spaces.exit:                                 ; preds = %bb.n, %skip_comment.exit.i
  %storemerge.lcssa.i = phi ptr [ %i.be, %skip_comment.exit.i ], [ %storemerge8.i, %bb.n ] ; 7 uses
  store ptr %storemerge.lcssa.i, ptr %i.a, align 8, !tbaa !26
  %.not31 = icmp ult ptr %storemerge.lcssa.i, %1
  br i1 %.not31, label %bb.p, label %.thread41.loopexit130.split.loop.exit141

bb.p:                                             ; preds = %skip_spaces.exit
  %i.bg = load i8, ptr %storemerge.lcssa.i, align 1, !tbaa !38
  %i.bh = zext i8 %i.bg to i32
  %i.bi = icmp eq i32 %.025.ph, %i.bh
  br i1 %i.bi, label %.split46.us.loopexit133, label %bb.q

.split46.us.loopexit133:                          ; preds = %bb.p
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split46.us

.split46.us:                                      ; preds = %bb.i, %.split46.us.loopexit133, %bb.l, %bb.f
  %.us-phi47 = phi i32 [ %i.bj, %.split46.us.loopexit133 ], [ 0, %bb.f ], [ 0, %bb.l ], [ %.024.us81, %bb.i ]
  %.us-phi48 = phi ptr [ %storemerge.lcssa.i, %.split46.us.loopexit133 ], [ %storemerge.lcssa.i.us.us, %bb.f ], [ %storemerge.lcssa.i.us62, %bb.l ], [ %storemerge.lcssa.i.us, %bb.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.us-phi48, i64 1
  br label %.thread41

bb.q:                                             ; preds = %bb.p
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.thread41, label %.then

.then:                                            ; preds = %bb.q
  %i.bl = call fastcc i64 @PS_Conv_ToFixed(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.i)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !42
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !26  ; 5 uses
  %i.bo = icmp eq ptr %storemerge.lcssa.i, %i.bn
  br i1 %i.bo, label %.thread41, label %bb.r

bb.r:                                             ; preds = %.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = icmp ult ptr %i.bn, %1
  br i1 %i.bp, label %.lr.ph.i, label %.thread41.loopexit130.split.loop.exit144

.thread41.loopexit130.split.loop.exit141:         ; preds = %skip_spaces.exit
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread41

.thread41.loopexit130.split.loop.exit144:         ; preds = %bb.r
  %indvars.le = trunc i64 %indvars.iv.next to i32
  br label %.thread41

.thread41:                                        ; preds = %.then, %bb.q, %.cont.us, %skip_spaces.exit.us, %bb.j, %.thread41.loopexit130.split.loop.exit141, %.thread41.loopexit130.split.loop.exit144, %.then.us, %.cont.us.us, %.split.us.split, %.split.us.split.us, %skip_spaces.exit.us.us, %.split.split, %.split.split.us, %skip_spaces.exit.us61, %bb.m, %.split46.us, %bb.a
  %i.br = phi ptr [ %i.b, %bb.a ], [ %i.bk, %.split46.us ], [ %i.g, %.split.split ], [ %storemerge.lcssa.i.us62, %skip_spaces.exit.us61 ], [ %i.u, %.cont.us.us ], [ %storemerge.lcssa.i.us.us, %skip_spaces.exit.us.us ], [ %i.b, %.split.us.split.us ], [ %storemerge.lcssa.i.us62, %bb.m ], [ %i.aw, %.then.us ], [ %i.g, %.split.us.split ], [ %i.bn, %.thread41.loopexit130.split.loop.exit144 ], [ %i.b, %.split.split.us ], [ %storemerge.lcssa.i, %.thread41.loopexit130.split.loop.exit141 ], [ %i.ai, %bb.j ], [ %storemerge.lcssa.i.us, %skip_spaces.exit.us ], [ %i.ai, %.cont.us ], [ %storemerge.lcssa.i, %bb.q ], [ %i.bn, %.then ]
  %.2 = phi i32 [ 0, %bb.a ], [ %.us-phi47, %.split46.us ], [ 0, %.split.split ], [ 0, %skip_spaces.exit.us61 ], [ %spec.select, %.cont.us.us ], [ 0, %skip_spaces.exit.us.us ], [ 0, %.split.us.split.us ], [ 0, %bb.m ], [ %spec.select87, %.then.us ], [ 0, %.split.us.split ], [ %indvars.le, %.thread41.loopexit130.split.loop.exit144 ], [ 0, %.split.split.us ], [ %i.bq, %.thread41.loopexit130.split.loop.exit141 ], [ %i.ak, %bb.j ], [ %.024.us81, %skip_spaces.exit.us ], [ -1, %.cont.us ], [ %smax, %bb.q ], [ -1, %.then ]
  store ptr %i.br, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.2
}

declare i64 @FT_RoundFix(i64 noundef) local_unnamed_addr #10

declare hidden void @FT_GlyphLoader_Rewind(ptr noundef) local_unnamed_addr #10

declare hidden i32 @FT_GlyphLoader_CheckPoints(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @psaux_get_glyph_name(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !457
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  ret ptr %i.e
}

declare ptr @ft_hash_num_lookup(i32 noundef, ptr noundef) local_unnamed_addr #10

declare hidden ptr @ft_module_get_service(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @cf2_free_instance(ptr nofree noundef captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !206    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !549
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef %i.c) #19
  store ptr null, ptr %i.b, align 8, !tbaa !549
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !550
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef %i.e) #19
  store ptr null, ptr %i.d, align 8, !tbaa !550
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cf2_builder_moveTo(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load ptr, ptr %i.c, align 8, !tbaa !81  ; 11 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %ps_builder_close_contour.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %.val, align 8, !tbaa !160 ; 7 uses
  %i.e = icmp slt i16 %i.d, 2
  br i1 %i.e, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.f = zext nneg i16 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  %2 = add nuw nsw i64 %i.f, 4294967294
  %3 = and i64 %2, 4294967295
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %3
  %i.i = load i16, ptr %4, align 2, !tbaa !44
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.j, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not33.i = icmp eq i16 %i.d, 0
  br i1 %.not33.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !153
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %.thread.i
  %i.l = phi i32 [ %i.k, %.thread.i ], [ 0, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !153  ; 2 uses
  %i.o = sext i16 %i.n to i32
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = add i16 %i.d, -1
  store i16 %i.q, ptr %.val, align 8, !tbaa !160
  br label %ps_builder_close_contour.exit

bb.f:                                             ; preds = %bb.d, %._crit_edge.i
  %i.r = phi i16 [ %i.n, %bb.d ], [ %.pre.i, %._crit_edge.i ] ; 7 uses
  %i.s = phi i32 [ %i.l, %bb.d ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 2 ; 2 uses
  %i.u = icmp sgt i16 %i.r, 1
  br i1 %i.u, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i16 %i.r to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152  ; 2 uses
  %i.y = sext i32 %i.s to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !154
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  %i.ag = load i64, ptr %i.z, align 8, !tbaa !155
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !155
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !156
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !156
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %i.af, align 1, !tbaa !38
  %i.ap = icmp eq i8 %i.ao, 1
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = add nsw i16 %i.r, -1                    ; 2 uses
  store i16 %i.aq, ptr %i.t, align 2, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ar = phi i16 [ %i.r, %bb.g ], [ %i.r, %bb.h ], [ %i.aq, %bb.j ], [ %i.r, %bb.i ], [ %i.r, %bb.f ] ; 2 uses
  %i.as = icmp sgt i16 %i.d, 0
  br i1 %i.as, label %bb.l, label %ps_builder_close_contour.exit

bb.l:                                             ; preds = %bb.k
  %i.at = sext i16 %i.ar to i32
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  %i.av = icmp eq i32 %i.s, %i.au
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i16 %i.d, -1
  store i16 %i.aw, ptr %.val, align 8, !tbaa !160
  %i.ax = add i16 %i.ar, -1
  store i16 %i.ax, ptr %i.t, align 2, !tbaa !153
  br label %ps_builder_close_contour.exit

bb.n:                                             ; preds = %bb.l
  %i.ay = trunc i32 %i.au to i16
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !161
  %i.bb = zext nneg i16 %i.d to i64
  %i.bc = getelementptr [2 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -2
  store i16 %i.ay, ptr %i.bd, align 2, !tbaa !44
  br label %ps_builder_close_contour.exit

ps_builder_close_contour.exit:                    ; preds = %bb.a, %bb.e, %bb.k, %bb.m, %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i8 0, ptr %i.be, align 8, !tbaa !92
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cf2_builder_lineTo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i8, ptr %i.c, align 8, !tbaa !92
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !551
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !553
  %i.h = tail call fastcc i32 @ps_builder_start_point(ptr noundef nonnull %i.b, i64 noundef %i.e, i64 noundef %i.g) ; 2 uses
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !554  ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i32 %i.h, ptr %i.j, align 4, !tbaa !3
  br label %bb.h

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load <2 x i64>, ptr %i.l, align 8, !tbaa !42
  %i.n = getelementptr i8, ptr %i.b, i64 24
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !555 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 26
  %i.p = load i16, ptr %i.o, align 2, !tbaa !147
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 98
  %i.s = load i16, ptr %i.r, align 2, !tbaa !150
  %i.t = sext i16 %i.s to i32
  %i.u = add nsw i32 %i.q, 1
  %i.v = add nsw i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !151
  %.not.i.i = icmp ugt i32 %i.v, %i.x
  br i1 %.not.i.i, label %ps_builder_check_points.exit.i, label %ps_builder_check_points.exit.thread.i

ps_builder_check_points.exit.i:                   ; preds = %bb.e
  %i.y = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %.val.i, i32 noundef 1, i32 noundef 0) #19 ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %ps_builder_check_points.exit.thread.i, label %ps_builder_add_point1.exit

ps_builder_check_points.exit.thread.i:            ; preds = %ps_builder_check_points.exit.i, %bb.e
  %i.z = getelementptr i8, ptr %i.b, i64 40
  %.val5.i = load ptr, ptr %i.z, align 8, !tbaa !81 ; 4 uses
  %i.aa = getelementptr i8, ptr %i.b, i64 89
  %.val6.i = load i8, ptr %i.aa, align 1, !tbaa !93
  %.not.i7.i = icmp eq i8 %.val6.i, 0
  br i1 %.not.i7.i, label %ps_builder_add_point1.exit.thread, label %bb.f

bb.f:                                             ; preds = %ps_builder_check_points.exit.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !152
  %i.ad = getelementptr inbounds nuw i8, ptr %.val5.i, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !153
  %i.af = sext i16 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !154
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.af
  %i.ak = ashr <2 x i64> %i.m, splat (i64 10)
  store <2 x i64> %i.ak, ptr %i.ag, align 8, !tbaa !42
  store i8 1, ptr %i.aj, align 1, !tbaa !38
  br label %ps_builder_add_point1.exit.thread

ps_builder_add_point1.exit.thread:                ; preds = %ps_builder_check_points.exit.thread.i, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.val5.i, i64 2 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !153
  %i.an = add i16 %i.am, 1
  store i16 %i.an, ptr %i.al, align 2, !tbaa !153
  br label %bb.h

ps_builder_add_point1.exit:                       ; preds = %ps_builder_check_points.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !554 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %.not20 = icmp eq i32 %i.aq, 0
  br i1 %.not20, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ps_builder_add_point1.exit
  store i32 %i.y, ptr %i.ap, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %ps_builder_add_point1.exit.thread, %ps_builder_add_point1.exit, %bb.g, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
end_hunk_3
begin_hunk_4_@cf2_builder_cubeTo:bb.a
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !554  ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.h, ptr %i.j, align 4, !tbaa !3
  br label %bb.i

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr i8, ptr %i.b, i64 24
  %.val = load ptr, ptr %i.l, align 8, !tbaa !555 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 26
  %i.n = load i16, ptr %i.m, align 2, !tbaa !147
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 98
  %i.q = load i16, ptr %i.p, align 2, !tbaa !150
  %i.r = sext i16 %i.q to i32
  %i.s = add nsw i32 %i.o, 3
  %i.t = add nsw i32 %i.s, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !151
  %.not.i = icmp ugt i32 %i.t, %i.v
  br i1 %.not.i, label %ps_builder_check_points.exit, label %ps_builder_check_points.exit.thread

ps_builder_check_points.exit:                     ; preds = %bb.e
  %i.w = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %.val, i32 noundef 3, i32 noundef 0) #19 ; 2 uses
  %.not26 = icmp eq i32 %i.w, 0
  br i1 %.not26, label %ps_builder_check_points.exit.thread, label %bb.f

bb.f:                                             ; preds = %ps_builder_check_points.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !554  ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %.not27 = icmp eq i32 %i.z, 0
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i32 %i.w, ptr %i.y, align 4, !tbaa !3
  br label %bb.i

ps_builder_check_points.exit.thread:              ; preds = %bb.e, %ps_builder_check_points.exit
  %i.aa = getelementptr i8, ptr %i.b, i64 40      ; 3 uses
  %.val32 = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 6 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 89      ; 3 uses
  %.val33 = load i8, ptr %i.ab, align 1, !tbaa !93
  %.not.i34 = icmp eq i8 %.val33, 0
  br i1 %.not.i34, label %ps_builder_add_point.exit.thread, label %ps_builder_add_point.exit

ps_builder_add_point.exit.thread:                 ; preds = %ps_builder_check_points.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %.val32, i64 2 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !153
  %i.ae = add i16 %i.ad, 1
  store i16 %i.ae, ptr %i.ac, align 2, !tbaa !153
  br label %ps_builder_add_point.exit36.thread

ps_builder_add_point.exit:                        ; preds = %ps_builder_check_points.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !152
  %i.ai = getelementptr inbounds nuw i8, ptr %.val32, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !153
  %i.ak = sext i16 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !154
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.ak
  %i.ap = load <2 x i64>, ptr %i.af, align 8, !tbaa !42
  %i.aq = ashr <2 x i64> %i.ap, splat (i64 10)
  store <2 x i64> %i.aq, ptr %i.al, align 8, !tbaa !42
  store i8 2, ptr %i.ao, align 1, !tbaa !38
  %.val30.pre = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 5 uses
  %.val31.pre = load i8, ptr %i.ab, align 1, !tbaa !93
  %i.ar = icmp eq i8 %.val31.pre, 0
  %i.as = getelementptr inbounds nuw i8, ptr %.val32, i64 2 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !153
  %i.au = add i16 %i.at, 1
  store i16 %i.au, ptr %i.as, align 2, !tbaa !153
  br i1 %i.ar, label %ps_builder_add_point.exit36.thread, label %ps_builder_add_point.exit36

ps_builder_add_point.exit36.thread:               ; preds = %ps_builder_add_point.exit, %ps_builder_add_point.exit.thread
  %.val3047.ph = phi ptr [ %.val32, %ps_builder_add_point.exit.thread ], [ %.val30.pre, %ps_builder_add_point.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val3047.ph, i64 2 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !153
  %i.ax = add i16 %i.aw, 1
  store i16 %i.ax, ptr %i.av, align 2, !tbaa !153
  br label %ps_builder_add_point.exit38

ps_builder_add_point.exit36:                      ; preds = %ps_builder_add_point.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.val30.pre, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !152
  %i.bb = getelementptr inbounds nuw i8, ptr %.val30.pre, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !153
  %i.bd = sext i16 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.val30.pre, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !154
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bd
  %i.bi = load <2 x i64>, ptr %i.ay, align 8, !tbaa !42
  %i.bj = ashr <2 x i64> %i.bi, splat (i64 10)
  store <2 x i64> %i.bj, ptr %i.be, align 8, !tbaa !42
  store i8 2, ptr %i.bh, align 1, !tbaa !38
  %.val28.pre = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 5 uses
  %.val29.pre = load i8, ptr %i.ab, align 1, !tbaa !93
  %i.bk = icmp eq i8 %.val29.pre, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.val30.pre, i64 2 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !153
  %i.bn = add i16 %i.bm, 1
  store i16 %i.bn, ptr %i.bl, align 2, !tbaa !153
  br i1 %i.bk, label %ps_builder_add_point.exit38, label %bb.h

bb.h:                                             ; preds = %ps_builder_add_point.exit36
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.val28.pre, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !152
  %i.br = getelementptr inbounds nuw i8, ptr %.val28.pre, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !153
  %i.bt = sext i16 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.val28.pre, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !154
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bt
  %i.by = load <2 x i64>, ptr %i.bo, align 8, !tbaa !42
  %i.bz = ashr <2 x i64> %i.by, splat (i64 10)
  store <2 x i64> %i.bz, ptr %i.bu, align 8, !tbaa !42
  store i8 1, ptr %i.bx, align 1, !tbaa !38
  br label %ps_builder_add_point.exit38

ps_builder_add_point.exit38:                      ; preds = %ps_builder_add_point.exit36.thread, %ps_builder_add_point.exit36, %bb.h
  %.val2851 = phi ptr [ %.val3047.ph, %ps_builder_add_point.exit36.thread ], [ %.val28.pre, %ps_builder_add_point.exit36 ], [ %.val28.pre, %bb.h ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.val2851, i64 2 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !153
  %i.cc = add i16 %i.cb, 1
  store i16 %i.cc, ptr %i.ca, align 2, !tbaa !153
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d, %ps_builder_add_point.exit38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ps_builder_start_point(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !92
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %ps_builder_add_point1.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 6 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %ps_builder_add_point1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 89         ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !93
  %.not17.i = icmp eq i8 %i.f, 0
  br i1 %.not17.i, label %.sink.split.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !555  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i16, ptr %i.i, align 8, !tbaa !157
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.m = load i16, ptr %i.l, align 8, !tbaa !158
  %i.n = sext i16 %i.m to i32
  %i.o = add nsw i32 %i.k, 1
  %i.p = add nsw i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !159
  %.not18.i = icmp ugt i32 %i.p, %i.r
  br i1 %.not18.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.s = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef 1) #19 ; 2 uses
  %.not19.i = icmp eq i32 %i.s, 0
  br i1 %.not19.i, label %.thread.i, label %ps_builder_add_point1.exit

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.t = load i16, ptr %i.d, align 8, !tbaa !160  ; 3 uses
  %i.u = icmp sgt i16 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread.i
  %i.v = zext nneg i16 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !153
  %i.y = add i16 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161
  %3 = add nuw nsw i64 %i.v, 4294967295
  %4 = and i64 %3, 4294967295
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %4
  store i16 %i.y, ptr %5, align 2, !tbaa !44
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.f, %bb.c
  %.pre.i = load i16, ptr %i.d, align 8, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.sink.split.i, %.thread.i
  %.sink24.i = phi i16 [ %i.t, %.thread.i ], [ %.pre.i, %.sink.split.sink.split.i ]
  %i.ab = add i16 %.sink24.i, 1
  store i16 %i.ab, ptr %i.d, align 8, !tbaa !160
  %i.ac = getelementptr i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.ac, align 8, !tbaa !555 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 26
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !147
  %i.af = sext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 98
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !150
  %i.ai = sext i16 %i.ah to i32
  %i.aj = add nsw i32 %i.af, 1
  %i.ak = add nsw i32 %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !151
  %.not.i.i = icmp ugt i32 %i.ak, %i.am
  br i1 %.not.i.i, label %ps_builder_check_points.exit.i, label %ps_builder_check_points.exit.thread.i

ps_builder_check_points.exit.i:                   ; preds = %bb.g
  %i.an = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %.val.i, i32 noundef 1, i32 noundef 0) #19 ; 2 uses
  %.not.i9 = icmp eq i32 %i.an, 0
  br i1 %.not.i9, label %ps_builder_check_points.exit.thread.i, label %ps_builder_add_point1.exit

ps_builder_check_points.exit.thread.i:            ; preds = %ps_builder_check_points.exit.i, %bb.g
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !81 ; 4 uses
  %.val6.i = load i8, ptr %i.e, align 1, !tbaa !93
  %.not.i7.i = icmp eq i8 %.val6.i, 0
  br i1 %.not.i7.i, label %ps_builder_add_point.exit.i, label %bb.h

bb.h:                                             ; preds = %ps_builder_check_points.exit.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !152
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5.i, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !153
  %i.as = sext i16 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !154
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.as
  %i.ax = ashr i64 %1, 10
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !155
  %i.ay = ashr i64 %2, 10
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !156
  store i8 1, ptr %i.aw, align 1, !tbaa !38
  br label %ps_builder_add_point.exit.i

ps_builder_add_point.exit.i:                      ; preds = %bb.h, %ps_builder_check_points.exit.thread.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val5.i, i64 2 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !153
  %i.bc = add i16 %i.bb, 1
  store i16 %i.bc, ptr %i.ba, align 2, !tbaa !153
  br label %ps_builder_add_point1.exit

ps_builder_add_point1.exit:                       ; preds = %bb.e, %bb.b, %ps_builder_add_point.exit.i, %ps_builder_check_points.exit.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.an, %ps_builder_check_points.exit.i ], [ 0, %ps_builder_add_point.exit.i ], [ %i.s, %bb.e ], [ 3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_interpT2CharString(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext range(i8 0, 2) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.FT_Data_, align 8           ; 5 uses
  %9 = alloca %struct.FT_Data_, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 34 uses
  %i.d = alloca i32, align 4                      ; 32 uses
  %i.e = alloca [3 x i32], align 4                ; 5 uses
  %i.f = alloca [32 x i32], align 16              ; 5 uses
  %i.g = alloca [6 x i32], align 16               ; 10 uses
  %i.h = alloca i8, align 1                       ; 20 uses
  %10 = alloca %struct.CF2_ArrStackRec_, align 8  ; 13 uses
  %11 = alloca %struct.CF2_ArrStackRec_, align 8  ; 14 uses
  %12 = alloca %struct.CF2_HintMaskRec_, align 8  ; 12 uses
  %13 = alloca %struct.CF2_GlyphPathRec_, align 8 ; 71 uses
  %14 = alloca %struct.CF2_BufferRec_, align 8    ; 8 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %15 = alloca %struct.CF2_BufferRec_, align 8    ; 8 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %16 = alloca %struct.CF2_HintMapRec_, align 8   ; 8 uses
  %17 = alloca %struct.CF2_HintMaskRec_, align 8  ; 9 uses
  store i32 %5, ptr %i.c, align 4, !tbaa !3
  store i32 %6, ptr %i.d, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !238  ; 32 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 22 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !206    ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr i8, ptr %i.l, i64 1056     ; 4 uses
  %.val1271 = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.q = getelementptr i8, ptr %.val1271, i64 1032
  %.val1271.val = load i64, ptr %i.q, align 8, !tbaa !556
  %i.r = trunc i64 %.val1271.val to i32
  %i.s = shl i32 %i.r, 16                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.f, i8 0, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.n, ptr %10, align 8, !tbaa !557
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.m, ptr %i.t, align 8, !tbaa !559
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 20, ptr %i.u, align 8, !tbaa !560
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  store ptr %i.n, ptr %11, align 8, !tbaa !557
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.m, ptr %i.w, align 8, !tbaa !559
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 20, ptr %i.x, align 8, !tbaa !560
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  store ptr %i.m, ptr %12, align 8, !tbaa !561
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 18632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ac, i8 0, i64 240, i1 false)
  store ptr %0, ptr %13, align 8, !tbaa !563
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %2, ptr %i.ad, align 8, !tbaa !572
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 18576
  store ptr %i.m, ptr %i.ae, align 8, !tbaa !559
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 18584
  store i64 16, ptr %i.af, align 8, !tbaa !560
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 18592 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 18568 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 12384 ; 5 uses
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !557
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 12408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.aj, i8 0, i64 6160, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !312 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 12409
  store i8 %i.al, ptr %i.am, align 1, !tbaa !573
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 12412
  store ptr %0, ptr %i.ai, align 8, !tbaa !574
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 12392
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !575
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 12400
  store ptr %i.ah, ptr %i.ap, align 8, !tbaa !576
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 6200
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 6224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.ar, i8 0, i64 6160, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 6225
  store i8 %i.al, ptr %i.as, align 1, !tbaa !573
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 6228
  store ptr %0, ptr %i.aq, align 8, !tbaa !574
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 6208
  store ptr %i.ai, ptr %i.au, align 8, !tbaa !575
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 6216
  store ptr %i.ah, ptr %i.av, align 8, !tbaa !576
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.aw, i8 0, i64 6160, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 41
  store i8 %i.al, ptr %i.ax, align 1, !tbaa !573
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 44
  store ptr %0, ptr %i.ab, align 8, !tbaa !574
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.ai, ptr %i.az, align 8, !tbaa !575
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.ah, ptr %i.ba, align 8, !tbaa !576
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !577
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 18624
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !578
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 18628
  %i.bg = load i32, ptr %i.o, align 8, !tbaa !325 ; 4 uses
  %i.bh = load <2 x i32>, ptr %i.be, align 4, !tbaa !3
  store i32 %i.bg, ptr %i.an, align 4, !tbaa !579
  store i32 %i.bg, ptr %i.at, align 4, !tbaa !579
  store i32 %i.bg, ptr %i.ay, align 4, !tbaa !579
  store <2 x i32> %i.bh, ptr %i.bf, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 18640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !580
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 18664
  store ptr %10, ptr %i.bj, align 8, !tbaa !581
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 18672
  store ptr %11, ptr %i.bk, align 8, !tbaa !582
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 18680
  store ptr %12, ptr %i.bl, align 8, !tbaa !583
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 18688
end_hunk_4
