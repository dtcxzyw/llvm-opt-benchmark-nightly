Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/stem_ISO_8859_1_danish?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
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
@s_2 = internal constant [3 x i8] c"l\F8s", align 1
@s_2_0 = internal constant [2 x i8] c"ig", align 1
@s_2_1 = internal constant [3 x i8] c"lig", align 1
@s_2_2 = internal constant [4 x i8] c"elig", align 1
@s_2_3 = internal constant [3 x i8] c"els", align 1
@s_2_4 = internal constant [4 x i8] c"l\F8st", align 1
@a_2 = internal constant [5 x { i32, [4 x i8], ptr, i32, i32, ptr }] [{ i32, [4 x i8], ptr, i32, i32, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @s_2_0, i32 -1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @s_2_1, i32 0, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_2_2, i32 1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @s_2_3, i32 -1, i32 1, ptr null }, { i32, [4 x i8], ptr, i32, i32, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @s_2_4, i32 -1, i32 2, ptr null }], align 16
@g_c = internal constant [4 x i8] c"w\DFw\01", align 1

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 2) i32 @danish_ISO_8859_1_stem(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.d, ptr %i.g, align 4, !tbaa !17
  %i.h = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.i = add nsw i32 %i.h, 3                      ; 2 uses
  %i.j = icmp sgt i32 %i.i, %i.d
  br i1 %i.j, label %r_mark_regions.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.i, ptr %i.f, align 4, !tbaa !17
  store i32 %i.h, ptr %i.a, align 8, !tbaa !14
  %i.k = tail call i32 @out_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 248, i32 noundef 1) #3
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.r_mark_regions.exit_crit_edge, label %bb.c

.r_mark_regions.exit_crit_edge:                   ; preds = %bb.b
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %r_mark_regions.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @in_grouping(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 248, i32 noundef 1) #3 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  %.pre105 = load ptr, ptr %i.e, align 8, !tbaa !16 ; 4 uses
  br i1 %i.n, label %r_mark_regions.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.a, align 8, !tbaa !14
  %i.p = add nsw i32 %i.o, %i.m                   ; 2 uses
  store i32 %i.p, ptr %i.a, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %.pre105, i64 4
  %i.r = load i32, ptr %.pre105, align 4, !tbaa !17
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.r)
  store i32 %spec.store.select.i, ptr %i.q, align 4, !tbaa !17
  br label %r_mark_regions.exit

r_mark_regions.exit:                              ; preds = %.r_mark_regions.exit_crit_edge, %bb.a, %bb.c, %bb.d
  %1 = phi ptr [ %.pre, %.r_mark_regions.exit_crit_edge ], [ %i.f, %bb.a ], [ %.pre105, %bb.c ], [ %.pre105, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 20 uses
  store i32 %i.b, ptr %i.s, align 8, !tbaa !18
  %i.t = load i32, ptr %i.c, align 4, !tbaa !15   ; 5 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17   ; 3 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %bb.m, label %bb.e

bb.e:                                             ; preds = %r_mark_regions.exit
  store i32 %i.v, ptr %i.s, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.t, ptr %i.x, align 8, !tbaa !19
  %.not.i = icmp sgt i32 %i.t, %i.v
  br i1 %.not.i, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !20
  %i.z = sext i32 %i.t to i64
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %.mask.i = and i32 %i.ad, 224
  %.not46.i = icmp eq i32 %.mask.i, 96
  br i1 %.not46.i, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ae = and i32 %i.ad, 31
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = and i32 %i.af, 1851440
  %.not47.i = icmp eq i32 %i.ag, 0
  br i1 %.not47.i, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_0, i32 noundef 32) #3 ; 2 uses
  %.not48.i = icmp eq i32 %i.ah, 0
  br i1 %.not48.i, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !22
  store i32 %i.b, ptr %i.s, align 8, !tbaa !18
  switch i32 %i.ah, label %bb.m [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.m, label %r_consonant_pair.exit

bb.k:                                             ; preds = %bb.i
  %i.am = tail call i32 @in_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_s_ending, i32 noundef 97, i32 noundef 229, i32 noundef 0) #3
  %.not49.i = icmp eq i32 %i.am, 0
  br i1 %.not49.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.m, label %r_consonant_pair.exit

.sink.split:                                      ; preds = %bb.h, %bb.e, %bb.f, %bb.g
  store i32 %i.b, ptr %i.s, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i, %bb.j, %bb.l, %r_mark_regions.exit, %bb.k
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !15  ; 4 uses
  store i32 %i.ap, ptr %i.a, align 8, !tbaa !14
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17 ; 3 uses
  %i.at = icmp slt i32 %i.ap, %i.as
  br i1 %i.at, label %r_consonant_pair.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load i32, ptr %i.s, align 8, !tbaa !18  ; 3 uses
  store i32 %i.as, ptr %i.s, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ap, ptr %i.av, align 8, !tbaa !19
  %i.aw = add nsw i32 %i.ap, -1                   ; 2 uses
  %.not.i70 = icmp sgt i32 %i.aw, %i.as
  br i1 %.not.i70, label %bb.o, label %r_consonant_pair.exit.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %0, align 8, !tbaa !20
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !21
  switch i8 %i.ba, label %r_consonant_pair.exit.thread.sink.split [
    i8 100, label %bb.p
    i8 116, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.bb = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 4) #3
  %.not48.i71 = icmp eq i32 %i.bb, 0
  br i1 %.not48.i71, label %r_consonant_pair.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !22
  store i32 %i.au, ptr %i.s, align 8, !tbaa !18
  %i.be = load i32, ptr %i.c, align 4, !tbaa !15  ; 2 uses
  %.not49.i72 = icmp sgt i32 %i.be, %i.au
  br i1 %.not49.i72, label %bb.r, label %r_consonant_pair.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !14
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !22
  %i.bg = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %r_consonant_pair.exit.thread, label %r_consonant_pair.exit

r_consonant_pair.exit.thread.sink.split:          ; preds = %bb.p, %bb.n, %bb.o
  store i32 %i.au, ptr %i.s, align 8, !tbaa !18
  br label %r_consonant_pair.exit.thread

r_consonant_pair.exit.thread:                     ; preds = %r_consonant_pair.exit.thread.sink.split, %bb.r, %bb.m, %bb.q
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !15  ; 2 uses
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !19
  %i.bk = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_0) #3
  %.not.i74 = icmp eq i32 %i.bk, 0
  br i1 %.not.i74, label %bb.u, label %bb.s

bb.s:                                             ; preds = %r_consonant_pair.exit.thread
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !22
  %i.bn = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_1) #3
  %.not80.i = icmp eq i32 %i.bn, 0
  br i1 %.not80.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.u, label %r_consonant_pair.exit

bb.u:                                             ; preds = %bb.t, %bb.s, %r_consonant_pair.exit.thread
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !15  ; 4 uses
  store i32 %i.bq, ptr %i.a, align 8, !tbaa !14
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !17 ; 3 uses
  %i.bu = icmp slt i32 %i.bq, %i.bt
  br i1 %i.bu, label %r_consonant_pair.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = load i32, ptr %i.s, align 8, !tbaa !18  ; 5 uses
  store i32 %i.bt, ptr %i.s, align 8, !tbaa !18
  store i32 %i.bq, ptr %i.bj, align 8, !tbaa !19
  %i.bw = add nsw i32 %i.bq, -1                   ; 2 uses
  %.not81.i = icmp sgt i32 %i.bw, %i.bt
  br i1 %.not81.i, label %bb.w, label %r_consonant_pair.exit.thread.i.sink.split

bb.w:                                             ; preds = %bb.v
  %i.bx = load ptr, ptr %0, align 8, !tbaa !20
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !21
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %.mask.i75 = and i32 %i.cb, 224
  %.not82.i = icmp eq i32 %.mask.i75, 96
  br i1 %.not82.i, label %bb.x, label %r_consonant_pair.exit.thread.i.sink.split

bb.x:                                             ; preds = %bb.w
  %i.cc = and i32 %i.cb, 31
  %i.cd = shl nuw i32 1, %i.cc
  %i.ce = and i32 %i.cd, 1572992
  %.not83.i = icmp eq i32 %i.ce, 0
  br i1 %.not83.i, label %r_consonant_pair.exit.thread.i.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 5) #3 ; 2 uses
  %.not84.i = icmp eq i32 %i.cf, 0
  br i1 %.not84.i, label %r_consonant_pair.exit.thread.i.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !22
  store i32 %i.bv, ptr %i.s, align 8, !tbaa !18
  switch i32 %i.cf, label %r_consonant_pair.exit.thread.i [
    i32 1, label %bb.aa
    i32 2, label %bb.ah
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ci = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, -1
  br i1 %i.cj, label %bb.ab, label %r_consonant_pair.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !15
  %i.cl = load i32, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  %.neg85.i = sub i32 %i.cl, %i.ck
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !17 ; 3 uses
end_hunk_0
