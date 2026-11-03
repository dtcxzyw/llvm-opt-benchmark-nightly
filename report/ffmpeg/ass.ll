Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ass?download=true
inline.NumInlined: 4
begin_hunk_0_@ff_ass_subtitle_header:bb.a
  br label %ff_ass_subtitle_header_full.exit

ff_ass_subtitle_header_full.exit:                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_ass_subtitle_header_default(ptr nofree noundef captures(none) initializes((752, 760)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not.i.i, ptr @.str.1, ptr @.str.2
  %i.e = tail call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str, ptr noundef nonnull %i.d, i32 noundef 384, i32 noundef 288, ptr noundef nonnull @.str.3, i32 noundef 16, i32 noundef 16777215, i32 noundef 16777215, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 2) #4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %i.e, ptr %i.f, align 8, !tbaa !29
  %.not19.i.i = icmp eq ptr %i.e, null
  br i1 %.not19.i.i, label %ff_ass_subtitle_header.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #5
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 748
  store i32 %i.h, ptr %i.i, align 4, !tbaa !30
  br label %ff_ass_subtitle_header.exit

ff_ass_subtitle_header.exit:                      ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0.i.i
}

; Function Attrs: nounwind uwtable
define ptr @ff_ass_get_dialog(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = select i1 %.not, ptr @.str.5, ptr %2
  %.not6 = icmp eq ptr %3, null
  %i.b = select i1 %.not6, ptr @.str.2, ptr %3
  %i.c = tail call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.4, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %4) #4
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_ass_add_rect2(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35   ; 6 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.thread47, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %6, align 4, !tbaa !41
  %.not39 = icmp ugt i32 %i.f, %i.d
  br i1 %.not39, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i32 %i.d, -252645136
  %i.h = lshr i32 %i.d, 4
  %i.i = add nuw i32 %i.d, 1
  %i.j = add nuw i32 %i.i, %i.h
  %.0.shrunk.ph = select i1 %i.g, i32 %i.j, i32 -1 ; 2 uses
  %.0 = zext i32 %.0.shrunk.ph to i64
  %i.k = tail call ptr @av_realloc_array(ptr noundef %i.b, i64 noundef %.0, i64 noundef 8) #4 ; 2 uses
  %.not41 = icmp eq ptr %i.k, null
  br i1 %.not41, label %bb.i, label %bb.e

.thread47:                                        ; preds = %bb.b
  %i.l = add nuw i32 %i.d, 1
  %.049 = zext i32 %i.l to i64
  %i.m = tail call ptr @av_realloc_array(ptr noundef %i.b, i64 noundef %.049, i64 noundef 8) #4 ; 2 uses
  %.not4150 = icmp eq ptr %i.m, null
  br i1 %.not4150, label %bb.i, label %.thread52

bb.e:                                             ; preds = %bb.d
  store i32 %.0.shrunk.ph, ptr %6, align 4, !tbaa !41
  br label %.thread52

.thread52:                                        ; preds = %.thread47, %bb.e
  %i.n = phi ptr [ %i.m, %.thread47 ], [ %i.k, %bb.e ] ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.thread52
  %.032 = phi ptr [ %i.n, %.thread52 ], [ %i.b, %bb.c ]
  %i.o = tail call noalias ptr @av_mallocz(i64 noundef 96) #4 ; 4 uses
  %.not42 = icmp eq ptr %i.o, null
  br i1 %.not42, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.c, align 4, !tbaa !35   ; 2 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.c, align 4, !tbaa !35
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.032, i64 %i.r
  store ptr %i.o, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  store i32 3, ptr %i.t, align 4, !tbaa !39
  %.not.i = icmp eq ptr %4, null
  %i.u = select i1 %.not.i, ptr @.str.5, ptr %4
  %.not6.i = icmp eq ptr %5, null
  %i.v = select i1 %.not6.i, ptr @.str.2, ptr %5
  %i.w = tail call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.4, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef %1) #4 ; 2 uses
  %.not43 = icmp eq ptr %i.w, null
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store ptr %i.w, ptr %i.x, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %.thread47, %bb.g, %bb.f, %bb.d, %bb.a, %bb.h
  %.033 = phi i32 [ -12, %bb.a ], [ 0, %bb.h ], [ -12, %bb.f ], [ -12, %bb.d ], [ -12, %bb.g ], [ -12, %.thread47 ]
  ret i32 %.033
}

declare ptr @av_realloc_array(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_ass_add_rect(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35   ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %ff_ass_add_rect2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.f = add nuw i32 %i.c, 1
  %.049.i = zext i32 %i.f to i64
  %i.g = tail call ptr @av_realloc_array(ptr noundef %i.e, i64 noundef %.049.i, i64 noundef 8) #4 ; 3 uses
  %.not4150.i = icmp eq ptr %i.g, null
  br i1 %.not4150.i, label %ff_ass_add_rect2.exit, label %.thread52.i

.thread52.i:                                      ; preds = %bb.b
  store ptr %i.g, ptr %i.a, align 8, !tbaa !34
  %i.h = tail call noalias ptr @av_mallocz(i64 noundef 96) #4 ; 4 uses
  %.not42.i = icmp eq ptr %i.h, null
  br i1 %.not42.i, label %ff_ass_add_rect2.exit, label %bb.c

bb.c:                                             ; preds = %.thread52.i
  %i.i = load i32, ptr %i.b, align 4, !tbaa !35   ; 2 uses
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  store ptr %i.h, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  store i32 3, ptr %i.m, align 4, !tbaa !39
  %.not.i.i = icmp eq ptr %4, null
  %i.n = select i1 %.not.i.i, ptr @.str.5, ptr %4
  %.not6.i.i = icmp eq ptr %5, null
  %i.o = select i1 %.not6.i.i, ptr @.str.2, ptr %5
  %i.p = tail call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.4, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef %1) #4 ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %ff_ass_add_rect2.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr %i.p, ptr %i.q, align 8, !tbaa !40
  br label %ff_ass_add_rect2.exit

ff_ass_add_rect2.exit:                            ; preds = %bb.a, %bb.b, %.thread52.i, %bb.c, %bb.d
  %.033.i = phi i32 [ -12, %bb.a ], [ 0, %bb.d ], [ -12, %.thread52.i ], [ -12, %bb.b ], [ -12, %bb.c ]
  ret i32 %.033.i
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_ass_decoder_flush(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = and i32 %i.b, 1073741824
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  store i32 0, ptr %i.e, align 4, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_ass_bprint_text_event(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 5 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.not33 = icmp eq ptr %3, null                  ; 2 uses
  %.not35 = icmp eq i32 %4, 0
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  br i1 %.not35, label %.lr.ph.split.us.a, label %.lr.ph.split

.lr.ph.split.us.a:                                ; preds = %.lr.ph, %bb.n
  %.039.us = phi ptr [ %i.w, %bb.n ], [ %1, %.lr.ph ] ; 9 uses
  %i.f = load i8, ptr %.039.us, align 1, !tbaa !47 ; 4 uses
  %5 = sext i8 %i.f to i32
  %.not.us.a = icmp eq i8 %i.f, 0
  br i1 %.not.us.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.a
  br i1 %.not33, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef %5) #5
  %.not34.us = icmp eq ptr %i.g, null
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  br label %bb.n

bb.e:                                             ; preds = %bb.c, %bb.b
  switch i8 %i.f, label %bb.m [
    i8 123, label %bb.l
    i8 92, label %bb.j
    i8 10, label %bb.h
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult ptr %.039.us, %i.d
  br i1 %i.h, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.039.us, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !47
  %i.k = icmp eq i8 %i.j, 10
  br i1 %i.k, label %bb.n, label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.l = icmp ult ptr %.039.us, %i.d
  br i1 %i.l, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.m = ptrtoint ptr %.039.us to i64
  %i.n = sub i64 %i.e, %i.m
  %i.o = icmp slt i64 %i.n, 4
  br i1 %i.o, label %.tail.us.thread, label %sub_0.us

sub_0.us:                                         ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %.039.us, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %.not44 = icmp eq i8 %i.q, -30
  br i1 %.not44, label %sub_1.us, label %.tail.us.thread

sub_1.us:                                         ; preds = %sub_0.us
  %i.r = getelementptr inbounds nuw i8, ptr %.039.us, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %.not45 = icmp eq i8 %i.s, -127
  br i1 %.not45, label %.tail.us, label %.tail.us.thread

.tail.us:                                         ; preds = %sub_1.us
  %i.t = getelementptr inbounds nuw i8, ptr %.039.us, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, -96
  br i1 %i.v, label %bb.k, label %.tail.us.thread

bb.k:                                             ; preds = %.tail.us
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.10) #4
  br label %bb.n

.tail.us.thread:                                  ; preds = %sub_1.us, %sub_0.us, %.tail.us, %bb.j
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.9) #4
  br label %bb.n

bb.l:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.7) #4
  br label %bb.n

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e
  tail call void @av_bprint_chars(ptr noundef %0, i8 noundef signext %i.f, i32 noundef 1) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.tail.us.thread, %bb.k, %bb.i, %bb.h, %bb.g, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.039.us, i64 1 ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.b
  br i1 %i.x, label %.lr.ph.split.us.a, label %.critedge, !llvm.loop !46

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not33, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.t
  %.039.us42 = phi ptr [ %i.ae, %bb.t ], [ %1, %.lr.ph.split ] ; 5 uses
  %i.y = load i8, ptr %.039.us42, align 1, !tbaa !47 ; 2 uses
  switch i8 %i.y, label %bb.s [
    i8 0, label %.critedge
    i8 10, label %bb.q
    i8 13, label %bb.o
  ]

bb.o:                                             ; preds = %.lr.ph.split.split.us
  %i.z = icmp ult ptr %.039.us42, %i.d
  br i1 %i.z, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.039.us42, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !47
  %i.ac = icmp eq i8 %i.ab, 10
  br i1 %i.ac, label %bb.t, label %bb.s

bb.q:                                             ; preds = %.lr.ph.split.split.us
  %i.ad = icmp ult ptr %.039.us42, %i.d
  br i1 %i.ad, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.split.us, %bb.p, %bb.o
  tail call void @av_bprint_chars(ptr noundef %0, i8 noundef signext %i.y, i32 noundef 1) #4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %.039.us42, i64 1 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %i.b
  br i1 %i.af, label %.lr.ph.split.split.us, label %.critedge, !llvm.loop !46

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.ab
  %.039 = phi ptr [ %i.ao, %bb.ab ], [ %1, %.lr.ph.split ] ; 5 uses
  %i.ag = load i8, ptr %.039, align 1, !tbaa !47  ; 4 uses
  %.not = icmp eq i8 %i.ag, 0
  br i1 %.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split
  %i.ah = sext i8 %i.ag to i32
  %i.ai = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef %i.ah) #5
  %.not34 = icmp eq ptr %i.ai, null
  br i1 %.not34, label %.critedge38, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  br label %bb.ab

.critedge38:                                      ; preds = %bb.u
  switch i8 %i.ag, label %bb.aa [
    i8 10, label %bb.w
    i8 13, label %bb.y
  ]

bb.w:                                             ; preds = %.critedge38
  %i.aj = icmp ult ptr %.039, %i.d
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  br label %bb.ab

bb.y:                                             ; preds = %.critedge38
  %i.ak = icmp ult ptr %.039, %i.d
  br i1 %i.ak, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.al = getelementptr inbounds nuw i8, ptr %.039, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !47
  %i.an = icmp eq i8 %i.am, 10
  br i1 %i.an, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge38, %bb.z, %bb.y
  tail call void @av_bprint_chars(ptr noundef %0, i8 noundef signext %i.ag, i32 noundef 1) #4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.w, %bb.x, %bb.aa, %bb.z
  %i.ao = getelementptr inbounds nuw i8, ptr %.039, i64 1 ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.b
  br i1 %i.ap, label %.lr.ph.split.split, label %.critedge, !llvm.loop !46

.critedge:                                        ; preds = %.lr.ph.split.split, %bb.ab, %.lr.ph.split.split.us, %bb.t, %.lr.ph.split.us.a, %bb.n, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_bprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @av_bprint_chars(ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !6, i64 64}
!29 = !{!27, !14, i64 752}
!30 = !{!27, !6, i64 748}
!31 = !{!"short", !5, i64 0}
!32 = !{!"p2 _ZTS14AVSubtitleRect", !25, i64 0}
!33 = !{!"AVSubtitle", !31, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !32, i64 16, !13, i64 24}
!34 = !{!33, !32, i64 16}
!35 = !{!33, !6, i64 12}
!36 = !{!"p1 _ZTS14AVSubtitleRect", !9, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"AVSubtitleRect", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 24, !5, i64 56, !6, i64 72, !6, i64 76, !14, i64 80, !14, i64 88}
!39 = !{!38, !6, i64 76}
!40 = !{!38, !14, i64 88}
!41 = !{!6, !6, i64 0}
!42 = !{!27, !6, i64 68}
!43 = !{!27, !9, i64 32}
!44 = !{!"FFASSDecoderContext", !6, i64 0}
!45 = !{!44, !6, i64 0}
!46 = distinct !{!46, !48}
!47 = !{!5, !5, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
end_hunk_0
