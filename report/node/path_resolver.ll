Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/path_resolver?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0_@uvwasi__normalize_path:bb.a

bb.f:                                             ; preds = %uvwasi__strchr_slash.exit, %bb.e
  %.04.i105 = phi ptr [ null, %bb.e ], [ %.0.i, %uvwasi__strchr_slash.exit ] ; 2 uses
  %i.t = phi i64 [ %i.p, %bb.e ], [ %i.s, %uvwasi__strchr_slash.exit ] ; 3 uses
  switch i64 %i.t, label %bb.x [
    i64 0, label %bb.g
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq ptr %.088118, %2
  %i.v = icmp ne ptr %.04.i105, null
  %or.cond = and i1 %i.u, %i.v
  %or.cond3 = select i1 %or.cond, i1 %i.l, i1 false
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 47, ptr %2, align 1, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi ptr [ %i.m, %bb.h ], [ %.088118, %bb.g ] ; 2 uses
  store i8 0, ptr %.1, align 1, !tbaa !10
  br label %bb.ab

bb.j:                                             ; preds = %bb.f
  %i.w = load i8, ptr %.089117, align 1, !tbaa !10
  %i.x = icmp eq i8 %i.w, 46
  br i1 %i.x, label %bb.ab, label %bb.x

bb.k:                                             ; preds = %bb.f
  %i.y = load i8, ptr %.089117, align 1, !tbaa !10
  %i.z = icmp eq i8 %i.y, 46
  br i1 %i.z, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.089117, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10
  %i.ac = icmp eq i8 %i.ab, 46
  br i1 %i.ac, label %.preheader, label %bb.x

.preheader:                                       ; preds = %bb.l, %.preheader
  %.0.idx = phi i64 [ %.0.add, %.preheader ], [ 0, %bb.l ] ; 4 uses
  %.0.ptr = getelementptr inbounds i8, ptr %.088118, i64 %.0.idx ; 6 uses
  %i.ad = load i8, ptr %.0.ptr, align 1, !tbaa !10 ; 2 uses
  %i.ae = icmp ne i8 %i.ad, 47                    ; 3 uses
  %i.af = icmp ne ptr %.0.ptr, %2                 ; 2 uses
  %i.ag = and i1 %i.ae, %i.af
  %.0.add = add nsw i64 %.0.idx, -1
  br i1 %i.ag, label %.preheader, label %bb.m, !llvm.loop !16

bb.m:                                             ; preds = %.preheader
  %i.ah = icmp eq ptr %.088118, %2
  br i1 %i.ah, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = icmp eq i64 %.0.idx, -2
  %i.aj = icmp eq i8 %i.ad, 46
  %or.cond102 = and i1 %i.ai, %i.aj
  br i1 %or.cond102, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.am = icmp eq i8 %i.al, 46
  br i1 %i.am, label %bb.s, label %.thread107

bb.p:                                             ; preds = %bb.n
  %i.an = icmp ne i64 %.0.idx, -3
  %or.cond109.not = or i1 %i.an, %i.ae
  br i1 %or.cond109.not, label %.thread107, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.aq = icmp eq i8 %i.ap, 46
  br i1 %i.aq, label %bb.r, label %.thread107

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !10
  %i.at = icmp eq i8 %i.as, 46
  br i1 %i.at, label %bb.s, label %.thread107

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.au = getelementptr inbounds i8, ptr %.088118, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !10
  %.not100 = icmp eq i8 %i.av, 47
  br i1 %.not100, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 47, ptr %.088118, align 1, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %.088118, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %bb.t, %bb.s
  %.2 = phi ptr [ %i.aw, %bb.t ], [ %.088118, %bb.s ], [ %2, %bb.m ] ; 3 uses
  store i8 46, ptr %.2, align 1, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 46, ptr %i.ax, align 1, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %.2, i64 2
  br label %bb.w

.thread107:                                       ; preds = %bb.o, %bb.r, %bb.q, %bb.p
  br i1 %i.af, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread107
  %.not126 = xor i1 %i.ae, true
  %spec.select.idx = zext i1 %.not126 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.idx
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread107, %bb.u
  %.3 = phi ptr [ %i.ay, %bb.u ], [ %.0.ptr, %.thread107 ], [ %spec.select, %bb.v ] ; 2 uses
  store i8 0, ptr %.3, align 1, !tbaa !10
  br label %bb.ab

bb.x:                                             ; preds = %bb.j, %bb.f, %bb.l, %bb.k
  %.not97 = icmp eq ptr %.088118, %2
  br i1 %.not97, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds i8, ptr %.088118, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10
  %.not98 = icmp eq i8 %i.ba, 47
  br i1 %.not98, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 47, ptr %.088118, align 1, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %.088118, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.4 = phi ptr [ %i.bb, %bb.z ], [ %.088118, %bb.y ], [ %2, %bb.x ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4, ptr nonnull align 1 %.089117, i64 %i.t, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.4, i64 %i.t ; 2 uses
  store i8 0, ptr %i.bc, align 1, !tbaa !10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.j, %bb.aa, %bb.w, %bb.i
  %.5 = phi ptr [ %.1, %bb.i ], [ %.088118, %bb.j ], [ %.3, %bb.w ], [ %i.bc, %bb.aa ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04.i105, i64 1
  br i1 %.not111, label %.preheader112, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ab
  %i.be = icmp eq ptr %.5, %2
  br i1 %i.be, label %.split, label %bb.ac

.split:                                           ; preds = %._crit_edge
  %.not101 = icmp eq i32 %i.j, 0
  %. = select i1 %.not101, i8 46, i8 47
  store i8 %., ptr %.5, align 1, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  store i8 0, ptr %i.bf, align 1, !tbaa !10
  br i1 %i.k, label %bb.ad, label %bb.af

bb.ac:                                            ; preds = %._crit_edge
  br i1 %i.k, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.split, %bb.ac
  %.7138 = phi ptr [ %i.bf, %.split ], [ %.5, %bb.ac ] ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %.7138, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !10
  %i.bi = icmp eq i8 %i.bh, 47
  br i1 %i.bi, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 47, ptr %.7138, align 1, !tbaa !10
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ae, %.split.thread
  %.sink147 = phi ptr [ %2, %.split.thread ], [ %.7138, %bb.ae ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink147, i64 1
  store i8 0, ptr %i.bj, align 1, !tbaa !10
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %.split, %bb.ac, %bb.ad, %bb.a
  %.090 = phi i16 [ 42, %bb.a ], [ 0, %.split ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %.sink.split ]
  ret i16 %.090
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @uvwasi__resolve_path(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.uv_fs_s, align 8            ; 9 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store ptr null, ptr %i.c, align 8, !tbaa !13
  store ptr null, ptr %i.d, align 8, !tbaa !13
  %i.g = icmp ne ptr %2, null
  %i.h = icmp ne i32 %3, 0
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %uvwasi__is_absolute_path.exit, label %.critedge.preheader

.critedge.preheader:                              ; preds = %uvwasi__is_absolute_path.exit, %bb.a
  %i.i = zext i32 %3 to i64
  %i.j = add i32 %3, -1
  %i.k = zext i32 %i.j to i64
  %i.l = tail call i64 @strnlen(ptr noundef %2, i64 noundef %i.k) #8
  %i.m = add i64 %i.l, 1
  %.not73189 = icmp eq i64 %i.m, %i.i
  br i1 %.not73189, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.critedge.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = and i32 %5, 1
  %.not77 = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  br label %bb.c

uvwasi__is_absolute_path.exit:                    ; preds = %bb.a
  %i.r = load i8, ptr %2, align 1, !tbaa !10
  %.not = icmp eq i8 %i.r, 47
  br i1 %.not, label %bb.b, label %.critedge.preheader

bb.b:                                             ; preds = %uvwasi__is_absolute_path.exit
  store ptr null, ptr %4, align 8, !tbaa !13
  br label %bb.ad

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %7 = phi ptr [ null, %.lr.ph ], [ %8, %.critedge ] ; 2 uses
  %.0194 = phi i32 [ 0, %.lr.ph ], [ %i.bz, %.critedge ] ; 2 uses
  %.061193 = phi i32 [ %3, %.lr.ph ], [ %.1, %.critedge ] ; 7 uses
  %.062192 = phi ptr [ null, %.lr.ph ], [ %i.cf, %.critedge ] ; 8 uses
  %.064191 = phi ptr [ %2, %.lr.ph ], [ %.165, %.critedge ] ; 4 uses
  %.0104190 = phi ptr [ null, %.lr.ph ], [ %i.bl, %.critedge ] ; 3 uses
  %i.s = icmp ne ptr %.064191, null
  %i.t = icmp ne i32 %.061193, 0
  %or.cond.i83 = and i1 %i.s, %i.t
  br i1 %or.cond.i83, label %uvwasi__is_absolute_path.exit84, label %uvwasi__is_absolute_path.exit84.thread

uvwasi__is_absolute_path.exit84:                  ; preds = %bb.c
  %i.u = load i8, ptr %.064191, align 1, !tbaa !10
  %.not151 = icmp eq i8 %i.u, 47
  br i1 %.not151, label %bb.d, label %uvwasi__is_absolute_path.exit84.thread

bb.d:                                             ; preds = %uvwasi__is_absolute_path.exit84
  %i.v = add i32 %.061193, 1
  %i.w = sext i32 %i.v to i64
  %i.x = call ptr @uvwasi__malloc(ptr noundef %0, i64 noundef %i.w) #9 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %uvwasi__normalize_absolute_path.exit.thread113, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call zeroext i16 @uvwasi__normalize_path(ptr noundef nonnull %.064191, i32 noundef %.061193, ptr noundef nonnull %i.x, i32 noundef %.061193) ; 2 uses
  %.not.i = icmp eq i16 %i.z, 0
  br i1 %.not.i, label %bb.f, label %uvwasi__normalize_absolute_path.exit.thread113

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #8
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = call fastcc i32 @uvwasi__is_path_sandboxed(ptr noundef %i.x, i32 noundef %.061193, ptr noundef nonnull %i.aa, i32 noundef %i.ac)
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %uvwasi__normalize_absolute_path.exit.thread113, label %uvwasi__normalize_absolute_path.exit.thread

uvwasi__normalize_absolute_path.exit.thread113:   ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i16 [ 48, %bb.d ], [ %i.z, %bb.e ], [ 76, %bb.f ]
  call void @uvwasi__free(ptr noundef %0, ptr noundef %i.x) #9
  br label %.thread

uvwasi__is_absolute_path.exit84.thread:           ; preds = %bb.c, %uvwasi__is_absolute_path.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #8
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = call fastcc zeroext i16 @uvwasi__combine_paths(ptr noundef %0, ptr noundef nonnull %i.af, i32 noundef %i.ah, ptr noundef %.064191, i32 noundef %.061193, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not.i85 = icmp eq i16 %i.ai, 0
  br i1 %.not.i85, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %uvwasi__is_absolute_path.exit84.thread
  %.pre.pre.i = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %uvwasi__normalize_absolute_path.exit

bb.g:                                             ; preds = %uvwasi__is_absolute_path.exit84.thread
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !14  ; 3 uses
  %i.ak = add i32 %i.aj, 1
  %i.al = zext i32 %i.ak to i64
  %i.am = call ptr @uvwasi__malloc(ptr noundef %0, i64 noundef %i.al) #9 ; 7 uses
  %i.an = icmp eq ptr %i.am, null
  %.pre.pre36.i = load ptr, ptr %i.a, align 8, !tbaa !13 ; 5 uses
  br i1 %i.an, label %uvwasi__normalize_absolute_path.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = call zeroext i16 @uvwasi__normalize_path(ptr noundef %.pre.pre36.i, i32 noundef %i.aj, ptr noundef nonnull %i.am, i32 noundef %i.aj) ; 2 uses
  %.not28.i = icmp eq i16 %i.ao, 0
  br i1 %.not28.i, label %bb.i, label %uvwasi__normalize_absolute_path.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #8
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.as = call fastcc i32 @uvwasi__is_path_sandboxed(ptr noundef %i.am, i32 noundef %i.aq, ptr noundef %i.ar, i32 noundef %i.ah)
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %uvwasi__normalize_absolute_path.exit, label %uvwasi__normalize_absolute_path.exit.thread118

uvwasi__normalize_absolute_path.exit.thread118:   ; preds = %bb.i
  call void @uvwasi__free(ptr noundef %0, ptr noundef %.pre.pre36.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %uvwasi__normalize_absolute_path.exit.thread

uvwasi__normalize_absolute_path.exit:             ; preds = %bb.g, %bb.h, %bb.i, %._crit_edge.i
  %.pre.i = phi ptr [ %.pre.pre.i, %._crit_edge.i ], [ %.pre.pre36.i, %bb.i ], [ %.pre.pre36.i, %bb.h ], [ %.pre.pre36.i, %bb.g ]
  %.026.ph.i = phi i16 [ %i.ai, %._crit_edge.i ], [ 48, %bb.g ], [ %i.ao, %bb.h ], [ 76, %bb.i ]
  %.0.ph.i = phi ptr [ null, %._crit_edge.i ], [ null, %bb.g ], [ %i.am, %bb.h ], [ %i.am, %bb.i ]
  call void @uvwasi__free(ptr noundef %0, ptr noundef %.0.ph.i) #9
  call void @uvwasi__free(ptr noundef %0, ptr noundef %.pre.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.thread

uvwasi__normalize_absolute_path.exit.thread:      ; preds = %bb.f, %uvwasi__normalize_absolute_path.exit.thread118
  %.098112 = phi i32 [ %i.aq, %uvwasi__normalize_absolute_path.exit.thread118 ], [ %.061193, %bb.f ] ; 2 uses
  %.0101111 = phi ptr [ %i.am, %uvwasi__normalize_absolute_path.exit.thread118 ], [ %i.x, %bb.f ] ; 10 uses
  call void @uvwasi__free(ptr noundef %0, ptr noundef %.0104190) #9
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #8 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !21  ; 4 uses
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #8
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  switch i32 %i.az, label %bb.n [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %uvwasi__normalize_absolute_path.exit.thread
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !10
  %i.bb = icmp eq i8 %i.ba, 46
  br i1 %i.bb, label %bb.m, label %bb.n

bb.k:                                             ; preds = %uvwasi__normalize_absolute_path.exit.thread
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !10
  %i.bd = icmp eq i8 %i.bc, 46
  br i1 %i.bd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !10
  %i.bg = icmp eq i8 %i.bf, 47
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.j
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %uvwasi__normalize_absolute_path.exit.thread
  %.0.i86 = phi i32 [ 0, %bb.m ], [ 2, %bb.l ], [ 2, %bb.k ], [ %i.az, %uvwasi__normalize_absolute_path.exit.thread ], [ 1, %bb.j ] ; 2 uses
  %i.bh = sub i32 %.098112, %.0.i86               ; 4 uses
  %i.bi = add i32 %i.aw, 2
  %i.bj = add i32 %i.bi, %i.bh
  %i.bk = zext i32 %i.bj to i64
  %i.bl = call ptr @uvwasi__malloc(ptr noundef %0, i64 noundef %i.bk) #9 ; 12 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = sext i32 %.0.i86 to i64
  %i.bo = getelementptr inbounds i8, ptr %.0101111, i64 %i.bn ; 3 uses
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !22
  %sext.i = shl i64 %i.av, 32
  %i.bq = ashr exact i64 %sext.i, 32              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr align 1 %i.bp, i64 %i.bq, i1 false)
  %i.br = getelementptr inbounds i8, ptr %i.bl, i64 %i.bq ; 5 uses
  %i.bs = icmp sgt i32 %i.bh, 1
  br i1 %i.bs, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = icmp eq i32 %i.bh, 1
  br i1 %i.bt, label %bb.q, label %uvwasi__resolve_path_to_host.exit

bb.q:                                             ; preds = %bb.p
  %i.bu = load i8, ptr %i.bo, align 1, !tbaa !10
  %.not.i87 = icmp eq i8 %i.bu, 47
  br i1 %.not.i87, label %uvwasi__resolve_path_to_host.exit, label %.thread.i

bb.r:                                             ; preds = %bb.o
  %.pr.i = load i8, ptr %i.bo, align 1, !tbaa !10
  %.not42.i = icmp eq i8 %.pr.i, 47
  br i1 %.not42.i, label %bb.s, label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  store i8 47, ptr %i.br, align 1, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  br label %bb.s

bb.s:                                             ; preds = %.thread.i, %bb.r
  %.036.i = phi ptr [ %i.bv, %.thread.i ], [ %i.br, %bb.r ] ; 2 uses
  %i.bw = zext nneg i32 %i.bh to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.036.i, ptr nonnull readonly align 1 %i.bo, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.bw
  br label %uvwasi__resolve_path_to_host.exit

uvwasi__resolve_path_to_host.exit:                ; preds = %bb.p, %bb.q, %bb.s
  %.1.i = phi ptr [ %i.bx, %bb.s ], [ %i.br, %bb.q ], [ %i.br, %bb.p ]
  store i8 0, ptr %.1.i, align 1, !tbaa !10
  br i1 %.not77, label %.thread139, label %bb.t

bb.t:                                             ; preds = %uvwasi__resolve_path_to_host.exit
  %i.by = call i32 @uv_fs_readlink(ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %i.bl, ptr noundef null) #9 ; 2 uses
  switch i32 %i.by, label %bb.ab [
    i32 0, label %bb.u
    i32 -2, label %.thread149
    i32 -22, label %.thread149
  ]

bb.u:                                             ; preds = %bb.t
  %i.bz = add nuw nsw i32 %.0194, 1
  %exitcond = icmp eq i32 %.0194, 31
  br i1 %exitcond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @uv_fs_req_cleanup(ptr noundef nonnull %6) #9
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.ca = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.cb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ca) #8 ; 2 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  call void @uvwasi__free(ptr noundef %0, ptr noundef %.062192) #9
  %i.cd = add i64 %i.cb, 1
  %i.ce = and i64 %i.cd, 4294967295               ; 2 uses
  %i.cf = call ptr @uvwasi__malloc(ptr noundef %0, i64 noundef %i.ce) #9 ; 9 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @uv_fs_req_cleanup(ptr noundef nonnull %6) #9
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.ch = load ptr, ptr %i.q, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.ch, i64 %i.ce, i1 false)
  call void @uv_fs_req_cleanup(ptr noundef nonnull %6) #9
  %.not152 = icmp eq i32 %i.cc, 0
  br i1 %.not152, label %uvwasi__is_absolute_path.exit89.thread, label %uvwasi__is_absolute_path.exit89

uvwasi__is_absolute_path.exit89:                  ; preds = %bb.y
  %i.ci = load i8, ptr %i.cf, align 1, !tbaa !10
  %.not153 = icmp eq i8 %i.ci, 47
  br i1 %.not153, label %.critedge, label %uvwasi__is_absolute_path.exit89.thread

uvwasi__is_absolute_path.exit89.thread:           ; preds = %bb.y, %uvwasi__is_absolute_path.exit89
  call void @uvwasi__free(ptr noundef %0, ptr noundef %7) #9
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @uvwasi__free(ptr noundef %0, ptr noundef %i.cj) #9
  %i.ck = call fastcc zeroext i16 @uvwasi__combine_paths(ptr noundef %0, ptr noundef nonnull %.0101111, i32 noundef %.098112, ptr noundef nonnull @.str, i32 noundef 2, ptr noundef %i.c, ptr noundef %i.e) ; 2 uses
  %.not80 = icmp eq i16 %i.ck, 0
  br i1 %.not80, label %bb.z, label %.thread

bb.z:                                             ; preds = %uvwasi__is_absolute_path.exit89.thread
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.cm = load i32, ptr %i.e, align 4, !tbaa !14
  %i.cn = call fastcc zeroext i16 @uvwasi__combine_paths(ptr noundef %0, ptr noundef %i.cl, i32 noundef %i.cm, ptr noundef nonnull %i.cf, i32 noundef %i.cc, ptr noundef %i.d, ptr noundef %i.f) ; 2 uses
  %.not81 = icmp eq i16 %i.cn, 0
  br i1 %.not81, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cp = load i32, ptr %i.f, align 4, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %uvwasi__is_absolute_path.exit89, %bb.aa
  %8 = phi ptr [ %i.cl, %bb.aa ], [ %7, %uvwasi__is_absolute_path.exit89 ]
  %.165 = phi ptr [ %i.co, %bb.aa ], [ %i.cf, %uvwasi__is_absolute_path.exit89 ] ; 2 uses
  %.1 = phi i32 [ %i.cp, %bb.aa ], [ %i.cc, %uvwasi__is_absolute_path.exit89 ] ; 3 uses
  call void @uvwasi__free(ptr noundef %0, ptr noundef nonnull %.0101111) #9
  %i.cq = zext i32 %.1 to i64
  %i.cr = add i32 %.1, -1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = call i64 @strnlen(ptr noundef %.165, i64 noundef %i.cs) #8
  %i.cu = add i64 %i.ct, 1
  %.not73 = icmp eq i64 %i.cu, %i.cq
  br i1 %.not73, label %bb.c, label %.thread

.thread149:                                       ; preds = %bb.t, %bb.t
  call void @uv_fs_req_cleanup(ptr noundef nonnull %6) #9
  br label %.thread139

bb.ab:                                            ; preds = %bb.t
  %i.cv = call zeroext i16 @uvwasi__translate_uv_error(i32 noundef %i.by) #9 ; 2 uses
  call void @uv_fs_req_cleanup(ptr noundef nonnull %6) #9
  %i.cw = icmp eq i16 %i.cv, 0
  br i1 %i.cw, label %.thread139, label %.thread

.thread139:                                       ; preds = %uvwasi__resolve_path_to_host.exit, %.thread149, %bb.ab
  %.062192234 = phi ptr [ %.062192, %bb.ab ], [ %.062192, %.thread149 ], [ null, %uvwasi__resolve_path_to_host.exit ]
  store ptr %i.bl, ptr %4, align 8, !tbaa !13
  br label %bb.ac

.thread:                                          ; preds = %.critedge, %uvwasi__is_absolute_path.exit89.thread, %bb.z, %bb.n, %.critedge.preheader, %uvwasi__normalize_absolute_path.exit.thread113, %bb.x, %bb.v, %uvwasi__normalize_absolute_path.exit, %bb.ab
  %.163138 = phi ptr [ %.062192, %bb.ab ], [ null, %bb.x ], [ %.062192, %uvwasi__normalize_absolute_path.exit.thread113 ], [ %.062192, %bb.v ], [ %.062192, %uvwasi__normalize_absolute_path.exit ], [ null, %.critedge.preheader ], [ %i.cf, %bb.z ], [ %i.cf, %.critedge ], [ %i.cf, %uvwasi__is_absolute_path.exit89.thread ], [ %.062192, %bb.n ]
  %.2136 = phi i16 [ %i.cv, %bb.ab ], [ 48, %bb.x ], [ %.0.i, %uvwasi__normalize_absolute_path.exit.thread113 ], [ 32, %bb.v ], [ %.026.ph.i, %uvwasi__normalize_absolute_path.exit ], [ 28, %.critedge.preheader ], [ %i.cn, %bb.z ], [ 28, %.critedge ], [ %i.ck, %uvwasi__is_absolute_path.exit89.thread ], [ 48, %bb.n ]
  %.1102134 = phi ptr [ %.0101111, %bb.ab ], [ %.0101111, %bb.x ], [ null, %uvwasi__normalize_absolute_path.exit.thread113 ], [ %.0101111, %bb.v ], [ null, %uvwasi__normalize_absolute_path.exit ], [ null, %.critedge.preheader ], [ %.0101111, %bb.z ], [ null, %.critedge ], [ %.0101111, %uvwasi__is_absolute_path.exit89.thread ], [ %.0101111, %bb.n ]
  %.1105132 = phi ptr [ %i.bl, %bb.ab ], [ %i.bl, %bb.x ], [ %.0104190, %uvwasi__normalize_absolute_path.exit.thread113 ], [ %i.bl, %bb.v ], [ %.0104190, %uvwasi__normalize_absolute_path.exit ], [ null, %.critedge.preheader ], [ %i.bl, %bb.z ], [ %i.bl, %.critedge ], [ %i.bl, %uvwasi__is_absolute_path.exit89.thread ], [ null, %bb.n ]
  store ptr null, ptr %4, align 8, !tbaa !13
  call void @uvwasi__free(ptr noundef %0, ptr noundef %.1105132) #9
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %.thread139
  %.163137 = phi ptr [ %.163138, %.thread ], [ %.062192234, %.thread139 ]
  %.2135 = phi i16 [ %.2136, %.thread ], [ 0, %.thread139 ]
  %.1102133 = phi ptr [ %.1102134, %.thread ], [ %.0101111, %.thread139 ]
  call void @uvwasi__free(ptr noundef %0, ptr noundef %.163137) #9
  call void @uvwasi__free(ptr noundef %0, ptr noundef %.1102133) #9
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @uvwasi__free(ptr noundef %0, ptr noundef %i.cx) #9
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @uvwasi__free(ptr noundef %0, ptr noundef %i.cy) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.b
  %.068 = phi i16 [ 76, %bb.b ], [ %.2135, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret i16 %.068
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

declare void @uvwasi__free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @uv_fs_readlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i16 @uvwasi__translate_uv_error(i32 noundef) local_unnamed_addr #4

declare void @uv_fs_req_cleanup(ptr noundef) local_unnamed_addr #4

declare ptr @uvwasi__malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i16 @uvwasi__combine_paths(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %6) unnamed_addr #3 {
bb.a:
  store ptr null, ptr %5, align 8, !tbaa !13
  store i32 0, ptr %6, align 4, !tbaa !14
  %i.a = add i32 %2, 2
  %i.b = add i32 %i.a, %4
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call ptr @uvwasi__malloc(ptr noundef %0, i64 noundef %i.c) #9 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %3) #9
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store ptr %i.d, ptr %5, align 8, !tbaa !13
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #8
  %i.i = trunc i64 %i.h to i32
  store i32 %i.i, ptr %6, align 4, !tbaa !14
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__errno_location() #10
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = tail call i32 @uv_translate_sys_error(i32 noundef %i.k) #9
  %i.m = tail call zeroext i16 @uvwasi__translate_uv_error(i32 noundef %i.l) #9 ; 2 uses
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uvwasi__free(ptr noundef %0, ptr noundef nonnull %i.d) #9
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.d, %bb.a
  %.020 = phi i16 [ 48, %bb.a ], [ %i.m, %bb.d ], [ 0, %bb.c ], [ 0, %.thread ]
  ret i16 %.020
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @uvwasi__is_path_sandboxed(ptr nofree noundef nonnull readonly %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %i.b = icmp ne i32 %3, 0
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %uvwasi__is_absolute_path.exit, label %uvwasi__is_absolute_path.exit.thread

uvwasi__is_absolute_path.exit:                    ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %.not = icmp eq i8 %i.c, 47
  br i1 %.not, label %bb.b, label %uvwasi__is_absolute_path.exit.thread

bb.b:                                             ; preds = %uvwasi__is_absolute_path.exit
  %i.d = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2) #8
  %i.e = icmp eq ptr %0, %i.d
  %i.f = zext i1 %i.e to i32
  br label %bb.v

uvwasi__is_absolute_path.exit.thread:             ; preds = %bb.a, %uvwasi__is_absolute_path.exit
  switch i32 %3, label %bb.m [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %uvwasi__is_absolute_path.exit.thread
  %i.g = load i8, ptr %2, align 1, !tbaa !10
  %i.h = icmp eq i8 %i.g, 46
  br i1 %i.h, label %bb.f, label %bb.m

bb.d:                                             ; preds = %uvwasi__is_absolute_path.exit.thread
  %i.i = load i8, ptr %2, align 1, !tbaa !10
  %i.j = icmp eq i8 %i.i, 46
  br i1 %i.j, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10
  %i.m = icmp eq i8 %i.l, 47
  br i1 %i.m, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.n = icmp eq i32 %1, 2
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = load i8, ptr %0, align 1, !tbaa !10
  %i.p = icmp eq i8 %i.o, 46
  br i1 %i.p, label %bb.h, label %.thread42

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10
  %i.s = icmp eq i8 %i.r, 46
  br i1 %i.s, label %bb.v, label %.thread42

bb.i:                                             ; preds = %bb.f
  %i.t = icmp ugt i32 %1, 2
  br i1 %i.t, label %bb.j, label %.thread42

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %0, align 1, !tbaa !10
  %i.v = icmp eq i8 %i.u, 46
  br i1 %i.v, label %bb.k, label %.thread42

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10
  %i.y = icmp eq i8 %i.x, 46
  br i1 %i.y, label %bb.l, label %.thread42

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = icmp eq i8 %i.aa, 47
  br i1 %i.ab, label %bb.v, label %.thread42

bb.m:                                             ; preds = %bb.c, %uvwasi__is_absolute_path.exit.thread, %bb.e, %bb.d
  %i.ac = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2) #8
  %.not39 = icmp eq ptr %0, %i.ac
  br i1 %.not39, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.ad = sub i32 %1, %3                          ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 2
  br i1 %i.ae, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = zext i32 %3 to i64
end_hunk_0
