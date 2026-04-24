inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZN4llvh18ConvertUTF16toUTF8EPPKtS1_PPhS3_NS_15ConversionFlagsE:bb.a
.thread101.us:                                    ; preds = %bb.e, %bb.f, %bb.c
  %.27597105.us = phi i32 [ %i.g, %bb.c ], [ %i.q, %bb.f ], [ %i.g, %bb.e ] ; 2 uses
  %.36599104.us = phi ptr [ %i.e, %bb.c ], [ %i.r, %bb.f ], [ %i.e, %bb.e ]
  %i.s = icmp samesign ult i32 %.27597105.us, 65536 ; 2 uses
  %spec.select.us = select i1 %i.s, i64 3, i64 4
  %spec.select89.us = select i1 %i.s, i32 3, i32 4
  br label %bb.g

bb.g:                                             ; preds = %.thread101.us, %bb.c, %bb.b
  %.365100.us = phi ptr [ %.36599104.us, %.thread101.us ], [ %i.e, %bb.b ], [ %i.e, %bb.c ] ; 3 uses
  %.27598.us = phi i32 [ %.27597105.us, %.thread101.us ], [ %i.g, %bb.b ], [ %i.g, %bb.c ] ; 5 uses
  %.080.us = phi i64 [ %spec.select.us, %.thread101.us ], [ 1, %bb.b ], [ 2, %bb.c ] ; 3 uses
  %5 = phi i32 [ %spec.select89.us, %.thread101.us ], [ 1, %bb.b ], [ 2, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.067114.us, i64 %.080.us ; 5 uses
  %i.u = icmp ugt ptr %i.t, %3
  br i1 %i.u, label %.thread107, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %5, label %.unreachabledefault [
    i32 4, label %bb.i
    i32 3, label %bb.j
    i32 2, label %bb.k
    i32 1, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN4llvh18ConvertUTF16toUTF8EPPKtS1_PPhS3_NS_15ConversionFlagsE:bb.a
bb.l:                                             ; preds = %bb.k, %bb.h
  %.679.us = phi i32 [ %i.aj, %bb.k ], [ %.27598.us, %bb.h ]
  %.370.us = phi ptr [ %i.ai, %bb.k ], [ %i.t, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN4llvhL13firstByteMarkE, i64 %.080.us
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = trunc i32 %.679.us to i8
  %i.an = or i8 %i.al, %i.am
  %i.ao = getelementptr inbounds i8, ptr %.370.us, i64 -1 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.080.us ; 2 uses
  %i.aq = icmp ult ptr %.365100.us, %1
  br i1 %i.aq, label %.lr.ph.split.us.split, label %.thread107

end_hunk_1
begin_hunk_2_@_ZN4llvh18ConvertUTF16toUTF8EPPKtS1_PPhS3_NS_15ConversionFlagsE:bb.a
.thread101.us149:                                 ; preds = %bb.q, %bb.n
  %.27597105.us150 = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.q ] ; 2 uses
  %.36599104.us151 = phi ptr [ %i.ar, %bb.n ], [ %i.be, %bb.q ]
  %i.bf = icmp samesign ult i32 %.27597105.us150, 65536 ; 2 uses
  %spec.select.us153 = select i1 %i.bf, i64 3, i64 4
  %spec.select89.us154 = select i1 %i.bf, i32 3, i32 4
  br label %bb.r

bb.r:                                             ; preds = %.thread101.us149, %bb.n, %bb.m
  %.365100.us153 = phi ptr [ %.36599104.us151, %.thread101.us149 ], [ %i.ar, %bb.m ], [ %i.ar, %bb.n ] ; 3 uses
  %.27598.us154 = phi i32 [ %.27597105.us150, %.thread101.us149 ], [ %i.at, %bb.m ], [ %i.at, %bb.n ] ; 5 uses
  %.080.us157 = phi i64 [ %spec.select.us153, %.thread101.us149 ], [ 1, %bb.m ], [ 2, %bb.n ] ; 3 uses
  %6 = phi i32 [ %spec.select89.us154, %.thread101.us149 ], [ 1, %bb.m ], [ 2, %bb.n ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.067114.us146, i64 %.080.us157 ; 5 uses
  %i.bh = icmp ugt ptr %i.bg, %3
  br i1 %i.bh, label %.thread107, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %6, label %default.unreachable [
    i32 4, label %bb.t
    i32 3, label %bb.u
    i32 2, label %bb.v
    i32 1, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
end_hunk_2
begin_hunk_3_@_ZN4llvh18ConvertUTF16toUTF8EPPKtS1_PPhS3_NS_15ConversionFlagsE:bb.a
bb.w:                                             ; preds = %bb.v, %bb.s
  %.679.us160 = phi i32 [ %i.bw, %bb.v ], [ %.27598.us154, %bb.s ]
  %.370.us161 = phi ptr [ %i.bv, %bb.v ], [ %i.bg, %bb.s ]
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN4llvhL13firstByteMarkE, i64 %.080.us157
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = trunc i32 %.679.us160 to i8
  %i.ca = or i8 %i.by, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %.370.us161, i64 -1 ; 2 uses
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.080.us157 ; 2 uses
  %i.cd = icmp ult ptr %.365100.us153, %1
  br i1 %i.cd, label %.lr.ph.split.split.us, label %.thread107

end_hunk_3
begin_hunk_4_@_ZN4llvh18ConvertUTF32toUTF8EPPKjS1_PPhS3_NS_15ConversionFlagsE:bb.a
  br i1 %i.d, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.04168.us = phi i32 [ %.1.us, %bb.j ], [ 0, %.lr.ph ] ; 4 uses
  %.04267.us = phi ptr [ %i.e, %bb.j ], [ %i.a, %.lr.ph ] ; 3 uses
  %.05066.us = phi ptr [ %i.ag, %bb.j ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.04267.us, i64 4 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN4llvh18ConvertUTF32toUTF8EPPKjS1_PPhS3_NS_15ConversionFlagsE:bb.a
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %i.f, 1114112               ; 4 uses
  %..us = select i1 %i.j, i32 %i.f, i32 65533
  %.59.us = select i1 %i.j, i64 4, i64 3
  %.60.us = select i1 %i.j, i32 4, i32 3
  %.041..us = select i1 %i.j, i32 %.04168.us, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.split.us
  %.046.us = phi i32 [ %i.f, %bb.c ], [ %i.f, %.lr.ph.split.us ], [ %i.f, %bb.b ], [ %..us, %bb.d ] ; 5 uses
  %.045.us = phi i64 [ 3, %bb.c ], [ 1, %.lr.ph.split.us ], [ 2, %bb.b ], [ %.59.us, %bb.d ] ; 3 uses
  %.1.us.a = phi i32 [ 3, %bb.c ], [ 1, %.lr.ph.split.us ], [ 2, %bb.b ], [ %.60.us, %bb.d ]
  %.1.us = phi i32 [ %.04168.us, %bb.c ], [ %.04168.us, %.lr.ph.split.us ], [ %.04168.us, %bb.b ], [ %.041..us, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05066.us, i64 %.045.us ; 5 uses
  %i.l = icmp ugt ptr %i.k, %3
  br i1 %i.l, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %.1.us.a, label %.unreachabledefault [
    i32 4, label %bb.g
    i32 3, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
end_hunk_5
begin_hunk_6_@_ZN4llvh18ConvertUTF32toUTF8EPPKjS1_PPhS3_NS_15ConversionFlagsE:bb.a
bb.j:                                             ; preds = %bb.i, %bb.f
  %.353.us = phi ptr [ %i.z, %bb.i ], [ %i.k, %bb.f ]
  %.349.us = phi i32 [ %i.aa, %bb.i ], [ %.046.us, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN4llvhL13firstByteMarkE, i64 %.045.us
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ad = trunc i32 %.349.us to i8
  %i.ae = or i8 %i.ac, %i.ad
  %i.af = getelementptr inbounds i8, ptr %.353.us, i64 -1 ; 2 uses
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.045.us ; 2 uses
  %i.ah = icmp ult ptr %i.e, %1
  br i1 %i.ah, label %.lr.ph.split.us, label %.thread

end_hunk_6
begin_hunk_7_@_ZN4llvh18ConvertUTF32toUTF8EPPKjS1_PPhS3_NS_15ConversionFlagsE:bb.a
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %.04168 = phi i32 [ %.1, %bb.t ], [ 0, %.lr.ph ] ; 4 uses
  %.04267 = phi ptr [ %i.ai, %bb.t ], [ %i.a, %.lr.ph ] ; 4 uses
  %.05066 = phi ptr [ %i.bl, %bb.t ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.04267, i64 4 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN4llvh18ConvertUTF32toUTF8EPPKjS1_PPhS3_NS_15ConversionFlagsE:bb.a
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp ult i32 %i.aj, 1114112             ; 4 uses
  %. = select i1 %i.ao, i32 %i.aj, i32 65533
  %.59 = select i1 %i.ao, i64 4, i64 3
  %.60 = select i1 %i.ao, i32 4, i32 3
  %.041. = select i1 %i.ao, i32 %.04168, i32 3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.046 = phi i32 [ %i.aj, %bb.m ], [ %i.aj, %bb.k ], [ %i.aj, %bb.l ], [ %., %bb.n ] ; 5 uses
  %.045 = phi i64 [ 3, %bb.m ], [ 1, %bb.k ], [ 2, %bb.l ], [ %.59, %bb.n ] ; 3 uses
  %.1.a = phi i32 [ 3, %bb.m ], [ 1, %bb.k ], [ 2, %bb.l ], [ %.60, %bb.n ]
  %.1 = phi i32 [ %.04168, %bb.m ], [ %.04168, %bb.k ], [ %.04168, %bb.l ], [ %.041., %bb.n ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05066, i64 %.045 ; 5 uses
  %i.aq = icmp ugt ptr %i.ap, %3
  br i1 %i.aq, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %.1.a, label %default.unreachable [
    i32 4, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
end_hunk_8
begin_hunk_9_@_ZN4llvh18ConvertUTF32toUTF8EPPKjS1_PPhS3_NS_15ConversionFlagsE:bb.a
bb.t:                                             ; preds = %bb.p, %bb.s
  %.353 = phi ptr [ %i.be, %bb.s ], [ %i.ap, %bb.p ]
  %.349 = phi i32 [ %i.bf, %bb.s ], [ %.046, %bb.p ]
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN4llvhL13firstByteMarkE, i64 %.045
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bi = trunc i32 %.349 to i8
  %i.bj = or i8 %i.bh, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %.353, i64 -1 ; 2 uses
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.045 ; 2 uses
  %i.bm = icmp ult ptr %i.ai, %1
  br i1 %i.bm, label %.lr.ph.split, label %.thread

.thread:                                          ; preds = %bb.j, %bb.e, %bb.t, %.lr.ph.split, %bb.o, %bb.a
  %.050.lcssa = phi ptr [ %i.b, %bb.a ], [ %.05066, %bb.o ], [ %.05066, %.lr.ph.split ], [ %i.bl, %bb.t ], [ %i.ag, %bb.j ], [ %.05066.us, %bb.e ]
  %.042.lcssa = phi ptr [ %i.a, %bb.a ], [ %.04267, %bb.o ], [ %.04267, %.lr.ph.split ], [ %i.ai, %bb.t ], [ %i.e, %bb.j ], [ %.04267.us, %bb.e ]
  %.3 = phi i32 [ 0, %bb.a ], [ 2, %bb.o ], [ 3, %.lr.ph.split ], [ %.1, %bb.t ], [ %.1.us, %bb.j ], [ 2, %bb.e ]
  store ptr %.042.lcssa, ptr %0, align 8, !tbaa !7
  store ptr %.050.lcssa, ptr %2, align 8, !tbaa !14
  ret i32 %.3
end_hunk_9
