begin_hunk_0_@uriEscapeExA:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1
  store i8 48, ptr %i.e, align 1, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 68, ptr %i.f, align 1, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 3
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
  store i8 37, ptr %.06177.us.us, align 1, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1
  store i8 48, ptr %i.h, align 1, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 65, ptr %i.i, align 1, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 3
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us
  store i8 %i.d, ptr %.06177.us.us, align 1, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1 ; 2 uses
  br i1 %.not71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 43, ptr %.06177.us.us, align 1, !tbaa !7
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i8 37, ptr %.06177.us.us, align 1, !tbaa !7
  store i8 50, ptr %i.l, align 1, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 48, ptr %i.m, align 1, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 3
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.split.us
  store i8 37, ptr %.06177.us.us, align 1, !tbaa !7
  %i.o = zext i8 %i.d to i32                      ; 2 uses
  %i.p = lshr i32 %i.o, 4
  %i.q = tail call signext i8 @uriHexToLetterA(i32 noundef %i.p) #2
  %i.r = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !7
  %i.s = and i32 %i.o, 15
  %i.t = tail call signext i8 @uriHexToLetterA(i32 noundef %i.s) #2
  %i.u = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 %i.t, ptr %i.u, align 1, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  %.4.us.us = phi ptr [ %i.v, %bb.i ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.n, %bb.h ], [ %i.l, %bb.g ], [ %i.g, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.06376.us.us, i64 1
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.r
  %.06177.us = phi ptr [ %.4.us, %bb.r ], [ %2, %.lr.ph.split.us ] ; 20 uses
  %.06376.us = phi ptr [ %i.aq, %bb.r ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %i.x = load i8, ptr %.06376.us, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.x, label %bb.q [
    i8 0, label %.sink.split
    i8 32, label %bb.n
    i8 97, label %bb.m
    i8 65, label %bb.m
    i8 98, label %bb.m
    i8 66, label %bb.m
    i8 99, label %bb.m
    i8 67, label %bb.m
    i8 100, label %bb.m
    i8 68, label %bb.m
    i8 101, label %bb.m
    i8 69, label %bb.m
    i8 102, label %bb.m
    i8 70, label %bb.m
    i8 103, label %bb.m
    i8 71, label %bb.m
    i8 104, label %bb.m
    i8 72, label %bb.m
    i8 105, label %bb.m
    i8 73, label %bb.m
    i8 106, label %bb.m
    i8 74, label %bb.m
    i8 107, label %bb.m
    i8 75, label %bb.m
    i8 108, label %bb.m
    i8 76, label %bb.m
    i8 109, label %bb.m
    i8 77, label %bb.m
    i8 110, label %bb.m
    i8 78, label %bb.m
    i8 111, label %bb.m
    i8 79, label %bb.m
    i8 112, label %bb.m
    i8 80, label %bb.m
    i8 113, label %bb.m
    i8 81, label %bb.m
    i8 114, label %bb.m
    i8 82, label %bb.m
    i8 115, label %bb.m
    i8 83, label %bb.m
    i8 116, label %bb.m
    i8 84, label %bb.m
    i8 117, label %bb.m
    i8 85, label %bb.m
    i8 118, label %bb.m
    i8 86, label %bb.m
    i8 119, label %bb.m
    i8 87, label %bb.m
    i8 120, label %bb.m
    i8 88, label %bb.m
    i8 121, label %bb.m
    i8 89, label %bb.m
    i8 122, label %bb.m
    i8 90, label %bb.m
    i8 48, label %bb.m
    i8 49, label %bb.m
    i8 50, label %bb.m
    i8 51, label %bb.m
    i8 52, label %bb.m
    i8 53, label %bb.m
    i8 54, label %bb.m
    i8 55, label %bb.m
    i8 56, label %bb.m
    i8 57, label %bb.m
    i8 45, label %bb.m
    i8 46, label %bb.m
    i8 95, label %bb.m
    i8 126, label %bb.m
    i8 10, label %bb.l
    i8 13, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.split.us.split
  store i8 37, ptr %.06177.us, align 1, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.06177.us, i64 1
  store i8 48, ptr %i.y, align 1, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.06177.us, i64 2
  store i8 68, ptr %i.z, align 1, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.06177.us, i64 3
  br label %bb.r

bb.l:                                             ; preds = %.lr.ph.split.us.split
  store i8 37, ptr %.06177.us, align 1, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.06177.us, i64 1
  store i8 48, ptr %i.ab, align 1, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.06177.us, i64 2
  store i8 65, ptr %i.ac, align 1, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.06177.us, i64 3
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split
  store i8 %i.x, ptr %.06177.us, align 1, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.06177.us, i64 1
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph.split.us.split
  %i.af = getelementptr inbounds nuw i8, ptr %.06177.us, i64 1 ; 2 uses
  br i1 %.not71, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 43, ptr %.06177.us, align 1, !tbaa !7
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  store i8 37, ptr %.06177.us, align 1, !tbaa !7
  store i8 50, ptr %i.af, align 1, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.06177.us, i64 2
  store i8 48, ptr %i.ag, align 1, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.06177.us, i64 3
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.us.split
  store i8 37, ptr %.06177.us, align 1, !tbaa !7
  %i.ai = zext i8 %i.x to i32                     ; 2 uses
  %i.aj = lshr i32 %i.ai, 4
  %i.ak = tail call signext i8 @uriHexToLetterA(i32 noundef %i.aj) #2
  %i.al = getelementptr inbounds nuw i8, ptr %.06177.us, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !7
  %i.am = and i32 %i.ai, 15
  %i.an = tail call signext i8 @uriHexToLetterA(i32 noundef %i.am) #2
  %i.ao = getelementptr inbounds nuw i8, ptr %.06177.us, i64 2
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.06177.us, i64 3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k
  %.4.us = phi ptr [ %i.ap, %bb.q ], [ %i.ad, %bb.l ], [ %i.ae, %bb.m ], [ %i.ah, %bb.p ], [ %i.af, %bb.o ], [ %i.aa, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.06376.us, i64 1 ; 2 uses
  %.not67.us = icmp ult ptr %i.aq, %1
  br i1 %.not67.us, label %.lr.ph.split.us.split, label %.sink.split

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %.not71, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  br i1 %.not, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us, %bb.y
  %.06078.us91.us = phi i32 [ %.1.us96.us, %bb.y ], [ 0, %.lr.ph.split.split.split.us ]
  %.06177.us92.us = phi ptr [ %.4.us95.us, %bb.y ], [ %2, %.lr.ph.split.split.split.us ] ; 20 uses
  %.06376.us93.us = phi ptr [ %i.bg, %bb.y ], [ %0, %.lr.ph.split.split.split.us ] ; 2 uses
  %i.ar = load i8, ptr %.06376.us93.us, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.ar, label %bb.x [
    i8 0, label %.sink.split
    i8 32, label %bb.w
    i8 97, label %bb.v
    i8 65, label %bb.v
    i8 98, label %bb.v
    i8 66, label %bb.v
    i8 99, label %bb.v
    i8 67, label %bb.v
    i8 100, label %bb.v
    i8 68, label %bb.v
    i8 101, label %bb.v
    i8 69, label %bb.v
    i8 102, label %bb.v
    i8 70, label %bb.v
    i8 103, label %bb.v
    i8 71, label %bb.v
    i8 104, label %bb.v
    i8 72, label %bb.v
    i8 105, label %bb.v
    i8 73, label %bb.v
    i8 106, label %bb.v
    i8 74, label %bb.v
    i8 107, label %bb.v
    i8 75, label %bb.v
    i8 108, label %bb.v
    i8 76, label %bb.v
    i8 109, label %bb.v
    i8 77, label %bb.v
    i8 110, label %bb.v
    i8 78, label %bb.v
    i8 111, label %bb.v
    i8 79, label %bb.v
    i8 112, label %bb.v
    i8 80, label %bb.v
    i8 113, label %bb.v
    i8 81, label %bb.v
    i8 114, label %bb.v
    i8 82, label %bb.v
    i8 115, label %bb.v
    i8 83, label %bb.v
    i8 116, label %bb.v
    i8 84, label %bb.v
    i8 117, label %bb.v
    i8 85, label %bb.v
    i8 118, label %bb.v
    i8 86, label %bb.v
    i8 119, label %bb.v
    i8 87, label %bb.v
    i8 120, label %bb.v
    i8 88, label %bb.v
    i8 121, label %bb.v
    i8 89, label %bb.v
    i8 122, label %bb.v
    i8 90, label %bb.v
    i8 48, label %bb.v
    i8 49, label %bb.v
    i8 50, label %bb.v
    i8 51, label %bb.v
    i8 52, label %bb.v
    i8 53, label %bb.v
    i8 54, label %bb.v
    i8 55, label %bb.v
    i8 56, label %bb.v
    i8 57, label %bb.v
    i8 45, label %bb.v
    i8 46, label %bb.v
    i8 95, label %bb.v
    i8 126, label %bb.v
    i8 10, label %bb.t
    i8 13, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph.split.split.split.us.split.us
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177.us92.us, align 1, !tbaa !7
  %5 = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 4
  store i8 48, ptr %5, align 1, !tbaa !7
  %6 = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 5
  store i8 65, ptr %6, align 1, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 6
  br label %bb.y

bb.t:                                             ; preds = %.lr.ph.split.split.split.us.split.us
  %.not70.us94.us = icmp eq i32 %.06078.us91.us, 0
  br i1 %.not70.us94.us, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177.us92.us, align 1, !tbaa !7
  %7 = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 4
  store i8 48, ptr %7, align 1, !tbaa !7
  %8 = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 5
  store i8 65, ptr %8, align 1, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 6
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.us
  store i8 %i.ar, ptr %.06177.us92.us, align 1, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 1
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph.split.split.split.us.split.us
  store i8 37, ptr %.06177.us92.us, align 1, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 1
  store i8 50, ptr %i.av, align 1, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 2
  store i8 48, ptr %i.aw, align 1, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 3
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.split.split.us.split.us
  store i8 37, ptr %.06177.us92.us, align 1, !tbaa !7
  %i.ay = zext i8 %i.ar to i32                    ; 2 uses
  %i.az = lshr i32 %i.ay, 4
  %i.ba = tail call signext i8 @uriHexToLetterA(i32 noundef %i.az) #2
  %i.bb = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !7
  %i.bc = and i32 %i.ay, 15
  %i.bd = tail call signext i8 @uriHexToLetterA(i32 noundef %i.bc) #2
  %i.be = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 2
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.06177.us92.us, i64 3
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.4.us95.us = phi ptr [ %i.bf, %bb.x ], [ %i.as, %bb.s ], [ %i.au, %bb.v ], [ %i.ax, %bb.w ], [ %i.at, %bb.u ], [ %.06177.us92.us, %bb.t ]
  %.1.us96.us = phi i32 [ 0, %bb.x ], [ 1, %bb.s ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.u ], [ 0, %bb.t ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.06376.us93.us, i64 1
  br label %.lr.ph.split.split.split.us.split.us

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us, %bb.af
  %.06078.us91 = phi i32 [ %.1.us96, %bb.af ], [ 0, %.lr.ph.split.split.split.us ]
  %.06177.us92 = phi ptr [ %.4.us95, %bb.af ], [ %2, %.lr.ph.split.split.split.us ] ; 20 uses
  %.06376.us93 = phi ptr [ %i.bw, %bb.af ], [ %0, %.lr.ph.split.split.split.us ] ; 2 uses
  %i.bh = load i8, ptr %.06376.us93, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.bh, label %bb.ae [
    i8 0, label %.sink.split
    i8 32, label %bb.ad
    i8 97, label %bb.ac
    i8 65, label %bb.ac
    i8 98, label %bb.ac
    i8 66, label %bb.ac
    i8 99, label %bb.ac
    i8 67, label %bb.ac
    i8 100, label %bb.ac
    i8 68, label %bb.ac
    i8 101, label %bb.ac
    i8 69, label %bb.ac
    i8 102, label %bb.ac
    i8 70, label %bb.ac
    i8 103, label %bb.ac
    i8 71, label %bb.ac
    i8 104, label %bb.ac
    i8 72, label %bb.ac
    i8 105, label %bb.ac
    i8 73, label %bb.ac
    i8 106, label %bb.ac
    i8 74, label %bb.ac
    i8 107, label %bb.ac
    i8 75, label %bb.ac
    i8 108, label %bb.ac
    i8 76, label %bb.ac
    i8 109, label %bb.ac
    i8 77, label %bb.ac
    i8 110, label %bb.ac
    i8 78, label %bb.ac
    i8 111, label %bb.ac
    i8 79, label %bb.ac
    i8 112, label %bb.ac
    i8 80, label %bb.ac
    i8 113, label %bb.ac
    i8 81, label %bb.ac
    i8 114, label %bb.ac
    i8 82, label %bb.ac
    i8 115, label %bb.ac
    i8 83, label %bb.ac
    i8 116, label %bb.ac
    i8 84, label %bb.ac
    i8 117, label %bb.ac
    i8 85, label %bb.ac
    i8 118, label %bb.ac
    i8 86, label %bb.ac
    i8 119, label %bb.ac
    i8 87, label %bb.ac
    i8 120, label %bb.ac
    i8 88, label %bb.ac
    i8 121, label %bb.ac
    i8 89, label %bb.ac
    i8 122, label %bb.ac
    i8 90, label %bb.ac
    i8 48, label %bb.ac
    i8 49, label %bb.ac
    i8 50, label %bb.ac
    i8 51, label %bb.ac
    i8 52, label %bb.ac
    i8 53, label %bb.ac
    i8 54, label %bb.ac
    i8 55, label %bb.ac
    i8 56, label %bb.ac
    i8 57, label %bb.ac
    i8 45, label %bb.ac
    i8 46, label %bb.ac
    i8 95, label %bb.ac
    i8 126, label %bb.ac
    i8 10, label %bb.aa
    i8 13, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph.split.split.split.us.split
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177.us92, align 1, !tbaa !7
  %9 = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 4
  store i8 48, ptr %9, align 1, !tbaa !7
  %10 = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 5
  store i8 65, ptr %10, align 1, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 6
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph.split.split.split.us.split
  %.not70.us94 = icmp eq i32 %.06078.us91, 0
  br i1 %.not70.us94, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177.us92, align 1, !tbaa !7
  %11 = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 4
  store i8 48, ptr %11, align 1, !tbaa !7
  %12 = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 5
  store i8 65, ptr %12, align 1, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 6
  br label %bb.af

bb.ac:                                            ; preds = %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split
  store i8 %i.bh, ptr %.06177.us92, align 1, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 1
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph.split.split.split.us.split
  store i8 37, ptr %.06177.us92, align 1, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 1
  store i8 50, ptr %i.bl, align 1, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 2
  store i8 48, ptr %i.bm, align 1, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 3
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split.split.split.us.split
  store i8 37, ptr %.06177.us92, align 1, !tbaa !7
  %i.bo = zext i8 %i.bh to i32                    ; 2 uses
  %i.bp = lshr i32 %i.bo, 4
  %i.bq = tail call signext i8 @uriHexToLetterA(i32 noundef %i.bp) #2
  %i.br = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 1
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !7
  %i.bs = and i32 %i.bo, 15
  %i.bt = tail call signext i8 @uriHexToLetterA(i32 noundef %i.bs) #2
  %i.bu = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 2
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.06177.us92, i64 3
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.4.us95 = phi ptr [ %i.bv, %bb.ae ], [ %i.bi, %bb.z ], [ %i.bk, %bb.ac ], [ %i.bn, %bb.ad ], [ %i.bj, %bb.ab ], [ %.06177.us92, %bb.aa ] ; 2 uses
  %.1.us96 = phi i32 [ 0, %bb.ae ], [ 1, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ 0, %bb.aa ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.06376.us93, i64 1 ; 2 uses
  %.not67.us97 = icmp ult ptr %i.bw, %1
  br i1 %.not67.us97, label %.lr.ph.split.split.split.us.split, label %.sink.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %.not, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split, %bb.am
  %.06078.us103 = phi i32 [ %.1.us108, %bb.am ], [ 0, %.lr.ph.split.split.split ]
  %.06177.us104 = phi ptr [ %.4.us107, %bb.am ], [ %2, %.lr.ph.split.split.split ] ; 18 uses
  %.06376.us105 = phi ptr [ %i.ck, %bb.am ], [ %0, %.lr.ph.split.split.split ] ; 2 uses
  %i.bx = load i8, ptr %.06376.us105, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.bx, label %bb.al [
    i8 0, label %.sink.split
    i8 32, label %bb.ak
    i8 97, label %bb.aj
    i8 65, label %bb.aj
    i8 98, label %bb.aj
    i8 66, label %bb.aj
    i8 99, label %bb.aj
    i8 67, label %bb.aj
    i8 100, label %bb.aj
    i8 68, label %bb.aj
    i8 101, label %bb.aj
    i8 69, label %bb.aj
    i8 102, label %bb.aj
    i8 70, label %bb.aj
    i8 103, label %bb.aj
    i8 71, label %bb.aj
    i8 104, label %bb.aj
    i8 72, label %bb.aj
    i8 105, label %bb.aj
    i8 73, label %bb.aj
    i8 106, label %bb.aj
    i8 74, label %bb.aj
    i8 107, label %bb.aj
    i8 75, label %bb.aj
    i8 108, label %bb.aj
    i8 76, label %bb.aj
    i8 109, label %bb.aj
    i8 77, label %bb.aj
    i8 110, label %bb.aj
    i8 78, label %bb.aj
    i8 111, label %bb.aj
    i8 79, label %bb.aj
    i8 112, label %bb.aj
    i8 80, label %bb.aj
    i8 113, label %bb.aj
    i8 81, label %bb.aj
    i8 114, label %bb.aj
    i8 82, label %bb.aj
    i8 115, label %bb.aj
    i8 83, label %bb.aj
    i8 116, label %bb.aj
    i8 84, label %bb.aj
    i8 117, label %bb.aj
    i8 85, label %bb.aj
    i8 118, label %bb.aj
    i8 86, label %bb.aj
    i8 119, label %bb.aj
    i8 87, label %bb.aj
    i8 120, label %bb.aj
    i8 88, label %bb.aj
    i8 121, label %bb.aj
    i8 89, label %bb.aj
    i8 122, label %bb.aj
    i8 90, label %bb.aj
    i8 48, label %bb.aj
    i8 49, label %bb.aj
    i8 50, label %bb.aj
    i8 51, label %bb.aj
    i8 52, label %bb.aj
    i8 53, label %bb.aj
    i8 54, label %bb.aj
    i8 55, label %bb.aj
    i8 56, label %bb.aj
    i8 57, label %bb.aj
    i8 45, label %bb.aj
    i8 46, label %bb.aj
    i8 95, label %bb.aj
    i8 126, label %bb.aj
    i8 10, label %bb.ah
    i8 13, label %bb.ag
  ]

bb.ag:                                            ; preds = %.lr.ph.split.split.split.split.us
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177.us104, align 1, !tbaa !7
  %13 = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 4
  store i8 48, ptr %13, align 1, !tbaa !7
  %14 = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 5
  store i8 65, ptr %14, align 1, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 6
  br label %bb.am

bb.ah:                                            ; preds = %.lr.ph.split.split.split.split.us
  %.not70.us106 = icmp eq i32 %.06078.us103, 0
  br i1 %.not70.us106, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177.us104, align 1, !tbaa !7
  %15 = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 4
  store i8 48, ptr %15, align 1, !tbaa !7
  %16 = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 5
  store i8 65, ptr %16, align 1, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 6
  br label %bb.am

bb.aj:                                            ; preds = %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us
  store i8 %i.bx, ptr %.06177.us104, align 1, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 1
  br label %bb.am

bb.ak:                                            ; preds = %.lr.ph.split.split.split.split.us
  store i8 43, ptr %.06177.us104, align 1, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 1
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.split.split.split.split.us
  store i8 37, ptr %.06177.us104, align 1, !tbaa !7
  %i.cc = zext i8 %i.bx to i32                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = tail call signext i8 @uriHexToLetterA(i32 noundef %i.cd) #2
  %i.cf = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !7
  %i.cg = and i32 %i.cc, 15
  %i.ch = tail call signext i8 @uriHexToLetterA(i32 noundef %i.cg) #2
  %i.ci = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 2
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 3
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.4.us107 = phi ptr [ %i.cj, %bb.al ], [ %i.by, %bb.ag ], [ %i.ca, %bb.aj ], [ %i.bz, %bb.ai ], [ %i.cb, %bb.ak ], [ %.06177.us104, %bb.ah ]
  %.1.us108 = phi i32 [ 0, %bb.al ], [ 1, %bb.ag ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.ah ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.06376.us105, i64 1
  br label %.lr.ph.split.split.split.split.us

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split, %bb.at
  %.06078 = phi i32 [ %.1, %bb.at ], [ 0, %.lr.ph.split.split.split ]
  %.06177 = phi ptr [ %.4, %bb.at ], [ %2, %.lr.ph.split.split.split ] ; 18 uses
  %.06376 = phi ptr [ %i.cy, %bb.at ], [ %0, %.lr.ph.split.split.split ] ; 2 uses
  %i.cl = load i8, ptr %.06376, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.cl, label %bb.as [
    i8 0, label %.sink.split
    i8 32, label %bb.an
    i8 97, label %bb.ao
    i8 65, label %bb.ao
    i8 98, label %bb.ao
    i8 66, label %bb.ao
    i8 99, label %bb.ao
    i8 67, label %bb.ao
    i8 100, label %bb.ao
    i8 68, label %bb.ao
    i8 101, label %bb.ao
    i8 69, label %bb.ao
    i8 102, label %bb.ao
    i8 70, label %bb.ao
    i8 103, label %bb.ao
    i8 71, label %bb.ao
    i8 104, label %bb.ao
    i8 72, label %bb.ao
    i8 105, label %bb.ao
    i8 73, label %bb.ao
    i8 106, label %bb.ao
    i8 74, label %bb.ao
    i8 107, label %bb.ao
    i8 75, label %bb.ao
    i8 108, label %bb.ao
    i8 76, label %bb.ao
    i8 109, label %bb.ao
    i8 77, label %bb.ao
    i8 110, label %bb.ao
    i8 78, label %bb.ao
    i8 111, label %bb.ao
    i8 79, label %bb.ao
    i8 112, label %bb.ao
    i8 80, label %bb.ao
    i8 113, label %bb.ao
    i8 81, label %bb.ao
    i8 114, label %bb.ao
    i8 82, label %bb.ao
    i8 115, label %bb.ao
    i8 83, label %bb.ao
    i8 116, label %bb.ao
    i8 84, label %bb.ao
    i8 117, label %bb.ao
    i8 85, label %bb.ao
    i8 118, label %bb.ao
    i8 86, label %bb.ao
    i8 119, label %bb.ao
    i8 87, label %bb.ao
    i8 120, label %bb.ao
    i8 88, label %bb.ao
    i8 121, label %bb.ao
    i8 89, label %bb.ao
    i8 122, label %bb.ao
    i8 90, label %bb.ao
    i8 48, label %bb.ao
    i8 49, label %bb.ao
    i8 50, label %bb.ao
    i8 51, label %bb.ao
    i8 52, label %bb.ao
    i8 53, label %bb.ao
    i8 54, label %bb.ao
    i8 55, label %bb.ao
    i8 56, label %bb.ao
    i8 57, label %bb.ao
    i8 45, label %bb.ao
    i8 46, label %bb.ao
    i8 95, label %bb.ao
    i8 126, label %bb.ao
    i8 10, label %bb.ap
    i8 13, label %bb.ar
  ]

bb.an:                                            ; preds = %.lr.ph.split.split.split.split
  store i8 43, ptr %.06177, align 1, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.06177, i64 1
  br label %bb.at

bb.ao:                                            ; preds = %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split
  store i8 %i.cl, ptr %.06177, align 1, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %.06177, i64 1
  br label %bb.at

bb.ap:                                            ; preds = %.lr.ph.split.split.split.split
  %.not70 = icmp eq i32 %.06078, 0
  br i1 %.not70, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177, align 1, !tbaa !7
  %17 = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  store i8 48, ptr %17, align 1, !tbaa !7
  %18 = getelementptr inbounds nuw i8, ptr %.06177, i64 5
  store i8 65, ptr %18, align 1, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.06177, i64 6
  br label %bb.at

bb.ar:                                            ; preds = %.lr.ph.split.split.split.split
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177, align 1, !tbaa !7
  %19 = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  store i8 48, ptr %19, align 1, !tbaa !7
  %20 = getelementptr inbounds nuw i8, ptr %.06177, i64 5
  store i8 65, ptr %20, align 1, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.06177, i64 6
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph.split.split.split.split
  store i8 37, ptr %.06177, align 1, !tbaa !7
  %i.cq = zext i8 %i.cl to i32                    ; 2 uses
  %i.cr = lshr i32 %i.cq, 4
  %i.cs = tail call signext i8 @uriHexToLetterA(i32 noundef %i.cr) #2
  %i.ct = getelementptr inbounds nuw i8, ptr %.06177, i64 1
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !7
  %i.cu = and i32 %i.cq, 15
  %i.cv = tail call signext i8 @uriHexToLetterA(i32 noundef %i.cu) #2
  %i.cw = getelementptr inbounds nuw i8, ptr %.06177, i64 2
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.06177, i64 3
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.as, %bb.ao
  %.4 = phi ptr [ %i.cx, %bb.as ], [ %i.cp, %bb.ar ], [ %i.cn, %bb.ao ], [ %i.co, %bb.aq ], [ %i.cm, %bb.an ], [ %.06177, %bb.ap ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.as ], [ 1, %bb.ar ], [ 0, %bb.ao ], [ 0, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ap ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.06376, i64 1 ; 2 uses
  %.not67 = icmp ult ptr %i.cy, %1
  br i1 %.not67, label %.lr.ph.split.split.split.split, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.split.split.split.split, %bb.at, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.us.split, %bb.af, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.us.split, %bb.r, %.lr.ph.split.us.split.us, %.preheader, %bb.b
  %.us-phi.sink = phi ptr [ %.4.us, %bb.r ], [ %2, %bb.b ], [ %2, %.preheader ], [ %.06177.us92.us, %.lr.ph.split.split.split.us.split.us ], [ %.06177.us.us, %.lr.ph.split.us.split.us ], [ %.06177.us104, %.lr.ph.split.split.split.split.us ], [ %.4.us95, %bb.af ], [ %.06177.us, %.lr.ph.split.us.split ], [ %.06177.us92, %.lr.ph.split.split.split.us.split ], [ %.06177, %.lr.ph.split.split.split.split ], [ %.4, %bb.at ] ; 2 uses
  store i8 0, ptr %.us-phi.sink, align 1, !tbaa !7
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.us-phi.sink, %.sink.split ]
  ret ptr %.0
}

declare signext i8 @uriHexToLetterA(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @uriUnescapeInPlaceA(ptr noundef captures(address, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @uriUnescapeInPlaceExA(ptr noundef %0, i32 noundef 0, i32 noundef 3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @uriUnescapeInPlaceExA(ptr noundef captures(address, ret: address, provenance) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ai, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader
  %.073 = phi i32 [ 0, %.preheader ], [ %.073.be, %.backedge ] ; 3 uses
  %.071 = phi ptr [ %0, %.preheader ], [ %.071.be, %.backedge ] ; 37 uses
  %.070 = phi ptr [ %0, %.preheader ], [ %.070.be, %.backedge ] ; 11 uses
  %i.b = load i8, ptr %.070, align 1, !tbaa !7    ; 2 uses
  switch i8 %i.b, label %bb.af [
    i8 0, label %bb.c
    i8 37, label %bb.e
    i8 43, label %bb.ac
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt ptr %.070, %.071
  br i1 %i.c, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %.071, align 1, !tbaa !7
  br label %bb.ai

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.070, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7     ; 2 uses
  switch i8 %i.e, label %bb.z [
    i8 48, label %bb.f
    i8 49, label %bb.f
    i8 50, label %bb.f
    i8 51, label %bb.f
    i8 52, label %bb.f
    i8 53, label %bb.f
    i8 54, label %bb.f
    i8 55, label %bb.f
    i8 56, label %bb.f
    i8 57, label %bb.f
    i8 97, label %bb.f
    i8 98, label %bb.f
    i8 99, label %bb.f
    i8 100, label %bb.f
    i8 101, label %bb.f
    i8 102, label %bb.f
    i8 65, label %bb.f
    i8 66, label %bb.f
    i8 67, label %bb.f
    i8 68, label %bb.f
    i8 69, label %bb.f
    i8 70, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %.070, i64 2 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  switch i8 %i.g, label %bb.w [
    i8 48, label %bb.g
    i8 49, label %bb.g
    i8 50, label %bb.g
    i8 51, label %bb.g
    i8 52, label %bb.g
    i8 53, label %bb.g
    i8 54, label %bb.g
    i8 55, label %bb.g
    i8 56, label %bb.g
    i8 57, label %bb.g
    i8 97, label %bb.g
    i8 98, label %bb.g
    i8 99, label %bb.g
    i8 100, label %bb.g
    i8 101, label %bb.g
    i8 102, label %bb.g
    i8 65, label %bb.g
    i8 66, label %bb.g
    i8 67, label %bb.g
    i8 68, label %bb.g
    i8 69, label %bb.g
    i8 70, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.h = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.e) #2
  %i.i = load i8, ptr %i.f, align 1, !tbaa !7
  %i.j = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.i) #2
  %i.k = zext i8 %i.h to i32
  %i.l = shl nuw nsw i32 %i.k, 4
  %i.m = zext i8 %i.j to i32
  %i.n = add nuw nsw i32 %i.l, %i.m               ; 2 uses
  switch i32 %i.n, label %bb.u [
    i32 10, label %bb.h
    i32 13, label %bb.p
  ]

bb.h:                                             ; preds = %bb.g
  switch i32 %2, label %bb.o [
    i32 0, label %bb.i
    i32 1, label %bb.k
    i32 2, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %.not79 = icmp eq i32 %.073, 0
  br i1 %.not79, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  store i8 10, ptr %.071, align 1, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.071, i64 1
  br label %bb.v

bb.k:                                             ; preds = %bb.h
  %.not78 = icmp eq i32 %.073, 0
  br i1 %.not78, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  store i8 13, ptr %.071, align 1, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.071, i64 1
  store i8 10, ptr %i.p, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.071, i64 2
  br label %bb.v

bb.m:                                             ; preds = %bb.h
  %.not77 = icmp eq i32 %.073, 0
  br i1 %.not77, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  store i8 13, ptr %.071, align 1, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.071, i64 1
  br label %bb.v

bb.o:                                             ; preds = %bb.h
  store i8 10, ptr %.071, align 1, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.071, i64 1
  br label %bb.v

bb.p:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.071, i64 1 ; 4 uses
  switch i32 %2, label %bb.t [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i8 10, ptr %.071, align 1, !tbaa !7
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  store i8 13, ptr %.071, align 1, !tbaa !7
  store i8 10, ptr %i.t, align 1, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.071, i64 2
  br label %bb.v

end_hunk_0
