Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/stem_UTF_8_danish?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_v = internal constant [19 x i8] c"\11A\10\01\00\00\00\00\00\00\00\00\00\00\00\000\00\80", align 16
@g_s_ending = internal constant [17 x i8] c"\EF\FE*\03\00\00\00\00\00\00\00\00\00\00\00\00\10", align 16
@s_0_0 = internal constant [3 x i8] c"hed", align 1
@s_0_1 = internal constant [5 x i8] c"ethed", align 1
@s_0_2 = internal constant [4 x i8] c"ered", align 1
@s_0_3 = internal constant [1 x i8] c"e", align 1
@s_0_4 = internal constant [5 x i8] c"erede", align 1
@s_0_5 = internal constant [4 x i8] c"ende", align 1
@s_0_6 = internal constant [6 x i8] c"erende", align 1
@s_0_7 = internal constant [3 x i8] c"ene", align 1
@s_0_8 = internal constant [4 x i8] c"erne", align 1
@s_0_9 = internal constant [3 x i8] c"ere", align 1
@s_0_10 = internal constant [2 x i8] c"en", align 1
@s_0_11 = internal constant [5 x i8] c"heden", align 1
@s_0_12 = internal constant [4 x i8] c"eren", align 1
@s_0_13 = internal constant [2 x i8] c"er", align 1
@s_0_14 = internal constant [5 x i8] c"heder", align 1
@s_0_15 = internal constant [4 x i8] c"erer", align 1
@s_0_16 = internal constant [1 x i8] c"s", align 1
@s_0_17 = internal constant [4 x i8] c"heds", align 1
@s_0_18 = internal constant [2 x i8] c"es", align 1
@s_0_19 = internal constant [5 x i8] c"endes", align 1
@s_0_20 = internal constant [7 x i8] c"erendes", align 1
@s_0_21 = internal constant [4 x i8] c"enes", align 1
@s_0_22 = internal constant [5 x i8] c"ernes", align 1
@s_0_23 = internal constant [4 x i8] c"eres", align 1
@s_0_24 = internal constant [3 x i8] c"ens", align 1
@s_0_25 = internal constant [6 x i8] c"hedens", align 1
@s_0_26 = internal constant [5 x i8] c"erens", align 1
@s_0_27 = internal constant [3 x i8] c"ers", align 1
@s_0_28 = internal constant [3 x i8] c"ets", align 1
@s_0_29 = internal constant [5 x i8] c"erets", align 1
@s_0_30 = internal constant [2 x i8] c"et", align 1
@s_0_31 = internal constant [4 x i8] c"eret", align 1
@a_0 = internal constant [32 x { i32, [4 x i8], ptr, i32, i32, ptr }] [{ i32, [4 x i8], ptr, i32, i32, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @s_0_0, i32 -1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @s_0_1, i32 0, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_0_2, i32 -1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @s_0_3, i32 -1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @s_0_4, i32 3, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_0_5, i32 3, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 6, [4 x i8] zeroinitializer, ptr @s_0_6, i32 5, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @s_0_7, i32 3, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_0_8, i32 3, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @s_0_9, i32 3, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @s_0_10, i32 -1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @s_0_11, i32 10, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_0_12, i32 10, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @s_0_13, i32 -1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @s_0_14, i32 13, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_0_15, i32 13, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @s_0_16, i32 -1, i32 2, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_0_17, i32 16, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @s_0_18, i32 16, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @s_0_19, i32 18, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 7, [4 x i8] zeroinitializer, ptr @s_0_20, i32 19, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_0_21, i32 18, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @s_0_22, i32 18, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_0_23, i32 18, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @s_0_24, i32 16, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 6, [4 x i8] zeroinitializer, ptr @s_0_25, i32 24, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @s_0_26, i32 24, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @s_0_27, i32 16, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @s_0_28, i32 16, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @s_0_29, i32 28, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @s_0_30, i32 -1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_0_31, i32 30, i32 1, ptr null }], align 16
@s_1_0 = internal constant [2 x i8] c"gd", align 1
@s_1_1 = internal constant [2 x i8] c"dt", align 1
@s_1_2 = internal constant [2 x i8] c"gt", align 1
@s_1_3 = internal constant [2 x i8] c"kt", align 1
@a_1 = internal constant [4 x { i32, [4 x i8], ptr, i32, i32, ptr }] [{ i32, [4 x i8], ptr, i32, i32, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_0, i32 -1, i32 -1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_1, i32 -1, i32 -1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_2, i32 -1, i32 -1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_3, i32 -1, i32 -1, ptr null }], align 16
@s_0 = internal constant [2 x i8] c"st", align 1
@s_1 = internal constant [2 x i8] c"ig", align 1
@s_2 = internal constant [4 x i8] c"l\C3\B8s", align 1
@s_2_0 = internal constant [2 x i8] c"ig", align 1
@s_2_1 = internal constant [3 x i8] c"lig", align 1
@s_2_2 = internal constant [4 x i8] c"elig", align 1
@s_2_3 = internal constant [3 x i8] c"els", align 1
@s_2_4 = internal constant [5 x i8] c"l\C3\B8st", align 1
@a_2 = internal constant [5 x { i32, [4 x i8], ptr, i32, i32, ptr }] [{ i32, [4 x i8], ptr, i32, i32, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @s_2_0, i32 -1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @s_2_1, i32 0, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_2_2, i32 1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @s_2_3, i32 -1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @s_2_4, i32 -1, i32 2, ptr null }], align 16
@g_c = internal constant [4 x i8] c"w\DFw\01", align 1

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 2) i32 @danish_UTF_8_stem(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.d, ptr %i.g, align 4, !tbaa !17
  %i.h = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !18
  %i.j = tail call i32 @skip_utf8(ptr noundef %i.i, i32 noundef %i.h, i32 noundef %i.d, i32 noundef 3) #3 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  %.pre92 = load ptr, ptr %i.e, align 8, !tbaa !16 ; 2 uses
  br i1 %i.k, label %r_mark_regions.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.j, ptr %.pre92, align 4, !tbaa !17
  store i32 %i.h, ptr %i.a, align 8, !tbaa !14
  %i.l = tail call i32 @out_grouping_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 248, i32 noundef 1) #3
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.r_mark_regions.exit_crit_edge, label %bb.c

.r_mark_regions.exit_crit_edge:                   ; preds = %bb.b
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %r_mark_regions.exit

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @in_grouping_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 248, i32 noundef 1) #3 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  %.pre93 = load ptr, ptr %i.e, align 8, !tbaa !16 ; 4 uses
  br i1 %i.o, label %r_mark_regions.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.a, align 8, !tbaa !14
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  store i32 %i.q, ptr %i.a, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %.pre93, i64 4
  %i.s = load i32, ptr %.pre93, align 4, !tbaa !17
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.s)
  store i32 %spec.store.select.i, ptr %i.r, align 4, !tbaa !17
  br label %r_mark_regions.exit

r_mark_regions.exit:                              ; preds = %.r_mark_regions.exit_crit_edge, %bb.a, %bb.c, %bb.d
  %1 = phi ptr [ %.pre, %.r_mark_regions.exit_crit_edge ], [ %.pre92, %bb.a ], [ %.pre93, %bb.c ], [ %.pre93, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  store i32 %i.b, ptr %i.t, align 8, !tbaa !19
  %i.u = load i32, ptr %i.c, align 4, !tbaa !15   ; 5 uses
  store i32 %i.u, ptr %i.a, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17   ; 3 uses
  %i.x = icmp slt i32 %i.u, %i.w
  br i1 %i.x, label %bb.m, label %bb.e

bb.e:                                             ; preds = %r_mark_regions.exit
  store i32 %i.w, ptr %i.t, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.u, ptr %i.y, align 8, !tbaa !20
  %.not.i = icmp sgt i32 %i.u, %i.w
  br i1 %.not.i, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !18
  %i.aa = sext i32 %i.u to i64
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !21
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %.mask.i = and i32 %i.ae, 224
  %.not46.i = icmp eq i32 %.mask.i, 96
  br i1 %.not46.i, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.af = and i32 %i.ae, 31
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = and i32 %i.ag, 1851440
  %.not47.i = icmp eq i32 %i.ah, 0
  br i1 %.not47.i, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_0, i32 noundef 32) #3 ; 2 uses
  %.not48.i = icmp eq i32 %i.ai, 0
  br i1 %.not48.i, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !22
  store i32 %i.b, ptr %i.t, align 8, !tbaa !19
  switch i32 %i.ai, label %bb.m [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.m, label %bb.af

bb.k:                                             ; preds = %bb.i
  %i.an = tail call i32 @in_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_s_ending, i32 noundef 97, i32 noundef 229, i32 noundef 0) #3
  %.not49.i = icmp eq i32 %i.an, 0
  br i1 %.not49.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.m, label %bb.af

.sink.split:                                      ; preds = %bb.h, %bb.e, %bb.f, %bb.g
  store i32 %i.b, ptr %i.t, align 8, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i, %bb.j, %bb.l, %r_mark_regions.exit, %bb.k
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !15
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !14
  %i.ar = tail call fastcc i32 @r_consonant_pair(ptr noundef nonnull %0) ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.af, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i32, ptr %i.c, align 4, !tbaa !15  ; 2 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 %i.at, ptr %i.au, align 8, !tbaa !20
  %i.av = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_0) #3
  %.not.i70 = icmp eq i32 %i.av, 0
  br i1 %.not.i70, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load i32, ptr %i.a, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !22
  %i.ay = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_1) #3
  %.not80.i = icmp eq i32 %i.ay, 0
  br i1 %.not80.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bb = load i32, ptr %i.c, align 4, !tbaa !15  ; 4 uses
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !14
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !17 ; 3 uses
  %i.bf = icmp slt i32 %i.bb, %i.be
  br i1 %i.bf, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = load i32, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  store i32 %i.be, ptr %i.t, align 8, !tbaa !19
  store i32 %i.bb, ptr %i.au, align 8, !tbaa !20
  %i.bh = add nsw i32 %i.bb, -1                   ; 2 uses
  %.not81.i = icmp sgt i32 %i.bh, %i.be
  br i1 %.not81.i, label %bb.s, label %.sink.split111

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %0, align 8, !tbaa !18
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %.mask.i71 = and i32 %i.bm, 224
  %.not82.i = icmp eq i32 %.mask.i71, 96
  br i1 %.not82.i, label %bb.t, label %.sink.split111

bb.t:                                             ; preds = %bb.s
  %i.bn = and i32 %i.bm, 31
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = and i32 %i.bo, 1572992
  %.not83.i = icmp eq i32 %i.bp, 0
  br i1 %.not83.i, label %.sink.split111, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 5) #3 ; 2 uses
  %.not84.i = icmp eq i32 %i.bq, 0
  br i1 %.not84.i, label %.sink.split111, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = load i32, ptr %i.a, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !22
  store i32 %i.bg, ptr %i.t, align 8, !tbaa !19
  switch i32 %i.bq, label %bb.z [
    i32 1, label %bb.w
    i32 2, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.bt = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.bv = tail call fastcc i32 @r_consonant_pair(ptr noundef nonnull %0) ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.z, label %bb.af

bb.y:                                             ; preds = %bb.v
  %i.bx = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_2) #3 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.z, label %bb.af

.sink.split111:                                   ; preds = %bb.u, %bb.r, %bb.s, %bb.t
  store i32 %i.bg, ptr %i.t, align 8, !tbaa !19
  br label %bb.z

bb.z:                                             ; preds = %.sink.split111, %bb.x, %bb.v, %bb.y, %bb.q
  %i.bz = load i32, ptr %i.c, align 4, !tbaa !15  ; 3 uses
  store i32 %i.bz, ptr %i.a, align 8, !tbaa !14
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17 ; 2 uses
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %select.unfold, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = load i32, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  store i32 %i.cc, ptr %i.t, align 8, !tbaa !19
  store i32 %i.bz, ptr %i.au, align 8, !tbaa !20
  %i.cf = tail call i32 @in_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_c, i32 noundef 98, i32 noundef 122, i32 noundef 0) #3
  %.not.i72 = icmp eq i32 %i.cf, 0
  br i1 %.not.i72, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ce, ptr %i.t, align 8, !tbaa !19
  br label %select.unfold

bb.ac:                                            ; preds = %bb.aa
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !24
  %i.cl = tail call ptr @slice_to(ptr noundef nonnull %0, ptr noundef %i.ck) #3 ; 3 uses
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !23
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !24
  %i.cn = icmp eq ptr %i.cl, null
  br i1 %i.cn, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.ce, ptr %i.t, align 8, !tbaa !19
  %i.co = tail call i32 @eq_v_b(ptr noundef nonnull %0, ptr noundef nonnull %i.cl) #3
  %.not29.i = icmp eq i32 %i.co, 0
  br i1 %.not29.i, label %select.unfold, label %bb.ae

end_hunk_0
