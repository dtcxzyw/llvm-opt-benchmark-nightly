Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/stem_UTF_8_lithuanian?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
@s_1_29 = internal constant [2 x i8] c"op", align 1
@s_1_30 = internal constant [3 x i8] c"iop", align 1
@s_1_31 = internal constant [3 x i8] c"ias", align 1
@s_1_32 = internal constant [3 x i8] c"ies", align 1
@s_1_33 = internal constant [3 x i8] c"ais", align 1
@s_1_34 = internal constant [4 x i8] c"iais", align 1
@s_1_35 = internal constant [2 x i8] c"os", align 1
@s_1_36 = internal constant [3 x i8] c"ios", align 1
@s_1_37 = internal constant [3 x i8] c"uos", align 1
@s_1_38 = internal constant [4 x i8] c"iuos", align 1
@s_1_39 = internal constant [3 x i8] c"aus", align 1
@s_1_40 = internal constant [4 x i8] c"iaus", align 1
@s_1_41 = internal constant [3 x i8] c"\C4\85s", align 1
@s_1_42 = internal constant [4 x i8] c"i\C4\85s", align 1
@s_1_43 = internal constant [3 x i8] c"\C4\99s", align 1
@s_1_44 = internal constant [7 x i8] c"ut\C4\97ait", align 1
@s_1_45 = internal constant [3 x i8] c"ant", align 1
@s_1_46 = internal constant [4 x i8] c"iant", align 1
@s_1_47 = internal constant [5 x i8] c"siant", align 1
@s_1_48 = internal constant [3 x i8] c"int", align 1
@s_1_49 = internal constant [2 x i8] c"ot", align 1
@s_1_50 = internal constant [3 x i8] c"uot", align 1
@s_1_51 = internal constant [4 x i8] c"iuot", align 1
@s_1_52 = internal constant [2 x i8] c"yt", align 1
@s_1_53 = internal constant [3 x i8] c"\C4\97t", align 1
@s_1_54 = internal constant [5 x i8] c"yk\C5\A1t", align 1
@s_1_55 = internal constant [3 x i8] c"iau", align 1
@s_1_56 = internal constant [3 x i8] c"dav", align 1
@s_1_57 = internal constant [2 x i8] c"sv", align 1
@s_1_58 = internal constant [3 x i8] c"\C5\A1v", align 1
@s_1_59 = internal constant [6 x i8] c"yk\C5\A1\C4\8D", align 1
@s_1_60 = internal constant [2 x i8] c"\C4\99", align 1
@s_1_61 = internal constant [5 x i8] c"\C4\97j\C4\99", align 1
@a_1 = internal constant [62 x { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] }] [{ i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_1, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_2, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_3, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_4, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_5, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_6, i32 -2, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_7, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_8, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_9, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_10, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_11, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_12, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_13, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_14, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_15, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_16, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 5, [4 x i8] zeroinitializer, ptr @s_1_17, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 6, [4 x i8] zeroinitializer, ptr @s_1_18, i32 -2, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_19, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_20, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_21, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_22, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_23, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_24, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_25, i32 -2, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_26, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_27, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_28, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_29, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_30, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_31, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_32, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_33, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_34, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_35, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_36, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_37, i32 -2, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_38, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_39, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_40, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_41, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_42, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_43, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 7, [4 x i8] zeroinitializer, ptr @s_1_44, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_45, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_46, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 5, [4 x i8] zeroinitializer, ptr @s_1_47, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_48, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_49, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_50, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @s_1_51, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_52, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_53, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 5, [4 x i8] zeroinitializer, ptr @s_1_54, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_55, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_56, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_57, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @s_1_58, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 6, [4 x i8] zeroinitializer, ptr @s_1_59, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @s_1_60, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] } { i32 5, [4 x i8] zeroinitializer, ptr @s_1_61, i32 -1, i32 -1, i32 0, [4 x i8] zeroinitializer }], align 16
@s_10 = internal constant [2 x i8] c"gd", align 1
@s_11 = internal constant [1 x i8] c"g", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2) i32 @lithuanian_UTF_8_stem(ptr noundef initializes((32, 36)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.e = load i32, ptr %i.d, align 8              ; 6 uses
  %i.f = icmp eq i32 %i.e, %i.b
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %.not = icmp eq i8 %i.j, 97
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.e, 1
  store i32 %i.k, ptr %i.d, align 8
  %i.l = tail call i32 @len_utf8(ptr noundef nonnull %i.g) #2
  %i.m = icmp slt i32 %i.l, 7
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.n = tail call i32 @out_grouping_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 371, i32 noundef 1) #2 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.d, align 8
  %i.q = add i32 %i.p, %i.n
  store i32 %i.q, ptr %i.d, align 8
  %i.r = tail call i32 @in_grouping_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 371, i32 noundef 1) #2 ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.d, align 8
  %i.u = add i32 %i.t, %i.r
  store i32 %i.u, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  store i32 %i.e, ptr %i.v, align 8
  %i.w = load i32, ptr %i.a, align 4              ; 4 uses
  store i32 %i.w, ptr %i.d, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 %i.w, ptr %i.x, align 8
  %i.y = add i32 %i.w, -3
  %.not.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not.i, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %0, align 8
  %i.aa = add i32 %i.w, -1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %.mask.i = and i32 %i.ae, 224
  %.not61.i = icmp eq i32 %.mask.i, 96
  br i1 %.not61.i, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.af = and i32 %i.ae, 31
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = and i32 %i.ag, 2621472
  %.not62.i = icmp eq i32 %i.ah, 0
  br i1 %.not62.i, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 11, ptr noundef null) #2 ; 2 uses
  %.not63.i = icmp eq i32 %i.ai, 0
  br i1 %.not63.i, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %i.d, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.aj, ptr %i.ak, align 4
  switch i32 %i.ai, label %bb.u [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
    i32 7, label %bb.s
    i32 8, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l
  %i.al = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @s_0) #2 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.u, label %r_step1.exit

bb.n:                                             ; preds = %bb.l
  %i.an = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @s_1) #2 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.u, label %r_step1.exit

bb.o:                                             ; preds = %bb.l
  %i.ap = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull @s_2) #2 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.u, label %r_step1.exit

bb.p:                                             ; preds = %bb.l
  %i.ar = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_3) #2 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.u, label %r_step1.exit

bb.q:                                             ; preds = %bb.l
  %i.at = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_4) #2 ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1
  br i1 %i.au, label %bb.u, label %r_step1.exit

bb.r:                                             ; preds = %bb.l
  %i.av = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull @s_5) #2 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %bb.u, label %r_step1.exit

bb.s:                                             ; preds = %bb.l
  %i.ax = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull @s_6) #2 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.u, label %r_step1.exit

bb.t:                                             ; preds = %bb.l
  %i.az = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull @s_7) #2 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.u, label %r_step1.exit

bb.u:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.h, %bb.i, %bb.j, %bb.k
  %i.bb = load i32, ptr %i.a, align 4             ; 3 uses
  store i32 %i.bb, ptr %i.d, align 8
  %i.bc = load i32, ptr %i.c, align 8             ; 2 uses
  %i.bd = icmp slt i32 %i.bb, %i.bc
  %.pre168 = load i32, ptr %i.v, align 8          ; 4 uses
  br i1 %i.bd, label %r_step1.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.bc, ptr %i.v, align 8
  store i32 %i.bb, ptr %i.x, align 8
  %i.be = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_0, i32 noundef 193, ptr noundef null) #2
  %.not.i118 = icmp eq i32 %i.be, 0
  br i1 %.not.i118, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %.pre168, ptr %i.v, align 8
  br label %r_step1.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.bf = load i32, ptr %i.d, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bf, ptr %i.bg, align 4
  store i32 %.pre168, ptr %i.v, align 8
  %i.bh = tail call i32 @slice_del(ptr noundef nonnull %0) #2
  %.fr.i = freeze i32 %i.bh                       ; 2 uses
  %i.bi = icmp sgt i32 %.fr.i, -1
  br i1 %i.bi, label %.r_step1.exit.thread_crit_edge, label %r_step1.exit

.r_step1.exit.thread_crit_edge:                   ; preds = %bb.x
  %.pre = load i32, ptr %i.v, align 8
  br label %r_step1.exit.thread

r_step1.exit.thread:                              ; preds = %.r_step1.exit.thread_crit_edge, %bb.u, %bb.w
  %i.bj = phi i32 [ %.pre, %.r_step1.exit.thread_crit_edge ], [ %.pre168, %bb.u ], [ %.pre168, %bb.w ]
  %i.bk = load i32, ptr %i.a, align 4             ; 3 uses
  store i32 %i.bk, ptr %i.d, align 8
  store i32 %i.bk, ptr %i.x, align 8
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  %.not.i119 = icmp sgt i32 %i.bl, %i.bj
  br i1 %.not.i119, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %r_step1.exit.thread
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  switch i8 %i.bp, label %bb.ad [
    i8 -115, label %bb.z
    i8 -66, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.bq = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_3, i32 noundef 2, ptr noundef null) #2 ; 2 uses
  %.not29.i = icmp eq i32 %i.bq, 0
  br i1 %.not29.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = load i32, ptr %i.d, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.br, ptr %i.bs, align 4
  switch i32 %i.bq, label %bb.ad [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bt = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_8) #2 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.ad, label %r_step1.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bv = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_9) #2 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.ad, label %r_step1.exit

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.z, %bb.y, %r_step1.exit.thread
  %i.bx = load i32, ptr %i.a, align 4
  store i32 %i.bx, ptr %i.d, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %bb.ad
  %i.bz = load i32, ptr %i.d, align 8             ; 2 uses
  %i.ca = load i32, ptr %i.c, align 8             ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = load i32, ptr %i.v, align 8             ; 2 uses
  store i32 %i.ca, ptr %i.v, align 8
  store i32 %i.bz, ptr %i.x, align 8
  %i.cd = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 62, ptr noundef null) #2
  %.not.i121 = icmp eq i32 %i.cd, 0
  br i1 %.not.i121, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %i.cc, ptr %i.v, align 8
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %i.ce = load i32, ptr %i.d, align 8
  store i32 %i.ce, ptr %i.by, align 4
  store i32 %i.cc, ptr %i.v, align 8
  %i.cf = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %bb.ae, label %r_step1.exit

.loopexit:                                        ; preds = %bb.ae, %bb.ag
  %i.ch = load i32, ptr %i.a, align 4
  store i32 %i.ch, ptr %i.d, align 8
  %i.ci = tail call fastcc i32 @r_fix_chdz(ptr noundef nonnull %0) ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %r_step1.exit, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %i.ck = load i32, ptr %i.a, align 4
  store i32 %i.ck, ptr %i.d, align 8
  %i.cl = tail call fastcc i32 @r_fix_gd(ptr noundef nonnull %0) ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %r_step1.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = load i32, ptr %i.v, align 8
  store i32 %i.cn, ptr %i.d, align 8
  br label %r_step1.exit

r_step1.exit:                                     ; preds = %bb.ah, %bb.ab, %bb.ac, %bb.x, %bb.ai, %.loopexit, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.aj
  %.6105 = phi i32 [ 1, %bb.aj ], [ %i.ci, %.loopexit ], [ %i.bv, %bb.ac ], [ %i.al, %bb.m ], [ %.fr.i, %bb.x ], [ %i.cl, %bb.ai ], [ %i.az, %bb.t ], [ %i.ax, %bb.s ], [ %i.av, %bb.r ], [ %i.at, %bb.q ], [ %i.ar, %bb.p ], [ %i.ap, %bb.o ], [ %i.an, %bb.n ], [ %i.bt, %bb.ab ], [ %i.cf, %bb.ah ]
  ret i32 %.6105
}

declare i32 @len_utf8(ptr noundef) local_unnamed_addr #1

declare i32 @out_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @in_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_fix_chdz(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8
  %i.d = add i32 %i.b, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %bb.h [
    i8 -115, label %bb.c
    i8 -66, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_3, i32 noundef 2, ptr noundef null) #2 ; 2 uses
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.l, ptr %i.m, align 4
  switch i32 %i.k, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_8) #2 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_9) #2 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e, %bb.f, %bb.g
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %bb.g ], [ %i.n, %bb.e ], [ %i.p, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @r_fix_gd(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8
  %i.d = tail call i32 @eq_s_b(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @s_10) #2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.e, ptr %i.f, align 4
  %i.g = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_11) #2 ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  %spec.select = select i1 %i.h, i32 1, i32 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @lithuanian_UTF_8_create_env() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SN_new_env(i32 noundef 40) #2 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare ptr @SN_new_env(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @lithuanian_UTF_8_close_env(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SN_delete_env(ptr noundef %0) #2
  ret void
}

declare void @SN_delete_env(ptr noundef) local_unnamed_addr #1

declare i32 @find_among_b(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slice_from_s(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slice_del(ptr noundef) local_unnamed_addr #1

declare i32 @eq_s_b(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
