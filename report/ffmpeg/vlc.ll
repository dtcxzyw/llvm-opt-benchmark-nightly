Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vlc?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ff_vlc_init_from_lengths:bb.a
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !41

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
  %i.b = load ptr, ptr %0, align 8, !tbaa !26
  store ptr %i.b, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27
  store i32 %i.f, ptr %i.d, align 4, !tbaa !15
  %i.g = or i32 %9, 3
  %i.h = call i32 @ff_vlc_init_from_lengths(ptr noundef nonnull %10, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %i.g, ptr noundef null) ; 0 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !26
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !26
  %i.m = load i32, ptr %i.e, align 8, !tbaa !27
  %i.n = sub i32 %i.m, %i.i
  store i32 %i.n, ptr %i.e, align 8, !tbaa !27
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !26
  store ptr %i.b, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27
  store i32 %i.f, ptr %i.d, align 4, !tbaa !15
  %i.g = or i32 %12, 3
  %i.h = call i32 @ff_vlc_init_sparse(ptr noundef nonnull %13, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %i.g) ; 0 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !26
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !26
  %i.m = load i32, ptr %i.e, align 8, !tbaa !27
  %i.n = sub i32 %i.m, %i.i
  store i32 %i.n, ptr %i.e, align 8, !tbaa !27
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
  store i32 %2, ptr %0, align 8, !tbaa !12
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
  %.191.ph = phi ptr [ %13, %bb.d ], [ %13, %bb.b ], [ %i.k, %bb.e ] ; 17 uses
  %i.l = zext nneg i32 %2 to i64
  %i.m = shl i64 8, %i.l
  %i.n = tail call noalias ptr @av_mallocz(i64 noundef %i.m) #9 ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !50
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
  store i8 %i.r, ptr %i.v, align 4, !tbaa !21
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
  %i.ab = load i16, ptr %i.y, align 2, !tbaa !18
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !42

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

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bb = icmp sgt i32 %i.aw, -1
  br i1 %i.bb, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 238) #9
  tail call void @abort() #10
  unreachable

bb.z:                                             ; preds = %._crit_edge
  %i.bc = icmp slt i32 %i.aw, 0
  br i1 %i.bc, label %vlc_common_end.exit, label %bb.aa

vlc_common_end.exit:                              ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.bd) #9
  br label %bb.ah

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.be = load ptr, ptr %1, align 8, !tbaa !50    ; 7 uses
  %i.bf = icmp sgt i32 %3, 256                    ; 2 uses
  %i.bg = zext i1 %i.bf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.bh = shl nuw i32 1, %2                       ; 4 uses
  %.not106.i = icmp eq i32 %2, 31
  br i1 %.not106.i, label %vlc_multi_gen.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14
  br label %bb.ab

._crit_edge.i:                                    ; preds = %bb.ad
  %i.bk = sub i32 %.065.lcssa, %.174.i            ; 2 uses
  %i.bl = icmp sgt i32 %.174.i, 0
  br i1 %i.bl, label %.lr.ph92.preheader.i, label %._crit_edge93.i.thread

.lr.ph92.preheader.i:                             ; preds = %._crit_edge.i
  %i.bm = sext i32 %i.bk to i64                   ; 6 uses
  %i.bn = sext i32 %.065.lcssa to i64             ; 3 uses
  %14 = add nsw i64 %i.bm, 1
  %15 = tail call i64 @llvm.smax.i64(i64 %14, i64 %i.bn)
  %16 = sub i64 %15, %i.bm                        ; 3 uses
  %min.iters.check = icmp ult i64 %16, 9
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %17 = and i64 %16, 7                            ; 2 uses
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %18, i64 8, i64 %17
  %n.vec = sub i64 %16, %19                       ; 2 uses
  %20 = add i64 %n.vec, %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %55, %vector.body ]
  %vec.phi149 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %56, %vector.body ]
  %vec.phi150 = phi <4 x i8> [ splat (i8 32), %vector.ph ], [ %53, %vector.body ]
  %vec.phi151 = phi <4 x i8> [ splat (i8 32), %vector.ph ], [ %54, %vector.body ]
  %21 = add i64 %index, %i.bm                     ; 8 uses
  %22 = getelementptr inbounds [8 x i8], ptr %.191.ph, i64 %21
  %23 = getelementptr [8 x i8], ptr %.191.ph, i64 %21
  %24 = getelementptr i8, ptr %23, i64 8
  %25 = getelementptr [8 x i8], ptr %.191.ph, i64 %21
  %26 = getelementptr i8, ptr %25, i64 16
  %27 = getelementptr [8 x i8], ptr %.191.ph, i64 %21
  %28 = getelementptr i8, ptr %27, i64 24
  %29 = getelementptr [8 x i8], ptr %.191.ph, i64 %21
  %30 = getelementptr i8, ptr %29, i64 32
  %31 = getelementptr [8 x i8], ptr %.191.ph, i64 %21
  %32 = getelementptr i8, ptr %31, i64 40
  %33 = getelementptr [8 x i8], ptr %.191.ph, i64 %21
  %34 = getelementptr i8, ptr %33, i64 48
  %35 = getelementptr [8 x i8], ptr %.191.ph, i64 %21
  %36 = getelementptr i8, ptr %35, i64 56
  %37 = load i8, ptr %22, align 4, !tbaa !21
  %38 = load i8, ptr %24, align 4, !tbaa !21
  %39 = load i8, ptr %26, align 4, !tbaa !21
  %40 = load i8, ptr %28, align 4, !tbaa !21
  %41 = insertelement <4 x i8> poison, i8 %37, i64 0
  %42 = insertelement <4 x i8> %41, i8 %38, i64 1
  %43 = insertelement <4 x i8> %42, i8 %39, i64 2
  %44 = insertelement <4 x i8> %43, i8 %40, i64 3 ; 2 uses
  %45 = load i8, ptr %30, align 4, !tbaa !21
  %46 = load i8, ptr %32, align 4, !tbaa !21
  %47 = load i8, ptr %34, align 4, !tbaa !21
  %48 = load i8, ptr %36, align 4, !tbaa !21
  %49 = insertelement <4 x i8> poison, i8 %45, i64 0
  %50 = insertelement <4 x i8> %49, i8 %46, i64 1
  %51 = insertelement <4 x i8> %50, i8 %47, i64 2
  %52 = insertelement <4 x i8> %51, i8 %48, i64 3 ; 2 uses
  %53 = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi150, <4 x i8> %44) ; 2 uses
  %54 = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi151, <4 x i8> %52) ; 2 uses
  %55 = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi, <4 x i8> %44) ; 2 uses
  %56 = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi149, <4 x i8> %52) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %57 = icmp eq i64 %index.next, %n.vec
  br i1 %57, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %55, <4 x i8> %56)
  %58 = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %rdx.minmax)
  %59 = zext i8 %58 to i32
  %rdx.minmax152 = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %53, <4 x i8> %54)
  %60 = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %rdx.minmax152)
  %61 = zext nneg i8 %60 to i32
  br label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bm, %.lr.ph92.preheader.i ], [ %20, %middle.block ]
  %.07689.i.ph = phi i32 [ 0, %.lr.ph92.preheader.i ], [ %59, %middle.block ]
  %.07788.i.ph = phi i32 [ 32, %.lr.ph92.preheader.i ], [ %61, %middle.block ]
  br label %.lr.ph92.i

bb.ab:                                            ; preds = %bb.ad, %.lr.ph.i
  %.07286.i = phi i32 [ 0, %.lr.ph.i ], [ %i.by, %bb.ad ] ; 3 uses
  %.07385.i = phi i32 [ 0, %.lr.ph.i ], [ %.174.i, %bb.ad ] ; 2 uses
  %i.bo = zext nneg i32 %.07286.i to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !16 ; 2 uses
  %i.bs = icmp sgt i16 %i.br, 0
  br i1 %i.bs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bt = zext nneg i16 %i.br to i32
  %i.bu = add nsw i32 %.07385.i, 1
  %i.bv = sub nsw i32 %2, %i.bt
  %notmask.i = shl nsw i32 -1, %i.bv
  %i.bw = xor i32 %notmask.i, -1
  %i.bx = add nuw nsw i32 %.07286.i, %i.bw
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.174.i = phi i32 [ %i.bu, %bb.ac ], [ %.07385.i, %bb.ab ] ; 3 uses
  %.1.i = phi i32 [ %i.bx, %bb.ac ], [ %.07286.i, %bb.ab ]
  %i.by = add nuw nsw i32 %.1.i, 1                ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bh
  br i1 %i.bz, label %bb.ab, label %._crit_edge.i, !llvm.loop !44

._crit_edge93.i:                                  ; preds = %.lr.ph92.i
  %.not.i85 = icmp sgt i32 %i.ce, %2
  br i1 %.not.i85, label %bb.ae, label %.lr.ph97.preheader.i

._crit_edge93.i.thread:                           ; preds = %._crit_edge.i
  %.not.i85105 = icmp slt i32 %2, 0
  br i1 %.not.i85105, label %bb.ae, label %._crit_edge98.i

.lr.ph97.preheader.i:                             ; preds = %._crit_edge93.i
  %i.ca = add i32 %.065.lcssa, -1
  %smin.i = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.ca)
  br label %.lr.ph97.i

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph92.i ], [ %indvars.iv.i.ph, %.lr.ph92.i.preheader ] ; 2 uses
  %.07689.i = phi i32 [ %i.ce, %.lr.ph92.i ], [ %.07689.i.ph, %.lr.ph92.i.preheader ]
  %.07788.i = phi i32 [ %..077.i, %.lr.ph92.i ], [ %.07788.i.ph, %.lr.ph92.i.preheader ]
  %i.cb = getelementptr inbounds [8 x i8], ptr %.191.ph, i64 %indvars.iv.i
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !21
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %..077.i = tail call i32 @llvm.umin.i32(i32 %.07788.i, i32 %i.cd) ; 4 uses
  %i.ce = tail call i32 @llvm.umax.i32(i32 %.07689.i, i32 %i.cd) ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cf = icmp slt i64 %indvars.iv.next.i, %i.bn
  br i1 %i.cf, label %.lr.ph92.i, label %._crit_edge93.i, !llvm.loop !45

bb.ae:                                            ; preds = %._crit_edge93.i.thread, %._crit_edge93.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 488) #9
  tail call void @abort() #10
  unreachable

.lr.ph97.i:                                       ; preds = %bb.af, %.lr.ph97.preheader.i
  %indvars.iv110.i = phi i64 [ %i.bn, %.lr.ph97.preheader.i ], [ %indvars.iv.next111.i, %bb.af ] ; 3 uses
  %i.cg = getelementptr [8 x i8], ptr %.191.ph, i64 %indvars.iv110.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !21
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nuw nsw i32 %..077.i, %i.cj
  %i.cl = icmp sgt i32 %i.ck, %2
  br i1 %i.cl, label %._crit_edge98.loopexit.split.loop.exit.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph97.i
  %indvars.iv.next111.i = add nsw i64 %indvars.iv110.i, -1 ; 2 uses
  %i.cm = icmp sgt i64 %indvars.iv.next111.i, %i.bm
  br i1 %i.cm, label %.lr.ph97.i, label %._crit_edge98.i, !llvm.loop !46

._crit_edge98.loopexit.split.loop.exit.i:         ; preds = %.lr.ph97.i
  %i.cn = trunc nsw i64 %indvars.iv110.i to i32
  br label %._crit_edge98.i

._crit_edge98.i:                                  ; preds = %bb.af, %._crit_edge93.i.thread, %._crit_edge98.loopexit.split.loop.exit.i
  %.077.lcssa.i106111 = phi i32 [ 32, %._crit_edge93.i.thread ], [ %..077.i, %._crit_edge98.loopexit.split.loop.exit.i ], [ %..077.i, %bb.af ] ; 4 uses
  %.076.lcssa.i107110 = phi i32 [ 0, %._crit_edge93.i.thread ], [ %i.ce, %._crit_edge98.loopexit.split.loop.exit.i ], [ %i.ce, %bb.af ] ; 4 uses
  %.075.lcssa.i = phi i32 [ %.065.lcssa, %._crit_edge93.i.thread ], [ %i.cn, %._crit_edge98.loopexit.split.loop.exit.i ], [ %smin.i, %bb.af ] ; 4 uses
  %smax119.i = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 1) ; 3 uses
  %wide.trip.count120.i = zext nneg i32 %smax119.i to i64 ; 4 uses
  br i1 %i.bf, label %.lr.ph104.split.i.preheader, label %.lr.ph104.split.us.i.preheader

.lr.ph104.split.us.i.preheader:                   ; preds = %._crit_edge98.i
  %xtraiter = and i64 %wide.trip.count120.i, 1
  %i.co = icmp slt i32 %i.bh, 2
  br i1 %i.co, label %.lr.ph104.split.us.i.epil.preheader, label %.lr.ph104.split.us.i.preheader.new

.lr.ph104.split.us.i.preheader.new:               ; preds = %.lr.ph104.split.us.i.preheader
  %unroll_iter = and i64 %wide.trip.count120.i, 2147483646
  br label %.lr.ph104.split.us.i

.lr.ph104.split.i.preheader:                      ; preds = %._crit_edge98.i
  %xtraiter153 = and i64 %wide.trip.count120.i, 1
  %i.cp = icmp slt i32 %i.bh, 2
  br i1 %i.cp, label %.lr.ph104.split.i.epil.preheader, label %.lr.ph104.split.i.preheader.new

.lr.ph104.split.i.preheader.new:                  ; preds = %.lr.ph104.split.i.preheader
  %unroll_iter156 = and i64 %wide.trip.count120.i, 2147483646
  br label %.lr.ph104.split.i

.lr.ph104.split.us.i:                             ; preds = %.lr.ph104.split.us.i, %.lr.ph104.split.us.i.preheader.new
  %indvars.iv116.i = phi i64 [ 0, %.lr.ph104.split.us.i.preheader.new ], [ %indvars.iv.next117.i.1, %.lr.ph104.split.us.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph104.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph104.split.us.i ]
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv116.i ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !16
  %i.cu = trunc i16 %i.ct to i8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv116.i ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  store i8 %i.cu, ptr %i.cw, align 2, !tbaa !31
  %i.cx = load i16, ptr %i.cs, align 2, !tbaa !16
  %i.cy = icmp sgt i16 %i.cx, 0
  %i.cz = zext i1 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 7
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !32
  %i.db = load i16, ptr %i.cr, align 2, !tbaa !16
  %i.dc = trunc i16 %i.db to i8
  store i8 %i.dc, ptr %i.cv, align 2, !tbaa !16
  %indvars.iv.next117.i = or disjoint i64 %indvars.iv116.i, 1 ; 2 uses
  %i.dd = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next117.i ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !16
  %i.dh = trunc i16 %i.dg to i8
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next117.i ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i8 %i.dh, ptr %i.dj, align 2, !tbaa !31
  %i.dk = load i16, ptr %i.df, align 2, !tbaa !16
  %i.dl = icmp sgt i16 %i.dk, 0
  %i.dm = zext i1 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 7
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !32
  %i.do = load i16, ptr %i.de, align 2, !tbaa !16
  %i.dp = trunc i16 %i.do to i8
  store i8 %i.dp, ptr %i.di, align 2, !tbaa !16
  %indvars.iv.next117.i.1 = add nuw nsw i64 %indvars.iv116.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %vlc_multi_gen.exit.loopexit149.unr-lcssa, label %.lr.ph104.split.us.i, !llvm.loop !47

.lr.ph104.split.i:                                ; preds = %.lr.ph104.split.i, %.lr.ph104.split.i.preheader.new
  %indvars.iv113.i = phi i64 [ 0, %.lr.ph104.split.i.preheader.new ], [ %indvars.iv.next114.i.1, %.lr.ph104.split.i ] ; 4 uses
  %niter157 = phi i64 [ 0, %.lr.ph104.split.i.preheader.new ], [ %niter157.next.1, %.lr.ph104.split.i ]
  %i.dq = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv113.i ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !16
  %i.du = trunc i16 %i.dt to i8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv113.i ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 6
  store i8 %i.du, ptr %i.dw, align 2, !tbaa !31
  %i.dx = load i16, ptr %i.ds, align 2, !tbaa !16
  %i.dy = icmp sgt i16 %i.dx, 0
  %i.dz = zext i1 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 7
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !32
  %i.eb = load i16, ptr %i.dr, align 2, !tbaa !16
  store i16 %i.eb, ptr %i.dv, align 2, !tbaa !16
  %indvars.iv.next114.i = or disjoint i64 %indvars.iv113.i, 1 ; 2 uses
  %i.ec = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.next114.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !16
  %i.eg = trunc i16 %i.ef to i8
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next114.i ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 6
  store i8 %i.eg, ptr %i.ei, align 2, !tbaa !31
  %i.ej = load i16, ptr %i.ee, align 2, !tbaa !16
  %i.ek = icmp sgt i16 %i.ej, 0
  %i.el = zext i1 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 7
  store i8 %i.el, ptr %i.em, align 1, !tbaa !32
  %i.en = load i16, ptr %i.ed, align 2, !tbaa !16
  store i16 %i.en, ptr %i.eh, align 2, !tbaa !16
  %indvars.iv.next114.i.1 = add nuw nsw i64 %indvars.iv113.i, 2 ; 2 uses
  %niter157.next.1 = add i64 %niter157, 2         ; 2 uses
  %niter157.ncmp.1 = icmp eq i64 %niter157.next.1, %unroll_iter156
  br i1 %niter157.ncmp.1, label %vlc_multi_gen.exit.loopexit.unr-lcssa, label %.lr.ph104.split.i, !llvm.loop !47

vlc_multi_gen.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph104.split.i
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %vlc_multi_gen.exit, label %.lr.ph104.split.i.epil.preheader

.lr.ph104.split.i.epil.preheader:                 ; preds = %vlc_multi_gen.exit.loopexit.unr-lcssa, %.lr.ph104.split.i.preheader
  %indvars.iv113.i.epil.init = phi i64 [ 0, %.lr.ph104.split.i.preheader ], [ %indvars.iv.next114.i.1, %vlc_multi_gen.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod155 = trunc i32 %smax119.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.eo = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv113.i.epil.init ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !16
  %i.es = trunc i16 %i.er to i8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv113.i.epil.init ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 6
  store i8 %i.es, ptr %i.eu, align 2, !tbaa !31
  %i.ev = load i16, ptr %i.eq, align 2, !tbaa !16
  %i.ew = icmp sgt i16 %i.ev, 0
  %i.ex = zext i1 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 7
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !32
  %i.ez = load i16, ptr %i.ep, align 2, !tbaa !16
  store i16 %i.ez, ptr %i.et, align 2, !tbaa !16
  br label %vlc_multi_gen.exit

vlc_multi_gen.exit.loopexit149.unr-lcssa:         ; preds = %.lr.ph104.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vlc_multi_gen.exit, label %.lr.ph104.split.us.i.epil.preheader

.lr.ph104.split.us.i.epil.preheader:              ; preds = %vlc_multi_gen.exit.loopexit149.unr-lcssa, %.lr.ph104.split.us.i.preheader
  %indvars.iv116.i.epil.init = phi i64 [ 0, %.lr.ph104.split.us.i.preheader ], [ %indvars.iv.next117.i.1, %vlc_multi_gen.exit.loopexit149.unr-lcssa ] ; 2 uses
  %lcmp.mod152 = trunc i32 %smax119.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.fa = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv116.i.epil.init ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2 ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !16
  %i.fe = trunc i16 %i.fd to i8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv116.i.epil.init ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  store i8 %i.fe, ptr %i.fg, align 2, !tbaa !31
  %i.fh = load i16, ptr %i.fc, align 2, !tbaa !16
  %i.fi = icmp sgt i16 %i.fh, 0
  %i.fj = zext i1 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 7
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !32
  %i.fl = load i16, ptr %i.fb, align 2, !tbaa !16
  %i.fm = trunc i16 %i.fl to i8
  store i8 %i.fm, ptr %i.ff, align 2, !tbaa !16
  br label %vlc_multi_gen.exit

vlc_multi_gen.exit:                               ; preds = %.lr.ph104.split.us.i.epil.preheader, %vlc_multi_gen.exit.loopexit149.unr-lcssa, %.lr.ph104.split.i.epil.preheader, %vlc_multi_gen.exit.loopexit.unr-lcssa, %bb.aa
  %.075.lcssa140.i = phi i32 [ %.075.lcssa.i, %.lr.ph104.split.i.epil.preheader ], [ %.065.lcssa, %bb.aa ], [ %.075.lcssa.i, %vlc_multi_gen.exit.loopexit.unr-lcssa ], [ %.075.lcssa.i, %vlc_multi_gen.exit.loopexit149.unr-lcssa ], [ %.075.lcssa.i, %.lr.ph104.split.us.i.epil.preheader ] ; 2 uses
  %.076.lcssa130133139.i = phi i32 [ %.076.lcssa.i107110, %.lr.ph104.split.i.epil.preheader ], [ 0, %bb.aa ], [ %.076.lcssa.i107110, %vlc_multi_gen.exit.loopexit.unr-lcssa ], [ %.076.lcssa.i107110, %vlc_multi_gen.exit.loopexit149.unr-lcssa ], [ %.076.lcssa.i107110, %.lr.ph104.split.us.i.epil.preheader ]
  %.077.lcssa129134138.i = phi i32 [ %.077.lcssa.i106111, %.lr.ph104.split.i.epil.preheader ], [ 32, %bb.aa ], [ %.077.lcssa.i106111, %vlc_multi_gen.exit.loopexit.unr-lcssa ], [ %.077.lcssa.i106111, %vlc_multi_gen.exit.loopexit149.unr-lcssa ], [ %.077.lcssa.i106111, %.lr.ph104.split.us.i.epil.preheader ] ; 2 uses
  call fastcc void @add_level(ptr noundef %i.be, i32 noundef range(i32 0, 2) %i.bg, i32 noundef %.065.lcssa, i32 noundef %2, ptr noundef nonnull readonly %.191.ph, i32 noundef 0, i32 noundef 0, i32 noundef %.076.lcssa130133139.i, i32 noundef 0, i32 noundef %.077.lcssa129134138.i, i32 noundef %.075.lcssa140.i, ptr noundef %i.a, i64 0)
  %i.fn = load i32, ptr %i.a, align 16, !tbaa !19
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !19
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !19
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fv = load i32, ptr %i.fu, align 16, !tbaa !19
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %12, i32 noundef 48, ptr noundef nonnull @.str.13, i32 noundef %i.fn, i32 noundef %i.fp, i32 noundef %i.fr, i32 noundef %i.ft, i32 noundef %i.fv, i32 noundef %.077.lcssa129134138.i, i32 noundef %.075.lcssa140.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not81 = icmp eq ptr %.191.ph, %13
  br i1 %.not81, label %vlc_common_init.exit, label %bb.ag

bb.ag:                                            ; preds = %vlc_multi_gen.exit
  call void @av_free(ptr noundef nonnull %.191.ph) #9
  br label %vlc_common_init.exit

bb.ah:                                            ; preds = %vlc_common_end.exit, %bb.t, %bb.r, %.thread.i
  %.not82 = icmp eq ptr %.191.ph, %13
  br i1 %.not82, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @av_free(ptr noundef nonnull %.191.ph) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @av_freep(ptr noundef nonnull %1) #9
  br label %vlc_common_init.exit

vlc_common_init.exit:                             ; preds = %bb.e, %vlc_multi_gen.exit, %bb.ag, %bb.aj
  %.069 = phi i32 [ 0, %vlc_multi_gen.exit ], [ -12, %bb.e ], [ -1094995529, %bb.aj ], [ 0, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  ret i32 %.069
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ff_vlc_free_multi(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @av_freep(ptr noundef %0) #9
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ff_vlc_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.a) #9
  ret void
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @build_table(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 30
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 1, %1                    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.e = add nsw i32 %i.d, %i.b                   ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15   ; 2 uses
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %alloc_table.exit

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %4, 1
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = load i32, ptr %0, align 8, !tbaa !12
  %i.k = shl nuw i32 1, %i.j
  %i.l = add nsw i32 %i.k, %i.g                   ; 2 uses
  store i32 %i.l, ptr %i.f, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = sext i32 %i.l to i64
  %i.p = tail call ptr @av_realloc_f(ptr noundef %i.n, i64 noundef %i.o, i64 noundef 4) #9 ; 3 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !14
  %.not21.i = icmp eq ptr %i.p, null
  br i1 %.not21.i, label %alloc_table.exit.thread, label %bb.f

alloc_table.exit.thread:                          ; preds = %bb.e
  store i32 0, ptr %i.f, align 4, !tbaa !15
  store i32 0, ptr %i.c, align 8, !tbaa !13
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.f, align 4, !tbaa !15
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.r
  %i.t = load i32, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.u = shl nuw i32 1, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.w
  %i.y = zext nneg i32 %i.t to i64
  %i.z = shl i64 4, %i.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.x, i8 0, i64 %i.z, i1 false)
  br label %alloc_table.exit

alloc_table.exit:                                 ; preds = %bb.b, %bb.f
  %i.aa = icmp slt i32 %i.d, 0
  br i1 %i.aa, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %alloc_table.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.ad = zext nneg i32 %i.d to i64               ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %.not171219 = icmp sgt i32 %2, 0
  br i1 %.not171219, label %.lr.ph224, label %.preheader.preheader

.lr.ph224:                                        ; preds = %bb.g
  %i.af = sub nsw i32 32, %1                      ; 4 uses
  %i.ag = and i32 %4, 8
  %.not167 = icmp eq i32 %i.ag, 0                 ; 2 uses
  %i.ah = zext nneg i32 %2 to i64
  %i.ai = add nsw i32 %2, -1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph224, %.loopexit197
  %.0138221 = phi i32 [ 0, %.lr.ph224 ], [ %i.ey, %.loopexit197 ] ; 7 uses
  %.0145220 = phi ptr [ %i.ae, %.lr.ph224 ], [ %.3148.ph, %.loopexit197 ] ; 3 uses
  %i.aj = sext i32 %.0138221 to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aj ; 5 uses
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !21  ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !23 ; 2 uses
  %.not = icmp slt i32 %1, %i.am
  br i1 %.not, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = lshr i32 %i.ao, %i.af
  %i.as = sub nuw nsw i32 %1, %i.am
  br i1 %.not167, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = and i32 %i.ao, 255
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !16
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw i32 %i.ax, 24
  %i.az = lshr i32 %i.ao, 8
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 16
  %i.bg = or disjoint i32 %i.bf, %i.ay
  %i.bh = lshr i32 %i.ao, 16
  %i.bi = and i32 %i.bh, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = or disjoint i32 %i.bg, %i.bn
  %i.bp = lshr i32 %i.ao, 24
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bo, %i.bt
  %i.bv = shl nuw nsw i32 1, %i.am
  %i.bw = zext nneg i32 %i.bv to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0137 = phi i32 [ %i.bu, %bb.j ], [ %i.ar, %bb.i ]
  %.0136 = phi i64 [ %i.bw, %bb.j ], [ 1, %bb.i ]
  %i.bx = zext i8 %i.al to i16
  %i.by = sext i32 %.0137 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.n
  %indvars.iv = phi i64 [ %i.by, %bb.k ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %.0135204 = phi i32 [ 0, %bb.k ], [ %i.cg, %bb.n ]
  %i.bz = getelementptr inbounds [4 x i8], ptr %.0145220, i64 %indvars.iv ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !16 ; 2 uses
  %i.cc = load i16, ptr %i.bz, align 2, !tbaa !16 ; 2 uses
  %i.cd = icmp ne i16 %i.cb, 0
  %i.ce = icmp ne i16 %i.cc, 0
  %or.cond = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = sext i16 %i.cb to i32
  %.not168 = icmp eq i32 %i.cf, %i.am
  %.not169 = icmp eq i16 %i.cc, %i.aq
  %or.cond172 = select i1 %.not168, i1 %.not169, i1 false
  br i1 %or.cond172, label %bb.n, label %.thread179

.thread179:                                       ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #9
  br label %.loopexit

bb.n:                                             ; preds = %bb.l, %bb.m
  store i16 %i.bx, ptr %i.ca, align 2, !tbaa !16
  store i16 %i.aq, ptr %i.bz, align 2, !tbaa !16
  %indvars.iv.next = add nsw i64 %indvars.iv, %.0136
  %i.cg = add nuw nsw i32 %.0135204, 1            ; 2 uses
  %.0135.highbits = lshr i32 %i.cg, %i.as
  %.not170 = icmp eq i32 %.0135.highbits, 0
  br i1 %.not170, label %bb.l, label %.loopexit197, !llvm.loop !51

bb.o:                                             ; preds = %bb.h
  %i.ch = sub nsw i32 %i.am, %1                   ; 4 uses
  %i.ci = lshr i32 %i.ao, %i.af                   ; 6 uses
  %i.cj = trunc i32 %i.ch to i8
  store i8 %i.cj, ptr %i.ak, align 4, !tbaa !21
  %i.ck = shl i32 %i.ao, %1
  store i32 %i.ck, ptr %i.an, align 4, !tbaa !22
  %.0133205 = add nsw i32 %.0138221, 1            ; 5 uses
  %i.cl = icmp slt i32 %.0133205, %2
  br i1 %i.cl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.cm = sext i32 %.0133205 to i64               ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cm ; 2 uses
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !21
  %i.cp = zext i8 %i.co to i32
  %i.cq = sub nsw i32 %i.cp, %1                   ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 1
  br i1 %i.cr, label %._crit_edge, label %.lr.ph263

.lr.ph:                                           ; preds = %bb.p
  %i.cs = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next237 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !21
  %i.cu = zext i8 %i.ct to i32
  %i.cv = sub nsw i32 %i.cu, %1                   ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 1
  %i.cx = trunc nsw i64 %indvars.iv.next237 to i32 ; 2 uses
  br i1 %i.cw, label %._crit_edge, label %.lr.ph263, !llvm.loop !52

.lr.ph263:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cy = phi i32 [ %i.cx, %.lr.ph ], [ %.0133205, %.lr.ph.preheader ] ; 3 uses
  %i.cz = phi i32 [ %i.cv, %.lr.ph ], [ %i.cq, %.lr.ph.preheader ] ; 2 uses
  %i.da = phi ptr [ %i.cs, %.lr.ph ], [ %i.cn, %.lr.ph.preheader ] ; 2 uses
  %.0134206262 = phi i32 [ %i.dg, %.lr.ph ], [ %i.ch, %.lr.ph.preheader ] ; 2 uses
  %.0133.in207261 = phi i32 [ %i.cy, %.lr.ph ], [ %.0138221, %.lr.ph.preheader ]
  %indvars.iv236260 = phi i64 [ %indvars.iv.next237, %.lr.ph ], [ %i.cm, %.lr.ph.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !22 ; 2 uses
  %i.dd = lshr i32 %i.dc, %i.af
  %.not164 = icmp eq i32 %i.dd, %i.ci
  br i1 %.not164, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %.lr.ph263
  %i.de = trunc i32 %i.cz to i8
  store i8 %i.de, ptr %i.da, align 4, !tbaa !21
  %i.df = shl i32 %i.dc, %1
  store i32 %i.df, ptr %i.db, align 4, !tbaa !22
  %i.dg = tail call i32 @llvm.smax.i32(i32 %.0134206262, i32 %i.cz) ; 3 uses
  %indvars.iv.next237 = add nsw i64 %indvars.iv236260, 1 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next237, %i.ah
  br i1 %exitcond.not, label %.._crit_edge.loopexit_crit_edge269, label %.lr.ph, !llvm.loop !52

.._crit_edge.loopexit_crit_edge269:               ; preds = %bb.p
  br label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph263, %.lr.ph, %.lr.ph.preheader, %.._crit_edge.loopexit_crit_edge269, %bb.o
  %.0134.lcssa = phi i32 [ %i.ch, %bb.o ], [ %i.dg, %.._crit_edge.loopexit_crit_edge269 ], [ %i.ch, %.lr.ph.preheader ], [ %i.dg, %.lr.ph ], [ %.0134206262, %.lr.ph263 ]
  %.0133.in.lcssa = phi i32 [ %.0138221, %bb.o ], [ %i.ai, %.._crit_edge.loopexit_crit_edge269 ], [ %.0138221, %.lr.ph.preheader ], [ %i.cy, %.lr.ph ], [ %.0133.in207261, %.lr.ph263 ]
  %.0133.lcssa = phi i32 [ %.0133205, %bb.o ], [ %2, %.._crit_edge.loopexit_crit_edge269 ], [ %.0133205, %.lr.ph.preheader ], [ %i.cx, %.lr.ph ], [ %i.cy, %.lr.ph263 ]
  %i.dh = tail call i32 @llvm.smin.i32(i32 %.0134.lcssa, i32 %1) ; 2 uses
  br i1 %.not167, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.di = and i32 %i.ci, 255
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl nuw i32 %i.dm, 24
  %i.do = lshr i32 %i.ci, 8
  %i.dp = and i32 %i.do, 255
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !16
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 16
  %i.dv = or disjoint i32 %i.du, %i.dn
  %i.dw = lshr i32 %i.ci, 16
  %i.dx = and i32 %i.dw, 255
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !16
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 8
  %i.ed = or disjoint i32 %i.dv, %i.ec
  %i.ee = lshr i32 %i.ci, 24
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !16
  %i.ei = zext i8 %i.eh to i32
  %i.ej = or disjoint i32 %i.ed, %i.ei
  %i.ek = lshr i32 %i.ej, %i.af
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  %i.el = phi i32 [ %i.ek, %bb.q ], [ %i.ci, %._crit_edge ]
  %i.em = trunc i32 %i.dh to i16
  %i.en = sub i16 0, %i.em
  %i.eo = zext nneg i32 %i.el to i64              ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0145220, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i16 %i.en, ptr %i.eq, align 2, !tbaa !16
  %i.er = sub nsw i32 %.0133.lcssa, %.0138221
  %i.es = tail call fastcc i32 @build_table(ptr noundef %0, i32 noundef %i.dh, i32 noundef %i.er, ptr noundef nonnull %i.ak, i32 noundef %4) ; 4 uses
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ad ; 2 uses
  %i.ew = trunc i32 %i.es to i16
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.eo
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !16
  %.not166 = icmp samesign ult i32 %i.es, 32768
  br i1 %.not166, label %.loopexit197, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef null, ptr noundef nonnull @.str.11) #9
  br label %.loopexit

.loopexit197:                                     ; preds = %bb.n, %bb.s
  %.3148.ph = phi ptr [ %i.ev, %bb.s ], [ %.0145220, %bb.n ] ; 2 uses
  %.3.ph = phi i32 [ %.0133.in.lcssa, %bb.s ], [ %.0138221, %bb.n ]
  %i.ey = add nsw i32 %.3.ph, 1                   ; 2 uses
  %.not171 = icmp slt i32 %i.ey, %2
  br i1 %.not171, label %bb.h, label %.preheader.preheader, !llvm.loop !53

.preheader.preheader:                             ; preds = %.loopexit197, %bb.g
  %.4149 = phi ptr [ %i.ae, %bb.g ], [ %.3148.ph, %.loopexit197 ] ; 9 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.preheader.preheader289, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.ez = and i64 %wide.trip.count, 7             ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  %i.fb = select i1 %i.fa, i64 8, i64 %i.ez
  %n.vec = sub nsw i64 %wide.trip.count, %i.fb    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue288, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue288 ] ; 9 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.4149, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.4149, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 18
  %wide.vec = load <8 x i16>, ptr %i.ff, align 2, !tbaa !16
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec273 = load <8 x i16>, ptr %i.fg, align 2, !tbaa !16
  %strided.vec274 = shufflevector <8 x i16> %wide.vec273, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fh = icmp eq <4 x i16> %strided.vec, zeroinitializer ; 4 uses
  %i.fi = icmp eq <4 x i16> %strided.vec274, zeroinitializer ; 4 uses
  %i.fj = extractelement <4 x i1> %i.fh, i64 0
  br i1 %i.fj, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %i.fc, align 2, !tbaa !16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.fk = extractelement <4 x i1> %i.fh, i64 1
  br i1 %i.fk, label %pred.store.if275, label %pred.store.continue276

pred.store.if275:                                 ; preds = %pred.store.continue
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.4149, i64 %index
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i16 -1, ptr %i.fm, align 2, !tbaa !16
  br label %pred.store.continue276

pred.store.continue276:                           ; preds = %pred.store.if275, %pred.store.continue
  %i.fn = extractelement <4 x i1> %i.fh, i64 2
  br i1 %i.fn, label %pred.store.if277, label %pred.store.continue278

pred.store.if277:                                 ; preds = %pred.store.continue276
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.4149, i64 %index
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i16 -1, ptr %i.fp, align 2, !tbaa !16
  br label %pred.store.continue278

pred.store.continue278:                           ; preds = %pred.store.if277, %pred.store.continue276
  %i.fq = extractelement <4 x i1> %i.fh, i64 3
  br i1 %i.fq, label %pred.store.if279, label %pred.store.continue280

pred.store.if279:                                 ; preds = %pred.store.continue278
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.4149, i64 %index
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i16 -1, ptr %i.fs, align 2, !tbaa !16
  br label %pred.store.continue280

pred.store.continue280:                           ; preds = %pred.store.if279, %pred.store.continue278
  %i.ft = extractelement <4 x i1> %i.fi, i64 0
  br i1 %i.ft, label %pred.store.if281, label %pred.store.continue282

pred.store.if281:                                 ; preds = %pred.store.continue280
  store i16 -1, ptr %i.fe, align 2, !tbaa !16
  br label %pred.store.continue282

pred.store.continue282:                           ; preds = %pred.store.if281, %pred.store.continue280
  %i.fu = extractelement <4 x i1> %i.fi, i64 1
  br i1 %i.fu, label %pred.store.if283, label %pred.store.continue284

pred.store.if283:                                 ; preds = %pred.store.continue282
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.4149, i64 %index
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  store i16 -1, ptr %i.fw, align 2, !tbaa !16
  br label %pred.store.continue284

pred.store.continue284:                           ; preds = %pred.store.if283, %pred.store.continue282
  %i.fx = extractelement <4 x i1> %i.fi, i64 2
  br i1 %i.fx, label %pred.store.if285, label %pred.store.continue286

pred.store.if285:                                 ; preds = %pred.store.continue284
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.4149, i64 %index
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store i16 -1, ptr %i.fz, align 2, !tbaa !16
  br label %pred.store.continue286

pred.store.continue286:                           ; preds = %pred.store.if285, %pred.store.continue284
  %i.ga = extractelement <4 x i1> %i.fi, i64 3
  br i1 %i.ga, label %pred.store.if287, label %pred.store.continue288

pred.store.if287:                                 ; preds = %pred.store.continue286
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.4149, i64 %index
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 28
  store i16 -1, ptr %i.gc, align 2, !tbaa !16
  br label %pred.store.continue288

pred.store.continue288:                           ; preds = %pred.store.if287, %pred.store.continue286
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %.preheader.preheader289, label %vector.body, !llvm.loop !54

.preheader.preheader289:                          ; preds = %pred.store.continue288, %.preheader.preheader
  %indvars.iv239.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %pred.store.continue288 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader289, %bb.v
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %bb.v ], [ %indvars.iv239.ph, %.preheader.preheader289 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.4149, i64 %indvars.iv239 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !16
  %i.gh = icmp eq i16 %i.gg, 0
  br i1 %i.gh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.preheader
  store i16 -1, ptr %i.ge, align 2, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.u
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count
  br i1 %exitcond242.not, label %.loopexit, label %.preheader, !llvm.loop !55

.loopexit:                                        ; preds = %bb.r, %bb.v, %.thread179, %bb.t, %alloc_table.exit.thread, %alloc_table.exit, %bb.a
  %.8 = phi i32 [ -1163346256, %bb.t ], [ -22, %bb.a ], [ %i.d, %alloc_table.exit ], [ -12, %alloc_table.exit.thread ], [ %i.d, %bb.v ], [ -1094995529, %.thread179 ], [ %i.es, %bb.r ]
  ret i32 %.8
}

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_realloc_f(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @add_level(ptr nofree noundef writeonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2, i32 noundef range(i32 0, -2147483648) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, -2147483648) %7, i32 noundef range(i32 0, 6) %8, i32 noundef range(i32 0, 33) %9, i32 noundef %10, ptr nofree noundef nonnull captures(none) %11, i64 %12) unnamed_addr #6 {
bb.a:
  %13 = alloca %struct.VLC_MULTI_ELEM, align 8    ; 11 uses
  store i64 %12, ptr %13, align 8
  %.not.not83 = icmp sgt i32 %2, %10
  br i1 %.not.not83, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.a = lshr exact i32 6, %1
  %.not75 = icmp eq i32 %1, 0                     ; 4 uses
  %i.b = zext nneg i32 %8 to i64                  ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %13, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 %i.b ; 4 uses
  %.not76 = icmp eq i32 %8, 0
  %i.e = sub nsw i32 32, %3                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 6 ; 2 uses
  %i.g = trunc nuw nsw i32 %8 to i8
  %i.h = add nuw nsw i8 %i.g, 1                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 7 ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %11, i64 %i.b
  %i.k = getelementptr i8, ptr %i.j, i64 -4       ; 4 uses
  %i.l = add nuw nsw i32 %8, 1                    ; 5 uses
  %i.m = icmp samesign uge i32 %i.l, %i.a
  %.fr = freeze i1 %i.m                           ; 3 uses
  %i.n = sext i32 %2 to i64                       ; 4 uses
  %i.o = sext i32 %10 to i64                      ; 2 uses
  br i1 %.not76, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  br i1 %.fr, label %.critedge, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph.split.us, %.critedge78.loopexit.split.us.us.split
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.critedge78.loopexit.split.us.us.split ], [ %i.n, %.preheader.lr.ph.split.us ] ; 2 uses
  %indvars.iv110.in = phi i64 [ %indvars.iv110, %.critedge78.loopexit.split.us.us.split ], [ %i.n, %.preheader.lr.ph.split.us ]
  %indvars.iv110 = add nsw i64 %indvars.iv110.in, -1 ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv110 ; 3 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !21
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !23   ; 2 uses
  %.not74.us.us = icmp samesign ugt i32 %7, %i.r
  br i1 %.not74.us.us, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader.us
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !22
  %i.w = lshr i32 %i.v, %6
  %i.x = add i32 %i.w, %5
  %i.y = sub nuw nsw i32 %7, %i.r                 ; 2 uses
  %i.z = add nsw i32 %6, %i.r
  br i1 %.not75, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.t, ptr %i.c, align 2, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = trunc i16 %i.t to i8
  store i8 %i.aa, ptr %i.d, align 1, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not77.us.us = icmp samesign ult i32 %i.y, %9
  br i1 %.not77.us.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %13, align 8
  tail call fastcc void @add_level(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.y, i32 noundef %i.l, i32 noundef %9, i32 noundef %10, ptr noundef %11, i64 %i.ab)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = getelementptr [8 x i8], ptr %4, i64 %indvars.iv112 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !21
  %i.af = zext i8 %i.ae to i32                    ; 3 uses
  %i.ag = getelementptr i8, ptr %i.ac, i64 -14
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !23 ; 2 uses
  %.not74.us.us.1 = icmp samesign ugt i32 %7, %i.af
  br i1 %.not74.us.us.1, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.ac, i64 -12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !22
  %i.ak = lshr i32 %i.aj, %6
  %i.al = add i32 %i.ak, %5
  %i.am = sub nuw nsw i32 %7, %i.af               ; 2 uses
  %i.an = add nsw i32 %6, %i.af
  br i1 %.not75, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.ah, ptr %i.c, align 2, !tbaa !16
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ao = trunc i16 %i.ah to i8
  store i8 %i.ao, ptr %i.d, align 1, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not77.us.us.1 = icmp samesign ult i32 %i.am, %9
  br i1 %.not77.us.us.1, label %.critedge78.loopexit.split.us.us.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %13, align 8
  tail call fastcc void @add_level(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.am, i32 noundef %i.l, i32 noundef %9, i32 noundef %10, ptr noundef %11, i64 %i.ap)
  br label %.critedge78.loopexit.split.us.us.split

.critedge78.loopexit.split.us.us.split:           ; preds = %bb.l, %bb.k
  %.not.not.us = icmp sgt i64 %indvars.iv110, %i.o
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, -1
  br i1 %.not.not.us, label %.preheader.us, label %.critedge, !llvm.loop !56

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge78.loopexit.split
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %.critedge78.loopexit.split ], [ %i.n, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv103.in = phi i64 [ %indvars.iv103, %.critedge78.loopexit.split ], [ %i.n, %.preheader.lr.ph ]
  %indvars.iv103 = add nsw i64 %indvars.iv103.in, -1 ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv103 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !21
  %i.as = zext i8 %i.ar to i32                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !23 ; 2 uses
  %.not74 = icmp samesign ugt i32 %7, %i.as
  br i1 %.not74, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22
  %i.ax = lshr i32 %i.aw, %6
  %i.ay = add i32 %i.ax, %5                       ; 2 uses
  %i.az = sub nuw nsw i32 %7, %i.as               ; 2 uses
  %i.ba = add nsw i32 %6, %i.as                   ; 3 uses
  br i1 %.not75, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i16 %i.au, ptr %i.c, align 2, !tbaa !16
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bb = trunc i16 %i.au to i8
  store i8 %i.bb, ptr %i.d, align 1, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = lshr i32 %i.ay, %i.e                    ; 3 uses
  %i.bd = sub nsw i32 %3, %i.ba
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = add i32 %i.bc, %i.be                    ; 2 uses
  %i.bg = trunc i32 %i.ba to i8
  store i8 %i.bg, ptr %i.f, align 2, !tbaa !31
  store i8 %i.h, ptr %i.i, align 1, !tbaa !32
  %i.bh = icmp ult i32 %i.bc, %i.bf
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.bi = load i64, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.bj = zext i32 %i.bc to i64                   ; 4 uses
  %wide.trip.count = zext i32 %i.bf to i64        ; 2 uses
  %i.bk = sub nsw i64 %wide.trip.count, %i.bj     ; 3 uses
  %min.iters.check156 = icmp ult i64 %i.bk, 4
  br i1 %min.iters.check156, label %scalar.ph155.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph
  %n.vec158 = and i64 %i.bk, -4                   ; 3 uses
  %i.bl = add nsw i64 %n.vec158, %i.bj
  %broadcast.splatinsert159 = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat160 = shufflevector <2 x i64> %broadcast.splatinsert159, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.bj
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph157
  %index162 = phi i64 [ 0, %vector.ph157 ], [ %index.next163, %vector.body161 ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index162 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> %broadcast.splat160, ptr %gep, align 8, !tbaa !16
  store <2 x i64> %broadcast.splat160, ptr %i.bm, align 8, !tbaa !16
  %index.next163 = add nuw i64 %index162, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.bn, label %middle.block164, label %vector.body161, !llvm.loop !57

middle.block164:                                  ; preds = %vector.body161
  %cmp.n165 = icmp eq i64 %i.bk, %n.vec158
  br i1 %cmp.n165, label %._crit_edge, label %scalar.ph155.preheader

scalar.ph155.preheader:                           ; preds = %.lr.ph, %middle.block164
  %indvars.iv.ph = phi i64 [ %i.bj, %.lr.ph ], [ %i.bl, %middle.block164 ]
  br label %scalar.ph155

scalar.ph155:                                     ; preds = %scalar.ph155.preheader, %scalar.ph155
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph155 ], [ %indvars.iv.ph, %scalar.ph155.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.bi, ptr %i.bo, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph155, !llvm.loop !58

._crit_edge:                                      ; preds = %scalar.ph155, %middle.block164, %bb.p
  %i.bp = load i32, ptr %i.k, align 4, !tbaa !19
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.k, align 4, !tbaa !19
  %.not77 = icmp samesign ult i32 %i.az, %9
  %or.cond = select i1 %.fr, i1 true, i1 %.not77
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.br = load i64, ptr %13, align 8
  tail call fastcc void @add_level(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef %i.az, i32 noundef %i.l, i32 noundef %9, i32 noundef %10, ptr noundef %11, i64 %i.br)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  %i.bs = getelementptr [8 x i8], ptr %4, i64 %indvars.iv105 ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -16
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !21
  %i.bv = zext i8 %i.bu to i32                    ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bs, i64 -14
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !23 ; 2 uses
  %.not74.1 = icmp samesign ugt i32 %7, %i.bv
  br i1 %.not74.1, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr i8, ptr %i.bs, i64 -12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !22
  %i.ca = lshr i32 %i.bz, %6
  %i.cb = add i32 %i.ca, %5                       ; 2 uses
  %i.cc = sub nuw nsw i32 %7, %i.bv               ; 2 uses
  %i.cd = add nsw i32 %6, %i.bv                   ; 3 uses
  br i1 %.not75, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i16 %i.bx, ptr %i.c, align 2, !tbaa !16
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ce = trunc i16 %i.bx to i8
  store i8 %i.ce, ptr %i.d, align 1, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cf = lshr i32 %i.cb, %i.e                    ; 3 uses
  %i.cg = sub nsw i32 %3, %i.cd
  %i.ch = shl nuw i32 1, %i.cg
  %i.ci = add i32 %i.cf, %i.ch                    ; 2 uses
  %i.cj = trunc i32 %i.cd to i8
  store i8 %i.cj, ptr %i.f, align 2, !tbaa !31
  store i8 %i.h, ptr %i.i, align 1, !tbaa !32
  %i.ck = icmp ult i32 %i.cf, %i.ci
  br i1 %i.ck, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %bb.v
  %i.cl = load i64, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.cm = zext i32 %i.cf to i64                   ; 4 uses
  %wide.trip.count.1 = zext i32 %i.ci to i64      ; 2 uses
  %i.cn = sub nsw i64 %wide.trip.count.1, %i.cm   ; 3 uses
  %min.iters.check = icmp ult i64 %i.cn, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.1
  %n.vec = and i64 %i.cn, -4                      ; 3 uses
  %i.co = add nsw i64 %n.vec, %i.cm
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep168 = getelementptr [8 x i8], ptr %0, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep169 = getelementptr [8 x i8], ptr %invariant.gep168, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %gep169, i64 16
  store <2 x i64> %broadcast.splat, ptr %gep169, align 8, !tbaa !16
  store <2 x i64> %broadcast.splat, ptr %i.cp, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.1, %middle.block
  %indvars.iv.1.ph = phi i64 [ %i.cm, %.lr.ph.1 ], [ %i.co, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.1.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.1
  store i64 %i.cl, ptr %i.cr, align 8, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %._crit_edge.1, label %scalar.ph, !llvm.loop !60

._crit_edge.1:                                    ; preds = %scalar.ph, %middle.block, %bb.v
  %i.cs = load i32, ptr %i.k, align 4, !tbaa !19
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.k, align 4, !tbaa !19
  %.not77.1 = icmp samesign ult i32 %i.cc, %9
  %or.cond.1 = select i1 %.fr, i1 true, i1 %.not77.1
  br i1 %or.cond.1, label %.critedge78.loopexit.split, label %bb.w

bb.w:                                             ; preds = %._crit_edge.1
  %i.cu = load i64, ptr %13, align 8
  tail call fastcc void @add_level(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %i.cb, i32 noundef %i.cd, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef %9, i32 noundef %10, ptr noundef %11, i64 %i.cu)
  br label %.critedge78.loopexit.split

.critedge78.loopexit.split:                       ; preds = %bb.w, %._crit_edge.1
  %.not.not = icmp sgt i64 %indvars.iv103, %i.o
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, -1
  br i1 %.not.not, label %.preheader, label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %.critedge78.loopexit.split, %.preheader, %bb.r, %.critedge78.loopexit.split.us.us.split, %.preheader.us, %bb.g, %.preheader.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umin.v4i8(<4 x i8>, <4 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v4i8(<4 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umin.v4i8(<4 x i8>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
!10 = !{!"p1 _ZTS7VLCElem", !9, i64 0}
!11 = !{!"VLC", !6, i64 0, !10, i64 8, !6, i64 16, !6, i64 20}
!12 = !{!11, !6, i64 0}
!13 = !{!11, !6, i64 16}
!14 = !{!11, !10, i64 8}
!15 = !{!11, !6, i64 20}
!16 = !{!5, !5, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!"VLCcode", !5, i64 0, !17, i64 2, !6, i64 4}
!21 = !{!20, !5, i64 0}
!22 = !{!20, !6, i64 4}
!23 = !{!20, !17, i64 2}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"VLCInitState", !10, i64 0, !6, i64 8}
!26 = !{!25, !10, i64 0}
!27 = !{!25, !6, i64 8}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"VLC_MULTI_ELEM", !5, i64 0, !5, i64 6, !5, i64 7}
!31 = !{!30, !5, i64 6}
!32 = !{!30, !5, i64 7}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = !{!9, !9, i64 0}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24, !28, !29}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24, !29, !28}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = !{!"p1 _ZTS14VLC_MULTI_ELEM", !9, i64 0}
!49 = !{!"VLC_MULTI", !48, i64 0, !6, i64 8, !6, i64 12}
!50 = !{!49, !48, i64 0}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24, !28, !29}
!55 = distinct !{!55, !24, !29, !28}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24, !28, !29}
!58 = distinct !{!58, !24, !29, !28}
!59 = distinct !{!59, !24, !28, !29}
!60 = distinct !{!60, !24, !29, !28}
end_hunk_0
