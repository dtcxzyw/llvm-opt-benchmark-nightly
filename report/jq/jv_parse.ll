Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv_parse?download=true
inline.NumInlined: 47
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.54 = private unnamed_addr constant [36 x i8] c"Invalid characters in \\uXXXX escape\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"Invalid \\uXXXX\\uXXXX surrogate pair escape\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Invalid escape\00", align 1
@.str.57 = private unnamed_addr constant [78 x i8] c"Invalid string: control characters from U+0000 through U+001F must be escaped\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.60 = private unnamed_addr constant [46 x i8] c"Invalid string literal; expected \22, but got '\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"Invalid literal\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"Invalid numeric literal\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jv_parser_new(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @jv_mem_alloc(i64 noundef 208) #8 ; 3 uses
  tail call fastcc void @parser_init(ptr noundef %i.a, i32 noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %0, ptr %i.b, align 4, !tbaa !20
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @jv_mem_alloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parser_init(ptr noundef initializes((0, 68), (72, 128), (200, 204)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !20
  %i.b = and i32 %1, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @jv_array() #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @jv_invalid() #8
  %i.e = load i32, ptr %i.a, align 4, !tbaa !20
  %i.f = and i32 %i.e, -5
  store i32 %i.f, ptr %i.a, align 4, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.d, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %.sink = extractvalue { i64, ptr } %.pn, 1
  %.sink35 = extractvalue { i64, ptr } %.pn, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sink35, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.l = tail call { i64, ptr } @jv_invalid() #8  ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1
  store i64 %i.m, ptr %i.k, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.n, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = tail call { i64, ptr } @jv_invalid() #8  ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = extractvalue { i64, ptr } %i.p, 1
  store i64 %i.q, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 256, ptr %i.s, align 4, !tbaa !23
  %i.t = tail call ptr @jv_mem_alloc(i64 noundef 256) #8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.t, ptr %i.u, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.v, align 8, !tbaa !25
  %i.w = load i32, ptr %i.a, align 4, !tbaa !20
  %i.x = and i32 %i.w, 1
  %.not34 = icmp eq i32 %i.x, 0
  %spec.select = select i1 %.not34, i32 0, i32 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %spec.select, ptr %i.y, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, -2
  store i8 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.ac, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.ad, align 4, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @jvp_dtoa_context_init(ptr noundef nonnull %i.ae) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @jv_parser_free(ptr noundef initializes((64, 68)) %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @parser_reset(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @jv_free(i64 %i.b, ptr %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @jv_free(i64 %i.f, ptr %i.h) #8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  tail call void @jv_mem_free(ptr noundef %i.j) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  tail call void @jv_mem_free(ptr noundef %i.l) #8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @jvp_dtoa_context_free(ptr noundef nonnull %i.m) #8
  tail call void @jv_mem_free(ptr noundef %0) #8
  ret void
}

declare void @jv_mem_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @jv_parser_remaining(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = sub nsw i32 %i.d, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @jv_parser_set_buf(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 737, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_parser_set_buf) #9
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %.promoted = load i32, ptr %i.h, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.j = phi i32 [ %.promoted, %.lr.ph ], [ %.sink, %bb.f ] ; 4 uses
  %.023 = phi ptr [ %1, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %.01922 = phi i32 [ %2, %.lr.ph ], [ %.120, %bb.f ] ; 2 uses
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.l = zext nneg i32 %i.j to i64
  %i.m = load i8, ptr %.023, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr @UTF8_BOM, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !21
  %i.p = icmp eq i8 %i.m, %i.o                    ; 3 uses
  %i.q = icmp eq i32 %i.j, 0
  %. = select i1 %i.q, i32 3, i32 255
  %i.r = add nuw nsw i32 %i.j, 1
  %.sink = select i1 %i.p, i32 %i.r, i32 %.       ; 2 uses
  %i.s = sext i1 %i.p to i32
  %.120 = add nsw i32 %.01922, %i.s               ; 2 uses
  %.1.idx = zext i1 %i.p to i64
  %.1 = getelementptr inbounds nuw i8, ptr %.023, i64 %.1.idx ; 2 uses
  store i32 %.sink, ptr %i.h, align 8, !tbaa !33
  %.not = icmp eq i32 %.120, 0
  br i1 %.not, label %.critedge, label %bb.e, !llvm.loop !0

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d
  %.019.lcssa = phi i32 [ %2, %bb.d ], [ 0, %bb.f ], [ %.01922, %bb.e ]
  %.0.lcssa = phi ptr [ %1, %bb.d ], [ %.1, %bb.f ], [ %.023, %bb.e ]
  store ptr %.0.lcssa, ptr %0, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.019.lcssa, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.v, align 8, !tbaa !35
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_parser_next(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.jv, align 8                 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @jv_invalid() #8
  br label %bb.ey

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !30
  %.not127 = icmp eq ptr %i.d, null
  br i1 %.not127, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call { i64, ptr } @jv_invalid() #8
  br label %bb.ey

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33
  %i.h = icmp eq i32 %i.g, 255
  br i1 %i.h, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !20
  %i.k = and i32 %i.j, 1
  %.not128 = icmp eq i32 %i.k, 0
  br i1 %.not128, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.3) #8 ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1
  %i.o = tail call { i64, ptr } @jv_invalid_with_msg(i64 %i.m, ptr %i.n) #8
  br label %bb.ey

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 3, ptr %i.p, align 8, !tbaa !26
  tail call fastcc void @parser_reset(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.q = tail call { i64, ptr } @jv_invalid() #8  ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  store i64 %i.r, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.t = extractvalue { i64, ptr } %i.q, 1
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 15 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !20
  %i.w = and i32 %i.v, 2
  %.not129 = icmp eq i32 %i.w, 0
  br i1 %.not129, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = call fastcc i32 @stream_check_done(ptr noundef nonnull %0, ptr noundef %1)
  %.not130 = icmp eq i32 %i.x, 0
  br i1 %.not130, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0101.0.copyload = load i64, ptr %1, align 8
  %.sroa.15.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.y = insertvalue { i64, ptr } poison, i64 %.sroa.0101.0.copyload, 0
  %i.z = insertvalue { i64, ptr } %i.y, ptr %.sroa.15.0.copyload, 1
  br label %bb.ex

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 13 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 25 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 19 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.backedge
  %i.ao = load i32, ptr %i.aa, align 4, !tbaa !32 ; 5 uses
  %i.ap = load i32, ptr %i.ab, align 8, !tbaa !31 ; 3 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.eb

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %0, align 8, !tbaa !30
  %i.as = add nsw i32 %i.ao, 1
  store i32 %i.as, ptr %i.aa, align 4, !tbaa !32
  %i.at = sext i32 %i.ao to i64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !21  ; 17 uses
  %i.aw = load i32, ptr %i.ac, align 8, !tbaa !26 ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 3
  br i1 %i.ax, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ay = icmp eq i8 %i.av, 10
  br i1 %i.ay, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.o
  %i.az = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ak, align 8, !tbaa !27
  store i32 0, ptr %i.ad, align 4, !tbaa !28
  br label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ad, align 4, !tbaa !28
  %i.bd = icmp eq i8 %i.av, 30
  br i1 %i.bd, label %bb.q, label %.backedge

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ac, align 8, !tbaa !26
  br label %.backedge

.backedge:                                        ; preds = %bb.dv, %bb.du, %bb.dk, %bb.dj, %bb.di, %bb.bk, %bb.bj, %bb.bi, %bb.p, %bb.q, %.thread
  %.0123.be = phi ptr [ null, %bb.p ], [ null, %.thread ], [ null, %bb.q ], [ null, %bb.dv ], [ %.0172.i, %bb.bj ], [ null, %bb.dj ], [ null, %bb.di ], [ null, %bb.dk ], [ null, %bb.du ], [ %.0172.i, %bb.bi ], [ %.0172.i, %bb.bk ] ; 2 uses
  %.not131 = icmp eq ptr %.0123.be, null
  br i1 %.not131, label %bb.m, label %.critedge.loopexit290, !llvm.loop !41

bb.r:                                             ; preds = %bb.n
  %i.be = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.ad, align 4, !tbaa !28
  %i.bg = icmp eq i8 %i.av, 10
  br i1 %i.bg, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %bb.r
  %i.bh = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ak, align 8, !tbaa !27
  store i32 0, ptr %i.ad, align 4, !tbaa !28
  br label %bb.ai

bb.s:                                             ; preds = %bb.r
  %i.bj = load i32, ptr %i.u, align 4, !tbaa !20  ; 2 uses
  %i.bk = trunc i32 %i.bj to i1
  %i.bl = icmp eq i8 %i.av, 30
  %or.cond.i = and i1 %i.bl, %i.bk
  br i1 %or.cond.i, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s
  %i.bm = and i32 %i.bj, 2
  %.not121.i = icmp eq i32 %i.bm, 0
  br i1 %.not121.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load i64, ptr %i.ae, align 8
  %i.bo = load ptr, ptr %i.af, align 8
  %i.bp = tail call i32 @jv_get_kind(i64 %i.bn, ptr %i.bo) #8
  %i.bq = load i32, ptr %i.ag, align 4, !tbaa !36
  %i.br = icmp slt i32 %i.bq, 1
  %i.bs = add i32 %i.bp, -5
  %i.bt = icmp ult i32 %i.bs, -4
  %narrow.i.not.i = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %narrow.i.not.i, label %seq_check_truncation.exit.thread153.i, label %seq_check_truncation.exit.thread.i

bb.v:                                             ; preds = %bb.t
  %i.bu = load i8, ptr %i.ah, align 4
  %i.bv = and i8 %i.bu, 1
  %.not.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i, label %bb.w, label %seq_check_truncation.exit.thread153.i

bb.w:                                             ; preds = %bb.v
  %i.bw = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %seq_check_truncation.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = load i32, ptr %i.aj, align 8, !tbaa !25
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %seq_check_truncation.exit.thread.i, label %seq_check_truncation.exit.i

seq_check_truncation.exit.i:                      ; preds = %bb.x
  %i.ca = load i64, ptr %i.ae, align 8
  %i.cb = load ptr, ptr %i.af, align 8
  %i.cc = tail call i32 @jv_get_kind(i64 %i.ca, ptr %i.cb) #8
  %.not.i = icmp eq i32 %i.cc, 4
  br i1 %.not.i, label %seq_check_truncation.exit.thread.i, label %seq_check_truncation.exit.thread153.i

seq_check_truncation.exit.thread.i:               ; preds = %seq_check_truncation.exit.i, %bb.x, %bb.w, %bb.u
  %i.cd = tail call fastcc ptr @check_literal(ptr noundef nonnull %0)
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.y, label %stream_is_top_num.exit.thread.i

bb.y:                                             ; preds = %seq_check_truncation.exit.thread.i
  %i.cf = load i32, ptr %i.u, align 4, !tbaa !20
  %i.cg = and i32 %i.cf, 2
  %.not129.i = icmp eq i32 %i.cg, 0
  br i1 %.not129.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = load i32, ptr %i.ag, align 4, !tbaa !36
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %stream_is_top_num.exit.i, label %stream_is_top_num.exit.thread.i

stream_is_top_num.exit.i:                         ; preds = %bb.z
  %i.cj = load i64, ptr %i.ae, align 8
  %i.ck = load ptr, ptr %i.af, align 8
  %i.cl = tail call i32 @jv_get_kind(i64 %i.cj, ptr %i.ck) #8
  %.not193.i = icmp eq i32 %i.cl, 4
  br i1 %.not193.i, label %.critedge, label %stream_is_top_num.exit.thread.i

bb.aa:                                            ; preds = %bb.y
  %i.cm = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %parse_is_top_num.exit.i, label %stream_is_top_num.exit.thread.i

parse_is_top_num.exit.i:                          ; preds = %bb.aa
  %i.co = load i64, ptr %i.ae, align 8
  %i.cp = load ptr, ptr %i.af, align 8
  %i.cq = tail call i32 @jv_get_kind(i64 %i.co, ptr %i.cp) #8
  %.not194.i = icmp eq i32 %i.cq, 4
  br i1 %.not194.i, label %.critedge, label %stream_is_top_num.exit.thread.i

stream_is_top_num.exit.thread.i:                  ; preds = %parse_is_top_num.exit.i, %bb.aa, %stream_is_top_num.exit.i, %bb.z, %seq_check_truncation.exit.thread.i
  br label %.critedge

seq_check_truncation.exit.thread153.i:            ; preds = %seq_check_truncation.exit.i, %bb.v, %bb.u
  %i.cr = tail call fastcc ptr @check_literal(ptr noundef nonnull %0) ; 2 uses
  %.not124.not.i = icmp eq ptr %i.cr, null
  br i1 %.not124.not.i, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %seq_check_truncation.exit.thread153.i
  %i.cs = load i32, ptr %i.ac, align 8, !tbaa !26
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load i32, ptr %i.u, align 4, !tbaa !20
  %i.cv = and i32 %i.cu, 2
  %.not125.i = icmp eq i32 %i.cv, 0
  br i1 %.not125.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = call fastcc i32 @stream_check_done(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not127.i = icmp eq i32 %i.cw, 0
  br i1 %.not127.i, label %bb.af, label %.critedge.thread

bb.ae:                                            ; preds = %bb.ac
  %i.cx = call fastcc i32 @parse_check_done(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not126.i = icmp eq i32 %i.cx, 0
  br i1 %.not126.i, label %bb.af, label %.critedge.thread

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.cy = load i64, ptr %1, align 8               ; 2 uses
  %i.cz = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.da = tail call i32 @jv_get_kind(i64 %i.cy, ptr %i.cz) #8
  %.not192.i = icmp eq i32 %i.da, 0
  br i1 %.not192.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 666, ptr noundef nonnull @__PRETTY_FUNCTION__.scan) #9
  unreachable

bb.ah:                                            ; preds = %bb.af
  tail call fastcc void @parser_reset(ptr noundef nonnull %0)
  tail call void @jv_free(i64 %i.cy, ptr %i.cz) #8
  %i.db = tail call { i64, ptr } @jv_invalid() #8 ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0
  %i.dd = extractvalue { i64, ptr } %i.db, 1
  store i64 %i.dc, ptr %1, align 8
  store ptr %i.dd, ptr %i.s, align 8, !tbaa !21
  br label %.critedge.thread

bb.ai:                                            ; preds = %bb.s, %.thread.i
  %i.de = load i8, ptr %i.ah, align 4             ; 2 uses
  %i.df = and i8 %i.de, -2
  store i8 %i.df, ptr %i.ah, align 4
  %i.dg = icmp eq i32 %i.aw, 0
  br i1 %i.dg, label %bb.aj, label %bb.bl

bb.aj:                                            ; preds = %bb.ai
  switch i8 %i.av, label %classify.exit.thread166.i [
    i8 32, label %classify.exit.thread.i.jt1
    i8 9, label %classify.exit.thread.i.jt1
    i8 13, label %classify.exit.thread.i.jt1
    i8 10, label %classify.exit.thread.i.jt1
    i8 34, label %classify.exit.thread.i.jt3
    i8 91, label %classify.exit.thread.i.jt2
    i8 44, label %classify.exit.thread.i.jt2
    i8 93, label %classify.exit.thread.i.jt2
    i8 123, label %classify.exit.thread.i.jt2
    i8 58, label %classify.exit.thread.i.jt2
    i8 125, label %classify.exit.thread.i.jt2
  ]

classify.exit.thread.i.jt3:                       ; preds = %bb.aj
  %i.dh = tail call fastcc ptr @check_literal(ptr noundef nonnull %0) ; 2 uses
  %.not111.i.jt3 = icmp eq ptr %i.dh, null
  br i1 %.not111.i.jt3, label %bb.ak, label %.critedge.loopexit290

classify.exit.thread.i.jt2:                       ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %i.di = tail call fastcc ptr @check_literal(ptr noundef nonnull %0) ; 2 uses
  %.not111.i.jt2 = icmp eq ptr %i.di, null
  br i1 %.not111.i.jt2, label %bb.al, label %.critedge.loopexit290

classify.exit.thread.i.jt1:                       ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %i.dj = or i8 %i.de, 1
  store i8 %i.dj, ptr %i.ah, align 4
  %i.dk = tail call fastcc ptr @check_literal(ptr noundef nonnull %0) ; 2 uses
  %.not111.i.jt1 = icmp eq ptr %i.dk, null
  br i1 %.not111.i.jt1, label %bb.am, label %.critedge.loopexit290

bb.ak:                                            ; preds = %classify.exit.thread.i.jt3
  %i.dl = load i32, ptr %i.u, align 4, !tbaa !20
  %i.dm = and i32 %i.dl, 2
  %.not112.i.jt3 = icmp eq i32 %i.dm, 0
  br i1 %.not112.i.jt3, label %bb.aq, label %bb.an

bb.al:                                            ; preds = %classify.exit.thread.i.jt2
  %i.dn = load i32, ptr %i.u, align 4, !tbaa !20
  %i.do = and i32 %i.dn, 2
  %.not112.i.jt2 = icmp eq i32 %i.do, 0
  br i1 %.not112.i.jt2, label %bb.ar, label %bb.ao

bb.am:                                            ; preds = %classify.exit.thread.i.jt1
  %i.dp = load i32, ptr %i.u, align 4, !tbaa !20
  %i.dq = and i32 %i.dp, 2
  %.not112.i.jt1 = icmp eq i32 %i.dq, 0
  br i1 %.not112.i.jt1, label %bb.as, label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.dr = call fastcc i32 @stream_check_done(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not114.i.jt3 = icmp eq i32 %i.dr, 0
  br i1 %.not114.i.jt3, label %classify.exit.i.jt3, label %bb.aw

bb.ao:                                            ; preds = %bb.al
  %i.ds = call fastcc i32 @stream_check_done(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not114.i.jt2 = icmp eq i32 %i.ds, 0
  br i1 %.not114.i.jt2, label %classify.exit.i.jt2, label %bb.ax

bb.ap:                                            ; preds = %bb.am
  %i.dt = call fastcc i32 @stream_check_done(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not114.i.jt1 = icmp eq i32 %i.dt, 0
  br i1 %.not114.i.jt1, label %classify.exit.i.jt1, label %bb.ay

bb.aq:                                            ; preds = %bb.ak
  %i.du = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.at, label %classify.exit.i.jt3

bb.ar:                                            ; preds = %bb.al
  %i.dw = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.au, label %classify.exit.i.jt2

bb.as:                                            ; preds = %bb.am
  %i.dy = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.av, label %classify.exit.i.jt1

bb.at:                                            ; preds = %bb.aq
  %i.ea = load i64, ptr %i.ae, align 8
  %i.eb = load ptr, ptr %i.af, align 8
  %i.ec = tail call i32 @jv_get_kind(i64 %i.ea, ptr %i.eb) #8
  %.not5.i.i.jt3 = icmp eq i32 %i.ec, 0
  br i1 %.not5.i.i.jt3, label %classify.exit.i.jt3, label %parse_check_done.exit.i.jt3

bb.au:                                            ; preds = %bb.ar
  %i.ed = load i64, ptr %i.ae, align 8
  %i.ee = load ptr, ptr %i.af, align 8
  %i.ef = tail call i32 @jv_get_kind(i64 %i.ed, ptr %i.ee) #8
  %.not5.i.i.jt2 = icmp eq i32 %i.ef, 0
  br i1 %.not5.i.i.jt2, label %classify.exit.i.jt2, label %parse_check_done.exit.i.jt2

bb.av:                                            ; preds = %bb.as
  %i.eg = load i64, ptr %i.ae, align 8
  %i.eh = load ptr, ptr %i.af, align 8
  %i.ei = tail call i32 @jv_get_kind(i64 %i.eg, ptr %i.eh) #8
  %.not5.i.i.jt1 = icmp eq i32 %i.ei, 0
  br i1 %.not5.i.i.jt1, label %classify.exit.i.jt1, label %parse_check_done.exit.i.jt1

parse_check_done.exit.i.jt3:                      ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !40
  %i.ej = tail call { i64, ptr } @jv_invalid() #8 ; 2 uses
  %i.ek = extractvalue { i64, ptr } %i.ej, 0
  %i.el = extractvalue { i64, ptr } %i.ej, 1
  store i64 %i.ek, ptr %i.ae, align 8
  store ptr %i.el, ptr %i.af, align 8, !tbaa !21
  br label %bb.aw

parse_check_done.exit.i.jt2:                      ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !40
  %i.em = tail call { i64, ptr } @jv_invalid() #8 ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.em, 0
  %i.eo = extractvalue { i64, ptr } %i.em, 1
  store i64 %i.en, ptr %i.ae, align 8
  store ptr %i.eo, ptr %i.af, align 8, !tbaa !21
  br label %bb.ax

parse_check_done.exit.i.jt1:                      ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !40
  %i.ep = tail call { i64, ptr } @jv_invalid() #8 ; 2 uses
  %i.eq = extractvalue { i64, ptr } %i.ep, 0
  %i.er = extractvalue { i64, ptr } %i.ep, 1
  store i64 %i.eq, ptr %i.ae, align 8
  store ptr %i.er, ptr %i.af, align 8, !tbaa !21
  br label %bb.ay

bb.aw:                                            ; preds = %bb.an, %parse_check_done.exit.i.jt3
  br label %classify.exit.i.jt3

bb.ax:                                            ; preds = %bb.ao, %parse_check_done.exit.i.jt2
  br label %classify.exit.i.jt2

bb.ay:                                            ; preds = %bb.ap, %parse_check_done.exit.i.jt1
  br label %classify.exit.i.jt1

classify.exit.thread166.i:                        ; preds = %bb.aj
  %i.es = load i32, ptr %i.aj, align 8, !tbaa !25 ; 3 uses
  %i.et = load i32, ptr %i.al, align 4, !tbaa !23 ; 5 uses
  %.not.i135.i = icmp sgt i32 %i.es, %i.et
  br i1 %.not.i135.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %classify.exit.thread166.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 424, ptr noundef nonnull @__PRETTY_FUNCTION__.tokenadd) #9
  unreachable

bb.ba:                                            ; preds = %classify.exit.thread166.i
  %i.eu = add nsw i32 %i.et, -1
  %.not17.i.i = icmp slt i32 %i.es, %i.eu
  br i1 %.not17.i.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ev = icmp sgt i32 %i.et, 1073741823
  br i1 %i.ev, label %.critedge.loopexit290, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ew = shl nsw i32 %i.et, 1                    ; 2 uses
  store i32 %i.ew, ptr %i.al, align 4, !tbaa !23
  %i.ex = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.ey = sext i32 %i.ew to i64
  %i.ez = tail call ptr @jv_mem_realloc(ptr noundef %i.ex, i64 noundef %i.ey) #8
  store ptr %i.ez, ptr %i.am, align 8, !tbaa !24
  %.pre.i.i = load i32, ptr %i.aj, align 8, !tbaa !25
  %.pre18.i.i = load i32, ptr %i.al, align 4, !tbaa !23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %i.fa = phi i32 [ %.pre18.i.i, %bb.bc ], [ %i.et, %bb.ba ]
  %i.fb = phi i32 [ %.pre.i.i, %bb.bc ], [ %i.es, %bb.ba ] ; 3 uses
  %i.fc = icmp slt i32 %i.fb, %i.fa
  br i1 %i.fc, label %tokenadd.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__.tokenadd) #9
  unreachable

tokenadd.exit.thread.i:                           ; preds = %bb.bd
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.fe = add nsw i32 %i.fb, 1
  store i32 %i.fe, ptr %i.aj, align 8, !tbaa !25
  %i.ff = sext i32 %i.fb to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 %i.ff
  store i8 %i.av, ptr %i.fg, align 1, !tbaa !21
  br label %classify.exit.i.jt1

classify.exit.i.jt3:                              ; preds = %bb.at, %bb.aw, %bb.aq, %bb.an
  %.0.i.jt3 = phi ptr [ null, %bb.aq ], [ null, %bb.at ], [ @.str.4, %bb.aw ], [ null, %bb.an ]
  store i32 1, ptr %i.ac, align 8, !tbaa !26
  br label %classify.exit.i.jt1

classify.exit.i.jt2:                              ; preds = %bb.au, %bb.ax, %bb.ar, %bb.ao
  %.0.i.jt2 = phi ptr [ null, %bb.ar ], [ null, %bb.au ], [ @.str.4, %bb.ax ], [ null, %bb.ao ]
  %i.fh = load i32, ptr %i.u, align 4, !tbaa !20
  %i.fi = and i32 %i.fh, 2
  %.not115.i = icmp eq i32 %i.fi, 0
  br i1 %.not115.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %classify.exit.i.jt2
  %i.fj = tail call fastcc ptr @stream_token(ptr noundef nonnull %0, i8 noundef signext %i.av)
  br label %bb.bh

bb.bg:                                            ; preds = %classify.exit.i.jt2
  %i.fk = tail call fastcc ptr @parse_token(ptr noundef nonnull %0, i8 noundef signext %i.av)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fl = phi ptr [ %i.fj, %bb.bf ], [ %i.fk, %bb.bg ] ; 2 uses
  %.not116.i = icmp eq ptr %i.fl, null
  br i1 %.not116.i, label %classify.exit.i.jt1, label %.critedge.loopexit290

classify.exit.i.jt1:                              ; preds = %bb.av, %bb.ay, %bb.as, %bb.ap, %bb.bh, %classify.exit.i.jt3, %tokenadd.exit.thread.i
  %.0172.i = phi ptr [ null, %bb.ap ], [ null, %tokenadd.exit.thread.i ], [ %.0.i.jt3, %classify.exit.i.jt3 ], [ %.0.i.jt2, %bb.bh ], [ null, %bb.as ], [ null, %bb.av ], [ @.str.4, %bb.ay ] ; 3 uses
  %i.fm = load i32, ptr %i.u, align 4, !tbaa !20
  %i.fn = and i32 %i.fm, 2
  %.not118.i = icmp eq i32 %i.fn, 0
  br i1 %.not118.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %classify.exit.i.jt1
  %i.fo = call fastcc i32 @stream_check_done(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not120.i = icmp eq i32 %i.fo, 0
  br i1 %.not120.i, label %.backedge, label %.critedge.thread

bb.bj:                                            ; preds = %classify.exit.i.jt1
  %i.fp = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.bk, label %.backedge

bb.bk:                                            ; preds = %bb.bj
  %i.fr = load i64, ptr %i.ae, align 8
  %i.fs = load ptr, ptr %i.af, align 8
  %i.ft = tail call i32 @jv_get_kind(i64 %i.fr, ptr %i.fs) #8
  %.not5.i138.i = icmp eq i32 %i.ft, 0
  br i1 %.not5.i138.i, label %.backedge, label %parse_check_done.exit139.i

parse_check_done.exit139.i:                       ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !40
  %i.fu = tail call { i64, ptr } @jv_invalid() #8 ; 2 uses
  %i.fv = extractvalue { i64, ptr } %i.fu, 0
  %i.fw = extractvalue { i64, ptr } %i.fu, 1
  store i64 %i.fv, ptr %i.ae, align 8
  store ptr %i.fw, ptr %i.af, align 8, !tbaa !21
  br label %.critedge.thread

bb.bl:                                            ; preds = %bb.ai
  %i.fx = icmp eq i8 %i.av, 34
  %i.fy = icmp eq i32 %i.aw, 1
  %or.cond133.i = and i1 %i.fx, %i.fy
  br i1 %or.cond133.i, label %bb.bm, label %bb.dl

bb.bm:                                            ; preds = %bb.bl
  %i.fz = load ptr, ptr %i.am, align 8, !tbaa !24 ; 5 uses
  %i.ga = load i32, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %i.gb ; 4 uses
  %i.gd = icmp sgt i32 %i.ga, 0
  br i1 %i.gd, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.bm, %bb.db
  %.05999.i.i = phi ptr [ %.463.i.i, %bb.db ], [ %i.fz, %bb.bm ] ; 13 uses
  %.06698.i.i = phi ptr [ %.268.i.i, %bb.db ], [ %i.fz, %bb.bm ] ; 16 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.05999.i.i, i64 1 ; 3 uses
  %i.gf = load i8, ptr %.05999.i.i, align 1, !tbaa !21 ; 3 uses
  %i.gg = icmp eq i8 %i.gf, 92
  br i1 %i.gg, label %bb.bn, label %bb.cz

bb.bn:                                            ; preds = %.lr.ph.i.i
  %.not82.i.i = icmp ult ptr %i.ge, %i.gc
  br i1 %.not82.i.i, label %bb.bo, label %.critedge

bb.bo:                                            ; preds = %bb.bn
  %i.gh = getelementptr inbounds nuw i8, ptr %.05999.i.i, i64 2 ; 7 uses
  %i.gi = load i8, ptr %i.ge, align 1, !tbaa !21  ; 2 uses
  switch i8 %i.gi, label %.critedge [
    i8 92, label %bb.bp
    i8 34, label %bb.bp
    i8 47, label %bb.bp
    i8 98, label %bb.bq
    i8 102, label %bb.br
    i8 116, label %bb.bs
    i8 110, label %bb.bt
    i8 114, label %bb.bu
    i8 117, label %bb.bv
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bo, %bb.bo
  %i.gj = getelementptr inbounds nuw i8, ptr %.06698.i.i, i64 1
  store i8 %i.gi, ptr %.06698.i.i, align 1, !tbaa !21
  br label %bb.db

bb.bq:                                            ; preds = %bb.bo
  %i.gk = getelementptr inbounds nuw i8, ptr %.06698.i.i, i64 1
  store i8 8, ptr %.06698.i.i, align 1, !tbaa !21
  br label %bb.db

bb.br:                                            ; preds = %bb.bo
  %i.gl = getelementptr inbounds nuw i8, ptr %.06698.i.i, i64 1
  store i8 12, ptr %.06698.i.i, align 1, !tbaa !21
  br label %bb.db

bb.bs:                                            ; preds = %bb.bo
  %i.gm = getelementptr inbounds nuw i8, ptr %.06698.i.i, i64 1
  store i8 9, ptr %.06698.i.i, align 1, !tbaa !21
  br label %bb.db

bb.bt:                                            ; preds = %bb.bo
  %i.gn = getelementptr inbounds nuw i8, ptr %.06698.i.i, i64 1
  store i8 10, ptr %.06698.i.i, align 1, !tbaa !21
  br label %bb.db

bb.bu:                                            ; preds = %bb.bo
  %i.go = getelementptr inbounds nuw i8, ptr %.06698.i.i, i64 1
  store i8 13, ptr %.06698.i.i, align 1, !tbaa !21
  br label %bb.db

bb.bv:                                            ; preds = %bb.bo
  %i.gp = getelementptr inbounds nuw i8, ptr %.05999.i.i, i64 6 ; 3 uses
  %i.gq = icmp ugt ptr %i.gp, %i.gc
  br i1 %i.gq, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gr = getelementptr inbounds nuw i8, ptr %.05999.i.i, i64 3
  %i.gs = load i8, ptr %i.gh, align 1, !tbaa !21  ; 4 uses
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = add i8 %i.gs, -48
  %or.cond.i.i.i = icmp ult i8 %i.gu, 10
  br i1 %or.cond.i.i.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gv = add i8 %i.gs, -97
  %or.cond6.i.i.i = icmp ult i8 %i.gv, 6
  br i1 %or.cond6.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gw = add i8 %i.gs, -65
  %or.cond9.i.i.i = icmp ult i8 %i.gw, 6
  br i1 %or.cond9.i.i.i, label %bb.bz, label %.critedge

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %.sink.i.i.i = phi i32 [ -48, %bb.bw ], [ -87, %bb.bx ], [ -55, %bb.by ]
  %i.gx = add nsw i32 %.sink.i.i.i, %i.gt
  %i.gy = getelementptr inbounds nuw i8, ptr %.05999.i.i, i64 4
  %i.gz = load i8, ptr %i.gr, align 1, !tbaa !21  ; 4 uses
  %i.ha = zext nneg i8 %i.gz to i32
  %i.hb = add i8 %i.gz, -48
  %or.cond.1.i.i.i = icmp ult i8 %i.hb, 10
  br i1 %or.cond.1.i.i.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hc = add i8 %i.gz, -97
  %or.cond6.1.i.i.i = icmp ult i8 %i.hc, 6
  br i1 %or.cond6.1.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hd = add i8 %i.gz, -65
  %or.cond9.1.i.i.i = icmp ult i8 %i.hd, 6
  br i1 %or.cond9.1.i.i.i, label %bb.cc, label %.critedge

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  %.sink43.i.i.i = phi i32 [ -87, %bb.ca ], [ -55, %bb.cb ], [ -48, %bb.bz ]
  %i.he = add nsw i32 %.sink43.i.i.i, %i.ha
  %i.hf = getelementptr inbounds nuw i8, ptr %.05999.i.i, i64 5
  %i.hg = load i8, ptr %i.gy, align 1, !tbaa !21  ; 4 uses
  %i.hh = zext nneg i8 %i.hg to i32
  %i.hi = add i8 %i.hg, -48
  %or.cond.2.i.i.i = icmp ult i8 %i.hi, 10
  br i1 %or.cond.2.i.i.i, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hj = add i8 %i.hg, -97
  %or.cond6.2.i.i.i = icmp ult i8 %i.hj, 6
  br i1 %or.cond6.2.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hk = add i8 %i.hg, -65
  %or.cond9.2.i.i.i = icmp ult i8 %i.hk, 6
  br i1 %or.cond9.2.i.i.i, label %bb.cf, label %.critedge

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %.sink44.i.i.i = phi i32 [ -87, %bb.cd ], [ -55, %bb.ce ], [ -48, %bb.cc ]
  %i.hl = add nsw i32 %.sink44.i.i.i, %i.hh
  %i.hm = shl nuw nsw i32 %i.gx, 8
  %i.hn = shl nuw nsw i32 %i.he, 4
  %i.ho = or i32 %i.hn, %i.hm
  %i.hp = or i32 %i.ho, %i.hl
  %i.hq = load i8, ptr %i.hf, align 1, !tbaa !21  ; 4 uses
  %i.hr = zext nneg i8 %i.hq to i32
  %i.hs = add i8 %i.hq, -48
  %or.cond.3.i.i.i = icmp ult i8 %i.hs, 10
  br i1 %or.cond.3.i.i.i, label %unhex4.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ht = add i8 %i.hq, -97
  %or.cond6.3.i.i.i = icmp ult i8 %i.ht, 6
  br i1 %or.cond6.3.i.i.i, label %unhex4.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hu = add i8 %i.hq, -65
  %or.cond9.3.i.i.i = icmp ult i8 %i.hu, 6
  br i1 %or.cond9.3.i.i.i, label %unhex4.exit.i.i, label %.critedge

unhex4.exit.i.i:                                  ; preds = %bb.ch, %bb.cg, %bb.cf
  %.sink45.i.i.i = phi i32 [ -87, %bb.cg ], [ -55, %bb.ch ], [ -48, %bb.cf ]
  %i.hv = add nsw i32 %.sink45.i.i.i, %i.hr       ; 2 uses
  %i.hw = icmp slt i32 %i.hv, 0
  br i1 %i.hw, label %.critedge, label %bb.ci

bb.ci:                                            ; preds = %unhex4.exit.i.i
  %i.hx = shl nuw nsw i32 %i.hp, 4
  %i.hy = or i32 %i.hv, %i.hx                     ; 2 uses
end_hunk_0
begin_hunk_1_@jv_parser_next:bb.a
  br i1 %or.cond.1.i.i, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.is = add i8 %i.ip, -97
  %or.cond6.1.i.i = icmp ult i8 %i.is, 6
  br i1 %or.cond6.1.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.it = add i8 %i.ip, -65
  %or.cond9.1.i.i = icmp ult i8 %i.it, 6
  br i1 %or.cond9.1.i.i, label %bb.cs, label %.critedge

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cp
  %.sink43.i.i = phi i32 [ -87, %bb.cq ], [ -55, %bb.cr ], [ -48, %bb.cp ]
  %i.iu = add nsw i32 %.sink43.i.i, %i.iq
  %i.iv = getelementptr inbounds nuw i8, ptr %.05999.i.i, i64 11
  %i.iw = load i8, ptr %i.io, align 1, !tbaa !21  ; 4 uses
  %i.ix = zext nneg i8 %i.iw to i32
  %i.iy = add i8 %i.iw, -48
  %or.cond.2.i.i = icmp ult i8 %i.iy, 10
  br i1 %or.cond.2.i.i, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.iz = add i8 %i.iw, -97
  %or.cond6.2.i.i = icmp ult i8 %i.iz, 6
  br i1 %or.cond6.2.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ja = add i8 %i.iw, -65
  %or.cond9.2.i.i = icmp ult i8 %i.ja, 6
  br i1 %or.cond9.2.i.i, label %bb.cv, label %.critedge

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %.sink44.i.i = phi i32 [ -87, %bb.ct ], [ -55, %bb.cu ], [ -48, %bb.cs ]
  %i.jb = add nsw i32 %.sink44.i.i, %i.ix
  %i.jc = shl nuw nsw i32 %i.in, 8
  %i.jd = shl nuw nsw i32 %i.iu, 4
  %i.je = or i32 %i.jd, %i.jc
  %i.jf = or i32 %i.je, %i.jb
  %i.jg = load i8, ptr %i.iv, align 1, !tbaa !21  ; 4 uses
  %i.jh = zext nneg i8 %i.jg to i32
  %i.ji = add i8 %i.jg, -48
  %or.cond.3.i.i = icmp ult i8 %i.ji, 10
  br i1 %or.cond.3.i.i, label %unhex4.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jj = add i8 %i.jg, -97
  %or.cond6.3.i.i = icmp ult i8 %i.jj, 6
  br i1 %or.cond6.3.i.i, label %unhex4.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jk = add i8 %i.jg, -65
  %or.cond9.3.i.i = icmp ult i8 %i.jk, 6
  br i1 %or.cond9.3.i.i, label %unhex4.exit.i, label %.critedge

unhex4.exit.i:                                    ; preds = %bb.cx, %bb.cw, %bb.cv
  %.sink45.i.i = phi i32 [ -87, %bb.cw ], [ -55, %bb.cx ], [ -48, %bb.cv ]
  %i.jl = add nsw i32 %.sink45.i.i, %i.jh
  %i.jm = shl nuw nsw i32 %i.jf, 4
  %i.jn = or i32 %i.jl, %i.jm                     ; 2 uses
  %i.jo = and i32 %i.jn, -1024
  %or.cond5.i.i = icmp eq i32 %i.jo, 56320
  br i1 %or.cond5.i.i, label %.thread.i.i, label %.critedge

.thread.i.i:                                      ; preds = %unhex4.exit.i
  %i.jp = zext nneg i32 %i.jn to i64
  %i.jq = shl nuw nsw i64 %i.hz, 10
  %i.jr = add nsw i64 %i.jq, -56613888
  %i.js = add nuw nsw i64 %i.jr, %i.jp
  br label %bb.cy

bb.cy:                                            ; preds = %.thread.i.i, %bb.ci
  %.165.i.i = phi i64 [ %i.js, %.thread.i.i ], [ %i.hz, %bb.ci ] ; 2 uses
  %.261.i.i = phi ptr [ %i.ib, %.thread.i.i ], [ %i.gp, %bb.ci ]
  %i.jt = icmp samesign ugt i64 %.165.i.i, 1114111
  %i.ju = trunc i64 %.165.i.i to i32
  %i.jv = select i1 %i.jt, i32 65533, i32 %i.ju
  %i.jw = tail call i32 @jvp_utf8_encode(i32 noundef %i.jv, ptr noundef %.06698.i.i) #8
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds i8, ptr %.06698.i.i, i64 %i.jx
  br label %bb.db

bb.cz:                                            ; preds = %.lr.ph.i.i
  %i.jz = icmp ugt i8 %i.gf, 31
  br i1 %i.jz, label %bb.da, label %.critedge

bb.da:                                            ; preds = %bb.cz
  %i.ka = getelementptr inbounds nuw i8, ptr %.06698.i.i, i64 1
  store i8 %i.gf, ptr %.06698.i.i, align 1, !tbaa !21
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cy, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.268.i.i = phi ptr [ %i.ka, %bb.da ], [ %i.gj, %bb.bp ], [ %i.gk, %bb.bq ], [ %i.gl, %bb.br ], [ %i.gm, %bb.bs ], [ %i.gn, %bb.bt ], [ %i.go, %bb.bu ], [ %i.jy, %bb.cy ] ; 2 uses
  %.463.i.i = phi ptr [ %i.ge, %bb.da ], [ %i.gh, %bb.bp ], [ %i.gh, %bb.bq ], [ %i.gh, %bb.br ], [ %i.gh, %bb.bs ], [ %i.gh, %bb.bt ], [ %i.gh, %bb.bu ], [ %.261.i.i, %bb.cy ] ; 2 uses
  %i.kb = icmp ult ptr %.463.i.i, %i.gc
  br i1 %i.kb, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !42

._crit_edge.loopexit.i.i:                         ; preds = %bb.db
  %.pre.i140.i = load ptr, ptr %i.am, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.bm
  %i.kc = phi ptr [ %i.fz, %bb.bm ], [ %.pre.i140.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.066.lcssa.i.i = phi ptr [ %i.fz, %bb.bm ], [ %.268.i.i, %._crit_edge.loopexit.i.i ]
  %i.kd = ptrtoint ptr %.066.lcssa.i.i to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = trunc i64 %i.kf to i32
  %i.kh = tail call { i64, ptr } @jv_string_sized(ptr noundef %i.kc, i32 noundef %i.kg) #8 ; 2 uses
  %i.ki = extractvalue { i64, ptr } %i.kh, 0      ; 4 uses
  %i.kj = extractvalue { i64, ptr } %i.kh, 1      ; 4 uses
  %i.kk = load i32, ptr %i.u, align 4, !tbaa !20
  %i.kl = and i32 %i.kk, 2
  %.not.i.i.i = icmp eq i32 %i.kl, 0
  %i.km = load i64, ptr %i.ae, align 8
  %i.kn = load ptr, ptr %i.af, align 8
  %i.ko = tail call i32 @jv_get_kind(i64 %i.km, ptr %i.kn) #8
  %.not15.i.i.i = icmp eq i32 %i.ko, 0            ; 2 uses
  br i1 %.not.i.i.i, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge.i.i
  br i1 %.not15.i.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.kp = load i32, ptr %i.an, align 8, !tbaa !22
  %i.kq = icmp eq i32 %i.kp, 86
  br i1 %i.kq, label %bb.de, label %.sink.split.i.i.i

bb.de:                                            ; preds = %bb.dd, %bb.dc
  tail call void @jv_free(i64 %i.ki, ptr %i.kj) #8
  br label %.critedge

.sink.split.i.i.i:                                ; preds = %bb.dd
  %i.kr = load i32, ptr %i.ag, align 4, !tbaa !36
  %i.ks = icmp sgt i32 %i.kr, 0
  %..i.i.i = select i1 %i.ks, i32 86, i32 0
  store i32 %..i.i.i, ptr %i.an, align 8, !tbaa !22
  br label %bb.dh

bb.df:                                            ; preds = %._crit_edge.i.i
  br i1 %.not15.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @jv_free(i64 %i.ki, ptr %i.kj) #8
  br label %.critedge

bb.dh:                                            ; preds = %bb.df, %.sink.split.i.i.i
  %i.kt = load i64, ptr %i.ae, align 8
  %i.ku = load ptr, ptr %i.af, align 8
  tail call void @jv_free(i64 %i.kt, ptr %i.ku) #8
  store i64 %i.ki, ptr %i.ae, align 8
  store ptr %i.kj, ptr %i.af, align 8, !tbaa !21
  store i32 0, ptr %i.aj, align 8, !tbaa !25
  store i32 0, ptr %i.ac, align 8, !tbaa !26
  %i.kv = load i32, ptr %i.u, align 4, !tbaa !20
  %i.kw = and i32 %i.kv, 2
  %.not107.i = icmp eq i32 %i.kw, 0
  br i1 %.not107.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kx = call fastcc i32 @stream_check_done(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not109.i = icmp eq i32 %i.kx, 0
  br i1 %.not109.i, label %.backedge, label %.critedge.thread

bb.dj:                                            ; preds = %bb.dh
  %i.ky = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.dk, label %.backedge

bb.dk:                                            ; preds = %bb.dj
  %i.la = tail call i32 @jv_get_kind(i64 %i.ki, ptr %i.kj) #8
  %.not5.i142.i = icmp eq i32 %i.la, 0
  br i1 %.not5.i142.i, label %.backedge, label %parse_check_done.exit143.i

parse_check_done.exit143.i:                       ; preds = %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !40
  %i.lb = tail call { i64, ptr } @jv_invalid() #8 ; 2 uses
  %i.lc = extractvalue { i64, ptr } %i.lb, 0
  %i.ld = extractvalue { i64, ptr } %i.lb, 1
  store i64 %i.lc, ptr %i.ae, align 8
  store ptr %i.ld, ptr %i.af, align 8, !tbaa !21
  br label %.critedge.thread

bb.dl:                                            ; preds = %bb.bl
  %i.le = load i32, ptr %i.aj, align 8, !tbaa !25 ; 3 uses
  %i.lf = load i32, ptr %i.al, align 4, !tbaa !23 ; 5 uses
  %.not.i144.i = icmp sgt i32 %i.le, %i.lf
  br i1 %.not.i144.i, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 424, ptr noundef nonnull @__PRETTY_FUNCTION__.tokenadd) #9
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.lg = add nsw i32 %i.lf, -1
  %.not17.i145.i = icmp slt i32 %i.le, %i.lg
  br i1 %.not17.i145.i, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lh = icmp sgt i32 %i.lf, 1073741823
  br i1 %i.lh, label %.critedge.loopexit290, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.li = shl nsw i32 %i.lf, 1                    ; 2 uses
  store i32 %i.li, ptr %i.al, align 4, !tbaa !23
  %i.lj = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.lk = sext i32 %i.li to i64
  %i.ll = tail call ptr @jv_mem_realloc(ptr noundef %i.lj, i64 noundef %i.lk) #8
  store ptr %i.ll, ptr %i.am, align 8, !tbaa !24
  %.pre.i146.i = load i32, ptr %i.aj, align 8, !tbaa !25
  %.pre18.i147.i = load i32, ptr %i.al, align 4, !tbaa !23
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dn
  %i.lm = phi i32 [ %.pre18.i147.i, %bb.dp ], [ %i.lf, %bb.dn ]
  %i.ln = phi i32 [ %.pre.i146.i, %bb.dp ], [ %i.le, %bb.dn ] ; 3 uses
  %i.lo = icmp slt i32 %i.ln, %i.lm
  br i1 %i.lo, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__.tokenadd) #9
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.lp = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.lq = add nsw i32 %i.ln, 1
  store i32 %i.lq, ptr %i.aj, align 8, !tbaa !25
  %i.lr = sext i32 %i.ln to i64
  %i.ls = getelementptr inbounds i8, ptr %i.lp, i64 %i.lr
  store i8 %i.av, ptr %i.ls, align 1, !tbaa !21
  %i.lt = icmp eq i8 %i.av, 92
  br i1 %i.lt, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.lu = load i32, ptr %i.ac, align 8, !tbaa !26
  %i.lv = icmp eq i32 %i.lu, 1
  br i1 %i.lv, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i32 2, ptr %i.ac, align 8, !tbaa !26
  br label %.backedge

bb.dv:                                            ; preds = %bb.dt, %bb.ds
  store i32 1, ptr %i.ac, align 8, !tbaa !26
  br label %.backedge

.critedge.loopexit290:                            ; preds = %.backedge, %bb.bb, %bb.bh, %bb.do, %classify.exit.thread.i.jt3, %classify.exit.thread.i.jt1, %classify.exit.thread.i.jt2
  %.lcssa326 = phi i8 [ %i.av, %.backedge ], [ %i.av, %bb.bb ], [ %i.av, %bb.bh ], [ %i.av, %bb.do ], [ 34, %classify.exit.thread.i.jt3 ], [ %i.av, %classify.exit.thread.i.jt1 ], [ %i.av, %classify.exit.thread.i.jt2 ]
  %.0123.be196.ph291 = phi ptr [ %.0123.be, %.backedge ], [ @.str.21, %bb.bb ], [ %i.fl, %bb.bh ], [ @.str.21, %bb.do ], [ %i.dh, %classify.exit.thread.i.jt3 ], [ %i.dk, %classify.exit.thread.i.jt1 ], [ %i.di, %classify.exit.thread.i.jt2 ]
  %2 = icmp eq i8 %.lcssa326, 30
  br label %.critedge

.critedge:                                        ; preds = %bb.ce, %unhex4.exit.i, %bb.ck, %bb.cl, %bb.bo, %unhex4.exit.i.i, %bb.bv, %bb.bn, %bb.cz, %bb.cj, %bb.by, %bb.cb, %bb.ch, %bb.co, %bb.cr, %bb.cx, %bb.cu, %.critedge.loopexit290, %bb.dg, %bb.de, %parse_is_top_num.exit.i, %seq_check_truncation.exit.thread153.i, %stream_is_top_num.exit.i, %stream_is_top_num.exit.thread.i
  %.not143 = phi i1 [ false, %bb.dg ], [ true, %stream_is_top_num.exit.thread.i ], [ true, %stream_is_top_num.exit.i ], [ true, %parse_is_top_num.exit.i ], [ true, %seq_check_truncation.exit.thread153.i ], [ %2, %.critedge.loopexit290 ], [ false, %bb.de ], [ false, %bb.cu ], [ false, %bb.cx ], [ false, %bb.cr ], [ false, %bb.co ], [ false, %bb.ch ], [ false, %bb.cb ], [ false, %bb.by ], [ false, %bb.cj ], [ false, %bb.cz ], [ false, %bb.bn ], [ false, %bb.bv ], [ false, %unhex4.exit.i.i ], [ false, %bb.bo ], [ false, %bb.cl ], [ false, %bb.ck ], [ false, %unhex4.exit.i ], [ false, %bb.ce ]
  %.0123.be196 = phi ptr [ @.str.47, %bb.dg ], [ @.str.17, %stream_is_top_num.exit.thread.i ], [ @.str.16, %stream_is_top_num.exit.i ], [ @.str.16, %parse_is_top_num.exit.i ], [ %i.cr, %seq_check_truncation.exit.thread153.i ], [ %.0123.be196.ph291, %.critedge.loopexit290 ], [ @.str.47, %bb.de ], [ @.str.55, %bb.cu ], [ @.str.55, %bb.cx ], [ @.str.55, %bb.cr ], [ @.str.55, %bb.co ], [ @.str.54, %bb.ch ], [ @.str.54, %bb.cb ], [ @.str.54, %bb.by ], [ @.str.55, %bb.cj ], [ @.str.57, %bb.cz ], [ @.str.52, %bb.bn ], [ @.str.53, %bb.bv ], [ @.str.54, %unhex4.exit.i.i ], [ @.str.56, %bb.bo ], [ @.str.55, %bb.cl ], [ @.str.55, %bb.ck ], [ @.str.55, %unhex4.exit.i ], [ @.str.54, %bb.ce ] ; 3 uses
  %i.lw = icmp eq ptr %.0123.be196, @.str.4
  br i1 %i.lw, label %.critedge.thread, label %bb.dw

.critedge.thread:                                 ; preds = %bb.bi, %bb.di, %parse_check_done.exit139.i, %parse_check_done.exit143.i, %bb.ah, %bb.ae, %bb.ad, %.critedge
  %.sroa.0101.0.copyload102 = load i64, ptr %1, align 8
  %.sroa.15.0.copyload110 = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.lx = insertvalue { i64, ptr } poison, i64 %.sroa.0101.0.copyload102, 0
  %i.ly = insertvalue { i64, ptr } %i.lx, ptr %.sroa.15.0.copyload110, 1
  br label %bb.ex

bb.dw:                                            ; preds = %.critedge
  %i.lz = load i64, ptr %1, align 8
  %i.ma = load ptr, ptr %i.s, align 8
  tail call void @jv_free(i64 %i.lz, ptr %i.ma) #8
  br i1 %.not143, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.mb = load i32, ptr %i.u, align 4, !tbaa !20
  %i.mc = and i32 %i.mb, 1
  %.not144 = icmp eq i32 %i.mc, 0
  br i1 %.not144, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i32 3, ptr %i.ac, align 8, !tbaa !26
  %i.md = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.me = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.mf = tail call { i64, ptr } (ptr, ptr, ...) @make_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %.0123.be196, i32 noundef %i.md, i32 noundef %i.me)
  tail call fastcc void @parser_reset(ptr noundef nonnull %0)
  br label %bb.ex

bb.dz:                                            ; preds = %bb.dx, %bb.dw
  %i.mg = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.mh = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.mi = tail call { i64, ptr } (ptr, ptr, ...) @make_error(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %.0123.be196, i32 noundef %i.mg, i32 noundef %i.mh) ; 2 uses
  tail call fastcc void @parser_reset(ptr noundef %0)
  %i.mj = load i32, ptr %i.u, align 4, !tbaa !20
  %i.mk = and i32 %i.mj, 1
  %.not145 = icmp eq i32 %i.mk, 0
  br i1 %.not145, label %bb.ea, label %bb.ex

bb.ea:                                            ; preds = %bb.dz
  store ptr null, ptr %0, align 8, !tbaa !30
  store i32 0, ptr %i.aa, align 4, !tbaa !32
  br label %bb.ex

bb.eb:                                            ; preds = %bb.m
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !35
  %.not132 = icmp eq i32 %i.mm, 0
  br i1 %.not132, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.mn = icmp eq i32 %i.ao, %i.ap
  br i1 %i.mn, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 824, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_parser_next) #9
  unreachable

bb.ee:                                            ; preds = %bb.ec
  %i.mo = tail call { i64, ptr } @jv_invalid() #8
  br label %bb.ex

bb.ef:                                            ; preds = %bb.eb
  store i32 1, ptr %i.a, align 4, !tbaa !43
  %i.mp = icmp eq i32 %i.ao, %i.ap
  br i1 %i.mp, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 830, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_parser_next) #9
  unreachable

bb.eh:                                            ; preds = %bb.ef
  %i.mq = load i64, ptr %1, align 8
  %i.mr = load ptr, ptr %i.s, align 8
  tail call void @jv_free(i64 %i.mq, ptr %i.mr) #8
  %i.ms = load i32, ptr %i.ac, align 8, !tbaa !26
  switch i32 %i.ms, label %bb.ej [
    i32 3, label %bb.ei
    i32 0, label %bb.ek
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.mt = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.mu = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.mv = tail call { i64, ptr } (ptr, ptr, ...) @make_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i32 noundef %i.mt, i32 noundef %i.mu)
  br label %bb.ex

bb.ej:                                            ; preds = %bb.eh
  %i.mw = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.mx = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.my = tail call { i64, ptr } (ptr, ptr, ...) @make_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.mw, i32 noundef %i.mx)
  tail call fastcc void @parser_reset(ptr noundef nonnull %0)
  store i32 3, ptr %i.ac, align 8, !tbaa !26
  br label %bb.ex

bb.ek:                                            ; preds = %bb.eh
  %i.mz = tail call fastcc ptr @check_literal(ptr noundef nonnull %0) ; 2 uses
  %.not134 = icmp eq ptr %i.mz, null
  br i1 %.not134, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.na = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.nb = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.nc = tail call { i64, ptr } (ptr, ptr, ...) @make_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.mz, i32 noundef %i.na, i32 noundef %i.nb)
  tail call fastcc void @parser_reset(ptr noundef nonnull %0)
  store i32 3, ptr %i.ac, align 8, !tbaa !26
  br label %bb.ex

bb.em:                                            ; preds = %bb.ek
  %i.nd = load i32, ptr %i.u, align 4, !tbaa !20
  %i.ne = and i32 %i.nd, 2
  %.not135 = icmp eq i32 %i.ne, 0
  br i1 %.not135, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.nf = load i32, ptr %i.ag, align 4, !tbaa !36
  %.not136 = icmp eq i32 %i.nf, 0
  br i1 %.not136, label %bb.eq, label %bb.ep

bb.eo:                                            ; preds = %bb.em
  %i.ng = load i32, ptr %i.ai, align 8, !tbaa !37
  %.not138 = icmp eq i32 %i.ng, 0
  br i1 %.not138, label %.thread148, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.nh = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.ni = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.nj = tail call { i64, ptr } (ptr, ptr, ...) @make_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %i.nh, i32 noundef %i.ni)
  tail call fastcc void @parser_reset(ptr noundef nonnull %0)
  store i32 3, ptr %i.ac, align 8, !tbaa !26
  br label %bb.ex

bb.eq:                                            ; preds = %bb.en
  %i.nk = load i64, ptr %i.ae, align 8
  %i.nl = load ptr, ptr %i.af, align 8
  %i.nm = tail call i32 @jv_get_kind(i64 %i.nk, ptr %i.nl) #8
  %.not149 = icmp eq i32 %i.nm, 0
  br i1 %.not149, label %.thread148, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.nn = tail call { i64, ptr } @jv_array() #8   ; 2 uses
  %i.no = extractvalue { i64, ptr } %i.nn, 0
  %i.np = extractvalue { i64, ptr } %i.nn, 1
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nr = load i64, ptr %i.nq, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = tail call { i64, ptr } @jv_copy(i64 %i.nr, ptr %i.nt) #8 ; 2 uses
  %i.nv = extractvalue { i64, ptr } %i.nu, 0
  %i.nw = extractvalue { i64, ptr } %i.nu, 1
  %i.nx = tail call { i64, ptr } @jv_array_append(i64 %i.no, ptr %i.np, i64 %i.nv, ptr %i.nw) #8 ; 2 uses
  %i.ny = extractvalue { i64, ptr } %i.nx, 0
  %i.nz = extractvalue { i64, ptr } %i.nx, 1
  %i.oa = load i64, ptr %i.ae, align 8
  %i.ob = load ptr, ptr %i.af, align 8
  %i.oc = tail call { i64, ptr } @jv_array_append(i64 %i.ny, ptr %i.nz, i64 %i.oa, ptr %i.ob) #8 ; 2 uses
  %i.od = extractvalue { i64, ptr } %i.oc, 0
  %i.oe = extractvalue { i64, ptr } %i.oc, 1
  store i64 %i.od, ptr %1, align 8
  store ptr %i.oe, ptr %i.s, align 8, !tbaa !21
  br label %bb.es

.thread148:                                       ; preds = %bb.eo, %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !40
  br label %bb.es

bb.es:                                            ; preds = %.thread148, %bb.er
  %i.of = tail call { i64, ptr } @jv_invalid() #8 ; 2 uses
  %i.og = extractvalue { i64, ptr } %i.of, 0
  %i.oh = extractvalue { i64, ptr } %i.of, 1
  store i64 %i.og, ptr %i.ae, align 8
  store ptr %i.oh, ptr %i.af, align 8, !tbaa !21
  %i.oi = load i32, ptr %i.u, align 4, !tbaa !20
  %i.oj = and i32 %i.oi, 1
  %.not141 = icmp eq i32 %i.oj, 0
  br i1 %.not141, label %._crit_edge, label %bb.et

._crit_edge:                                      ; preds = %bb.es
  %.sroa.0101.0.copyload108.pre = load i64, ptr %1, align 8
  %.sroa.15.0.copyload122.pre = load ptr, ptr %i.s, align 8, !tbaa !21
  br label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.ok = load i8, ptr %i.ah, align 4
  %i.ol = and i8 %i.ok, 1
  %.not142 = icmp eq i8 %i.ol, 0
  %.sroa.0101.0.copyload108.pre170 = load i64, ptr %1, align 8 ; 4 uses
  %.sroa.15.0.copyload122.pre172 = load ptr, ptr %i.s, align 8 ; 4 uses
  br i1 %.not142, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.om = tail call i32 @jv_get_kind(i64 %.sroa.0101.0.copyload108.pre170, ptr %.sroa.15.0.copyload122.pre172) #8
  %i.on = icmp eq i32 %i.om, 4
  br i1 %i.on, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  tail call void @jv_free(i64 %.sroa.0101.0.copyload108.pre170, ptr %.sroa.15.0.copyload122.pre172) #8
  %i.oo = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.op = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.oq = tail call { i64, ptr } (ptr, ptr, ...) @make_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i32 noundef %i.oo, i32 noundef %i.op)
  br label %bb.ex

bb.ew:                                            ; preds = %._crit_edge, %bb.eu, %bb.et
  %.sroa.15.0.copyload122 = phi ptr [ %.sroa.15.0.copyload122.pre, %._crit_edge ], [ %.sroa.15.0.copyload122.pre172, %bb.eu ], [ %.sroa.15.0.copyload122.pre172, %bb.et ]
  %.sroa.0101.0.copyload108 = phi i64 [ %.sroa.0101.0.copyload108.pre, %._crit_edge ], [ %.sroa.0101.0.copyload108.pre170, %bb.eu ], [ %.sroa.0101.0.copyload108.pre170, %bb.et ]
  %i.or = insertvalue { i64, ptr } poison, i64 %.sroa.0101.0.copyload108, 0
  %i.os = insertvalue { i64, ptr } %i.or, ptr %.sroa.15.0.copyload122, 1
  br label %bb.ex

bb.ex:                                            ; preds = %bb.dz, %bb.ea, %.critedge.thread, %bb.dy, %bb.ee, %bb.ei, %bb.ej, %bb.el, %bb.ep, %bb.ev, %bb.ew, %bb.k
  %.merged = phi { i64, ptr } [ %i.z, %bb.k ], [ %i.ly, %.critedge.thread ], [ %i.mf, %bb.dy ], [ %i.oq, %bb.ev ], [ %i.mo, %bb.ee ], [ %i.mv, %bb.ei ], [ %i.my, %bb.ej ], [ %i.nc, %bb.el ], [ %i.nj, %bb.ep ], [ %i.os, %bb.ew ], [ %i.mi, %bb.ea ], [ %i.mi, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.ey
end_hunk_1
