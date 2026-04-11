begin_hunk_0_@uriEscapeExA:bb.a
  br i1 %.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.j
  %.06177.us.us = phi ptr [ %7, %bb.j ], [ %2, %.lr.ph.split.us ] ; 15 uses
  %.06376.us.us = phi ptr [ %i.p, %bb.j ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %i.d = load i8, ptr %.06376.us.us, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.d, label %bb.i [
end_hunk_0
begin_hunk_1_@uriEscapeExA:bb.a
  store i8 48, ptr %i.e, align 1, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 68, ptr %i.f, align 1, !tbaa !7
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
end_hunk_1
begin_hunk_2_@uriEscapeExA:bb.a
  store i8 48, ptr %i.g, align 1, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 65, ptr %i.h, align 1, !tbaa !7
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us
  store i8 %i.d, ptr %.06177.us.us, align 1, !tbaa !7
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  br i1 %.not71, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %5 = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1
  store i8 50, ptr %5, align 1, !tbaa !7
  %6 = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 48, ptr %6, align 1, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i8 [ 37, %bb.g ], [ 43, %bb.f ]
  %.pn72.us.us = phi i64 [ 3, %bb.g ], [ 1, %bb.f ]
  store i8 %.sink, ptr %.06177.us.us, align 1, !tbaa !7
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.split.us
end_hunk_2
begin_hunk_3_@uriEscapeExA:bb.a
  %i.n = tail call signext i8 @uriHexToLetterA(i32 noundef %i.m) #2
  %i.o = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 %i.n, ptr %i.o, align 1, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %bb.c
  %.sink154 = phi i64 [ 3, %bb.i ], [ %.pn72.us.us, %bb.h ], [ 1, %bb.e ], [ 3, %bb.d ], [ 3, %bb.c ]
  %7 = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 %.sink154
  %i.p = getelementptr inbounds nuw i8, ptr %.06376.us.us, i64 1
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.r
  %.06177.us = phi ptr [ %10, %bb.r ], [ %2, %.lr.ph.split.us ] ; 15 uses
  %.06376.us = phi ptr [ %i.ac, %bb.r ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %i.q = load i8, ptr %.06376.us, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.q, label %bb.q [
end_hunk_3
begin_hunk_4_@uriEscapeExA:bb.a
  store i8 48, ptr %i.r, align 1, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.06177.us, i64 2
  store i8 68, ptr %i.s, align 1, !tbaa !7
  br label %bb.r

bb.l:                                             ; preds = %.lr.ph.split.us.split
end_hunk_4
begin_hunk_5_@uriEscapeExA:bb.a
  store i8 48, ptr %i.t, align 1, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.06177.us, i64 2
  store i8 65, ptr %i.u, align 1, !tbaa !7
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split
  store i8 %i.q, ptr %.06177.us, align 1, !tbaa !7
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph.split.us.split
  br i1 %.not71, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %8 = getelementptr inbounds nuw i8, ptr %.06177.us, i64 1
  store i8 50, ptr %8, align 1, !tbaa !7
  %9 = getelementptr inbounds nuw i8, ptr %.06177.us, i64 2
  store i8 48, ptr %9, align 1, !tbaa !7
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sink136 = phi i8 [ 37, %bb.o ], [ 43, %bb.n ]
  %.pn72.us = phi i64 [ 3, %bb.o ], [ 1, %bb.n ]
  store i8 %.sink136, ptr %.06177.us, align 1, !tbaa !7
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.us.split
end_hunk_5
begin_hunk_6_@uriEscapeExA:bb.a
  %i.aa = tail call signext i8 @uriHexToLetterA(i32 noundef %i.z) #2
  %i.ab = getelementptr inbounds nuw i8, ptr %.06177.us, i64 2
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m, %bb.l, %bb.k
  %.sink155 = phi i64 [ 3, %bb.q ], [ %.pn72.us, %bb.p ], [ 1, %bb.m ], [ 3, %bb.l ], [ 3, %bb.k ]
  %10 = getelementptr inbounds nuw i8, ptr %.06177.us, i64 %.sink155 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.06376.us, i64 1 ; 2 uses
  %.not67.us = icmp ult ptr %i.ac, %1
  br i1 %.not67.us, label %.lr.ph.split.us.split, label %.sink.split
end_hunk_6
begin_hunk_7_@uriEscapeExA:bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.4.us95.us = phi ptr [ %i.av, %bb.x ], [ %i.an, %bb.w ], [ %i.ak, %bb.v ], [ %i.ag, %bb.s ], [ %.06177.us92.us, %bb.t ], [ %i.aj, %bb.u ]
  %.1.us96.us = phi i32 [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.06376.us93.us, i64 1
  br label %.lr.ph.split.split.split.us.split.us

end_hunk_7
begin_hunk_8_@uriEscapeExA:bb.a
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.4.us95 = phi ptr [ %i.bp, %bb.ae ], [ %i.bh, %bb.ad ], [ %i.be, %bb.ac ], [ %i.ba, %bb.z ], [ %.06177.us92, %bb.aa ], [ %i.bd, %bb.ab ] ; 2 uses
  %.1.us96 = phi i32 [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 1, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ab ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.06376.us93, i64 1 ; 2 uses
  %.not67.us97 = icmp ult ptr %i.bq, %1
  br i1 %.not67.us97, label %.lr.ph.split.split.split.us.split, label %.sink.split
end_hunk_8
begin_hunk_9_@uriEscapeExA:bb.a
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.4.us107 = phi ptr [ %i.ch, %bb.al ], [ %i.bz, %bb.ak ], [ %i.by, %bb.aj ], [ %i.bu, %bb.ag ], [ %.06177.us104, %bb.ah ], [ %i.bx, %bb.ai ]
  %.1.us108 = phi i32 [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 1, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.06376.us105, i64 1
  br label %.lr.ph.split.split.split.split.us

end_hunk_9
begin_hunk_10_@uriEscapeExA:bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %.06177, i64 3
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ap, %bb.as, %bb.ar, %bb.ao, %bb.an
  %.4 = phi ptr [ %i.cz, %bb.as ], [ %i.ck, %bb.an ], [ %i.cl, %bb.ao ], [ %i.cr, %bb.ar ], [ %.06177, %bb.ap ], [ %i.co, %bb.aq ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.as ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 1, %bb.ar ], [ 0, %bb.ap ], [ 0, %bb.aq ]
  %i.da = getelementptr inbounds nuw i8, ptr %.06376, i64 1 ; 2 uses
  %.not67 = icmp ult ptr %i.da, %1
  br i1 %.not67, label %.lr.ph.split.split.split.split, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.split.split.split.split, %bb.at, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.us.split, %bb.af, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.us.split, %bb.r, %.lr.ph.split.us.split.us, %.preheader, %bb.b
  %.us-phi.sink = phi ptr [ %10, %bb.r ], [ %2, %bb.b ], [ %2, %.preheader ], [ %.06177.us92.us, %.lr.ph.split.split.split.us.split.us ], [ %.06177.us.us, %.lr.ph.split.us.split.us ], [ %.06177.us104, %.lr.ph.split.split.split.split.us ], [ %.4.us95, %bb.af ], [ %.06177.us, %.lr.ph.split.us.split ], [ %.06177.us92, %.lr.ph.split.split.split.us.split ], [ %.06177, %.lr.ph.split.split.split.split ], [ %.4, %bb.at ] ; 2 uses
  store i8 0, ptr %.us-phi.sink, align 1, !tbaa !7
  br label %bb.au

end_hunk_10
begin_hunk_11_@uriUnescapeInPlaceExA:bb.a
  br label %bb.v

bb.p:                                             ; preds = %bb.g
  switch i32 %2, label %bb.t [
    i32 0, label %bb.q
    i32 1, label %bb.r
end_hunk_11
begin_hunk_12_@uriUnescapeInPlaceExA:bb.a

bb.q:                                             ; preds = %bb.p
  store i8 10, ptr %.071, align 1, !tbaa !7
  br label %4

bb.r:                                             ; preds = %bb.p
  store i8 13, ptr %.071, align 1, !tbaa !7
  %3 = getelementptr inbounds nuw i8, ptr %.071, i64 1
  store i8 10, ptr %3, align 1, !tbaa !7
  br label %4

bb.s:                                             ; preds = %bb.p
  store i8 13, ptr %.071, align 1, !tbaa !7
  br label %4

bb.t:                                             ; preds = %bb.p
  store i8 13, ptr %.071, align 1, !tbaa !7
  br label %4

4:                                                ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.pn = phi i64 [ 1, %bb.t ], [ 1, %bb.q ], [ 2, %bb.r ], [ 1, %bb.s ]
  %.2 = getelementptr inbounds nuw i8, ptr %.071, i64 %.pn
  br label %bb.v

bb.u:                                             ; preds = %bb.g
end_hunk_12
begin_hunk_13_@uriUnescapeInPlaceExA:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.071, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.j, %bb.i, %bb.l, %bb.k, %bb.n, %bb.m, %bb.u, %4
  %.174 = phi i32 [ 0, %bb.u ], [ 1, %4 ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.o ]
  %.3 = phi ptr [ %i.u, %bb.u ], [ %.2, %4 ], [ %.071, %bb.m ], [ %i.r, %bb.n ], [ %.071, %bb.k ], [ %i.q, %bb.l ], [ %.071, %bb.i ], [ %i.o, %bb.j ], [ %i.s, %bb.o ]
  %i.v = getelementptr inbounds nuw i8, ptr %.070, i64 3
  br label %.backedge

end_hunk_13
begin_hunk_14_@uriEscapeExW:bb.a
  br i1 %.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.j
  %.06177.us.us = phi ptr [ %7, %bb.j ], [ %2, %.lr.ph.split.us ] ; 15 uses
  %.06376.us.us = phi ptr [ %i.p, %bb.j ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %i.d = load i32, ptr %.06376.us.us, align 4, !tbaa !3 ; 4 uses
  switch i32 %i.d, label %bb.i [
end_hunk_14
begin_hunk_15_@uriEscapeExW:bb.a
  store i32 48, ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 8
  store i32 68, ptr %i.f, align 4, !tbaa !3
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
end_hunk_15
begin_hunk_16_@uriEscapeExW:bb.a
  store i32 48, ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 8
  store i32 65, ptr %i.h, align 4, !tbaa !3
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us
  store i32 %i.d, ptr %.06177.us.us, align 4, !tbaa !3
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  br i1 %.not71, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %5 = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 4
  store i32 50, ptr %5, align 4, !tbaa !3
  %6 = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 8
  store i32 48, ptr %6, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ 37, %bb.g ], [ 43, %bb.f ]
  %.pn72.us.us = phi i64 [ 12, %bb.g ], [ 4, %bb.f ]
  store i32 %.sink, ptr %.06177.us.us, align 4, !tbaa !3
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.split.us
end_hunk_16
begin_hunk_17_@uriEscapeExW:bb.a
  %i.n = tail call i32 @uriHexToLetterW(i32 noundef %i.m) #2
  %i.o = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 8
  store i32 %i.n, ptr %i.o, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %bb.c
  %.sink154 = phi i64 [ 12, %bb.i ], [ %.pn72.us.us, %bb.h ], [ 4, %bb.e ], [ 12, %bb.d ], [ 12, %bb.c ]
  %7 = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 %.sink154
  %i.p = getelementptr inbounds nuw i8, ptr %.06376.us.us, i64 4
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.r
  %.06177.us = phi ptr [ %10, %bb.r ], [ %2, %.lr.ph.split.us ] ; 15 uses
  %.06376.us = phi ptr [ %i.ac, %bb.r ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %i.q = load i32, ptr %.06376.us, align 4, !tbaa !3 ; 4 uses
  switch i32 %i.q, label %bb.q [
end_hunk_17
begin_hunk_18_@uriEscapeExW:bb.a
  store i32 48, ptr %i.r, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %.06177.us, i64 8
  store i32 68, ptr %i.s, align 4, !tbaa !3
  br label %bb.r

bb.l:                                             ; preds = %.lr.ph.split.us.split
end_hunk_18
begin_hunk_19_@uriEscapeExW:bb.a
  store i32 48, ptr %i.t, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %.06177.us, i64 8
  store i32 65, ptr %i.u, align 4, !tbaa !3
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split
  store i32 %i.q, ptr %.06177.us, align 4, !tbaa !3
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph.split.us.split
  br i1 %.not71, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %8 = getelementptr inbounds nuw i8, ptr %.06177.us, i64 4
  store i32 50, ptr %8, align 4, !tbaa !3
  %9 = getelementptr inbounds nuw i8, ptr %.06177.us, i64 8
  store i32 48, ptr %9, align 4, !tbaa !3
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sink136 = phi i32 [ 37, %bb.o ], [ 43, %bb.n ]
  %.pn72.us = phi i64 [ 12, %bb.o ], [ 4, %bb.n ]
  store i32 %.sink136, ptr %.06177.us, align 4, !tbaa !3
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.us.split
end_hunk_19
begin_hunk_20_@uriEscapeExW:bb.a
  %i.aa = tail call i32 @uriHexToLetterW(i32 noundef %i.z) #2
  %i.ab = getelementptr inbounds nuw i8, ptr %.06177.us, i64 8
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m, %bb.l, %bb.k
  %.sink155 = phi i64 [ 12, %bb.q ], [ %.pn72.us, %bb.p ], [ 4, %bb.m ], [ 12, %bb.l ], [ 12, %bb.k ]
  %10 = getelementptr inbounds nuw i8, ptr %.06177.us, i64 %.sink155 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.06376.us, i64 4 ; 2 uses
  %.not67.us = icmp ult ptr %i.ac, %1
  br i1 %.not67.us, label %.lr.ph.split.us.split, label %.sink.split
end_hunk_20
begin_hunk_21_@uriEscapeExW:bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.4.us95.us = phi ptr [ %i.av, %bb.x ], [ %i.an, %bb.w ], [ %i.ak, %bb.v ], [ %i.ag, %bb.s ], [ %.06177.us92.us, %bb.t ], [ %i.aj, %bb.u ]
  %.1.us96.us = phi i32 [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.06376.us93.us, i64 4
  br label %.lr.ph.split.split.split.us.split.us

end_hunk_21
begin_hunk_22_@uriEscapeExW:bb.a
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.4.us95 = phi ptr [ %i.bp, %bb.ae ], [ %i.bh, %bb.ad ], [ %i.be, %bb.ac ], [ %i.ba, %bb.z ], [ %.06177.us92, %bb.aa ], [ %i.bd, %bb.ab ] ; 2 uses
  %.1.us96 = phi i32 [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 1, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ab ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.06376.us93, i64 4 ; 2 uses
  %.not67.us97 = icmp ult ptr %i.bq, %1
  br i1 %.not67.us97, label %.lr.ph.split.split.split.us.split, label %.sink.split
end_hunk_22
begin_hunk_23_@uriEscapeExW:bb.a
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.4.us107 = phi ptr [ %i.ch, %bb.al ], [ %i.bz, %bb.ak ], [ %i.by, %bb.aj ], [ %i.bu, %bb.ag ], [ %.06177.us104, %bb.ah ], [ %i.bx, %bb.ai ]
  %.1.us108 = phi i32 [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 1, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.06376.us105, i64 4
  br label %.lr.ph.split.split.split.split.us

end_hunk_23
begin_hunk_24_@uriEscapeExW:bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %.06177, i64 12
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ap, %bb.as, %bb.ar, %bb.ao, %bb.an
  %.4 = phi ptr [ %i.cz, %bb.as ], [ %i.ck, %bb.an ], [ %i.cl, %bb.ao ], [ %i.cr, %bb.ar ], [ %.06177, %bb.ap ], [ %i.co, %bb.aq ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.as ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 1, %bb.ar ], [ 0, %bb.ap ], [ 0, %bb.aq ]
  %i.da = getelementptr inbounds nuw i8, ptr %.06376, i64 4 ; 2 uses
  %.not67 = icmp ult ptr %i.da, %1
  br i1 %.not67, label %.lr.ph.split.split.split.split, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.split.split.split.split, %bb.at, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.us.split, %bb.af, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.us.split, %bb.r, %.lr.ph.split.us.split.us, %.preheader, %bb.b
  %.us-phi.sink = phi ptr [ %10, %bb.r ], [ %2, %bb.b ], [ %2, %.preheader ], [ %.06177.us92.us, %.lr.ph.split.split.split.us.split.us ], [ %.06177.us.us, %.lr.ph.split.us.split.us ], [ %.06177.us104, %.lr.ph.split.split.split.split.us ], [ %.4.us95, %bb.af ], [ %.06177.us, %.lr.ph.split.us.split ], [ %.06177.us92, %.lr.ph.split.split.split.us.split ], [ %.06177, %.lr.ph.split.split.split.split ], [ %.4, %bb.at ] ; 2 uses
  store i32 0, ptr %.us-phi.sink, align 4, !tbaa !3
  br label %bb.au

end_hunk_24
begin_hunk_25_@uriUnescapeInPlaceExW:bb.a
  br label %bb.v

bb.p:                                             ; preds = %bb.g
  switch i32 %2, label %bb.t [
    i32 0, label %bb.q
    i32 1, label %bb.r
end_hunk_25
begin_hunk_26_@uriUnescapeInPlaceExW:bb.a

bb.q:                                             ; preds = %bb.p
  store i32 10, ptr %.071, align 4, !tbaa !3
  br label %4

bb.r:                                             ; preds = %bb.p
  store i32 13, ptr %.071, align 4, !tbaa !3
  %3 = getelementptr inbounds nuw i8, ptr %.071, i64 4
  store i32 10, ptr %3, align 4, !tbaa !3
  br label %4

bb.s:                                             ; preds = %bb.p
  store i32 13, ptr %.071, align 4, !tbaa !3
  br label %4

bb.t:                                             ; preds = %bb.p
  store i32 13, ptr %.071, align 4, !tbaa !3
  br label %4

4:                                                ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.pn = phi i64 [ 4, %bb.t ], [ 4, %bb.q ], [ 8, %bb.r ], [ 4, %bb.s ]
  %.2 = getelementptr inbounds nuw i8, ptr %.071, i64 %.pn
  br label %bb.v

bb.u:                                             ; preds = %bb.g
end_hunk_26
begin_hunk_27_@uriUnescapeInPlaceExW:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.071, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.j, %bb.i, %bb.l, %bb.k, %bb.n, %bb.m, %bb.u, %4
  %.174 = phi i32 [ 0, %bb.u ], [ 1, %4 ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.o ]
  %.3 = phi ptr [ %i.t, %bb.u ], [ %.2, %4 ], [ %.071, %bb.m ], [ %i.r, %bb.n ], [ %.071, %bb.k ], [ %i.q, %bb.l ], [ %.071, %bb.i ], [ %i.o, %bb.j ], [ %i.s, %bb.o ]
  %i.u = getelementptr inbounds nuw i8, ptr %.070, i64 12
  br label %.backedge

end_hunk_27
