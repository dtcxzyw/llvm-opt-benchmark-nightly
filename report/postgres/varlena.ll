Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/varlena?download=true
inline.NumInlined: 556
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@namegttext:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @btnametextcmp, i32 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #18
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = zext i1 %i.i to i64
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @namegetext(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @btnametextcmp, i32 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #18
  %i.h = lshr i64 %i.g, 31
  %.lobit = and i64 %i.h, 1
  %i.i = xor i64 %.lobit, 1
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @textltname(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @bttextnamecmp, i32 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #18
  %i.h = lshr i64 %i.g, 31
  %.lobit = and i64 %i.h, 1
  ret i64 %.lobit
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @textlename(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @bttextnamecmp, i32 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #18
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 1
  %i.j = zext i1 %i.i to i64
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @textgtname(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @bttextnamecmp, i32 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #18
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = zext i1 %i.i to i64
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @textgename(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @bttextnamecmp, i32 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #18
  %i.h = lshr i64 %i.g, 31
  %.lobit = and i64 %i.h, 1
  %i.i = xor i64 %.lobit, 1
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @text_pattern_lt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #18 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #18 ; 6 uses
  %i.i = load i8, ptr %i.d, align 1               ; 3 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = icmp eq i8 %i.i, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.d, i64 1
  %.val.i.i = load i8, ptr %i.l, align 1          ; 2 uses
  %i.m = add i8 %.val.i.i, -1
  %or.cond.i.i.i.i = icmp ult i8 %i.m, 3
  %i.n = icmp eq i8 %.val.i.i, 18
  %i.o = select i1 %i.n, i32 16, i32 0
  %i.p = select i1 %or.cond.i.i.i.i, i32 8, i32 %i.o
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.j, 1
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i32 %i.j, 1
  %i.s = add nsw i32 %i.r, -1
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.d, align 4
  %i.u = lshr i32 %i.t, 2
  %i.v = add nsw i32 %i.u, -4
  br label %VARSIZE_ANY_EXHDR.exit.i

VARSIZE_ANY_EXHDR.exit.i:                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.p, %bb.b ], [ %i.s, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.w = load i8, ptr %i.h, align 1               ; 3 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = icmp eq i8 %i.w, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i
  %i.z = getelementptr i8, ptr %i.h, i64 1
  %.val.i19.i = load i8, ptr %i.z, align 1        ; 2 uses
  %i.aa = add i8 %.val.i19.i, -1
  %or.cond.i.i.i20.i = icmp ult i8 %i.aa, 3
  %i.ab = icmp eq i8 %.val.i19.i, 18
  %i.ac = select i1 %i.ab, i32 16, i32 0
  %i.ad = select i1 %or.cond.i.i.i20.i, i32 8, i32 %i.ac
  br label %VARSIZE_ANY_EXHDR.exit21.i

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i
  %i.ae = and i32 %i.x, 1
  %.not.i17.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = lshr i32 %i.x, 1
  %i.ag = add nsw i32 %i.af, -1
  br label %VARSIZE_ANY_EXHDR.exit21.i

bb.i:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.h, align 4
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = add nsw i32 %i.ai, -4
  br label %VARSIZE_ANY_EXHDR.exit21.i

VARSIZE_ANY_EXHDR.exit21.i:                       ; preds = %bb.i, %bb.h, %bb.f
  %.0.i18.i = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ak = and i8 %i.i, 1
  %.not.i22.i = icmp eq i8 %i.ak, 0
  %.v.i.i = select i1 %.not.i22.i, i64 4, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i.i
  %i.am = and i8 %i.w, 1
  %.not.i23.i = icmp eq i8 %i.am, 0
  %.v.i24.i = select i1 %.not.i23.i, i64 4, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i24.i
  %i.ao = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0.i18.i)
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call i32 @memcmp(ptr noundef nonnull readonly %i.al, ptr noundef nonnull readonly %i.an, i64 noundef %i.ap) #17 ; 2 uses
  %i.ar = load i64, ptr %i.a, align 8
  %i.as = inttoptr i64 %i.ar to ptr
  %.not = icmp eq ptr %i.d, %i.as
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %VARSIZE_ANY_EXHDR.exit21.i
  tail call void @pfree(ptr noundef nonnull %i.d) #18
  br label %bb.k

bb.k:                                             ; preds = %VARSIZE_ANY_EXHDR.exit21.i, %bb.j
  %i.at = load i64, ptr %i.e, align 8
  %i.au = inttoptr i64 %i.at to ptr
  %.not11 = icmp eq ptr %i.h, %i.au
  br i1 %.not11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @pfree(ptr noundef nonnull %i.h) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not.i = icmp eq i32 %i.aq, 0
  %i.av = icmp slt i32 %.0.i.i, %.0.i18.i
  %spec.select = select i1 %i.av, i32 -2147483648, i32 0
  %.0.i = select i1 %.not.i, i32 %spec.select, i32 %i.aq
  %.0.i.lobit = lshr i32 %.0.i, 31
  %i.aw = zext nneg i32 %.0.i.lobit to i64
  ret i64 %i.aw
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @text_pattern_le(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #18 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #18 ; 6 uses
  %i.i = load i8, ptr %i.d, align 1               ; 3 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = icmp eq i8 %i.i, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.d, i64 1
  %.val.i.i = load i8, ptr %i.l, align 1          ; 2 uses
  %i.m = add i8 %.val.i.i, -1
  %or.cond.i.i.i.i = icmp ult i8 %i.m, 3
  %i.n = icmp eq i8 %.val.i.i, 18
  %i.o = select i1 %i.n, i32 16, i32 0
  %i.p = select i1 %or.cond.i.i.i.i, i32 8, i32 %i.o
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.j, 1
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i32 %i.j, 1
  %i.s = add nsw i32 %i.r, -1
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.d, align 4
  %i.u = lshr i32 %i.t, 2
  %i.v = add nsw i32 %i.u, -4
  br label %VARSIZE_ANY_EXHDR.exit.i

VARSIZE_ANY_EXHDR.exit.i:                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.p, %bb.b ], [ %i.s, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = load i8, ptr %i.h, align 1               ; 3 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = icmp eq i8 %i.w, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i
  %i.z = getelementptr i8, ptr %i.h, i64 1
  %.val.i19.i = load i8, ptr %i.z, align 1        ; 2 uses
  %i.aa = add i8 %.val.i19.i, -1
  %or.cond.i.i.i20.i = icmp ult i8 %i.aa, 3
  %i.ab = icmp eq i8 %.val.i19.i, 18
  %i.ac = select i1 %i.ab, i32 16, i32 0
  %i.ad = select i1 %or.cond.i.i.i20.i, i32 8, i32 %i.ac
  br label %VARSIZE_ANY_EXHDR.exit21.i

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i
  %i.ae = and i32 %i.x, 1
  %.not.i17.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = lshr i32 %i.x, 1
  %i.ag = add nsw i32 %i.af, -1
  br label %VARSIZE_ANY_EXHDR.exit21.i

bb.i:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.h, align 4
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = add nsw i32 %i.ai, -4
  br label %VARSIZE_ANY_EXHDR.exit21.i

VARSIZE_ANY_EXHDR.exit21.i:                       ; preds = %bb.i, %bb.h, %bb.f
  %.0.i18.i = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.h ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ak = and i8 %i.i, 1
  %.not.i22.i = icmp eq i8 %i.ak, 0
  %.v.i.i = select i1 %.not.i22.i, i64 4, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i.i
  %i.am = and i8 %i.w, 1
  %.not.i23.i = icmp eq i8 %i.am, 0
  %.v.i24.i = select i1 %.not.i23.i, i64 4, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i24.i
  %i.ao = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0.i18.i)
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call i32 @memcmp(ptr noundef nonnull readonly %i.al, ptr noundef nonnull readonly %i.an, i64 noundef %i.ap) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.j, label %internal_text_pattern_compare.exit

bb.j:                                             ; preds = %VARSIZE_ANY_EXHDR.exit21.i
  %i.ar = icmp slt i32 %.0.i.i, %.0.i18.i
  br i1 %i.ar, label %internal_text_pattern_compare.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i32 %.0.i.i, %.0.i18.i
  %..i = zext i1 %i.as to i32
  br label %internal_text_pattern_compare.exit

internal_text_pattern_compare.exit:               ; preds = %VARSIZE_ANY_EXHDR.exit21.i, %bb.j, %bb.k
  %.0.i = phi i32 [ -1, %bb.j ], [ %i.aq, %VARSIZE_ANY_EXHDR.exit21.i ], [ %..i, %bb.k ]
  %i.at = load i64, ptr %i.a, align 8
  %i.au = inttoptr i64 %i.at to ptr
  %.not = icmp eq ptr %i.d, %i.au
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %internal_text_pattern_compare.exit
  tail call void @pfree(ptr noundef nonnull %i.d) #18
  br label %bb.m

bb.m:                                             ; preds = %internal_text_pattern_compare.exit, %bb.l
  %i.av = load i64, ptr %i.e, align 8
  %i.aw = inttoptr i64 %i.av to ptr
  %.not11 = icmp eq ptr %i.h, %i.aw
  br i1 %.not11, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @pfree(ptr noundef nonnull %i.h) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ax = icmp slt i32 %.0.i, 1
  %i.ay = zext i1 %i.ax to i64
  ret i64 %i.ay
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @text_pattern_ge(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #18 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #18 ; 6 uses
  %i.i = load i8, ptr %i.d, align 1               ; 3 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = icmp eq i8 %i.i, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.d, i64 1
  %.val.i.i = load i8, ptr %i.l, align 1          ; 2 uses
  %i.m = add i8 %.val.i.i, -1
  %or.cond.i.i.i.i = icmp ult i8 %i.m, 3
  %i.n = icmp eq i8 %.val.i.i, 18
  %i.o = select i1 %i.n, i32 16, i32 0
  %i.p = select i1 %or.cond.i.i.i.i, i32 8, i32 %i.o
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.j, 1
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i32 %i.j, 1
  %i.s = add nsw i32 %i.r, -1
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.d, align 4
  %i.u = lshr i32 %i.t, 2
  %i.v = add nsw i32 %i.u, -4
  br label %VARSIZE_ANY_EXHDR.exit.i

VARSIZE_ANY_EXHDR.exit.i:                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.p, %bb.b ], [ %i.s, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = load i8, ptr %i.h, align 1               ; 3 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = icmp eq i8 %i.w, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i
  %i.z = getelementptr i8, ptr %i.h, i64 1
  %.val.i19.i = load i8, ptr %i.z, align 1        ; 2 uses
  %i.aa = add i8 %.val.i19.i, -1
  %or.cond.i.i.i20.i = icmp ult i8 %i.aa, 3
  %i.ab = icmp eq i8 %.val.i19.i, 18
  %i.ac = select i1 %i.ab, i32 16, i32 0
  %i.ad = select i1 %or.cond.i.i.i20.i, i32 8, i32 %i.ac
  br label %VARSIZE_ANY_EXHDR.exit21.i

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i
  %i.ae = and i32 %i.x, 1
  %.not.i17.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = lshr i32 %i.x, 1
  %i.ag = add nsw i32 %i.af, -1
  br label %VARSIZE_ANY_EXHDR.exit21.i

bb.i:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.h, align 4
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = add nsw i32 %i.ai, -4
  br label %VARSIZE_ANY_EXHDR.exit21.i

VARSIZE_ANY_EXHDR.exit21.i:                       ; preds = %bb.i, %bb.h, %bb.f
  %.0.i18.i = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.h ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ak = and i8 %i.i, 1
  %.not.i22.i = icmp eq i8 %i.ak, 0
  %.v.i.i = select i1 %.not.i22.i, i64 4, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i.i
  %i.am = and i8 %i.w, 1
  %.not.i23.i = icmp eq i8 %i.am, 0
  %.v.i24.i = select i1 %.not.i23.i, i64 4, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i24.i
  %i.ao = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0.i18.i)
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call i32 @memcmp(ptr noundef nonnull readonly %i.al, ptr noundef nonnull readonly %i.an, i64 noundef %i.ap) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.j, label %internal_text_pattern_compare.exit

bb.j:                                             ; preds = %VARSIZE_ANY_EXHDR.exit21.i
  %i.ar = icmp slt i32 %.0.i.i, %.0.i18.i
  br i1 %i.ar, label %internal_text_pattern_compare.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i32 %.0.i.i, %.0.i18.i
  %..i = zext i1 %i.as to i32
  br label %internal_text_pattern_compare.exit

internal_text_pattern_compare.exit:               ; preds = %VARSIZE_ANY_EXHDR.exit21.i, %bb.j, %bb.k
  %.0.i = phi i32 [ -2147483648, %bb.j ], [ %i.aq, %VARSIZE_ANY_EXHDR.exit21.i ], [ %..i, %bb.k ]
  %i.at = load i64, ptr %i.a, align 8
  %i.au = inttoptr i64 %i.at to ptr
  %.not = icmp eq ptr %i.d, %i.au
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %internal_text_pattern_compare.exit
  tail call void @pfree(ptr noundef nonnull %i.d) #18
  br label %bb.m

bb.m:                                             ; preds = %internal_text_pattern_compare.exit, %bb.l
  %i.av = load i64, ptr %i.e, align 8
  %i.aw = inttoptr i64 %i.av to ptr
  %.not11 = icmp eq ptr %i.h, %i.aw
  br i1 %.not11, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @pfree(ptr noundef nonnull %i.h) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ax = icmp sgt i32 %.0.i, -1
  %i.ay = zext i1 %i.ax to i64
  ret i64 %i.ay
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @text_pattern_gt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #18 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #18 ; 6 uses
  %i.i = load i8, ptr %i.d, align 1               ; 3 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = icmp eq i8 %i.i, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.d, i64 1
  %.val.i.i = load i8, ptr %i.l, align 1          ; 2 uses
  %i.m = add i8 %.val.i.i, -1
  %or.cond.i.i.i.i = icmp ult i8 %i.m, 3
  %i.n = icmp eq i8 %.val.i.i, 18
  %i.o = select i1 %i.n, i32 16, i32 0
  %i.p = select i1 %or.cond.i.i.i.i, i32 8, i32 %i.o
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.j, 1
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i32 %i.j, 1
  %i.s = add nsw i32 %i.r, -1
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.d, align 4
  %i.u = lshr i32 %i.t, 2
  %i.v = add nsw i32 %i.u, -4
  br label %VARSIZE_ANY_EXHDR.exit.i

VARSIZE_ANY_EXHDR.exit.i:                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.p, %bb.b ], [ %i.s, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = load i8, ptr %i.h, align 1               ; 3 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = icmp eq i8 %i.w, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i
  %i.z = getelementptr i8, ptr %i.h, i64 1
  %.val.i19.i = load i8, ptr %i.z, align 1        ; 2 uses
  %i.aa = add i8 %.val.i19.i, -1
  %or.cond.i.i.i20.i = icmp ult i8 %i.aa, 3
  %i.ab = icmp eq i8 %.val.i19.i, 18
  %i.ac = select i1 %i.ab, i32 16, i32 0
  %i.ad = select i1 %or.cond.i.i.i20.i, i32 8, i32 %i.ac
  br label %VARSIZE_ANY_EXHDR.exit21.i

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i
  %i.ae = and i32 %i.x, 1
  %.not.i17.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = lshr i32 %i.x, 1
  %i.ag = add nsw i32 %i.af, -1
  br label %VARSIZE_ANY_EXHDR.exit21.i

bb.i:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.h, align 4
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = add nsw i32 %i.ai, -4
  br label %VARSIZE_ANY_EXHDR.exit21.i

VARSIZE_ANY_EXHDR.exit21.i:                       ; preds = %bb.i, %bb.h, %bb.f
  %.0.i18.i = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.h ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ak = and i8 %i.i, 1
  %.not.i22.i = icmp eq i8 %i.ak, 0
  %.v.i.i = select i1 %.not.i22.i, i64 4, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i.i
  %i.am = and i8 %i.w, 1
  %.not.i23.i = icmp eq i8 %i.am, 0
  %.v.i24.i = select i1 %.not.i23.i, i64 4, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i24.i
  %i.ao = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0.i18.i)
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call i32 @memcmp(ptr noundef nonnull readonly %i.al, ptr noundef nonnull readonly %i.an, i64 noundef %i.ap) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.j, label %internal_text_pattern_compare.exit

bb.j:                                             ; preds = %VARSIZE_ANY_EXHDR.exit21.i
  %i.ar = icmp slt i32 %.0.i.i, %.0.i18.i
  br i1 %i.ar, label %internal_text_pattern_compare.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i32 %.0.i.i, %.0.i18.i
  %..i = zext i1 %i.as to i32
  br label %internal_text_pattern_compare.exit

internal_text_pattern_compare.exit:               ; preds = %VARSIZE_ANY_EXHDR.exit21.i, %bb.j, %bb.k
  %.0.i = phi i32 [ -1, %bb.j ], [ %i.aq, %VARSIZE_ANY_EXHDR.exit21.i ], [ %..i, %bb.k ]
  %i.at = load i64, ptr %i.a, align 8
  %i.au = inttoptr i64 %i.at to ptr
  %.not = icmp eq ptr %i.d, %i.au
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %internal_text_pattern_compare.exit
  tail call void @pfree(ptr noundef nonnull %i.d) #18
  br label %bb.m

bb.m:                                             ; preds = %internal_text_pattern_compare.exit, %bb.l
  %i.av = load i64, ptr %i.e, align 8
  %i.aw = inttoptr i64 %i.av to ptr
  %.not11 = icmp eq ptr %i.h, %i.aw
  br i1 %.not11, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @pfree(ptr noundef nonnull %i.h) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ax = icmp sgt i32 %.0.i, 0
  %i.ay = zext i1 %i.ax to i64
  ret i64 %i.ay
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @bttext_pattern_cmp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #18 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #18 ; 6 uses
  %i.i = load i8, ptr %i.d, align 1               ; 3 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = icmp eq i8 %i.i, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.d, i64 1
  %.val.i.i = load i8, ptr %i.l, align 1          ; 2 uses
  %i.m = add i8 %.val.i.i, -1
  %or.cond.i.i.i.i = icmp ult i8 %i.m, 3
  %i.n = icmp eq i8 %.val.i.i, 18
  %i.o = select i1 %i.n, i32 16, i32 0
  %i.p = select i1 %or.cond.i.i.i.i, i32 8, i32 %i.o
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.j, 1
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i32 %i.j, 1
  %i.s = add nsw i32 %i.r, -1
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.d, align 4
  %i.u = lshr i32 %i.t, 2
  %i.v = add nsw i32 %i.u, -4
  br label %VARSIZE_ANY_EXHDR.exit.i

VARSIZE_ANY_EXHDR.exit.i:                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.p, %bb.b ], [ %i.s, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = load i8, ptr %i.h, align 1               ; 3 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = icmp eq i8 %i.w, 1
  br i1 %i.y, label %bb.f, label %bb.g
end_hunk_0
