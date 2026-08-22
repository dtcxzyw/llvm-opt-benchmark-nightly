Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vlc?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ff_vlc_init_from_lengths:bb.a
  %i.j = tail call ptr @av_malloc_array(i64 noundef %i.i, i64 noundef 8) #9 ; 2 uses
  %.not12.i = icmp eq ptr %i.j, null
  br i1 %.not12.i, label %vlc_common_init.exit.thread, label %.lr.ph

vlc_common_init.exit:                             ; preds = %bb.b, %bb.d
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %vlc_common_init.exit
  %.171113 = phi ptr [ %11, %vlc_common_init.exit ], [ %i.j, %bb.e ] ; 6 uses
  %.not = icmp eq ptr %5, null
  %i.l = sext i32 %4 to i64                       ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.m = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.05088.us = phi i32 [ %i.aj, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %.05387.us = phi i32 [ %.2.us, %bb.l ], [ 0, %.lr.ph ] ; 4 uses
  %.05586.us = phi i64 [ %.156.us, %bb.l ], [ 0, %.lr.ph ] ; 4 uses
  %.05885.us = phi ptr [ %i.ak, %bb.l ], [ %3, %.lr.ph ] ; 2 uses
  %i.n = load i8, ptr %.05885.us, align 1, !tbaa !16 ; 4 uses
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  %i.p = icmp sgt i8 %i.n, 0
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.q = icmp slt i8 %i.n, 0
  br i1 %i.q, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.r = sub nsw i32 0, %i.o
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.s = sext i32 %.05387.us to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %.171113, i64 %i.s ; 3 uses
  store i8 %i.n, ptr %i.t, align 4, !tbaa !20
  %i.u = add i32 %.05088.us, %8
  %i.v = trunc i32 %i.u to i16
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i16 %i.v, ptr %i.w, align 2, !tbaa !23
  %i.x = trunc i64 %.05586.us to i32
  %i.y = add nsw i32 %.05387.us, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.x, ptr %i.z, align 4, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.154.us = phi i32 [ %i.y, %bb.h ], [ %.05387.us, %bb.g ]
  %.049.us = phi i32 [ %i.o, %bb.h ], [ %i.r, %bb.g ] ; 4 uses
  %i.aa = icmp sgt i32 %.049.us, %i.b
  br i1 %i.aa, label %.split.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = sub nsw i32 32, %.049.us
  %i.ac = shl nuw i32 1, %i.ab                    ; 2 uses
  %i.ad = add i32 %i.ac, -1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = and i64 %.05586.us, %i.ae
  %.not66.us = icmp eq i64 %i.af, 0
  br i1 %.not66.us, label %bb.k, label %.split.us

bb.k:                                             ; preds = %bb.j
  %i.ag = zext i32 %i.ac to i64
  %i.ah = add nuw nsw i64 %.05586.us, %i.ag       ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.ah, 4294967296
  br i1 %i.ai, label %.split92.us, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.156.us = phi i64 [ %.05586.us, %bb.f ], [ %i.ah, %bb.k ]
  %.2.us = phi i32 [ %.05387.us, %bb.f ], [ %.154.us, %bb.k ] ; 2 uses
  %i.aj = add nuw nsw i32 %.05088.us, 1           ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.05885.us, i64 %i.l
  %exitcond100.not = icmp eq i32 %i.aj, %2
  br i1 %exitcond100.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !33

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %.05387 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.2, %bb.x ] ; 4 uses
  %.05586 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %.156, %bb.x ] ; 4 uses
  %.05885 = phi ptr [ %3, %.lr.ph.split.preheader ], [ %i.bo, %bb.x ] ; 2 uses
  %i.al = load i8, ptr %.05885, align 1, !tbaa !16 ; 4 uses
  %i.am = sext i8 %i.al to i32                    ; 2 uses
  %i.an = icmp sgt i8 %i.al, 0
  br i1 %i.an, label %bb.m, label %bb.s

bb.m:                                             ; preds = %.lr.ph.split
  %i.ao = sext i32 %.05387 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %.171113, i64 %i.ao ; 3 uses
  store i8 %i.al, ptr %i.ap, align 4, !tbaa !20
  %i.aq = mul nsw i64 %indvars.iv, %i.m
  %i.ar = getelementptr inbounds i8, ptr %5, i64 %i.aq ; 3 uses
  switch i32 %7, label %bb.n [
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 4, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = zext i8 %i.as to i32
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.au = load i16, ptr %i.ar, align 2, !tbaa !17
  %i.av = zext i16 %i.au to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.1 = phi i32 [ %i.aw, %bb.q ], [ %i.at, %bb.o ], [ %i.av, %bb.p ]
  %i.ax = add i32 %.1, %8
  %i.ay = trunc i32 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !23
  %i.ba = trunc i64 %.05586 to i32
  %i.bb = add nsw i32 %.05387, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !22
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph.split
  %i.bd = icmp slt i8 %i.al, 0
  br i1 %i.bd, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.be = sub nsw i32 0, %i.am
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.154 = phi i32 [ %i.bb, %bb.r ], [ %.05387, %bb.t ]
  %.049 = phi i32 [ %i.am, %bb.r ], [ %i.be, %bb.t ] ; 4 uses
  %i.bf = icmp sgt i32 %.049, %i.b
  br i1 %i.bf, label %.split.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = sub nsw i32 32, %.049
  %i.bh = shl nuw i32 1, %i.bg                    ; 2 uses
  %i.bi = add i32 %i.bh, -1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = and i64 %.05586, %i.bj
  %.not66 = icmp eq i64 %i.bk, 0
  br i1 %.not66, label %bb.w, label %.split.us

.split.us:                                        ; preds = %bb.u, %bb.v, %bb.i, %bb.j
  %.us-phi = phi i32 [ %.049.us, %bb.i ], [ %.049.us, %bb.j ], [ %.049, %bb.v ], [ %.049, %bb.u ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %10, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %.us-phi) #9
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bl = zext i32 %i.bh to i64
  %i.bm = add nuw nsw i64 %.05586, %i.bl          ; 2 uses
  %i.bn = icmp samesign ugt i64 %i.bm, 4294967296
  br i1 %i.bn, label %.split92.us, label %bb.x

.split92.us:                                      ; preds = %bb.w, %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %10, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.y

bb.x:                                             ; preds = %bb.s, %bb.w
  %.156 = phi i64 [ %.05586, %bb.s ], [ %i.bm, %bb.w ]
  %.2 = phi i32 [ %.05387, %bb.s ], [ %.154, %bb.w ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.05885, i64 %i.l
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.x, %bb.l, %vlc_common_init.exit
  %.171114 = phi ptr [ %11, %vlc_common_init.exit ], [ %.171113, %bb.l ], [ %.171113, %bb.x ]
  %.053.lcssa = phi i32 [ 0, %vlc_common_init.exit ], [ %.2.us, %bb.l ], [ %.2, %bb.x ]
  %i.bp = call fastcc i32 @vlc_common_end(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.053.lcssa, ptr noundef nonnull %.171114, i32 noundef %9, ptr noundef nonnull %11)
  br label %vlc_common_init.exit.thread

bb.y:                                             ; preds = %.split92.us, %.split.us
  %.not67 = icmp eq ptr %.171113, %11
  br i1 %.not67, label %vlc_common_init.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @av_free(ptr noundef nonnull %.171113) #9
  br label %vlc_common_init.exit.thread

vlc_common_init.exit.thread:                      ; preds = %bb.e, %bb.y, %bb.z, %._crit_edge
  %.057 = phi i32 [ -1094995529, %bb.z ], [ -1094995529, %bb.y ], [ %i.bp, %._crit_edge ], [ -12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  ret i32 %.057
}

; Function Attrs: cold nounwind optsize uwtable
define void @ff_vlc_init_table_from_lengths(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 {
bb.a:
  %11 = alloca %struct.VLC, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  store <2 x i32> zeroinitializer, ptr %11, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 %1, ptr %i.c, align 4, !tbaa !15
  %i.d = or i32 %10, 1
  %i.e = call i32 @ff_vlc_init_from_lengths(ptr noundef nonnull %11, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %i.d, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: cold nounwind optsize uwtable
define ptr @ff_vlc_init_tables_from_lengths(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #4 {
bb.a:
  %10 = alloca %struct.VLC, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  store <2 x i32> zeroinitializer, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %i.b, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36
  store i32 %i.f, ptr %i.d, align 4, !tbaa !15
  %i.g = or i32 %9, 3
  %i.h = call i32 @ff_vlc_init_from_lengths(ptr noundef nonnull %10, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %i.g, ptr noundef null) ; 0 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !34
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !34
  %i.m = load i32, ptr %i.e, align 8, !tbaa !36
  %i.n = sub i32 %i.m, %i.i
  store i32 %i.n, ptr %i.e, align 8, !tbaa !36
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  ret ptr %i.o
}

; Function Attrs: cold nounwind optsize uwtable
define void @ff_vlc_init_table_sparse(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(address_is_null) %10, i32 noundef %11, i32 noundef %12, i32 noundef %13) local_unnamed_addr #4 {
bb.a:
  %14 = alloca %struct.VLC, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  store <2 x i32> zeroinitializer, ptr %14, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %1, ptr %i.c, align 4, !tbaa !15
  %i.d = or i32 %13, 1
  %i.e = call i32 @ff_vlc_init_sparse(ptr noundef nonnull %14, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define ptr @ff_vlc_init_tables_sparse(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #4 {
bb.a:
  %13 = alloca %struct.VLC, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  store <2 x i32> zeroinitializer, ptr %13, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %i.b, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36
  store i32 %i.f, ptr %i.d, align 4, !tbaa !15
  %i.g = or i32 %12, 3
  %i.h = call i32 @ff_vlc_init_sparse(ptr noundef nonnull %13, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %i.g) ; 0 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !34
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !34
  %i.m = load i32, ptr %i.e, align 8, !tbaa !36
  %i.n = sub i32 %i.m, %i.i
  store i32 %i.n, ptr %i.e, align 8, !tbaa !36
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  ret ptr %i.o
}

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_vlc_init_multi_from_lengths(ptr noundef initializes((0, 4), (16, 20)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 9 uses
  %13 = alloca [1500 x %struct.VLCcode], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.b = mul nsw i32 %2, 3
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 32)
  store i32 %2, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !13
  %i.e = and i32 %11, 1
  %.not.i = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %4, 1501
  br i1 %i.f, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 104) #9
  tail call void @abort() #10
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !15
  %i.i = icmp sgt i32 %4, 1500
  br i1 %i.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.j = zext nneg i32 %4 to i64
  %i.k = tail call ptr @av_malloc_array(i64 noundef %i.j, i64 noundef 8) #9 ; 2 uses
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %vlc_common_init.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.b
  %.191.ph = phi ptr [ %13, %bb.d ], [ %13, %bb.b ], [ %i.k, %bb.e ] ; 9 uses
  %i.l = zext nneg i32 %2 to i64
  %i.m = shl i64 8, %i.l
  %i.n = tail call noalias ptr @av_mallocz(i64 noundef %i.m) #9 ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !37
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.ah, label %.preheader

.preheader:                                       ; preds = %.thread.i
  %i.o = icmp sgt i32 %4, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.not79 = icmp eq ptr %7, null
  %i.p = sext i32 %6 to i64
  %i.q = sext i32 %8 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %.065121 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.u ] ; 4 uses
  %.067120 = phi i64 [ 0, %.lr.ph ], [ %.168, %bb.u ] ; 4 uses
  %.070119 = phi ptr [ %5, %.lr.ph ], [ %i.av, %bb.u ] ; 2 uses
  %i.r = load i8, ptr %.070119, align 1, !tbaa !16 ; 4 uses
  %i.s = sext i8 %i.r to i32                      ; 2 uses
  %i.t = icmp sgt i8 %i.r, 0
  br i1 %i.t, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.u = sext i32 %.065121 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.191.ph, i64 %i.u ; 3 uses
  store i8 %i.r, ptr %i.v, align 4, !tbaa !20
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.not79, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = mul nsw i64 %indvars.iv, %i.q
  %i.y = getelementptr inbounds i8, ptr %7, i64 %i.x ; 3 uses
  switch i32 %9, label %bb.i [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 4, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i32
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.ab = load i16, ptr %i.y, align 2, !tbaa !17
  %i.ac = zext i16 %i.ab to i32
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.y, align 4, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.j, %bb.k, %bb.l
  %.1 = phi i32 [ %i.ad, %bb.l ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.w, %bb.g ]
  %i.ae = add i32 %.1, %10
  %i.af = trunc i32 %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !23
  %i.ah = trunc i64 %.067120 to i32
  %i.ai = add nsw i32 %.065121, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !22
  br label %bb.p

bb.n:                                             ; preds = %bb.f
  %i.ak = icmp slt i8 %i.r, 0
  br i1 %i.ak, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.al = sub nsw i32 0, %i.s
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.166 = phi i32 [ %i.ai, %bb.m ], [ %.065121, %bb.o ]
  %.061 = phi i32 [ %i.s, %bb.m ], [ %i.al, %bb.o ] ; 3 uses
  %i.am = icmp sgt i32 %.061, %i.c
  br i1 %i.am, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = sub nsw i32 32, %.061
  %i.ao = shl nuw i32 1, %i.an                    ; 2 uses
  %i.ap = add i32 %i.ao, -1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = and i64 %.067120, %i.aq
  %.not80 = icmp eq i64 %i.ar, 0
  br i1 %.not80, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %12, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %.061) #9
  br label %bb.ah

bb.s:                                             ; preds = %bb.q
  %i.as = zext i32 %i.ao to i64
  %i.at = add nuw nsw i64 %.067120, %i.as         ; 2 uses
  %i.au = icmp samesign ugt i64 %i.at, 4294967296
  br i1 %i.au, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %12, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.ah

bb.u:                                             ; preds = %bb.n, %bb.s
  %.168 = phi i64 [ %.067120, %bb.n ], [ %i.at, %bb.s ]
  %.2 = phi i32 [ %.065121, %bb.n ], [ %.166, %bb.s ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.070119, i64 %i.p
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.u, %.preheader
  %.065.lcssa = phi i32 [ 0, %.preheader ], [ %.2, %bb.u ] ; 7 uses
  %i.aw = call fastcc i32 @build_table(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %.065.lcssa, ptr noundef nonnull %.191.ph, i32 noundef %11) ; 2 uses
  br i1 %.not.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !15 ; 2 uses
  %.not23.i = icmp ne i32 %i.ax, %i.az
  %i.ba = and i32 %11, 2
  %.not24.i = icmp eq i32 %i.ba, 0
  %or.cond.i = and i1 %.not24.i, %.not23.i
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.ax, i32 noundef %i.az) #9
  br label %bb.x
end_hunk_0
