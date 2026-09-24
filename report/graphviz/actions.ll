Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/actions?download=true
inline.NumInlined: 62
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sfioWrite:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  store ptr @AgIoDisc, ptr %i.c, align 8, !tbaa !45
  %i.e = tail call i32 @agwrite(ptr noundef %0, ptr noundef %1) #19
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !45
  ret i32 %i.e
}

declare i32 @agwrite(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @writeFile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.14) #19
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.15) ; 3 uses
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @exwarn(ptr noundef nonnull @.str.16, ptr noundef nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  store ptr @AgIoDisc, ptr %i.d, align 8, !tbaa !45
  %i.f = tail call i32 @agwrite(ptr noundef %0, ptr noundef nonnull %i.a) #19
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.e, ptr %i.h, align 8, !tbaa !45
  %i.i = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ %i.f, %bb.e ], [ 1, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

declare void @exwarn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @readFile(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.17) #19
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) ; 3 uses
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @exwarn(ptr noundef nonnull @.str.19, ptr noundef nonnull %0) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.b = tail call ptr @readG(ptr noundef nonnull %i.a) #19
  %i.c = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.b, %bb.e ], [ null, %bb.d ]
  ret ptr %.1
}

declare ptr @readG(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @fwriteFile(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i64 %2, 9
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %2
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.20, i64 noundef %2) #19
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  store ptr @AgIoDisc, ptr %i.f, align 8, !tbaa !45
  %i.h = tail call i32 @agwrite(ptr noundef %1, ptr noundef nonnull %i.c) #19
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.g, ptr %i.j, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @freadFile(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i64 %1, 9
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.21, i64 noundef %1) #19
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @readG(ptr noundef nonnull %i.c) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.d, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 10) i32 @openFile(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.1 = icmp eq ptr %i.e, null
  br i1 %.not.1, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %.not.2 = icmp eq ptr %i.g, null
  br i1 %.not.2, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %.not.3 = icmp eq ptr %i.i, null
  br i1 %.not.3, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %.not.4 = icmp eq ptr %i.k, null
  br i1 %.not.4, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %.not.5 = icmp eq ptr %i.m, null
  br i1 %.not.5, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %.not.6 = icmp eq ptr %i.o, null
  br i1 %.not.6, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.22) #19
  br label %bb.i

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.lcssa = phi i64 [ 3, %bb.a ], [ 4, %bb.b ], [ 5, %bb.c ], [ 6, %bb.d ], [ 7, %bb.e ], [ 8, %bb.f ], [ 9, %bb.g ] ; 2 uses
  %i.p = trunc nuw nsw i64 %.lcssa to i32
  %i.q = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.lcssa
  store ptr %i.q, ptr %i.r, align 8, !tbaa !23
  %.not14 = icmp eq ptr %i.q, null
  %..0 = select i1 %.not14, i32 -1, i32 %i.p
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.012 = phi i32 [ -1, %bb.h ], [ %..0, %.thread ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define noundef i32 @closeFile(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ult i64 %1, 3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.23, i64 noundef %1) #19
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %or.cond3 = icmp ugt i64 %1, 9
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.24, i64 noundef %1) #19
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.25, i64 noundef %1) #19
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.d = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 2 uses
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.b, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.h ], [ %i.d, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @readLine(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.agxbuf, align 8             ; 27 uses
  %or.cond = icmp ugt i64 %1, 9
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.26, i64 noundef %1) #19
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.d = tail call i32 @getc(ptr noundef nonnull %i.c) ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = icmp ne i32 %i.d, 10
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %agxbsizeof.exit.i.lr.ph, label %._crit_edge

agxbsizeof.exit.i.lr.ph:                          ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 31 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %agxbsizeof.exit.i

agxbsizeof.exit.i:                                ; preds = %agxbsizeof.exit.i.lr.ph, %agxbputc.exit
  %.val.i.i1735 = phi i8 [ 0, %agxbsizeof.exit.i.lr.ph ], [ %.val.i.i1733, %agxbputc.exit ]
  %.val.i.i = phi i8 [ 0, %agxbsizeof.exit.i.lr.ph ], [ %.val.i.i31, %agxbputc.exit ] ; 3 uses
  %i.k = phi i32 [ %i.d, %agxbsizeof.exit.i.lr.ph ], [ %i.x, %agxbputc.exit ]
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %.not.i.i = icmp eq i8 %.val.i.i, -1            ; 2 uses
  %i.m = load i64, ptr %i.i, align 8
  %i.n = load i64, ptr %i.j, align 8
  %i.o = zext i8 %.val.i.i to i64
  %.0.i20.i = select i1 %.not.i.i, i64 %i.m, i64 %i.o
  %.0.i14.i = select i1 %.not.i.i, i64 %i.n, i64 31
  %.not.i = icmp ult i64 %.0.i20.i, %.0.i14.i
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %agxbsizeof.exit.i
  call fastcc void @agxbmore(ptr noundef nonnull %2, i64 noundef 1)
  %.val.i15.pre.i = load i8, ptr %i.h, align 1, !tbaa !8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %agxbsizeof.exit.i
  %.val.i.i1734 = phi i8 [ %.val.i15.pre.i, %bb.e ], [ %.val.i.i1735, %agxbsizeof.exit.i ]
  %.val.i.i29 = phi i8 [ %.val.i15.pre.i, %bb.e ], [ %.val.i.i, %agxbsizeof.exit.i ] ; 2 uses
  %.not.i16.i = icmp eq i8 %.val.i.i29, -1
  br i1 %.not.i16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = zext i8 %.val.i.i29 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  store i8 %i.l, ptr %i.q, align 1, !tbaa !8
  %i.r = load i8, ptr %i.h, align 1, !tbaa !8
  %i.s = add i8 %i.r, 1                           ; 3 uses
  store i8 %i.s, ptr %i.h, align 1, !tbaa !8
  br label %agxbputc.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 %i.l, ptr %i.v, align 1, !tbaa !8
  %i.w = add i64 %i.t, 1
  store i64 %i.w, ptr %i.i, align 8, !tbaa !8
  br label %agxbputc.exit

agxbputc.exit:                                    ; preds = %bb.g, %bb.h
  %.val.i.i1733 = phi i8 [ %i.s, %bb.g ], [ %.val.i.i1734, %bb.h ] ; 2 uses
  %.val.i.i31 = phi i8 [ %i.s, %bb.g ], [ -1, %bb.h ]
  %i.x = tail call i32 @getc(ptr noundef nonnull %i.c) ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = icmp ne i32 %i.x, 10
  %i.aa = and i1 %i.y, %i.z
  br i1 %i.aa, label %agxbsizeof.exit.i, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %agxbputc.exit, %bb.d
  %.val.i.i17 = phi i8 [ 0, %bb.d ], [ %.val.i.i1733, %agxbputc.exit ] ; 4 uses
  %.lcssa = phi i32 [ %i.d, %bb.d ], [ %i.x, %agxbputc.exit ]
  %i.ab = icmp eq i32 %.lcssa, 10
  br i1 %i.ab, label %agxbsizeof.exit.i20, label %agxbputc.exit27

agxbsizeof.exit.i20:                              ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 31 ; 3 uses
  %.not.i.i18 = icmp eq i8 %.val.i.i17, -1        ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = zext i8 %.val.i.i17 to i64
  %.0.i20.i21 = select i1 %.not.i.i18, i64 %i.ae, i64 %i.ah
  %.0.i14.i22 = select i1 %.not.i.i18, i64 %i.ag, i64 31
  %.not.i23 = icmp ult i64 %.0.i20.i21, %.0.i14.i22
  br i1 %.not.i23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %agxbsizeof.exit.i20
  call fastcc void @agxbmore(ptr noundef nonnull %2, i64 noundef 1)
  %.val.i15.pre.i24 = load i8, ptr %i.ac, align 1, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %agxbsizeof.exit.i20
  %.val.i15.i25 = phi i8 [ %.val.i15.pre.i24, %bb.i ], [ %.val.i.i17, %agxbsizeof.exit.i20 ] ; 2 uses
  %.not.i16.i26 = icmp eq i8 %.val.i15.i25, -1
  br i1 %.not.i16.i26, label %agxbputc.exit27.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = zext i8 %.val.i15.i25 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai
  store i8 10, ptr %i.aj, align 1, !tbaa !8
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.al = add i8 %i.ak, 1                         ; 2 uses
  store i8 %i.al, ptr %i.ac, align 1, !tbaa !8
  br label %agxbputc.exit27

agxbputc.exit27.thread:                           ; preds = %bb.j
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 10, ptr %i.ao, align 1, !tbaa !8
  %i.ap = add i64 %i.am, 1
  store i64 %i.ap, ptr %i.ad, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 31
  br label %bb.l

agxbputc.exit27:                                  ; preds = %bb.k, %._crit_edge
  %.val.i = phi i8 [ %.val.i.i17, %._crit_edge ], [ %i.al, %bb.k ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 31 ; 3 uses
  switch i8 %.val.i, label %agxblen.exit.i.i [
    i8 -1, label %bb.l
    i8 31, label %agxbclear.exit.thread.i
  ]

agxblen.exit.i.i:                                 ; preds = %agxbputc.exit27
  %i.as = zext i8 %.val.i to i64
end_hunk_0
