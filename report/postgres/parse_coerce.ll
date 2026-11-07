Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/parse_coerce?download=true
inline.NumInlined: 52
inline.NumDeleted: 17
begin_hunk_0_@typeIsOfTypedTable:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %i.a to i64
  %i.c = tail call ptr @SearchSysCache1(i32 noundef 65, i64 noundef %i.b) #4 ; 3 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.51, i32 noundef %i.a) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3396, ptr noundef nonnull @__func__.typeIsOfTypedTable) #4
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.h = load i8, ptr %i.g, align 2
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, %1
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.c) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i1 [ %i.m, %bb.d ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare ptr @format_type_be(i32 noundef) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @check_generic_type_consistency(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [100 x i32], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %.not236352 = icmp sgt i32 %2, 0
  br i1 %.not236352, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread288
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread288 ] ; 3 uses
  %.0136364 = phi i32 [ 0, %.lr.ph.preheader ], [ %.3139313, %.thread288 ] ; 18 uses
  %.0142363 = phi i1 [ false, %.lr.ph.preheader ], [ %.3145312, %.thread288 ] ; 18 uses
  %.0147362 = phi i1 [ false, %.lr.ph.preheader ], [ %.3150311, %.thread288 ] ; 17 uses
  %.0152361 = phi i1 [ false, %.lr.ph.preheader ], [ %.3155310, %.thread288 ] ; 17 uses
  %.0157360 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2159309, %.thread288 ] ; 16 uses
  %.0161359 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2163308, %.thread288 ] ; 18 uses
  %.0165358 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2167307, %.thread288 ] ; 18 uses
  %.0170357 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2172306, %.thread288 ] ; 20 uses
  %.0174356 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2176305, %.thread288 ] ; 18 uses
  %.0178355 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2180304, %.thread288 ] ; 18 uses
  %.0184354 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2186303, %.thread288 ] ; 18 uses
  %.0188353 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2190302, %.thread288 ] ; 18 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4              ; 17 uses
  switch i32 %i.d, label %.thread288 [
    i32 2776, label %bb.c
    i32 3500, label %bb.b
    i32 2283, label %.fold.split
    i32 2277, label %bb.e
    i32 3831, label %bb.g
    i32 4537, label %bb.i
    i32 5079, label %bb.k
    i32 5077, label %bb.l
    i32 5078, label %bb.m
    i32 5080, label %bb.o
    i32 4538, label %bb.s
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %bb.c

.fold.split:                                      ; preds = %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.fold.split, %bb.b
  %.1153 = phi i1 [ true, %.lr.ph ], [ %.0152361, %bb.b ], [ %.0152361, %.fold.split ] ; 2 uses
  %.1148 = phi i1 [ %.0147362, %.lr.ph ], [ true, %bb.b ], [ %.0147362, %.fold.split ] ; 2 uses
  %i.g = icmp eq i32 %i.f, 705
  br i1 %i.g, label %.thread288, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not234 = icmp eq i32 %.0188353, 0
  %.not235 = icmp eq i32 %i.f, %.0188353
  %or.cond = select i1 %.not234, i1 true, i1 %.not235
  br i1 %or.cond, label %.thread288, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.h = icmp eq i32 %i.f, 705
  br i1 %i.h, label %.thread288, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @getBaseType(i32 noundef %i.f) #4 ; 2 uses
  %.not232 = icmp eq i32 %.0184354, 0
  %.not233 = icmp eq i32 %i.i, %.0184354
  %or.cond258 = select i1 %.not232, i1 true, i1 %.not233
  br i1 %or.cond258, label %.thread288, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  %i.j = icmp eq i32 %i.f, 705
  br i1 %i.j, label %.thread288, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @getBaseType(i32 noundef %i.f) #4 ; 2 uses
  %.not230 = icmp eq i32 %.0178355, 0
  %.not231 = icmp eq i32 %i.k, %.0178355
  %or.cond259 = select i1 %.not230, i1 true, i1 %.not231
  br i1 %or.cond259, label %.thread288, label %.critedge

bb.i:                                             ; preds = %.lr.ph
  %i.l = icmp eq i32 %i.f, 705
  br i1 %i.l, label %.thread288, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = tail call i32 @getBaseType(i32 noundef %i.f) #4 ; 2 uses
  %.not228 = icmp eq i32 %.0174356, 0
  %.not229 = icmp eq i32 %i.m, %.0174356
  %or.cond260 = select i1 %.not228, i1 true, i1 %.not229
  br i1 %or.cond260, label %.thread288, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %.1143 = phi i1 [ true, %bb.k ], [ %.0142363, %.lr.ph ] ; 2 uses
  %i.n = icmp eq i32 %i.f, 705
  br i1 %i.n, label %.thread288, label %.thread288.sink.split

bb.m:                                             ; preds = %.lr.ph
  %i.o = icmp eq i32 %i.f, 705
  br i1 %i.o, label %.thread288, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = tail call i32 @getBaseType(i32 noundef %i.f) #4
  %i.q = tail call i32 @get_element_type(i32 noundef %i.p) #4 ; 2 uses
  %.not227 = icmp eq i32 %i.q, 0
  br i1 %.not227, label %.critedge, label %.thread288.sink.split

bb.o:                                             ; preds = %.lr.ph
  %i.r = icmp eq i32 %i.f, 705
  br i1 %i.r, label %.thread288, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.s = tail call i32 @getBaseType(i32 noundef %i.f) #4 ; 3 uses
  %.not224 = icmp eq i32 %.0170357, 0
  br i1 %.not224, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not226 = icmp eq i32 %.0170357, %i.s
  br i1 %.not226, label %.thread288, label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.t = tail call i32 @get_range_subtype(i32 noundef %i.s) #4 ; 3 uses
  %.not225 = icmp eq i32 %i.t, 0
  br i1 %.not225, label %.critedge, label %.thread288.sink.split

bb.s:                                             ; preds = %.lr.ph
  %i.u = icmp eq i32 %i.f, 705
  br i1 %i.u, label %.thread288, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.v = tail call i32 @getBaseType(i32 noundef %i.f) #4 ; 3 uses
  %.not = icmp eq i32 %.0161359, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not223 = icmp eq i32 %.0161359, %i.v
  br i1 %.not223, label %.thread288, label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.w = tail call i32 @get_multirange_range(i32 noundef %i.v) #4 ; 2 uses
  %.not222 = icmp eq i32 %i.w, 0
  br i1 %.not222, label %.critedge, label %.thread288

.thread288.sink.split:                            ; preds = %bb.r, %bb.n, %bb.l
  %.sink = phi i32 [ %i.f, %bb.l ], [ %i.q, %bb.n ], [ %i.t, %bb.r ]
  %.3145312.ph = phi i1 [ %.1143, %bb.l ], [ %.0142363, %bb.n ], [ %.0142363, %bb.r ]
  %.2167307.ph = phi i32 [ %.0165358, %bb.l ], [ %.0165358, %bb.n ], [ %i.t, %bb.r ]
  %.2172306.ph = phi i32 [ %.0170357, %bb.l ], [ %.0170357, %bb.n ], [ %i.s, %bb.r ]
  %i.x = add i32 %.0136364, 1
  %i.y = sext i32 %.0136364 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.y
  store i32 %.sink, ptr %i.z, align 4
  br label %.thread288

.thread288:                                       ; preds = %.thread288.sink.split, %.lr.ph, %bb.q, %bb.u, %bb.v, %bb.d, %bb.f, %bb.h, %bb.j, %bb.i, %bb.o, %bb.g, %bb.l, %bb.e, %bb.c, %bb.s, %bb.m
  %.3139313 = phi i32 [ %.0136364, %bb.m ], [ %.0136364, %bb.i ], [ %.0136364, %bb.o ], [ %.0136364, %bb.g ], [ %.0136364, %bb.l ], [ %.0136364, %bb.e ], [ %.0136364, %bb.s ], [ %.0136364, %bb.c ], [ %.0136364, %.lr.ph ], [ %.0136364, %bb.d ], [ %.0136364, %bb.f ], [ %.0136364, %bb.h ], [ %.0136364, %bb.u ], [ %.0136364, %bb.v ], [ %.0136364, %bb.q ], [ %.0136364, %bb.j ], [ %i.x, %.thread288.sink.split ] ; 5 uses
  %.3145312 = phi i1 [ %.0142363, %bb.m ], [ %.0142363, %bb.i ], [ %.0142363, %bb.o ], [ %.0142363, %bb.g ], [ %.1143, %bb.l ], [ %.0142363, %bb.e ], [ %.0142363, %bb.s ], [ %.0142363, %bb.c ], [ %.0142363, %.lr.ph ], [ %.0142363, %bb.d ], [ %.0142363, %bb.f ], [ %.0142363, %bb.h ], [ %.0142363, %bb.u ], [ %.0142363, %bb.v ], [ %.0142363, %bb.q ], [ %.0142363, %bb.j ], [ %.3145312.ph, %.thread288.sink.split ] ; 2 uses
  %.3150311 = phi i1 [ %.0147362, %bb.m ], [ %.0147362, %bb.i ], [ %.0147362, %bb.o ], [ %.0147362, %bb.g ], [ %.0147362, %bb.l ], [ %.0147362, %bb.e ], [ %.0147362, %bb.s ], [ %.1148, %bb.c ], [ %.0147362, %.lr.ph ], [ %.1148, %bb.d ], [ %.0147362, %bb.f ], [ %.0147362, %bb.h ], [ %.0147362, %bb.u ], [ %.0147362, %bb.v ], [ %.0147362, %bb.q ], [ %.0147362, %bb.j ], [ %.0147362, %.thread288.sink.split ] ; 2 uses
  %.3155310 = phi i1 [ %.0152361, %bb.m ], [ %.0152361, %bb.i ], [ %.0152361, %bb.o ], [ %.0152361, %bb.g ], [ %.0152361, %bb.l ], [ %.0152361, %bb.e ], [ %.0152361, %bb.s ], [ %.1153, %bb.c ], [ %.0152361, %.lr.ph ], [ %.1153, %bb.d ], [ %.0152361, %bb.f ], [ %.0152361, %bb.h ], [ %.0152361, %bb.u ], [ %.0152361, %bb.v ], [ %.0152361, %bb.q ], [ %.0152361, %bb.j ], [ %.0152361, %.thread288.sink.split ] ; 2 uses
  %.2159309 = phi i32 [ %.0157360, %bb.m ], [ %.0157360, %bb.i ], [ %.0157360, %bb.o ], [ %.0157360, %bb.g ], [ %.0157360, %bb.l ], [ %.0157360, %bb.e ], [ %.0157360, %bb.s ], [ %.0157360, %bb.c ], [ %.0157360, %.lr.ph ], [ %.0157360, %bb.d ], [ %.0157360, %bb.f ], [ %.0157360, %bb.h ], [ %.0157360, %bb.u ], [ %i.w, %bb.v ], [ %.0157360, %bb.q ], [ %.0157360, %bb.j ], [ %.0157360, %.thread288.sink.split ] ; 3 uses
  %.2163308 = phi i32 [ %.0161359, %bb.m ], [ %.0161359, %bb.i ], [ %.0161359, %bb.o ], [ %.0161359, %bb.g ], [ %.0161359, %bb.l ], [ %.0161359, %bb.e ], [ %.0161359, %bb.s ], [ %.0161359, %bb.c ], [ %.0161359, %.lr.ph ], [ %.0161359, %bb.d ], [ %.0161359, %bb.f ], [ %.0161359, %bb.h ], [ %.0161359, %bb.u ], [ %i.v, %bb.v ], [ %.0161359, %bb.q ], [ %.0161359, %bb.j ], [ %.0161359, %.thread288.sink.split ] ; 2 uses
  %.2167307 = phi i32 [ %.0165358, %bb.m ], [ %.0165358, %bb.i ], [ %.0165358, %bb.o ], [ %.0165358, %bb.g ], [ %.0165358, %bb.l ], [ %.0165358, %bb.e ], [ %.0165358, %bb.s ], [ %.0165358, %bb.c ], [ %.0165358, %.lr.ph ], [ %.0165358, %bb.d ], [ %.0165358, %bb.f ], [ %.0165358, %bb.h ], [ %.0165358, %bb.u ], [ %.0165358, %bb.v ], [ %.0165358, %bb.q ], [ %.0165358, %bb.j ], [ %.2167307.ph, %.thread288.sink.split ] ; 3 uses
  %.2172306 = phi i32 [ %.0170357, %bb.m ], [ %.0170357, %bb.i ], [ %.0170357, %bb.o ], [ %.0170357, %bb.g ], [ %.0170357, %bb.l ], [ %.0170357, %bb.e ], [ %.0170357, %bb.s ], [ %.0170357, %bb.c ], [ %.0170357, %.lr.ph ], [ %.0170357, %bb.d ], [ %.0170357, %bb.f ], [ %.0170357, %bb.h ], [ %.0170357, %bb.u ], [ %.0170357, %bb.v ], [ %.0170357, %bb.q ], [ %.0170357, %bb.j ], [ %.2172306.ph, %.thread288.sink.split ] ; 3 uses
  %.2176305 = phi i32 [ %.0174356, %bb.m ], [ %.0174356, %bb.i ], [ %.0174356, %bb.o ], [ %.0174356, %bb.g ], [ %.0174356, %bb.l ], [ %.0174356, %bb.e ], [ %.0174356, %bb.s ], [ %.0174356, %bb.c ], [ %.0174356, %.lr.ph ], [ %.0174356, %bb.d ], [ %.0174356, %bb.f ], [ %.0174356, %bb.h ], [ %.0174356, %bb.u ], [ %.0174356, %bb.v ], [ %.0174356, %bb.q ], [ %i.m, %bb.j ], [ %.0174356, %.thread288.sink.split ] ; 3 uses
  %.2180304 = phi i32 [ %.0178355, %bb.m ], [ %.0178355, %bb.i ], [ %.0178355, %bb.o ], [ %.0178355, %bb.g ], [ %.0178355, %bb.l ], [ %.0178355, %bb.e ], [ %.0178355, %bb.s ], [ %.0178355, %bb.c ], [ %.0178355, %.lr.ph ], [ %.0178355, %bb.d ], [ %.0178355, %bb.f ], [ %i.k, %bb.h ], [ %.0178355, %bb.u ], [ %.0178355, %bb.v ], [ %.0178355, %bb.q ], [ %.0178355, %bb.j ], [ %.0178355, %.thread288.sink.split ] ; 6 uses
  %.2186303 = phi i32 [ %.0184354, %bb.m ], [ %.0184354, %bb.i ], [ %.0184354, %bb.o ], [ %.0184354, %bb.g ], [ %.0184354, %bb.l ], [ %.0184354, %bb.e ], [ %.0184354, %bb.s ], [ %.0184354, %bb.c ], [ %.0184354, %.lr.ph ], [ %.0184354, %bb.d ], [ %i.i, %bb.f ], [ %.0184354, %bb.h ], [ %.0184354, %bb.u ], [ %.0184354, %bb.v ], [ %.0184354, %bb.q ], [ %.0184354, %bb.j ], [ %.0184354, %.thread288.sink.split ] ; 3 uses
  %.2190302 = phi i32 [ %.0188353, %bb.m ], [ %.0188353, %bb.i ], [ %.0188353, %bb.o ], [ %.0188353, %bb.g ], [ %.0188353, %bb.l ], [ %.0188353, %bb.e ], [ %.0188353, %bb.s ], [ %.0188353, %bb.c ], [ %.0188353, %.lr.ph ], [ %i.f, %bb.d ], [ %.0188353, %bb.f ], [ %.0188353, %bb.h ], [ %.0188353, %bb.u ], [ %.0188353, %bb.v ], [ %.0188353, %bb.q ], [ %.0188353, %bb.j ], [ %.0188353, %.thread288.sink.split ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.thread288
  %i.aa = icmp eq i32 %.2163308, 0
  switch i32 %.2186303, label %bb.w [
    i32 2277, label %.thread324
    i32 0, label %.thread324
  ]

bb.w:                                             ; preds = %._crit_edge
  %i.ab = tail call i32 @get_element_type(i32 noundef %.2186303) #4 ; 3 uses
  %.not237 = icmp eq i32 %i.ab, 0
  br i1 %.not237, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not238 = icmp eq i32 %.2190302, 0
  br i1 %.not238, label %.thread324, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not239 = icmp eq i32 %i.ab, %.2190302
  br i1 %.not239, label %.thread324, label %.critedge

.thread324:                                       ; preds = %bb.x, %._crit_edge, %._crit_edge, %bb.y
  %.6194 = phi i32 [ %.2190302, %._crit_edge ], [ %.2190302, %bb.y ], [ %.2190302, %._crit_edge ], [ %i.ab, %bb.x ] ; 4 uses
  %.not240 = icmp eq i32 %.2176305, 0
  br i1 %.not240, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %.thread324
  %i.ac = tail call i32 @get_multirange_range(i32 noundef %.2176305) #4 ; 4 uses
  %.not241 = icmp eq i32 %i.ac, 0
  br i1 %.not241, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not242 = icmp eq i32 %.2180304, 0
  br i1 %.not242, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ad = tail call i32 @get_range_subtype(i32 noundef %i.ac) #4
  %.not243 = icmp eq i32 %i.ad, 0
  br i1 %.not243, label %.critedge, label %.thread335

bb.ac:                                            ; preds = %bb.aa
  %.not244 = icmp eq i32 %i.ac, %.2180304
  br i1 %.not244, label %.thread335, label %.critedge

bb.ad:                                            ; preds = %.thread324
  %.not245 = icmp eq i32 %.2180304, 0
  br i1 %.not245, label %bb.ag, label %.thread335

.thread335:                                       ; preds = %bb.ab, %bb.ac, %bb.ad
  %.6338 = phi i32 [ %.2180304, %bb.ad ], [ %i.ac, %bb.ab ], [ %.2180304, %bb.ac ]
  %i.ae = tail call i32 @get_range_subtype(i32 noundef %.6338) #4 ; 3 uses
  %.not246 = icmp eq i32 %i.ae, 0
  br i1 %.not246, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %.thread335
  %.not247 = icmp eq i32 %.6194, 0
  br i1 %.not247, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not248 = icmp eq i32 %i.ae, %.6194
  br i1 %.not248, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %.7 = phi i32 [ %.6194, %bb.af ], [ %.6194, %bb.ad ], [ %i.ae, %bb.ae ] ; 2 uses
  br i1 %.3155310, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.af = tail call i32 @get_base_element_type(i32 noundef %.7) #4
  %.not249 = icmp eq i32 %i.af, 0
  br i1 %.not249, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %.3150311, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ag = tail call zeroext i1 @type_is_enum(i32 noundef %.7) #4
  br i1 %i.ag, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.aa, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not251 = icmp eq i32 %.2172306, 0
  br i1 %.not251, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not253 = icmp eq i32 %.2159309, %.2172306
  br i1 %.not253, label %bb.ap, label %.critedge

bb.an:                                            ; preds = %bb.al
  %i.ah = tail call i32 @get_range_subtype(i32 noundef %.2159309) #4 ; 3 uses
  %.not252 = icmp eq i32 %i.ah, 0
  br i1 %.not252, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ai = add i32 %.3139313, 1
  %i.aj = sext i32 %.3139313 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aj
  store i32 %i.ah, ptr %i.ak, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.ak
  %.4169 = phi i32 [ %.2167307, %bb.am ], [ %i.ah, %bb.ao ], [ %.2167307, %bb.ak ] ; 2 uses
  %.5141 = phi i32 [ %.3139313, %bb.am ], [ %i.ai, %bb.ao ], [ %.3139313, %bb.ak ] ; 3 uses
  %i.al = icmp sgt i32 %.5141, 0
  br i1 %i.al, label %bb.aq, label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.am = call fastcc i32 @select_common_type_from_oids(i32 noundef %.5141, ptr noundef %i.b, i1 noundef zeroext true) ; 4 uses
  %.not254 = icmp eq i32 %i.am, 0
  br i1 %.not254, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.am, ptr %i.a, align 4
  %wide.trip.count381 = zext nneg i32 %.5141 to i64
  br label %bb.at

bb.as:                                            ; preds = %bb.at
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next379, %wide.trip.count381
  br i1 %exitcond382.not, label %bb.au, label %bb.at, !llvm.loop !0

bb.at:                                            ; preds = %bb.ar, %bb.as
  %indvars.iv378 = phi i64 [ 0, %bb.ar ], [ %indvars.iv.next379, %bb.as ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv378
  %i.ao = call zeroext i1 @can_coerce_type(i32 noundef 1, ptr noundef nonnull %i.an, ptr noundef nonnull %i.a, i32 noundef 0), !inline_history !1
  br i1 %i.ao, label %bb.as, label %verify_common_type_from_oids.exit

verify_common_type_from_oids.exit:                ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.3145312, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ap = tail call i32 @get_base_element_type(i32 noundef %i.am) #4
  %.not255 = icmp eq i32 %i.ap, 0
  br i1 %.not255, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.not256 = icmp eq i32 %.4169, 0
  %.not257 = icmp eq i32 %.4169, %i.am
  %or.cond261 = or i1 %.not256, %.not257
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.r, %bb.q, %bb.j, %bb.h, %bb.f, %bb.d, %bb.u, %bb.n, %bb.a, %bb.ac, %bb.z, %bb.ab, %bb.w, %verify_common_type_from_oids.exit, %bb.aw, %bb.av, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.aj, %bb.ah, %bb.af, %.thread335, %bb.y
  %.10 = phi i1 [ false, %.thread335 ], [ false, %bb.af ], [ false, %bb.aj ], [ false, %bb.an ], [ true, %bb.ap ], [ false, %bb.am ], [ false, %bb.ah ], [ false, %bb.ab ], [ false, %bb.w ], [ false, %bb.y ], [ false, %verify_common_type_from_oids.exit ], [ %or.cond261, %bb.aw ], [ false, %bb.aq ], [ false, %bb.av ], [ false, %bb.z ], [ false, %bb.ac ], [ true, %bb.a ], [ false, %bb.n ], [ false, %bb.u ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret i1 %.10
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hide_coercion_node(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  switch i32 %i.a, label %bb.i [
    i32 15, label %bb.b
    i32 27, label %bb.c
    i32 28, label %bb.d
    i32 29, label %bb.e
    i32 30, label %bb.f
    i32 36, label %bb.g
    i32 55, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.b, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.c, align 4
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.d, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
end_hunk_0
begin_hunk_1_@enforce_generic_type_consistency:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp eq i32 %i.r, 2277
  %or.cond517 = select i1 %4, i1 %i.ad, i1 false
  br i1 %or.cond517, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @getBaseType(i32 noundef %i.r) #4 ; 3 uses
  %.not512 = icmp eq i32 %.0410755, 0
  %.not513 = icmp eq i32 %i.ae, %.0410755
  %or.cond518 = select i1 %.not512, i1 true, i1 %.not513
  br i1 %or.cond518, label %bb.ak, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.ag = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10) #4 ; 0 uses
  %i.ai = tail call ptr @format_type_be(i32 noundef %.0410755) #4
  %i.aj = tail call ptr @format_type_be(i32 noundef %i.ae) #4
  %i.ak = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.9, ptr noundef %i.ai, ptr noundef %i.aj) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2212, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.l:                                             ; preds = %.lr.ph
  %i.al = add i32 %.0347769, 1                    ; 3 uses
  %i.am = icmp eq i32 %i.r, 705
  br i1 %i.am, label %bb.ak, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = icmp eq i32 %i.r, 3831
  %or.cond519 = select i1 %4, i1 %i.an, i1 false
  br i1 %or.cond519, label %bb.ak, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call i32 @getBaseType(i32 noundef %i.r) #4 ; 3 uses
  %.not510 = icmp eq i32 %.0404756, 0
  %.not511 = icmp eq i32 %i.ao, %.0404756
  %or.cond520 = select i1 %.not510, i1 true, i1 %.not511
  br i1 %or.cond520, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.aq = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.ar = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11) #4 ; 0 uses
  %i.as = tail call ptr @format_type_be(i32 noundef %.0404756) #4
  %i.at = tail call ptr @format_type_be(i32 noundef %i.ao) #4
  %i.au = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.9, ptr noundef %i.as, ptr noundef %i.at) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2232, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.p:                                             ; preds = %.lr.ph
  %i.av = add i32 %.0347769, 1                    ; 3 uses
  %i.aw = icmp eq i32 %i.r, 705
  br i1 %i.aw, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp eq i32 %i.r, 4537
  %or.cond521 = select i1 %4, i1 %i.ax, i1 false
  br i1 %or.cond521, label %bb.ak, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call i32 @getBaseType(i32 noundef %i.r) #4 ; 3 uses
  %.not508 = icmp eq i32 %.0398757, 0
  %.not509 = icmp eq i32 %i.ay, %.0398757
  %or.cond522 = select i1 %.not508, i1 true, i1 %.not509
  br i1 %or.cond522, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.ba = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.bb = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12) #4 ; 0 uses
  %i.bc = tail call ptr @format_type_be(i32 noundef %.0398757) #4
  %i.bd = tail call ptr @format_type_be(i32 noundef %i.ay) #4
  %i.be = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.9, ptr noundef %i.bc, ptr noundef %i.bd) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2253, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.t:                                             ; preds = %.lr.ph
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %.1361 = phi i1 [ true, %bb.t ], [ %.0360765, %.lr.ph ] ; 2 uses
  %i.bf = icmp eq i32 %i.r, 705
  %i.bg = icmp eq i32 %i.p, %i.r
  %or.cond523 = select i1 %4, i1 %i.bg, i1 false
  %or.cond527 = or i1 %i.bf, %or.cond523
  br i1 %or.cond527, label %bb.ak, label %.sink.split

bb.v:                                             ; preds = %.lr.ph
  %i.bh = icmp eq i32 %i.r, 705
  %i.bi = icmp eq i32 %i.r, 5078
  %or.cond524 = select i1 %4, i1 %i.bi, i1 false
  %or.cond528 = or i1 %i.bh, %or.cond524
  br i1 %or.cond528, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = tail call i32 @getBaseType(i32 noundef %i.r) #4 ; 2 uses
  %i.bk = tail call i32 @get_element_type(i32 noundef %i.bj) #4 ; 2 uses
  %.not507 = icmp eq i32 %i.bk, 0
  br i1 %.not507, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w
  %i.bl = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.bm = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.bn = tail call ptr @format_type_be(i32 noundef %i.bj) #4
  %i.bo = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef %i.bn) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2286, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.y:                                             ; preds = %.lr.ph
  %i.bp = icmp eq i32 %i.r, 705
  %i.bq = icmp eq i32 %i.r, 5080
  %or.cond525 = select i1 %4, i1 %i.bq, i1 false
  %or.cond529 = or i1 %i.bp, %or.cond525
  br i1 %or.cond529, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = tail call i32 @getBaseType(i32 noundef %i.r) #4 ; 5 uses
  %.not504 = icmp eq i32 %.0387758, 0
  br i1 %.not504, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not506 = icmp eq i32 %.0387758, %i.br
  br i1 %.not506, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.bt = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.bu = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15) #4 ; 0 uses
  %i.bv = tail call ptr @format_type_be(i32 noundef %.0387758) #4
  %i.bw = tail call ptr @format_type_be(i32 noundef %i.br) #4
  %i.bx = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.9, ptr noundef %i.bv, ptr noundef %i.bw) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2308, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.by = tail call i32 @get_range_subtype(i32 noundef %i.br) #4 ; 3 uses
  %.not505 = icmp eq i32 %i.by, 0
  br i1 %.not505, label %bb.ad, label %.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.bz = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.ca = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.cb = tail call ptr @format_type_be(i32 noundef %i.br) #4
  %i.cc = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %i.cb) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2319, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.ae:                                            ; preds = %.lr.ph
  %i.cd = icmp eq i32 %i.r, 705
  %i.ce = icmp eq i32 %i.r, 4538
  %or.cond526 = select i1 %4, i1 %i.ce, i1 false
  %or.cond530 = or i1 %i.cd, %or.cond526
  br i1 %or.cond530, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cf = tail call i32 @getBaseType(i32 noundef %i.r) #4 ; 5 uses
  %.not501 = icmp eq i32 %.0378760, 0
  br i1 %.not501, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not503 = icmp eq i32 %.0378760, %i.cf
  br i1 %.not503, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.ch = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.ci = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17) #4 ; 0 uses
  %i.cj = tail call ptr @format_type_be(i32 noundef %.0378760) #4
  %i.ck = tail call ptr @format_type_be(i32 noundef %i.cf) #4
  %i.cl = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.9, ptr noundef %i.cj, ptr noundef %i.ck) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2342, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.ai:                                            ; preds = %bb.af
  %i.cm = tail call i32 @get_multirange_range(i32 noundef %i.cf) #4 ; 2 uses
  %.not502 = icmp eq i32 %i.cm, 0
  br i1 %.not502, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cn = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.co = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.cp = tail call ptr @format_type_be(i32 noundef %i.cf) #4
  %i.cq = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %i.cp) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2353, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

.sink.split:                                      ; preds = %bb.ac, %bb.w, %bb.u
  %.sink = phi i32 [ %i.r, %bb.u ], [ %i.bk, %bb.w ], [ %i.by, %bb.ac ]
  %.2389.ph = phi i32 [ %.0387758, %bb.u ], [ %.0387758, %bb.w ], [ %i.br, %bb.ac ]
  %.2385.ph = phi i32 [ %.0383759, %bb.u ], [ %.0383759, %bb.w ], [ %i.by, %bb.ac ]
  %.3363.ph = phi i1 [ %.1361, %bb.u ], [ %.0360765, %bb.w ], [ %.0360765, %bb.ac ]
  %.2359.ph = phi i1 [ %.0357766, %bb.u ], [ true, %bb.w ], [ %.0357766, %bb.ac ]
  %.2355.ph = phi i8 [ %.0353767, %bb.u ], [ %.0353767, %bb.w ], [ 1, %bb.ac ]
  %i.cr = add i32 %.0346770, 1
  %i.cs = sext i32 %.0346770 to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cs
  store i32 %.sink, ptr %i.ct, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %.lr.ph, %bb.v, %bb.aa, %bb.ag, %bb.ai, %bb.f, %bb.j, %bb.n, %bb.r, %bb.ae, %bb.y, %bb.u, %bb.q, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.e, %bb.d
  %.2430 = phi i1 [ true, %bb.ae ], [ %.0428752, %bb.d ], [ true, %bb.v ], [ %.0428752, %bb.e ], [ %.0428752, %bb.h ], [ %.0428752, %bb.i ], [ %.0428752, %bb.l ], [ %.0428752, %bb.m ], [ %.0428752, %bb.p ], [ %.0428752, %bb.q ], [ true, %bb.u ], [ true, %bb.ai ], [ %.0428752, %bb.r ], [ true, %bb.y ], [ true, %bb.ag ], [ %.0428752, %.lr.ph ], [ %.0428752, %bb.f ], [ %.0428752, %bb.j ], [ %.0428752, %bb.n ], [ true, %bb.aa ], [ true, %.sink.split ] ; 2 uses
  %.1427 = phi i1 [ %.0426753, %bb.ae ], [ true, %bb.d ], [ %.0426753, %bb.v ], [ %.0426753, %bb.e ], [ true, %bb.h ], [ %.0426753, %bb.i ], [ true, %bb.l ], [ %.0426753, %bb.m ], [ true, %bb.p ], [ %.0426753, %bb.q ], [ %.0426753, %bb.u ], [ %.0426753, %bb.ai ], [ %.0426753, %bb.r ], [ %.0426753, %bb.y ], [ %.0426753, %bb.ag ], [ %.0426753, %.lr.ph ], [ %.0426753, %bb.f ], [ %.0426753, %bb.j ], [ %.0426753, %bb.n ], [ %.0426753, %bb.aa ], [ %.0426753, %.sink.split ] ; 2 uses
  %.2419 = phi i32 [ %.0417754, %bb.ae ], [ %.0417754, %bb.d ], [ %.0417754, %bb.v ], [ %.0417754, %bb.e ], [ %.0417754, %bb.h ], [ %.0417754, %bb.i ], [ %.0417754, %bb.l ], [ %.0417754, %bb.m ], [ %.0417754, %bb.p ], [ %.0417754, %bb.q ], [ %.0417754, %bb.u ], [ %.0417754, %bb.ai ], [ %.0417754, %bb.r ], [ %.0417754, %bb.y ], [ %.0417754, %bb.ag ], [ %.0417754, %.lr.ph ], [ %i.r, %bb.f ], [ %.0417754, %bb.j ], [ %.0417754, %bb.n ], [ %.0417754, %bb.aa ], [ %.0417754, %.sink.split ] ; 2 uses
  %.2412 = phi i32 [ %.0410755, %bb.ae ], [ %.0410755, %bb.d ], [ %.0410755, %bb.v ], [ %.0410755, %bb.e ], [ %.0410755, %bb.h ], [ %.0410755, %bb.i ], [ %.0410755, %bb.l ], [ %.0410755, %bb.m ], [ %.0410755, %bb.p ], [ %.0410755, %bb.q ], [ %.0410755, %bb.u ], [ %.0410755, %bb.ai ], [ %.0410755, %bb.r ], [ %.0410755, %bb.y ], [ %.0410755, %bb.ag ], [ %.0410755, %.lr.ph ], [ %.0410755, %bb.f ], [ %i.ae, %bb.j ], [ %.0410755, %bb.n ], [ %.0410755, %bb.aa ], [ %.0410755, %.sink.split ] ; 2 uses
  %.2406 = phi i32 [ %.0404756, %bb.ae ], [ %.0404756, %bb.d ], [ %.0404756, %bb.v ], [ %.0404756, %bb.e ], [ %.0404756, %bb.h ], [ %.0404756, %bb.i ], [ %.0404756, %bb.l ], [ %.0404756, %bb.m ], [ %.0404756, %bb.p ], [ %.0404756, %bb.q ], [ %.0404756, %bb.u ], [ %.0404756, %bb.ai ], [ %.0404756, %bb.r ], [ %.0404756, %bb.y ], [ %.0404756, %bb.ag ], [ %.0404756, %.lr.ph ], [ %.0404756, %bb.f ], [ %.0404756, %bb.j ], [ %i.ao, %bb.n ], [ %.0404756, %bb.aa ], [ %.0404756, %.sink.split ] ; 2 uses
  %.2400 = phi i32 [ %.0398757, %bb.ae ], [ %.0398757, %bb.d ], [ %.0398757, %bb.v ], [ %.0398757, %bb.e ], [ %.0398757, %bb.h ], [ %.0398757, %bb.i ], [ %.0398757, %bb.l ], [ %.0398757, %bb.m ], [ %.0398757, %bb.p ], [ %.0398757, %bb.q ], [ %.0398757, %bb.u ], [ %.0398757, %bb.ai ], [ %i.ay, %bb.r ], [ %.0398757, %bb.y ], [ %.0398757, %bb.ag ], [ %.0398757, %.lr.ph ], [ %.0398757, %bb.f ], [ %.0398757, %bb.j ], [ %.0398757, %bb.n ], [ %.0398757, %bb.aa ], [ %.0398757, %.sink.split ] ; 2 uses
  %.2389 = phi i32 [ %.0387758, %bb.ae ], [ %.0387758, %bb.d ], [ %.0387758, %bb.v ], [ %.0387758, %bb.e ], [ %.0387758, %bb.h ], [ %.0387758, %bb.i ], [ %.0387758, %bb.l ], [ %.0387758, %bb.m ], [ %.0387758, %bb.p ], [ %.0387758, %bb.q ], [ %.0387758, %bb.u ], [ %.0387758, %bb.ai ], [ %.0387758, %bb.r ], [ %.0387758, %bb.y ], [ %.0387758, %bb.ag ], [ %.0387758, %.lr.ph ], [ %.0387758, %bb.f ], [ %.0387758, %bb.j ], [ %.0387758, %bb.n ], [ %.0387758, %bb.aa ], [ %.2389.ph, %.sink.split ] ; 2 uses
  %.2385 = phi i32 [ %.0383759, %bb.ae ], [ %.0383759, %bb.d ], [ %.0383759, %bb.v ], [ %.0383759, %bb.e ], [ %.0383759, %bb.h ], [ %.0383759, %bb.i ], [ %.0383759, %bb.l ], [ %.0383759, %bb.m ], [ %.0383759, %bb.p ], [ %.0383759, %bb.q ], [ %.0383759, %bb.u ], [ %.0383759, %bb.ai ], [ %.0383759, %bb.r ], [ %.0383759, %bb.y ], [ %.0383759, %bb.ag ], [ %.0383759, %.lr.ph ], [ %.0383759, %bb.f ], [ %.0383759, %bb.j ], [ %.0383759, %bb.n ], [ %.0383759, %bb.aa ], [ %.2385.ph, %.sink.split ] ; 2 uses
  %.2380 = phi i32 [ %.0378760, %bb.ae ], [ %.0378760, %bb.d ], [ %.0378760, %bb.v ], [ %.0378760, %bb.e ], [ %.0378760, %bb.h ], [ %.0378760, %bb.i ], [ %.0378760, %bb.l ], [ %.0378760, %bb.m ], [ %.0378760, %bb.p ], [ %.0378760, %bb.q ], [ %.0378760, %bb.u ], [ %i.cf, %bb.ai ], [ %.0378760, %bb.r ], [ %.0378760, %bb.y ], [ %.0378760, %bb.ag ], [ %.0378760, %.lr.ph ], [ %.0378760, %bb.f ], [ %.0378760, %bb.j ], [ %.0378760, %bb.n ], [ %.0378760, %bb.aa ], [ %.0378760, %.sink.split ] ; 2 uses
  %.2377 = phi i32 [ %.0375761, %bb.ae ], [ %.0375761, %bb.d ], [ %.0375761, %bb.v ], [ %.0375761, %bb.e ], [ %.0375761, %bb.h ], [ %.0375761, %bb.i ], [ %.0375761, %bb.l ], [ %.0375761, %bb.m ], [ %.0375761, %bb.p ], [ %.0375761, %bb.q ], [ %.0375761, %bb.u ], [ %i.cm, %bb.ai ], [ %.0375761, %bb.r ], [ %.0375761, %bb.y ], [ %.0375761, %bb.ag ], [ %.0375761, %.lr.ph ], [ %.0375761, %bb.f ], [ %.0375761, %bb.j ], [ %.0375761, %bb.n ], [ %.0375761, %bb.aa ], [ %.0375761, %.sink.split ] ; 2 uses
  %.3374 = phi i1 [ %.0371762, %bb.ae ], [ %.1372, %bb.d ], [ %.0371762, %bb.v ], [ %.1372, %bb.e ], [ %.0371762, %bb.h ], [ %.0371762, %bb.i ], [ %.0371762, %bb.l ], [ %.0371762, %bb.m ], [ %.0371762, %bb.p ], [ %.0371762, %bb.q ], [ %.0371762, %bb.u ], [ %.0371762, %bb.ai ], [ %.0371762, %bb.r ], [ %.0371762, %bb.y ], [ %.0371762, %bb.ag ], [ %.0371762, %.lr.ph ], [ %.1372, %bb.f ], [ %.0371762, %bb.j ], [ %.0371762, %bb.n ], [ %.0371762, %bb.aa ], [ %.0371762, %.sink.split ] ; 2 uses
  %.3370 = phi i1 [ %.0367763, %bb.ae ], [ %.1368, %bb.d ], [ %.0367763, %bb.v ], [ %.1368, %bb.e ], [ %.0367763, %bb.h ], [ %.0367763, %bb.i ], [ %.0367763, %bb.l ], [ %.0367763, %bb.m ], [ %.0367763, %bb.p ], [ %.0367763, %bb.q ], [ %.0367763, %bb.u ], [ %.0367763, %bb.ai ], [ %.0367763, %bb.r ], [ %.0367763, %bb.y ], [ %.0367763, %bb.ag ], [ %.0367763, %.lr.ph ], [ %.1368, %bb.f ], [ %.0367763, %bb.j ], [ %.0367763, %bb.n ], [ %.0367763, %bb.aa ], [ %.0367763, %.sink.split ] ; 2 uses
  %.2366 = phi i1 [ %.0364764, %bb.ae ], [ %.0364764, %bb.d ], [ %.0364764, %bb.v ], [ %.0364764, %bb.e ], [ %.0364764, %bb.h ], [ %.0364764, %bb.i ], [ %.0364764, %bb.l ], [ %.0364764, %bb.m ], [ true, %bb.p ], [ true, %bb.q ], [ %.0364764, %bb.u ], [ %.0364764, %bb.ai ], [ true, %bb.r ], [ %.0364764, %bb.y ], [ %.0364764, %bb.ag ], [ %.0364764, %.lr.ph ], [ %.0364764, %bb.f ], [ %.0364764, %bb.j ], [ %.0364764, %bb.n ], [ %.0364764, %bb.aa ], [ %.0364764, %.sink.split ] ; 2 uses
  %.3363 = phi i1 [ %.0360765, %bb.ae ], [ %.0360765, %bb.d ], [ %.0360765, %bb.v ], [ %.0360765, %bb.e ], [ %.0360765, %bb.h ], [ %.0360765, %bb.i ], [ %.0360765, %bb.l ], [ %.0360765, %bb.m ], [ %.0360765, %bb.p ], [ %.0360765, %bb.q ], [ %.1361, %bb.u ], [ %.0360765, %bb.ai ], [ %.0360765, %bb.r ], [ %.0360765, %bb.y ], [ %.0360765, %bb.ag ], [ %.0360765, %.lr.ph ], [ %.0360765, %bb.f ], [ %.0360765, %bb.j ], [ %.0360765, %bb.n ], [ %.0360765, %bb.aa ], [ %.3363.ph, %.sink.split ] ; 2 uses
  %.2359 = phi i1 [ %.0357766, %bb.ae ], [ %.0357766, %bb.d ], [ true, %bb.v ], [ %.0357766, %bb.e ], [ %.0357766, %bb.h ], [ %.0357766, %bb.i ], [ %.0357766, %bb.l ], [ %.0357766, %bb.m ], [ %.0357766, %bb.p ], [ %.0357766, %bb.q ], [ %.0357766, %bb.u ], [ %.0357766, %bb.ai ], [ %.0357766, %bb.r ], [ %.0357766, %bb.y ], [ %.0357766, %bb.ag ], [ %.0357766, %.lr.ph ], [ %.0357766, %bb.f ], [ %.0357766, %bb.j ], [ %.0357766, %bb.n ], [ %.0357766, %bb.aa ], [ %.2359.ph, %.sink.split ] ; 2 uses
  %.2355 = phi i8 [ %.0353767, %bb.ae ], [ %.0353767, %bb.d ], [ %.0353767, %bb.v ], [ %.0353767, %bb.e ], [ %.0353767, %bb.h ], [ %.0353767, %bb.i ], [ %.0353767, %bb.l ], [ %.0353767, %bb.m ], [ %.0353767, %bb.p ], [ %.0353767, %bb.q ], [ %.0353767, %bb.u ], [ %.0353767, %bb.ai ], [ %.0353767, %bb.r ], [ 1, %bb.y ], [ %.0353767, %bb.ag ], [ %.0353767, %.lr.ph ], [ %.0353767, %bb.f ], [ %.0353767, %bb.j ], [ %.0353767, %bb.n ], [ 1, %bb.aa ], [ %.2355.ph, %.sink.split ] ; 2 uses
  %.2352 = phi i8 [ 1, %bb.ae ], [ %.0350768, %bb.d ], [ %.0350768, %bb.v ], [ %.0350768, %bb.e ], [ %.0350768, %bb.h ], [ %.0350768, %bb.i ], [ %.0350768, %bb.l ], [ %.0350768, %bb.m ], [ %.0350768, %bb.p ], [ %.0350768, %bb.q ], [ %.0350768, %bb.u ], [ 1, %bb.ai ], [ %.0350768, %bb.r ], [ %.0350768, %bb.y ], [ 1, %bb.ag ], [ %.0350768, %.lr.ph ], [ %.0350768, %bb.f ], [ %.0350768, %bb.j ], [ %.0350768, %bb.n ], [ %.0350768, %bb.aa ], [ %.0350768, %.sink.split ] ; 2 uses
  %.2349 = phi i32 [ %.0347769, %bb.ae ], [ %i.s, %bb.d ], [ %.0347769, %bb.v ], [ %i.s, %bb.e ], [ %i.ab, %bb.h ], [ %i.ab, %bb.i ], [ %i.al, %bb.l ], [ %i.al, %bb.m ], [ %i.av, %bb.p ], [ %i.av, %bb.q ], [ %.0347769, %bb.u ], [ %.0347769, %bb.ai ], [ %i.av, %bb.r ], [ %.0347769, %bb.y ], [ %.0347769, %bb.ag ], [ %.0347769, %.lr.ph ], [ %i.s, %bb.f ], [ %i.ab, %bb.j ], [ %i.al, %bb.n ], [ %.0347769, %bb.aa ], [ %.0347769, %.sink.split ] ; 2 uses
  %.3 = phi i32 [ %.0346770, %bb.ae ], [ %.0346770, %bb.d ], [ %.0346770, %bb.v ], [ %.0346770, %bb.e ], [ %.0346770, %bb.h ], [ %.0346770, %bb.i ], [ %.0346770, %bb.l ], [ %.0346770, %bb.m ], [ %.0346770, %bb.p ], [ %.0346770, %bb.q ], [ %.0346770, %bb.u ], [ %.0346770, %bb.ai ], [ %.0346770, %bb.r ], [ %.0346770, %bb.y ], [ %.0346770, %bb.ag ], [ %.0346770, %.lr.ph ], [ %.0346770, %bb.f ], [ %.0346770, %bb.j ], [ %.0346770, %bb.n ], [ %.0346770, %bb.aa ], [ %i.cr, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !21

bb.al:                                            ; preds = %._crit_edge
  br i1 %i.n, label %bb.am, label %.thread554

bb.am:                                            ; preds = %bb.al
  switch i32 %.0410.lcssa, label %bb.aq [
    i32 0, label %bb.av
    i32 2277, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %.not464 = icmp eq i32 %.0347.lcssa, 1
  br i1 %.not464, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  switch i32 %3, label %bb.as [
    i32 2283, label %bb.ap
    i32 4537, label %bb.ap
    i32 3831, label %bb.ap
    i32 3500, label %bb.ap
    i32 2776, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.an
  %i.cu = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.cv = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.cw = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2388, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.aq:                                            ; preds = %bb.am
  %i.cx = tail call i32 @get_element_type(i32 noundef %.0410.lcssa) #4 ; 2 uses
  %.not463 = icmp eq i32 %i.cx, 0
  br i1 %.not463, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cy = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.cz = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.da = tail call ptr @format_type_be(i32 noundef %.0410.lcssa) #4
  %i.db = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10, ptr noundef %i.da) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2398, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.as:                                            ; preds = %bb.ao, %bb.aq
  %.0343 = phi i32 [ %i.cx, %bb.aq ], [ 2283, %bb.ao ] ; 2 uses
  %.not466 = icmp eq i32 %.0417.lcssa, 0
  br i1 %.not466, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not467 = icmp eq i32 %.0343, %.0417.lcssa
  br i1 %.not467, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dc = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.dd = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.de = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #4 ; 0 uses
  %i.df = tail call ptr @format_type_be(i32 noundef %.0410.lcssa) #4
  %i.dg = tail call ptr @format_type_be(i32 noundef %.0417.lcssa) #4
  %i.dh = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.9, ptr noundef %i.df, ptr noundef %i.dg) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2418, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.av:                                            ; preds = %bb.at, %bb.as, %bb.am
  %.4421 = phi i32 [ %.0417.lcssa, %bb.am ], [ %.0417.lcssa, %bb.at ], [ %.0343, %bb.as ] ; 6 uses
  %.not468 = icmp eq i32 %.0398.lcssa, 0
  br i1 %.not468, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.di = tail call i32 @get_multirange_range(i32 noundef %.0398.lcssa) #4 ; 3 uses
  %.not469 = icmp eq i32 %i.di, 0
  br i1 %.not469, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dj = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.dk = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.dl = tail call ptr @format_type_be(i32 noundef %.0398.lcssa) #4
  %i.dm = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12, ptr noundef %i.dl) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2433, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %.not470 = icmp eq i32 %.0404.lcssa, 0
  br i1 %.not470, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not471 = icmp eq i32 %i.di, %.0404.lcssa
  br i1 %.not471, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dn = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.do = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.dp = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #4 ; 0 uses
  %i.dq = tail call ptr @format_type_be(i32 noundef %.0398.lcssa) #4
  %i.dr = tail call ptr @format_type_be(i32 noundef %.0404.lcssa) #4
  %i.ds = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.9, ptr noundef %i.dq, ptr noundef %i.dr) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2449, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.bb:                                            ; preds = %bb.av
  %i.dt = icmp ne i32 %.0404.lcssa, 0             ; 2 uses
  %or.cond19 = select i1 %.0364.lcssa, i1 %i.dt, i1 false
  br i1 %or.cond19, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.du = tail call i32 @get_range_multirange(i32 noundef %.0404.lcssa) #4
  br label %.thread

bb.bd:                                            ; preds = %bb.bb
  br i1 %i.dt, label %.thread, label %bb.bi

.thread:                                          ; preds = %bb.ay, %bb.az, %bb.bc, %bb.bd
  %.3401536 = phi i32 [ 0, %bb.bd ], [ %.0398.lcssa, %bb.az ], [ %.0398.lcssa, %bb.ay ], [ %i.du, %bb.bc ] ; 2 uses
  %.4408534 = phi i32 [ %.0404.lcssa, %bb.bd ], [ %.0404.lcssa, %bb.az ], [ %i.di, %bb.ay ], [ %.0404.lcssa, %bb.bc ] ; 5 uses
  %i.dv = tail call i32 @get_range_subtype(i32 noundef %.4408534) #4 ; 3 uses
  %.not473 = icmp eq i32 %i.dv, 0
  br i1 %.not473, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.thread
  %i.dw = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.dx = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.dy = tail call ptr @format_type_be(i32 noundef %.4408534) #4
  %i.dz = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, ptr noundef %i.dy) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2469, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.bf:                                            ; preds = %.thread
  %.not474 = icmp eq i32 %.4421, 0
  br i1 %.not474, label %.thread539, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not475 = icmp eq i32 %i.dv, %.4421
  br i1 %.not475, label %.thread539, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ea = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.eb = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.ec = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #4 ; 0 uses
  %i.ed = tail call ptr @format_type_be(i32 noundef %.4408534) #4
  %i.ee = tail call ptr @format_type_be(i32 noundef %.4421) #4
  %i.ef = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.9, ptr noundef %i.ed, ptr noundef %i.ee) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2488, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

bb.bi:                                            ; preds = %bb.bd
  %.not476 = icmp eq i32 %.4421, 0
  br i1 %.not476, label %bb.bj, label %.thread539

bb.bj:                                            ; preds = %bb.bi
  br i1 %4, label %.thread554, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eg = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.eh = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.ei = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2510, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

.thread539:                                       ; preds = %bb.bf, %bb.bg, %bb.bi
  %.7424 = phi i32 [ %.4421, %bb.bi ], [ %i.dv, %bb.bf ], [ %.4421, %bb.bg ] ; 7 uses
  %.5409 = phi i32 [ 0, %bb.bi ], [ %.4408534, %bb.bf ], [ %.4408534, %bb.bg ] ; 2 uses
  %.4402 = phi i32 [ 0, %bb.bi ], [ %.3401536, %bb.bf ], [ %.3401536, %bb.bg ] ; 2 uses
  %i.ej = icmp ne i32 %.7424, 2283                ; 2 uses
  %or.cond21 = and i1 %.0371.lcssa, %i.ej
  br i1 %or.cond21, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.thread539
  %i.ek = tail call i32 @get_base_element_type(i32 noundef %.7424) #4
  %.not477 = icmp eq i32 %i.ek, 0
  br i1 %.not477, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.el = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #5 ; 0 uses
  %i.em = tail call i32 @errcode(i32 noundef 67141764) #4 ; 0 uses
  %i.en = tail call ptr @format_type_be(i32 noundef %.7424) #4
  %i.eo = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.23, ptr noundef %i.en) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2524, ptr noundef nonnull @__func__.enforce_generic_type_consistency) #4
  unreachable

end_hunk_1
