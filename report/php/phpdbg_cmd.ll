Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phpdbg_cmd?download=true
inline.NumInlined: 21
inline.NumDeleted: 2
begin_hunk_0_@phpdbg_param_debug:bb.a
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.27, ptr noundef %1, ptr noundef %i.bb, i64 noundef %i.bd) #23 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @phpdbg_stack_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.g
  %.020 = phi ptr [ %i.d, %bb.g ], [ %i.b, %bb.a ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.020, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not28 = icmp eq ptr %i.d, null
  %i.e = load i32, ptr %.020, align 8, !tbaa !19
  switch i32 %i.e, label %bb.g [
    i32 8, label %bb.b
    i32 4, label %bb.b
    i32 7, label %bb.e
    i32 5, label %bb.e
    i32 13, label %bb.e
    i32 10, label %bb.e
    i32 11, label %bb.e
    i32 12, label %bb.e
    i32 15, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %.preheader, %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.020, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not31 = icmp eq ptr %i.g, null
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_efree(ptr noundef nonnull %i.g) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.020, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %bb.g, label %.sink.split

bb.e:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %.not30 = icmp eq ptr %i.k, null
  br i1 %.not30, label %bb.g, label %.sink.split

bb.f:                                             ; preds = %.preheader, %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %.not29 = icmp eq ptr %i.m, null
  br i1 %.not29, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %i.k, %bb.e ], [ %i.i, %bb.d ], [ %i.m, %bb.f ]
  tail call void @_efree(ptr noundef nonnull %.sink) #21
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %.preheader, %bb.f, %bb.e, %bb.d
  tail call void @free(ptr noundef nonnull %.020) #21
  br i1 %.not28, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.a, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @phpdbg_stack_push(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #24 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 72, i1 false), !tbaa.struct !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  %. = select i1 %i.e, ptr %0, ptr %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %., i64 72
  store ptr %i.a, ptr %i.f, align 8, !tbaa !30
  store ptr %i.a, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.d, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @phpdbg_stack_separate(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #24 ; 3 uses
  store i32 9, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !tbaa !31
  store ptr %i.a, ptr %i.b, align 8, !tbaa !30
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @phpdbg_stack_verify(ptr nofree noundef readonly %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 83 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %.not121 = icmp eq ptr %1, null
  br i1 %.not121, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 5 uses
  %.not122 = icmp eq ptr %i.e, null
  br i1 %.not122, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35    ; 3 uses
  %.not123 = icmp eq i8 %i.f, 0
  br i1 %.not123, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not124 = icmp eq ptr %i.c, null
  br i1 %.not124, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load i32, ptr %i.c, align 8, !tbaa !19
  %i.h = icmp eq i32 %i.g, 9
  br i1 %i.h, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %phpdbg_command_name.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.l, i64 %i.n, i1 false)
  %i.o = load i64, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  store i8 32, ptr %i.p, align 1
  %i.q = add i64 %i.o, 1
  br label %phpdbg_command_name.exit

phpdbg_command_name.exit:                         ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.q, %bb.i ], [ 0, %bb.h ]
  %i.r = getelementptr i8, ptr %i.a, i64 %.0.i    ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.s, i64 %i.u, i1 false)
  %i.v = getelementptr i8, ptr %i.r, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !35
  %i.w = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.a) #21 ; 0 uses
  br label %.sink.split

.preheader:                                       ; preds = %bb.e, %bb.j
  %i.x = phi i8 [ %.pr, %bb.j ], [ %i.f, %bb.e ]
  %.0112 = phi ptr [ %i.z, %bb.j ], [ %i.e, %bb.e ]
  %.0111 = phi i64 [ %i.y, %bb.j ], [ 0, %bb.e ]  ; 3 uses
  switch i8 %i.x, label %bb.j [
    i8 0, label %.lr.ph.preheader
    i8 124, label %.lr.ph.preheader
  ]

.lr.ph.preheader:                                 ; preds = %.preheader, %.preheader
  br label %.lr.ph

bb.j:                                             ; preds = %.preheader
  %i.y = add i64 %.0111, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.0112, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.z, align 1, !tbaa !35
  br label %.preheader, !llvm.loop !47

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread196
  %i.aa = phi i8 [ %i.mt, %.thread196 ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.0108.ph360 = phi i8 [ %.0108212, %.thread196 ], [ 0, %.lr.ph.preheader ] ; 19 uses
  %.0110.ph358 = phi i64 [ %.pre-phi, %.thread196 ], [ 0, %.lr.ph.preheader ] ; 44 uses
  %.1.ph357 = phi ptr [ %i.ms, %.thread196 ], [ %i.e, %.lr.ph.preheader ] ; 12 uses
  %.0113.ph355 = phi ptr [ %i.mr, %.thread196 ], [ %i.c, %.lr.ph.preheader ] ; 21 uses
  %.not128 = icmp eq ptr %.0113.ph355, null       ; 11 uses
  br i1 %.not128, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  switch i8 %i.aa, label %.critedge2 [
    i8 124, label %bb.k
    i8 105, label %bb.o
    i8 115, label %bb.t
    i8 110, label %bb.y
    i8 109, label %bb.ad
    i8 97, label %bb.ai
    i8 102, label %bb.an
    i8 99, label %bb.as
    i8 111, label %bb.ax
    i8 98, label %bb.bc
  ]

bb.k:                                             ; preds = %.lr.ph.split.us.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.ph357, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35  ; 2 uses
  %.not127.us.peel = icmp eq i8 %i.ac, 0
  br i1 %.not127.us.peel, label %.critedge2, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.k, %bb.l
  %i.ad = phi i8 [ %i.af, %bb.l ], [ %i.ac, %bb.k ]
  %.1301.us = phi ptr [ %i.ae, %bb.l ], [ %i.ab, %bb.k ] ; 11 uses
  switch i8 %i.ad, label %.split.us [
    i8 124, label %bb.l
    i8 105, label %.split309.us
    i8 115, label %.split314.us
    i8 110, label %.split319.us
    i8 109, label %.split324.us
    i8 97, label %.split329.us
    i8 102, label %.split334.us
    i8 99, label %.split339.us
    i8 111, label %.split344.us
    i8 98, label %.split349.us
  ]

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.1301.us, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35  ; 2 uses
  %.not127.us = icmp eq i8 %i.af, 0
  br i1 %.not127.us, label %.critedge2, label %.lr.ph.split.us, !llvm.loop !48

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ag = load i32, ptr %.0113.ph355, align 8, !tbaa !19 ; 10 uses
  %i.ah = icmp eq i32 %i.ag, 9
  br i1 %i.ah, label %.critedge2, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  switch i8 %i.aa, label %.split.us..thread196_crit_edge [
    i8 124, label %bb.m
    i8 105, label %.split309.us.thread518
    i8 115, label %.split314.us.thread528
    i8 110, label %.split319.us.thread540
    i8 109, label %.split324.us.thread552
    i8 97, label %.split329.us.thread564
    i8 102, label %.split334.us.thread576
    i8 99, label %.split339.us.thread588
    i8 111, label %.split344.us.thread600
    i8 98, label %.split349.us.thread612
  ]

bb.m:                                             ; preds = %.lr.ph.split.split.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.ph357, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35  ; 2 uses
  %.not127.peel = icmp eq i8 %i.aj, 0
  br i1 %.not127.peel, label %.critedge2, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %bb.m, %bb.n
  %i.ak = phi i8 [ %i.am, %bb.n ], [ %i.aj, %bb.m ]
  %.1301 = phi ptr [ %i.al, %bb.n ], [ %i.ai, %bb.m ] ; 11 uses
  switch i8 %i.ak, label %.split.us [
    i8 124, label %bb.n
    i8 105, label %.split309.us
    i8 115, label %.split314.us
    i8 110, label %.split319.us
    i8 109, label %.split324.us
    i8 97, label %.split329.us
    i8 102, label %.split334.us
    i8 99, label %.split339.us
    i8 111, label %.split344.us
    i8 98, label %.split349.us
  ]

bb.n:                                             ; preds = %.lr.ph.split.split
  %i.al = getelementptr inbounds nuw i8, ptr %.1301, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35  ; 2 uses
  %.not127 = icmp eq i8 %i.am, 0
  br i1 %.not127, label %.critedge2, label %.lr.ph.split.split, !llvm.loop !49

.split309.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  %.us-phi311 = phi ptr [ %.1301.us, %.lr.ph.split.us ], [ %.1301, %.lr.ph.split.split ]
  br i1 %.not128, label %.critedge2, label %thread-pre-split

bb.o:                                             ; preds = %.lr.ph.split.us.preheader
  %i.an = add i64 %.0110.ph358, 1
  %i.ao = trunc nuw i8 %.0108.ph360 to i1
  br i1 %i.ao, label %.critedge2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 3 uses
  %.not.i138 = icmp eq ptr %i.ar, null
  br i1 %.not.i138, label %phpdbg_command_name.exit140, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.as, i64 %i.au, i1 false)
  %i.av = load i64, ptr %i.at, align 8, !tbaa !39 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  store i8 32, ptr %i.aw, align 1
  %i.ax = add i64 %i.av, 1
  br label %phpdbg_command_name.exit140

phpdbg_command_name.exit140:                      ; preds = %bb.p, %bb.q
  %.0.i139 = phi i64 [ %i.ax, %bb.q ], [ 0, %bb.p ]
  %i.ay = getelementptr i8, ptr %i.a, i64 %.0.i139 ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.az, i64 %i.bb, i1 false)
  %i.bc = getelementptr i8, ptr %i.ay, i64 %i.bb
  store i8 0, ptr %i.bc, align 1, !tbaa !35
  %i.bd = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ap, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.30, i64 noundef %i.an) #21 ; 0 uses
  br label %.sink.split

thread-pre-split:                                 ; preds = %.split309.us
  %.pr524 = load i32, ptr %.0113.ph355, align 8, !tbaa !19
  br label %.split309.us.thread518

.split309.us.thread518:                           ; preds = %.lr.ph.split.split.preheader, %thread-pre-split
  %i.be = phi i32 [ %.pr524, %thread-pre-split ], [ %i.ag, %.lr.ph.split.split.preheader ]
  %.us-phi312522 = phi i8 [ 1, %thread-pre-split ], [ %.0108.ph360, %.lr.ph.split.split.preheader ]
  %.us-phi311521 = phi ptr [ %.us-phi311, %thread-pre-split ], [ %.1.ph357, %.lr.ph.split.split.preheader ]
  %i.bf = add i64 %.0110.ph358, 1                 ; 2 uses
  %.not137 = icmp eq i32 %i.be, 5
  br i1 %.not137, label %.thread196, label %bb.r

bb.r:                                             ; preds = %.split309.us.thread518
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52 ; 3 uses
  %.not.i141 = icmp eq ptr %i.bi, null
  br i1 %.not.i141, label %phpdbg_command_name.exit143, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !39 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  store i8 32, ptr %i.bn, align 1
  %i.bo = add i64 %i.bm, 1
  br label %phpdbg_command_name.exit143

phpdbg_command_name.exit143:                      ; preds = %bb.r, %bb.s
  %.0.i142 = phi i64 [ %i.bo, %bb.s ], [ 0, %bb.r ]
  %i.bp = getelementptr i8, ptr %i.a, i64 %.0.i142 ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %i.bq, i64 %i.bs, i1 false)
  %i.bt = getelementptr i8, ptr %i.bp, i64 %i.bs
  store i8 0, ptr %i.bt, align 1, !tbaa !35
  %i.bu = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %.0113.ph355)
  %i.bv = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.bg, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.bu, i64 noundef %i.bf) #21 ; 0 uses
  br label %.sink.split

.split314.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  %.us-phi316 = phi ptr [ %.1301.us, %.lr.ph.split.us ], [ %.1301, %.lr.ph.split.split ]
  br i1 %.not128, label %.critedge2, label %thread-pre-split535

bb.t:                                             ; preds = %.lr.ph.split.us.preheader
  %i.bw = add i64 %.0110.ph358, 1
  %i.bx = trunc nuw i8 %.0108.ph360 to i1
  br i1 %i.bx, label %.critedge2, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !52 ; 3 uses
  %.not.i144 = icmp eq ptr %i.ca, null
  br i1 %.not.i144, label %phpdbg_command_name.exit146, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.cb, i64 %i.cd, i1 false)
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !39 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ce
  store i8 32, ptr %i.cf, align 1
  %i.cg = add i64 %i.ce, 1
  br label %phpdbg_command_name.exit146

phpdbg_command_name.exit146:                      ; preds = %bb.u, %bb.v
  %.0.i145 = phi i64 [ %i.cg, %bb.v ], [ 0, %bb.u ]
  %i.ch = getelementptr i8, ptr %i.a, i64 %.0.i145 ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr align 1 %i.ci, i64 %i.ck, i1 false)
  %i.cl = getelementptr i8, ptr %i.ch, i64 %i.ck
  store i8 0, ptr %i.cl, align 1, !tbaa !35
  %i.cm = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.by, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, i64 noundef %i.bw) #21 ; 0 uses
  br label %.sink.split

thread-pre-split535:                              ; preds = %.split314.us
  %.pr536 = load i32, ptr %.0113.ph355, align 8, !tbaa !19
  br label %.split314.us.thread528

.split314.us.thread528:                           ; preds = %.lr.ph.split.split.preheader, %thread-pre-split535
  %i.cn = phi i32 [ %.pr536, %thread-pre-split535 ], [ %i.ag, %.lr.ph.split.split.preheader ]
  %.us-phi317532 = phi i8 [ 1, %thread-pre-split535 ], [ %.0108.ph360, %.lr.ph.split.split.preheader ]
  %.us-phi316531 = phi ptr [ %.us-phi316, %thread-pre-split535 ], [ %.1.ph357, %.lr.ph.split.split.preheader ]
  %i.co = add i64 %.0110.ph358, 1                 ; 2 uses
  %.not136 = icmp eq i32 %i.cn, 5
  br i1 %.not136, label %.thread196, label %bb.w

bb.w:                                             ; preds = %.split314.us.thread528
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !52 ; 3 uses
  %.not.i147 = icmp eq ptr %i.cr, null
  br i1 %.not.i147, label %phpdbg_command_name.exit149, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !39 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cv
  store i8 32, ptr %i.cw, align 1
  %i.cx = add i64 %i.cv, 1
  br label %phpdbg_command_name.exit149

phpdbg_command_name.exit149:                      ; preds = %bb.w, %bb.x
  %.0.i148 = phi i64 [ %i.cx, %bb.x ], [ 0, %bb.w ]
  %i.cy = getelementptr i8, ptr %i.a, i64 %.0.i148 ; 2 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !38
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr align 1 %i.cz, i64 %i.db, i1 false)
  %i.dc = getelementptr i8, ptr %i.cy, i64 %i.db
  store i8 0, ptr %i.dc, align 1, !tbaa !35
  %i.dd = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %.0113.ph355)
  %i.de = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.cp, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.dd, i64 noundef %i.co) #21 ; 0 uses
  br label %.sink.split

.split319.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  %.us-phi321 = phi ptr [ %.1301.us, %.lr.ph.split.us ], [ %.1301, %.lr.ph.split.split ]
  br i1 %.not128, label %.critedge2, label %thread-pre-split547

bb.y:                                             ; preds = %.lr.ph.split.us.preheader
  %i.df = add i64 %.0110.ph358, 1
  %i.dg = trunc nuw i8 %.0108.ph360 to i1
  br i1 %i.dg, label %.critedge2, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !52 ; 3 uses
  %.not.i150 = icmp eq ptr %i.dj, null
  br i1 %.not.i150, label %phpdbg_command_name.exit152, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !38
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.dk, i64 %i.dm, i1 false)
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !39 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dn
  store i8 32, ptr %i.do, align 1
  %i.dp = add i64 %i.dn, 1
  br label %phpdbg_command_name.exit152

phpdbg_command_name.exit152:                      ; preds = %bb.z, %bb.aa
  %.0.i151 = phi i64 [ %i.dp, %bb.aa ], [ 0, %bb.z ]
  %i.dq = getelementptr i8, ptr %i.a, i64 %.0.i151 ; 2 uses
  %i.dr = load ptr, ptr %0, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr align 1 %i.dr, i64 %i.dt, i1 false)
  %i.du = getelementptr i8, ptr %i.dq, i64 %i.dt
  store i8 0, ptr %i.du, align 1, !tbaa !35
  %i.dv = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.dh, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.32, i64 noundef %i.df) #21 ; 0 uses
  br label %.sink.split

thread-pre-split547:                              ; preds = %.split319.us
  %.pr548 = load i32, ptr %.0113.ph355, align 8, !tbaa !19
  br label %.split319.us.thread540

.split319.us.thread540:                           ; preds = %.lr.ph.split.split.preheader, %thread-pre-split547
  %i.dw = phi i32 [ %.pr548, %thread-pre-split547 ], [ %i.ag, %.lr.ph.split.split.preheader ]
  %.us-phi322544 = phi i8 [ 1, %thread-pre-split547 ], [ %.0108.ph360, %.lr.ph.split.split.preheader ]
  %.us-phi321543 = phi ptr [ %.us-phi321, %thread-pre-split547 ], [ %.1.ph357, %.lr.ph.split.split.preheader ]
  %i.dx = add i64 %.0110.ph358, 1                 ; 2 uses
  %.not135 = icmp eq i32 %i.dw, 6
  br i1 %.not135, label %.thread196, label %bb.ab

bb.ab:                                            ; preds = %.split319.us.thread540
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !52 ; 3 uses
  %.not.i153 = icmp eq ptr %i.ea, null
  br i1 %.not.i153, label %phpdbg_command_name.exit155, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.eb, i64 %i.ed, i1 false)
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !39 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  store i8 32, ptr %i.ef, align 1
  %i.eg = add i64 %i.ee, 1
  br label %phpdbg_command_name.exit155

phpdbg_command_name.exit155:                      ; preds = %bb.ab, %bb.ac
  %.0.i154 = phi i64 [ %i.eg, %bb.ac ], [ 0, %bb.ab ]
  %i.eh = getelementptr i8, ptr %i.a, i64 %.0.i154 ; 2 uses
  %i.ei = load ptr, ptr %0, align 8, !tbaa !38
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr align 1 %i.ei, i64 %i.ek, i1 false)
  %i.el = getelementptr i8, ptr %i.eh, i64 %i.ek
  store i8 0, ptr %i.el, align 1, !tbaa !35
  %i.em = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %.0113.ph355)
  %i.en = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.dy, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.em, i64 noundef %i.dx) #21 ; 0 uses
  br label %.sink.split

.split324.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  %.us-phi326 = phi ptr [ %.1301.us, %.lr.ph.split.us ], [ %.1301, %.lr.ph.split.split ]
  br i1 %.not128, label %.critedge2, label %thread-pre-split559

bb.ad:                                            ; preds = %.lr.ph.split.us.preheader
  %i.eo = add i64 %.0110.ph358, 1
  %i.ep = trunc nuw i8 %.0108.ph360 to i1
  br i1 %i.ep, label %.critedge2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eq = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !52 ; 3 uses
  %.not.i156 = icmp eq ptr %i.es, null
  br i1 %.not.i156, label %phpdbg_command_name.exit158, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !38
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.et, i64 %i.ev, i1 false)
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !39 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ew
  store i8 32, ptr %i.ex, align 1
  %i.ey = add i64 %i.ew, 1
  br label %phpdbg_command_name.exit158

phpdbg_command_name.exit158:                      ; preds = %bb.ae, %bb.af
  %.0.i157 = phi i64 [ %i.ey, %bb.af ], [ 0, %bb.ae ]
  %i.ez = getelementptr i8, ptr %i.a, i64 %.0.i157 ; 2 uses
  %i.fa = load ptr, ptr %0, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr align 1 %i.fa, i64 %i.fc, i1 false)
  %i.fd = getelementptr i8, ptr %i.ez, i64 %i.fc
  store i8 0, ptr %i.fd, align 1, !tbaa !35
  %i.fe = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.eq, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, i64 noundef %i.eo) #21 ; 0 uses
  br label %.sink.split

thread-pre-split559:                              ; preds = %.split324.us
  %.pr560 = load i32, ptr %.0113.ph355, align 8, !tbaa !19
  br label %.split324.us.thread552

.split324.us.thread552:                           ; preds = %.lr.ph.split.split.preheader, %thread-pre-split559
  %i.ff = phi i32 [ %.pr560, %thread-pre-split559 ], [ %i.ag, %.lr.ph.split.split.preheader ]
  %.us-phi327556 = phi i8 [ 1, %thread-pre-split559 ], [ %.0108.ph360, %.lr.ph.split.split.preheader ]
  %.us-phi326555 = phi ptr [ %.us-phi326, %thread-pre-split559 ], [ %.1.ph357, %.lr.ph.split.split.preheader ]
  %i.fg = add i64 %.0110.ph358, 1                 ; 2 uses
  %.not134 = icmp eq i32 %i.ff, 4
  br i1 %.not134, label %.thread196, label %bb.ag

bb.ag:                                            ; preds = %.split324.us.thread552
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !52 ; 3 uses
  %.not.i159 = icmp eq ptr %i.fj, null
  br i1 %.not.i159, label %phpdbg_command_name.exit161, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !38
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.fk, i64 %i.fm, i1 false)
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !39 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fn
  store i8 32, ptr %i.fo, align 1
  %i.fp = add i64 %i.fn, 1
  br label %phpdbg_command_name.exit161

phpdbg_command_name.exit161:                      ; preds = %bb.ag, %bb.ah
  %.0.i160 = phi i64 [ %i.fp, %bb.ah ], [ 0, %bb.ag ]
  %i.fq = getelementptr i8, ptr %i.a, i64 %.0.i160 ; 2 uses
  %i.fr = load ptr, ptr %0, align 8, !tbaa !38
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fq, ptr align 1 %i.fr, i64 %i.ft, i1 false)
  %i.fu = getelementptr i8, ptr %i.fq, i64 %i.ft
  store i8 0, ptr %i.fu, align 1, !tbaa !35
  %i.fv = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %.0113.ph355)
  %i.fw = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.fh, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.fv, i64 noundef %i.fg) #21 ; 0 uses
  br label %.sink.split

.split329.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  %.us-phi331 = phi ptr [ %.1301.us, %.lr.ph.split.us ], [ %.1301, %.lr.ph.split.split ]
  br i1 %.not128, label %.critedge2, label %thread-pre-split571

bb.ai:                                            ; preds = %.lr.ph.split.us.preheader
  %i.fx = add i64 %.0110.ph358, 1
  %i.fy = trunc nuw i8 %.0108.ph360 to i1
  br i1 %i.fy, label %.critedge2, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !52 ; 3 uses
  %.not.i162 = icmp eq ptr %i.gb, null
  br i1 %.not.i162, label %phpdbg_command_name.exit164, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !38
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.gc, i64 %i.ge, i1 false)
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !39 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gf
  store i8 32, ptr %i.gg, align 1
  %i.gh = add i64 %i.gf, 1
  br label %phpdbg_command_name.exit164

phpdbg_command_name.exit164:                      ; preds = %bb.aj, %bb.ak
  %.0.i163 = phi i64 [ %i.gh, %bb.ak ], [ 0, %bb.aj ]
  %i.gi = getelementptr i8, ptr %i.a, i64 %.0.i163 ; 2 uses
  %i.gj = load ptr, ptr %0, align 8, !tbaa !38
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gi, ptr align 1 %i.gj, i64 %i.gl, i1 false)
  %i.gm = getelementptr i8, ptr %i.gi, i64 %i.gl
  store i8 0, ptr %i.gm, align 1, !tbaa !35
  %i.gn = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.fz, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, i64 noundef %i.fx) #21 ; 0 uses
  br label %.sink.split

thread-pre-split571:                              ; preds = %.split329.us
  %.pr572 = load i32, ptr %.0113.ph355, align 8, !tbaa !19
  br label %.split329.us.thread564

.split329.us.thread564:                           ; preds = %.lr.ph.split.split.preheader, %thread-pre-split571
  %i.go = phi i32 [ %.pr572, %thread-pre-split571 ], [ %i.ag, %.lr.ph.split.split.preheader ]
  %.us-phi332568 = phi i8 [ 1, %thread-pre-split571 ], [ %.0108.ph360, %.lr.ph.split.split.preheader ]
  %.us-phi331567 = phi ptr [ %.us-phi331, %thread-pre-split571 ], [ %.1.ph357, %.lr.ph.split.split.preheader ]
  %i.gp = add i64 %.0110.ph358, 1                 ; 2 uses
  %.not133 = icmp eq i32 %i.go, 1
  br i1 %.not133, label %.thread196, label %bb.al

bb.al:                                            ; preds = %.split329.us.thread564
  %i.gq = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !52 ; 3 uses
  %.not.i165 = icmp eq ptr %i.gs, null
  br i1 %.not.i165, label %phpdbg_command_name.exit167, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !38
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.gt, i64 %i.gv, i1 false)
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !39 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gw
  store i8 32, ptr %i.gx, align 1
  %i.gy = add i64 %i.gw, 1
  br label %phpdbg_command_name.exit167

phpdbg_command_name.exit167:                      ; preds = %bb.al, %bb.am
  %.0.i166 = phi i64 [ %i.gy, %bb.am ], [ 0, %bb.al ]
  %i.gz = getelementptr i8, ptr %i.a, i64 %.0.i166 ; 2 uses
  %i.ha = load ptr, ptr %0, align 8, !tbaa !38
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gz, ptr align 1 %i.ha, i64 %i.hc, i1 false)
  %i.hd = getelementptr i8, ptr %i.gz, i64 %i.hc
  store i8 0, ptr %i.hd, align 1, !tbaa !35
  %i.he = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %.0113.ph355)
  %i.hf = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.gq, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.he, i64 noundef %i.gp) #21 ; 0 uses
  br label %.sink.split

.split334.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  %.us-phi336 = phi ptr [ %.1301.us, %.lr.ph.split.us ], [ %.1301, %.lr.ph.split.split ]
  br i1 %.not128, label %.critedge2, label %thread-pre-split583

bb.an:                                            ; preds = %.lr.ph.split.us.preheader
  %i.hg = add i64 %.0110.ph358, 1
  %i.hh = trunc nuw i8 %.0108.ph360 to i1
  br i1 %i.hh, label %.critedge2, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hi = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !52 ; 3 uses
  %.not.i168 = icmp eq ptr %i.hk, null
  br i1 %.not.i168, label %phpdbg_command_name.exit170, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !38
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.hl, i64 %i.hn, i1 false)
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !39 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ho
  store i8 32, ptr %i.hp, align 1
  %i.hq = add i64 %i.ho, 1
  br label %phpdbg_command_name.exit170

phpdbg_command_name.exit170:                      ; preds = %bb.ao, %bb.ap
  %.0.i169 = phi i64 [ %i.hq, %bb.ap ], [ 0, %bb.ao ]
  %i.hr = getelementptr i8, ptr %i.a, i64 %.0.i169 ; 2 uses
  %i.hs = load ptr, ptr %0, align 8, !tbaa !38
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr align 1 %i.hs, i64 %i.hu, i1 false)
  %i.hv = getelementptr i8, ptr %i.hr, i64 %i.hu
  store i8 0, ptr %i.hv, align 1, !tbaa !35
  %i.hw = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.hi, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.33, i64 noundef %i.hg) #21 ; 0 uses
  br label %.sink.split

thread-pre-split583:                              ; preds = %.split334.us
  %.pr584 = load i32, ptr %.0113.ph355, align 8, !tbaa !19
  br label %.split334.us.thread576

.split334.us.thread576:                           ; preds = %.lr.ph.split.split.preheader, %thread-pre-split583
  %i.hx = phi i32 [ %.pr584, %thread-pre-split583 ], [ %i.ag, %.lr.ph.split.split.preheader ]
  %.us-phi337580 = phi i8 [ 1, %thread-pre-split583 ], [ %.0108.ph360, %.lr.ph.split.split.preheader ]
  %.us-phi336579 = phi ptr [ %.us-phi336, %thread-pre-split583 ], [ %.1.ph357, %.lr.ph.split.split.preheader ]
  %i.hy = add i64 %.0110.ph358, 1                 ; 2 uses
  %.not132 = icmp eq i32 %i.hx, 2
  br i1 %.not132, label %.thread196, label %bb.aq

bb.aq:                                            ; preds = %.split334.us.thread576
  %i.hz = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !52 ; 3 uses
  %.not.i171 = icmp eq ptr %i.ib, null
  br i1 %.not.i171, label %phpdbg_command_name.exit173, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !38
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.ic, i64 %i.ie, i1 false)
  %i.if = load i64, ptr %i.id, align 8, !tbaa !39 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.if
  store i8 32, ptr %i.ig, align 1
  %i.ih = add i64 %i.if, 1
  br label %phpdbg_command_name.exit173

phpdbg_command_name.exit173:                      ; preds = %bb.aq, %bb.ar
  %.0.i172 = phi i64 [ %i.ih, %bb.ar ], [ 0, %bb.aq ]
  %i.ii = getelementptr i8, ptr %i.a, i64 %.0.i172 ; 2 uses
  %i.ij = load ptr, ptr %0, align 8, !tbaa !38
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr align 1 %i.ij, i64 %i.il, i1 false)
  %i.im = getelementptr i8, ptr %i.ii, i64 %i.il
  store i8 0, ptr %i.im, align 1, !tbaa !35
  %i.in = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %.0113.ph355)
  %i.io = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.hz, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.in, i64 noundef %i.hy) #21 ; 0 uses
  br label %.sink.split

.split339.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  %.us-phi341 = phi ptr [ %.1301.us, %.lr.ph.split.us ], [ %.1301, %.lr.ph.split.split ]
  br i1 %.not128, label %.critedge2, label %thread-pre-split595

bb.as:                                            ; preds = %.lr.ph.split.us.preheader
  %i.ip = add i64 %.0110.ph358, 1
  %i.iq = trunc nuw i8 %.0108.ph360 to i1
  br i1 %i.iq, label %.critedge2, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !52 ; 3 uses
  %.not.i174 = icmp eq ptr %i.it, null
  br i1 %.not.i174, label %phpdbg_command_name.exit176, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !38
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.iu, i64 %i.iw, i1 false)
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !39 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ix
  store i8 32, ptr %i.iy, align 1
  %i.iz = add i64 %i.ix, 1
  br label %phpdbg_command_name.exit176

phpdbg_command_name.exit176:                      ; preds = %bb.at, %bb.au
  %.0.i175 = phi i64 [ %i.iz, %bb.au ], [ 0, %bb.at ]
  %i.ja = getelementptr i8, ptr %i.a, i64 %.0.i175 ; 2 uses
  %i.jb = load ptr, ptr %0, align 8, !tbaa !38
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ja, ptr align 1 %i.jb, i64 %i.jd, i1 false)
  %i.je = getelementptr i8, ptr %i.ja, i64 %i.jd
  store i8 0, ptr %i.je, align 1, !tbaa !35
  %i.jf = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ir, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.34, i64 noundef %i.ip) #21 ; 0 uses
  br label %.sink.split

thread-pre-split595:                              ; preds = %.split339.us
  %.pr596 = load i32, ptr %.0113.ph355, align 8, !tbaa !19
  br label %.split339.us.thread588

.split339.us.thread588:                           ; preds = %.lr.ph.split.split.preheader, %thread-pre-split595
  %i.jg = phi i32 [ %.pr596, %thread-pre-split595 ], [ %i.ag, %.lr.ph.split.split.preheader ]
  %.us-phi342592 = phi i8 [ 1, %thread-pre-split595 ], [ %.0108.ph360, %.lr.ph.split.split.preheader ]
  %.us-phi341591 = phi ptr [ %.us-phi341, %thread-pre-split595 ], [ %.1.ph357, %.lr.ph.split.split.preheader ]
  %i.jh = add i64 %.0110.ph358, 1                 ; 2 uses
  %.not131 = icmp eq i32 %i.jg, 12
  br i1 %.not131, label %.thread196, label %bb.av

bb.av:                                            ; preds = %.split339.us.thread588
  %i.ji = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !52 ; 3 uses
  %.not.i177 = icmp eq ptr %i.jk, null
  br i1 %.not.i177, label %phpdbg_command_name.exit179, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !38
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.jl, i64 %i.jn, i1 false)
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !39 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jo
  store i8 32, ptr %i.jp, align 1
  %i.jq = add i64 %i.jo, 1
  br label %phpdbg_command_name.exit179

phpdbg_command_name.exit179:                      ; preds = %bb.av, %bb.aw
  %.0.i178 = phi i64 [ %i.jq, %bb.aw ], [ 0, %bb.av ]
  %i.jr = getelementptr i8, ptr %i.a, i64 %.0.i178 ; 2 uses
  %i.js = load ptr, ptr %0, align 8, !tbaa !38
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jr, ptr align 1 %i.js, i64 %i.ju, i1 false)
  %i.jv = getelementptr i8, ptr %i.jr, i64 %i.ju
  store i8 0, ptr %i.jv, align 1, !tbaa !35
  %i.jw = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %.0113.ph355)
  %i.jx = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ji, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.jw, i64 noundef %i.jh) #21 ; 0 uses
  br label %.sink.split

.split344.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  %.us-phi346 = phi ptr [ %.1301.us, %.lr.ph.split.us ], [ %.1301, %.lr.ph.split.split ]
  br i1 %.not128, label %.critedge2, label %thread-pre-split607

bb.ax:                                            ; preds = %.lr.ph.split.us.preheader
  %i.jy = add i64 %.0110.ph358, 1
  %i.jz = trunc nuw i8 %.0108.ph360 to i1
  br i1 %i.jz, label %.critedge2, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ka = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !52 ; 3 uses
  %.not.i180 = icmp eq ptr %i.kc, null
  br i1 %.not.i180, label %phpdbg_command_name.exit182, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !38
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.kd, i64 %i.kf, i1 false)
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !39 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kg
  store i8 32, ptr %i.kh, align 1
  %i.ki = add i64 %i.kg, 1
  br label %phpdbg_command_name.exit182

phpdbg_command_name.exit182:                      ; preds = %bb.ay, %bb.az
  %.0.i181 = phi i64 [ %i.ki, %bb.az ], [ 0, %bb.ay ]
  %i.kj = getelementptr i8, ptr %i.a, i64 %.0.i181 ; 2 uses
  %i.kk = load ptr, ptr %0, align 8, !tbaa !38
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kj, ptr align 1 %i.kk, i64 %i.km, i1 false)
  %i.kn = getelementptr i8, ptr %i.kj, i64 %i.km
  store i8 0, ptr %i.kn, align 1, !tbaa !35
  %i.ko = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ka, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.35, i64 noundef %i.jy) #21 ; 0 uses
  br label %.sink.split

thread-pre-split607:                              ; preds = %.split344.us
  %.pr608 = load i32, ptr %.0113.ph355, align 8, !tbaa !19
  br label %.split344.us.thread600

.split344.us.thread600:                           ; preds = %.lr.ph.split.split.preheader, %thread-pre-split607
  %i.kp = phi i32 [ %.pr608, %thread-pre-split607 ], [ %i.ag, %.lr.ph.split.split.preheader ]
  %.us-phi347604 = phi i8 [ 1, %thread-pre-split607 ], [ %.0108.ph360, %.lr.ph.split.split.preheader ]
  %.us-phi346603 = phi ptr [ %.us-phi346, %thread-pre-split607 ], [ %.1.ph357, %.lr.ph.split.split.preheader ]
  %i.kq = add i64 %.0110.ph358, 1                 ; 2 uses
  %.not130 = icmp eq i32 %i.kp, 13
  br i1 %.not130, label %.thread196, label %bb.ba

bb.ba:                                            ; preds = %.split344.us.thread600
  %i.kr = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !52 ; 3 uses
  %.not.i183 = icmp eq ptr %i.kt, null
  br i1 %.not.i183, label %phpdbg_command_name.exit185, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !38
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.ku, i64 %i.kw, i1 false)
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !39 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kx
  store i8 32, ptr %i.ky, align 1
  %i.kz = add i64 %i.kx, 1
  br label %phpdbg_command_name.exit185

phpdbg_command_name.exit185:                      ; preds = %bb.ba, %bb.bb
  %.0.i184 = phi i64 [ %i.kz, %bb.bb ], [ 0, %bb.ba ]
  %i.la = getelementptr i8, ptr %i.a, i64 %.0.i184 ; 2 uses
  %i.lb = load ptr, ptr %0, align 8, !tbaa !38
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.la, ptr align 1 %i.lb, i64 %i.ld, i1 false)
  %i.le = getelementptr i8, ptr %i.la, i64 %i.ld
  store i8 0, ptr %i.le, align 1, !tbaa !35
  %i.lf = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %.0113.ph355)
  %i.lg = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.kr, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.lf, i64 noundef %i.kq) #21 ; 0 uses
  br label %.sink.split

.split349.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  %.us-phi351 = phi ptr [ %.1301.us, %.lr.ph.split.us ], [ %.1301, %.lr.ph.split.split ]
  br i1 %.not128, label %.critedge2, label %thread-pre-split619

bb.bc:                                            ; preds = %.lr.ph.split.us.preheader
  %i.lh = add i64 %.0110.ph358, 1
  %i.li = trunc nuw i8 %.0108.ph360 to i1
  br i1 %i.li, label %.critedge2, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lj = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !52 ; 3 uses
  %.not.i186 = icmp eq ptr %i.ll, null
  br i1 %.not.i186, label %phpdbg_command_name.exit188, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !38
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.lm, i64 %i.lo, i1 false)
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !39 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lp
  store i8 32, ptr %i.lq, align 1
  %i.lr = add i64 %i.lp, 1
  br label %phpdbg_command_name.exit188

phpdbg_command_name.exit188:                      ; preds = %bb.bd, %bb.be
  %.0.i187 = phi i64 [ %i.lr, %bb.be ], [ 0, %bb.bd ]
  %i.ls = getelementptr i8, ptr %i.a, i64 %.0.i187 ; 2 uses
  %i.lt = load ptr, ptr %0, align 8, !tbaa !38
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ls, ptr align 1 %i.lt, i64 %i.lv, i1 false)
  %i.lw = getelementptr i8, ptr %i.ls, i64 %i.lv
  store i8 0, ptr %i.lw, align 1, !tbaa !35
  %i.lx = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.lj, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef %i.lh) #21 ; 0 uses
  br label %.sink.split

thread-pre-split619:                              ; preds = %.split349.us
  %.pr620 = load i32, ptr %.0113.ph355, align 8, !tbaa !19
  br label %.split349.us.thread612

.split349.us.thread612:                           ; preds = %.lr.ph.split.split.preheader, %thread-pre-split619
  %i.ly = phi i32 [ %.pr620, %thread-pre-split619 ], [ %i.ag, %.lr.ph.split.split.preheader ]
  %.us-phi352616 = phi i8 [ 1, %thread-pre-split619 ], [ %.0108.ph360, %.lr.ph.split.split.preheader ]
  %.us-phi351615 = phi ptr [ %.us-phi351, %thread-pre-split619 ], [ %.1.ph357, %.lr.ph.split.split.preheader ]
  %i.lz = add i64 %.0110.ph358, 1                 ; 2 uses
  %.not129 = icmp eq i32 %i.ly, 6
  br i1 %.not129, label %.thread196, label %bb.bf

bb.bf:                                            ; preds = %.split349.us.thread612
  %i.ma = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !52 ; 3 uses
  %.not.i189 = icmp eq ptr %i.mc, null
  br i1 %.not.i189, label %phpdbg_command_name.exit191, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !38
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.md, i64 %i.mf, i1 false)
  %i.mg = load i64, ptr %i.me, align 8, !tbaa !39 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mg
  store i8 32, ptr %i.mh, align 1
  %i.mi = add i64 %i.mg, 1
  br label %phpdbg_command_name.exit191

phpdbg_command_name.exit191:                      ; preds = %bb.bf, %bb.bg
  %.0.i190 = phi i64 [ %i.mi, %bb.bg ], [ 0, %bb.bf ]
  %i.mj = getelementptr i8, ptr %i.a, i64 %.0.i190 ; 2 uses
  %i.mk = load ptr, ptr %0, align 8, !tbaa !38
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mj, ptr align 1 %i.mk, i64 %i.mm, i1 false)
  %i.mn = getelementptr i8, ptr %i.mj, i64 %i.mm
  store i8 0, ptr %i.mn, align 1, !tbaa !35
  %i.mo = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %.0113.ph355)
  %i.mp = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ma, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.mo, i64 noundef %i.lz) #21 ; 0 uses
  br label %.sink.split

.split.us:                                        ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  %.us-phi306 = phi ptr [ %.1301.us, %.lr.ph.split.us ], [ %.1301, %.lr.ph.split.split ]
  br i1 %.not128, label %.critedge2, label %.split.us..thread196_crit_edge

.split.us..thread196_crit_edge:                   ; preds = %.lr.ph.split.split.preheader, %.split.us
  %.us-phi307627 = phi i8 [ 1, %.split.us ], [ %.0108.ph360, %.lr.ph.split.split.preheader ]
  %.us-phi306626 = phi ptr [ %.us-phi306, %.split.us ], [ %.1.ph357, %.lr.ph.split.split.preheader ]
  %.pre = add i64 %.0110.ph358, 1
  br label %.thread196

.thread196:                                       ; preds = %.split.us..thread196_crit_edge, %.split309.us.thread518, %.split314.us.thread528, %.split319.us.thread540, %.split324.us.thread552, %.split329.us.thread564, %.split334.us.thread576, %.split339.us.thread588, %.split344.us.thread600, %.split349.us.thread612
  %.pre-phi = phi i64 [ %.pre, %.split.us..thread196_crit_edge ], [ %i.bf, %.split309.us.thread518 ], [ %i.co, %.split314.us.thread528 ], [ %i.dx, %.split319.us.thread540 ], [ %i.fg, %.split324.us.thread552 ], [ %i.gp, %.split329.us.thread564 ], [ %i.hy, %.split334.us.thread576 ], [ %i.jh, %.split339.us.thread588 ], [ %i.kq, %.split344.us.thread600 ], [ %i.lz, %.split349.us.thread612 ] ; 2 uses
  %.1232 = phi ptr [ %.us-phi306626, %.split.us..thread196_crit_edge ], [ %.us-phi311521, %.split309.us.thread518 ], [ %.us-phi316531, %.split314.us.thread528 ], [ %.us-phi321543, %.split319.us.thread540 ], [ %.us-phi326555, %.split324.us.thread552 ], [ %.us-phi331567, %.split329.us.thread564 ], [ %.us-phi336579, %.split334.us.thread576 ], [ %.us-phi341591, %.split339.us.thread588 ], [ %.us-phi346603, %.split344.us.thread600 ], [ %.us-phi351615, %.split349.us.thread612 ]
  %.0108212 = phi i8 [ %.us-phi307627, %.split.us..thread196_crit_edge ], [ %.us-phi312522, %.split309.us.thread518 ], [ %.us-phi317532, %.split314.us.thread528 ], [ %.us-phi322544, %.split319.us.thread540 ], [ %.us-phi327556, %.split324.us.thread552 ], [ %.us-phi332568, %.split329.us.thread564 ], [ %.us-phi337580, %.split334.us.thread576 ], [ %.us-phi342592, %.split339.us.thread588 ], [ %.us-phi347604, %.split344.us.thread600 ], [ %.us-phi352616, %.split349.us.thread612 ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.0113.ph355, i64 72
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !30
  %i.ms = getelementptr inbounds nuw i8, ptr %.1232, i64 1 ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !35  ; 2 uses
  %.not127300 = icmp eq i8 %i.mt, 0
  br i1 %.not127300, label %.critedge2, label %.lr.ph, !llvm.loop !50

.critedge2:                                       ; preds = %.split349.us, %.split344.us, %.split339.us, %.split334.us, %.split329.us, %.split324.us, %.split319.us, %.split314.us, %.split309.us, %.lr.ph.split.us.preheader, %.lr.ph.split, %.thread196, %.split.us, %bb.m, %bb.k, %bb.n, %bb.l, %bb.o, %bb.t, %bb.y, %bb.ad, %bb.ai, %bb.an, %bb.as, %bb.ax, %bb.bc
  %.0110.ph279 = phi i64 [ %.0110.ph358, %bb.bc ], [ %.0110.ph358, %bb.o ], [ %.0110.ph358, %bb.t ], [ %.0110.ph358, %bb.y ], [ %.0110.ph358, %bb.ad ], [ %.0110.ph358, %bb.ai ], [ %.0110.ph358, %bb.an ], [ %.0110.ph358, %bb.as ], [ %.0110.ph358, %bb.ax ], [ %.0110.ph358, %bb.l ], [ %.0110.ph358, %bb.n ], [ %.pre-phi, %.thread196 ], [ %.0110.ph358, %.lr.ph.split ], [ %.0110.ph358, %.split.us ], [ %.0110.ph358, %bb.m ], [ %.0110.ph358, %bb.k ], [ %.0110.ph358, %.split339.us ], [ %.0110.ph358, %.split334.us ], [ %.0110.ph358, %.split329.us ], [ %.0110.ph358, %.split324.us ], [ %.0110.ph358, %.split319.us ], [ %.0110.ph358, %.split314.us ], [ %.0110.ph358, %.split309.us ], [ %.0110.ph358, %.lr.ph.split.us.preheader ], [ %.0110.ph358, %.split349.us ], [ %.0110.ph358, %.split344.us ] ; 2 uses
  %i.mu = icmp ult i64 %.0110.ph279, %.0111
  br i1 %i.mu, label %bb.bh, label %.sink.split

bb.bh:                                            ; preds = %.critedge2
  %i.mv = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !52 ; 3 uses
  %.not.i192 = icmp eq ptr %i.mx, null
  br i1 %.not.i192, label %phpdbg_command_name.exit194, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !38
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.my, i64 %i.na, i1 false)
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !39 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nb
  store i8 32, ptr %i.nc, align 1
  %i.nd = add i64 %i.nb, 1
  br label %phpdbg_command_name.exit194

phpdbg_command_name.exit194:                      ; preds = %bb.bh, %bb.bi
  %.0.i193 = phi i64 [ %i.nd, %bb.bi ], [ 0, %bb.bh ]
  %i.ne = getelementptr i8, ptr %i.a, i64 %.0.i193 ; 2 uses
  %i.nf = load ptr, ptr %0, align 8, !tbaa !38
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !39 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ne, ptr align 1 %i.nf, i64 %i.nh, i1 false)
  %i.ni = getelementptr i8, ptr %i.ne, i64 %i.nh
  store i8 0, ptr %i.ni, align 1, !tbaa !35
  %i.nj = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.mv, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.a, i64 noundef %.0111, ptr noundef nonnull %i.e, i64 noundef %.0110.ph279) #21 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge2, %bb.g, %phpdbg_command_name.exit, %phpdbg_command_name.exit188, %phpdbg_command_name.exit191, %phpdbg_command_name.exit182, %phpdbg_command_name.exit185, %phpdbg_command_name.exit176, %phpdbg_command_name.exit179, %phpdbg_command_name.exit170, %phpdbg_command_name.exit173, %phpdbg_command_name.exit164, %phpdbg_command_name.exit167, %phpdbg_command_name.exit158, %phpdbg_command_name.exit161, %phpdbg_command_name.exit152, %phpdbg_command_name.exit155, %phpdbg_command_name.exit146, %phpdbg_command_name.exit149, %phpdbg_command_name.exit140, %phpdbg_command_name.exit143, %bb.f, %phpdbg_command_name.exit194
  %.1115.ph = phi i32 [ -1, %phpdbg_command_name.exit194 ], [ 0, %bb.g ], [ -1, %phpdbg_command_name.exit ], [ -1, %phpdbg_command_name.exit188 ], [ -1, %phpdbg_command_name.exit191 ], [ -1, %phpdbg_command_name.exit182 ], [ -1, %phpdbg_command_name.exit185 ], [ -1, %phpdbg_command_name.exit176 ], [ -1, %phpdbg_command_name.exit179 ], [ -1, %phpdbg_command_name.exit170 ], [ -1, %phpdbg_command_name.exit173 ], [ -1, %phpdbg_command_name.exit164 ], [ -1, %phpdbg_command_name.exit167 ], [ -1, %phpdbg_command_name.exit158 ], [ -1, %phpdbg_command_name.exit161 ], [ -1, %phpdbg_command_name.exit152 ], [ -1, %phpdbg_command_name.exit155 ], [ -1, %phpdbg_command_name.exit146 ], [ -1, %phpdbg_command_name.exit149 ], [ -1, %phpdbg_command_name.exit140 ], [ -1, %phpdbg_command_name.exit143 ], [ 0, %bb.f ], [ 0, %.critedge2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split, %bb.a
  %.1115 = phi i32 [ 0, %bb.a ], [ %.1115.ph, %.sink.split ]
  ret i32 %.1115
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare i32 @phpdbg_print(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @phpdbg_stack_resolve(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !31     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not211 = icmp eq ptr %0, null
  br i1 %.not211, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %.not190243 = icmp eq ptr %i.e, null
  br i1 %.not190243, label %.critedge, label %.lr.ph246

.lr.ph246:                                        ; preds = %.lr.ph, %.thread206
  %i.f = phi ptr [ %i.ad, %.thread206 ], [ %i.e, %.lr.ph ]
  %.0181212245 = phi ptr [ %i.ac, %.thread206 ], [ %0, %.lr.ph ] ; 8 uses
  %.0179213244 = phi i64 [ %.2, %.thread206 ], [ 0, %.lr.ph ] ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0181212245, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %.not191 = icmp eq ptr %i.h, null
  br i1 %.not191, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph246
  %i.i = load i64, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0181212245, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39
  %.not192 = icmp ult i64 %i.l, %i.i
  br i1 %.not192, label %.thread206, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0181212245, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !54    ; 2 uses
  %.not193 = icmp eq i8 %i.n, 0
  %.pre227 = load ptr, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  br i1 %.not193, label %.thread203, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.0181212245, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !54
  %.not193200 = icmp eq i8 %i.p, 0
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !22
  br label %.thread203

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %.pre227, align 1, !tbaa !35
  %i.r = icmp eq i8 %i.n, %i.q
  br i1 %i.r, label %.thread206.sink.split, label %.thread206

.thread203:                                       ; preds = %.thread, %bb.d
  %i.s = phi ptr [ %.pre, %.thread ], [ %.pre227, %bb.d ]
  %.not193202 = phi i1 [ %.not193200, %.thread ], [ true, %bb.d ]
  %i.t = tail call i32 @strncasecmp(ptr noundef nonnull %i.f, ptr noundef %i.s, i64 noundef %i.i) #22
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %.thread206

bb.f:                                             ; preds = %.thread203
  %i.v = icmp ult i64 %.0179213244, 3
  br i1 %i.v, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.0181212245, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !39
  %.not194 = icmp eq i64 %i.i, %i.x
  br i1 %.not194, label %.thread208, label %bb.h

.thread208:                                       ; preds = %bb.g
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0179213244
  store ptr %.0181212245, ptr %i.y, align 8, !tbaa !55
  %i.z = add nuw nsw i64 %.0179213244, 1
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  br i1 %.not193202, label %.thread206, label %.thread206.sink.split

.thread206.sink.split:                            ; preds = %bb.h, %bb.e
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0179213244
  store ptr %.0181212245, ptr %i.aa, align 8, !tbaa !55
  %i.ab = add i64 %.0179213244, 1
  br label %.thread206

.thread206:                                       ; preds = %.thread206.sink.split, %bb.h, %bb.e, %.thread203, %bb.c
  %.2 = phi i64 [ %.0179213244, %bb.c ], [ %.0179213244, %bb.e ], [ %.0179213244, %bb.h ], [ %.0179213244, %.thread203 ], [ %i.ab, %.thread206.sink.split ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0181212245, i64 80 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 2 uses
  %.not190 = icmp eq ptr %i.ad, null
  br i1 %.not190, label %.critedge, label %.lr.ph246

.critedge:                                        ; preds = %.thread206, %bb.f, %.lr.ph246, %.lr.ph, %.thread208
  %.3 = phi i64 [ %i.z, %.thread208 ], [ 0, %.lr.ph ], [ %.0179213244, %.lr.ph246 ], [ %.0179213244, %bb.f ], [ %.2, %.thread206 ] ; 4 uses
  switch i64 %.3, label %.lr.ph223 [
    i64 0, label %.critedge.thread
    i64 1, label %bb.k
  ]

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  %.not198 = icmp eq ptr %1, null
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37 ; 2 uses
  br i1 %.not198, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge.thread
  %i.af = load ptr, ptr %1, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.ai = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ae, ptr noundef nonnull @.str.38, ptr noundef %i.af, ptr noundef %i.ah) #21 ; 0 uses
  br label %bb.r

bb.j:                                             ; preds = %.critedge.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.al = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ae, ptr noundef nonnull @.str.39, ptr noundef %i.ak) #21 ; 0 uses
  br label %bb.r

bb.k:                                             ; preds = %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30 ; 3 uses
  store ptr %i.an, ptr %2, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.a, align 16, !tbaa !55 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %.not196 = icmp eq ptr %i.aq, null
  %.not197 = icmp eq ptr %i.an, null
  %or.cond = select i1 %.not196, i1 true, i1 %.not197
  br i1 %or.cond, label %bb.r, label %bb.p

.lr.ph223:                                        ; preds = %.critedge, %bb.o
  %i.ar = phi i64 [ %4, %bb.o ], [ 0, %.critedge ]
  %.0222 = phi i64 [ %i.bn, %bb.o ], [ 0, %.critedge ] ; 3 uses
  %.0176221 = phi i32 [ %3, %bb.o ], [ 0, %.critedge ]
  %.0177220 = phi ptr [ %.1178, %bb.o ], [ null, %.critedge ] ; 2 uses
  %.not199 = icmp eq ptr %.0177220, null
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !55 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %3 = add i32 %.0176221, 1                       ; 2 uses
  %4 = zext i32 %3 to i64                         ; 3 uses
  %i.aw = icmp ugt i64 %.3, %4                    ; 2 uses
  br i1 %.not199, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph223
  %i.ax = select i1 %i.aw, i64 3, i64 1
  %i.ay = add i64 %i.ax, %i.av
  %i.az = tail call noalias ptr @_emalloc(i64 noundef %i.ay) #25
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph223
  %i.ba = select i1 %i.aw, i64 2, i64 0
  %i.bb = add i64 %.0222, 1
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = add i64 %i.bc, %i.av
  %i.be = tail call ptr @_erealloc(ptr noundef nonnull %.0177220, i64 noundef %i.bd) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.1178 = phi ptr [ %i.az, %bb.l ], [ %i.be, %bb.m ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1178, i64 %.0222
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bg, i64 %i.bi, i1 false)
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !39
  %i.bk = add i64 %i.bj, %.0222                   ; 2 uses
  %i.bl = icmp ugt i64 %.3, %4
  %i.bm = getelementptr inbounds nuw i8, ptr %.1178, i64 %i.bk ; 2 uses
  br i1 %i.bl, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  store i16 8236, ptr %i.bm, align 1
  %i.bn = add i64 %i.bk, 2                        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1178, i64 %i.bn
  store i8 0, ptr %i.bo, align 1, !tbaa !35
  br label %.lr.ph223

._crit_edge:                                      ; preds = %bb.n
  store i8 0, ptr %i.bm, align 1, !tbaa !35
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !22
  %i.bs = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.bp, ptr noundef nonnull @.str.41, ptr noundef %i.br, i64 noundef %.3, ptr noundef %.1178) #21 ; 0 uses
  tail call void @_efree(ptr noundef %.1178) #21
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.bt = load i32, ptr %i.an, align 8, !tbaa !19
  %i.bu = icmp eq i32 %i.bt, 5
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = tail call ptr @phpdbg_stack_resolve(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ao, ptr noundef nonnull %2)
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %bb.p, %bb.i, %bb.j, %bb.q, %._crit_edge
  %.0182 = phi ptr [ null, %._crit_edge ], [ %1, %bb.i ], [ %i.bv, %bb.q ], [ null, %bb.j ], [ %i.ao, %bb.p ], [ %i.ao, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0182
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local i32 @phpdbg_stack_execute(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !19
  %.not = icmp eq i32 %i.b, 9
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.d = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.c, ptr noundef nonnull @.str.42) #21 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28
  %.not13 = icmp eq i64 %i.f, 0
  br i1 %.not13, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.h = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.g, ptr noundef nonnull @.str.43) #21 ; 0 uses
  br label %.loopexit

.preheader:                                       ; preds = %bb.c, %bb.t
  %.09 = phi ptr [ %i.ai, %bb.t ], [ %0, %bb.c ]  ; 3 uses
  %i.i = load i32, ptr %.09, align 8, !tbaa !19
  %i.j = icmp eq i32 %i.i, 9
  br i1 %i.j, label %bb.e, label %bb.t

bb.e:                                             ; preds = %.preheader
  %i.k = getelementptr i8, ptr %.09, i64 72
  %.09.val = load ptr, ptr %i.k, align 8, !tbaa !30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %.09.val, ptr %i.a, align 8, !tbaa !31
  %i.l = load i32, ptr %.09.val, align 8, !tbaa !19
  switch i32 %i.l, label %bb.s [
    i32 10, label %bb.f
    i32 15, label %bb.g
    i32 11, label %bb.j
    i32 5, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  call void @phpdbg_activate_err_buf(i1 noundef zeroext false) #21
  call void @phpdbg_free_err_buf() #21
  %i.m = call i32 @phpdbg_do_ev(ptr noundef nonnull %.09.val) #21
  br label %phpdbg_internal_stack_execute.exit

bb.g:                                             ; preds = %bb.e
  br i1 %1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.o = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.n, ptr noundef nonnull @.str.47) #21 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @phpdbg_activate_err_buf(i1 noundef zeroext false) #21
  call void @phpdbg_free_err_buf() #21
  %i.p = call i32 @phpdbg_do_run(ptr noundef nonnull %.09.val) #21
  br label %phpdbg_internal_stack_execute.exit

bb.j:                                             ; preds = %bb.e
  br i1 %1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.r = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.q, ptr noundef nonnull @.str.48) #21 ; 0 uses
  br label %phpdbg_internal_stack_execute.exit.thread

bb.l:                                             ; preds = %bb.j
  call void @phpdbg_activate_err_buf(i1 noundef zeroext false) #21
  call void @phpdbg_free_err_buf() #21
  %i.s = call i32 @phpdbg_do_sh(ptr noundef nonnull %.09.val) #21
  br label %phpdbg_internal_stack_execute.exit

bb.m:                                             ; preds = %bb.e
  %i.t = call ptr @phpdbg_stack_resolve(ptr noundef nonnull @phpdbg_prompt_commands, ptr noundef null, ptr noundef nonnull %i.a) ; 5 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %phpdbg_internal_stack_execute.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %1, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load i8, ptr %i.u, align 8, !tbaa !59, !range !60, !noundef !61
  %.not10.i = icmp eq i8 %i.v, 0
  br i1 %.not10.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.y = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.w, ptr noundef nonnull @.str.49, ptr noundef %i.x) #21 ; 0 uses
  br label %phpdbg_internal_stack_execute.exit.thread

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.z = call i32 @phpdbg_stack_verify(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a)
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.r, label %phpdbg_internal_stack_execute.exit.thread

bb.r:                                             ; preds = %bb.q
  call void @phpdbg_activate_err_buf(i1 noundef zeroext false) #21
  call void @phpdbg_free_err_buf() #21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.ae = call i32 %i.ac(ptr noundef %i.ad) #21, !inline_history !57
  br label %phpdbg_internal_stack_execute.exit

bb.s:                                             ; preds = %bb.e
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.ag = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.af, ptr noundef nonnull @.str.50) #21 ; 0 uses
  br label %phpdbg_internal_stack_execute.exit.thread

phpdbg_internal_stack_execute.exit.thread:        ; preds = %bb.q, %bb.m, %bb.s, %bb.k, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit

phpdbg_internal_stack_execute.exit:               ; preds = %bb.f, %bb.i, %bb.l, %bb.r
  %.0.i = phi i32 [ %i.ae, %bb.r ], [ %i.m, %bb.f ], [ %i.p, %bb.i ], [ %i.s, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not14 = icmp eq i32 %.0.i, 0
  br i1 %.not14, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %.preheader, %phpdbg_internal_stack_execute.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.09, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %.not15 = icmp eq ptr %i.ai, null
  br i1 %.not15, label %.loopexit, label %.preheader, !llvm.loop !58

.loopexit:                                        ; preds = %bb.t, %phpdbg_internal_stack_execute.exit, %phpdbg_internal_stack_execute.exit.thread, %bb.d, %bb.b
  %.3 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %phpdbg_internal_stack_execute.exit.thread ], [ 0, %bb.t ], [ %.0.i, %phpdbg_internal_stack_execute.exit ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @phpdbg_read_input(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [500 x i8], align 16              ; 4 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !87
  %i.c = and i64 %i.b, 851968
  %.not = icmp eq i64 %i.c, 327680
  br i1 %.not, label %.thread38, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !37
  %i.f = tail call ptr @phpdbg_get_prompt() #21
  %i.g = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 4, i32 noundef %i.e, ptr noundef nonnull @.str.10, ptr noundef %i.f) #21 ; 0 uses
  %i.h = call i32 @phpdbg_consume_stdin_line(ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.i = call noalias ptr @_estrdup(ptr noundef nonnull %i.a) #21
end_hunk_0
