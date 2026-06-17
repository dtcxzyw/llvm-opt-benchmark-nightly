inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZN4llvh19ConvertUTF32toUTF16EPPKjS1_PPtS3_NS_15ConversionFlagsE:bb.a
  %i.r = and i32 %i.f, 63488
  %or.cond.us.us = icmp eq i32 %i.r, 55296
  br i1 %or.cond.us.us, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = trunc nuw i32 %i.f to i16
  %i.t = getelementptr inbounds nuw i8, ptr %.03251.us.us, i64 2
  store i16 %i.s, ptr %.03251.us.us, align 2, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.e
  %.238.us.us = phi i32 [ %.03649.us.us, %bb.e ], [ %.03649.us.us, %bb.g ], [ 3, %bb.c ] ; 2 uses
  %.2.us.us = phi ptr [ %i.q, %bb.e ], [ %i.t, %bb.g ], [ %.03251.us.us, %bb.c ] ; 2 uses
  %i.u = icmp ult ptr %i.e, %1
  br i1 %i.u, label %.lr.ph.split.us.split.us, label %.thread

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.q
  %.03251 = phi ptr [ %.2, %bb.q ], [ %i.b, %.lr.ph ] ; 11 uses
  %.03350 = phi ptr [ %i.v, %bb.q ], [ %i.a, %.lr.ph ] ; 4 uses
  %.not = icmp ult ptr %.03251, %3
  br i1 %.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.v = getelementptr inbounds nuw i8, ptr %.03350, i64 4 ; 3 uses
  %i.w = load i32, ptr %.03350, align 4, !tbaa !3 ; 6 uses
  %i.x = icmp ult i32 %i.w, 65536
  br i1 %i.x, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.y = and i32 %i.w, 63488
  %or.cond = icmp eq i32 %i.y, 55296
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.03251, i64 2
  store i16 -3, ptr %.03251, align 2, !tbaa !12
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.aa = trunc nuw i32 %i.w to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %.03251, i64 2
  store i16 %i.aa, ptr %.03251, align 2, !tbaa !12
  br label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.ac = icmp ugt i32 %i.w, 1114111
  %i.ad = getelementptr inbounds nuw i8, ptr %.03251, i64 2 ; 3 uses
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 -3, ptr %.03251, align 2, !tbaa !12
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not44 = icmp ult ptr %i.ad, %3
  br i1 %.not44, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ae = add nuw nsw i32 %i.w, 67043328
  %i.af = lshr i32 %i.ae, 10
  %i.ag = trunc i32 %i.af to i16
  %i.ah = add nuw nsw i16 %i.ag, -10240
  store i16 %i.ah, ptr %.03251, align 2, !tbaa !12
  %i.ai = trunc i32 %i.w to i16
  %i.aj = and i16 %i.ai, 1023
  %i.ak = or disjoint i16 %i.aj, -9216
  %i.al = getelementptr inbounds nuw i8, ptr %.03251, i64 4
  store i16 %i.ak, ptr %i.ad, align 2, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.k, %bb.n, %bb.p
  %.2 = phi ptr [ %i.al, %bb.p ], [ %i.ad, %bb.n ], [ %i.ab, %bb.l ], [ %i.z, %bb.k ] ; 2 uses
  %i.am = icmp ult ptr %i.v, %1
  br i1 %i.am, label %.lr.ph.split.split, label %.thread

.thread:                                          ; preds = %bb.q, %.lr.ph.split.split, %bb.o, %bb.h, %bb.f, %.lr.ph.split.us.split.us, %bb.d, %bb.a
  %.033.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.h ], [ %.03350.us.us, %.lr.ph.split.us.split.us ], [ %.03350.us.us, %bb.d ], [ %.03350.us.us, %bb.f ], [ %.03350, %.lr.ph.split.split ], [ %i.v, %bb.q ], [ %.03350, %bb.o ]
  %.032.lcssa = phi ptr [ %i.b, %bb.a ], [ %.2.us.us, %bb.h ], [ %.03251.us.us, %.lr.ph.split.us.split.us ], [ %.03251.us.us, %bb.d ], [ %.03251.us.us, %bb.f ], [ %.03251, %.lr.ph.split.split ], [ %.2, %bb.q ], [ %.03251, %bb.o ]
  %.339 = phi i32 [ 0, %bb.a ], [ %.238.us.us, %bb.h ], [ 2, %.lr.ph.split.us.split.us ], [ 2, %bb.d ], [ 3, %bb.f ], [ 2, %.lr.ph.split.split ], [ 0, %bb.q ], [ 2, %bb.o ]
  store ptr %.033.lcssa, ptr %0, align 8, !tbaa !7
  store ptr %.032.lcssa, ptr %2, align 8, !tbaa !10
  ret i32 %.339
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN4llvh19ConvertUTF16toUTF32EPPKtS1_PPjS3_NS_15ConversionFlagsE(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(address) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !7      ; 3 uses
  %i.c = icmp ult ptr %i.a, %1
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp eq i32 %4, 0
  br i1 %i.d, label %.lr.ph.split.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %bb.f
  %.03957.us = phi ptr [ %.140.us, %bb.f ], [ %i.a, %.lr.ph ] ; 5 uses
  %.04356.us = phi ptr [ %i.q, %bb.f ], [ %i.b, %.lr.ph ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.03957.us, i64 2 ; 4 uses
  %i.f = load i16, ptr %.03957.us, align 2, !tbaa !12 ; 2 uses
  %i.g = zext i16 %i.f to i32                     ; 3 uses
  %i.h = and i16 %i.f, -1024
  %or.cond.us = icmp eq i16 %i.h, -10240
  br i1 %or.cond.us, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.i = icmp ult ptr %i.e, %1
  br i1 %i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %i.e, align 2, !tbaa !12   ; 2 uses
  %i.k = and i16 %i.j, -1024
  %or.cond3.us = icmp eq i16 %i.k, -9216
  br i1 %or.cond3.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext i16 %i.j to i32
  %i.m = shl nuw nsw i32 %i.g, 10
  %i.n = add nsw i32 %i.m, -56613888
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %.03957.us, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.lr.ph.split.us.split, %bb.d
  %.042.us = phi i32 [ %i.o, %bb.d ], [ %i.g, %.lr.ph.split.us.split ], [ %i.g, %bb.c ]
  %.140.us = phi ptr [ %i.p, %bb.d ], [ %i.e, %.lr.ph.split.us.split ], [ %i.e, %bb.c ] ; 3 uses
  %.not.us = icmp ult ptr %.04356.us, %3
  br i1 %.not.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.04356.us, i64 4 ; 2 uses
  store i32 %.042.us, ptr %.04356.us, align 4, !tbaa !3
  %i.r = icmp ult ptr %.140.us, %1
  br i1 %i.r, label %.lr.ph.split.us.split, label %.thread

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.k
  %.03957.us87 = phi ptr [ %.140.us92, %bb.k ], [ %i.a, %.lr.ph ] ; 7 uses
  %.04356.us88 = phi ptr [ %i.ae, %bb.k ], [ %i.b, %.lr.ph ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03957.us87, i64 2 ; 3 uses
  %i.t = load i16, ptr %.03957.us87, align 2, !tbaa !12 ; 2 uses
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = and i16 %i.t, -1024
  switch i16 %i.v, label %bb.j [
    i16 -10240, label %bb.g
    i16 -9216, label %.thread
  ]

bb.g:                                             ; preds = %.lr.ph.split.split.us
  %i.w = icmp ult ptr %i.s, %1
  br i1 %i.w, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.x = load i16, ptr %i.s, align 2, !tbaa !12   ; 2 uses
  %i.y = and i16 %i.x, -1024
  %or.cond3.us90 = icmp eq i16 %i.y, -9216
  br i1 %or.cond3.us90, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.z = zext i16 %i.x to i32
  %i.aa = shl nuw nsw i32 %i.u, 10
  %i.ab = add nsw i32 %i.aa, -56613888
  %i.ac = add nsw i32 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %.03957.us87, i64 4
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split.us, %bb.i
  %.042.us91 = phi i32 [ %i.ac, %bb.i ], [ %i.u, %.lr.ph.split.split.us ]
  %.140.us92 = phi ptr [ %i.ad, %bb.i ], [ %i.s, %.lr.ph.split.split.us ] ; 3 uses
  %.not.us93 = icmp ult ptr %.04356.us88, %3
  br i1 %.not.us93, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.04356.us88, i64 4 ; 2 uses
  store i32 %.042.us91, ptr %.04356.us88, align 4, !tbaa !3
  %i.af = icmp ult ptr %.140.us92, %1
  br i1 %i.af, label %.lr.ph.split.split.us, label %.thread

.thread:                                          ; preds = %bb.f, %bb.b, %bb.e, %bb.k, %.lr.ph.split.split.us, %bb.g, %bb.h, %bb.j, %bb.a
  %.043.lcssa = phi ptr [ %i.b, %bb.a ], [ %.04356.us88, %bb.h ], [ %.04356.us88, %bb.g ], [ %.04356.us88, %.lr.ph.split.split.us ], [ %.04356.us88, %bb.j ], [ %i.ae, %bb.k ], [ %.04356.us, %bb.e ], [ %.04356.us, %bb.b ], [ %i.q, %bb.f ]
  %.039.lcssa = phi ptr [ %i.a, %bb.a ], [ %.03957.us87, %bb.h ], [ %.03957.us87, %bb.g ], [ %.03957.us87, %.lr.ph.split.split.us ], [ %.03957.us87, %bb.j ], [ %.140.us92, %bb.k ], [ %.03957.us, %bb.e ], [ %.03957.us, %bb.b ], [ %.140.us, %bb.f ]
  %.2 = phi i32 [ 0, %bb.a ], [ 3, %bb.h ], [ 1, %bb.g ], [ 3, %.lr.ph.split.split.us ], [ 2, %bb.j ], [ 0, %bb.k ], [ 2, %bb.e ], [ 1, %bb.b ], [ 0, %bb.f ]
  store ptr %.039.lcssa, ptr %0, align 8, !tbaa !10
  store ptr %.043.lcssa, ptr %2, align 8, !tbaa !7
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN4llvh18ConvertUTF16toUTF8EPPKtS1_PPhS3_NS_15ConversionFlagsE(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(address) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !14     ; 3 uses
  %i.c = icmp ult ptr %i.a, %1
  br i1 %i.c, label %.lr.ph, label %.thread107

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp eq i32 %4, 0
  br i1 %i.d, label %.lr.ph.split.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %bb.l
  %.062115.us = phi ptr [ %.370.us, %bb.l ], [ %i.a, %.lr.ph ] ; 8 uses
  %.067114.us = phi ptr [ %i.ai, %bb.l ], [ %i.b, %.lr.ph ] ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.062115.us, i64 2 ; 5 uses
  %i.f = load i16, ptr %.062115.us, align 2, !tbaa !12 ; 4 uses
  %i.g = zext i16 %i.f to i32                     ; 4 uses
  %i.h = and i16 %i.f, -1024
  %or.cond.us = icmp eq i16 %i.h, -10240
  br i1 %or.cond.us, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.i = icmp ult i16 %i.f, 128
  br i1 %i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i16 %i.f, 2048
  br i1 %i.j, label %.thread101.us, label %bb.h

bb.d:                                             ; preds = %.lr.ph.split.us.split
  %i.k = icmp ult ptr %i.e, %1
  br i1 %i.k, label %bb.e, label %.thread107

bb.e:                                             ; preds = %bb.d
  %i.l = load i16, ptr %i.e, align 2, !tbaa !12   ; 3 uses
  %i.m = and i16 %i.l, -1024
  %or.cond3.us = icmp eq i16 %i.m, -9216
  br i1 %or.cond3.us, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %5 = getelementptr inbounds nuw i8, ptr %.067114.us, i64 4
  %6 = icmp ugt ptr %5, %3
  br i1 %6, label %.thread107, label %bb.i

.thread101.us:                                    ; preds = %bb.c
  %7 = getelementptr inbounds nuw i8, ptr %.067114.us, i64 2
  %8 = icmp ugt ptr %7, %3
  br i1 %8, label %.thread107, label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.067114.us, i64 1
  %i.o = icmp ugt ptr %i.n, %3
  br i1 %i.o, label %.thread107, label %bb.l

bb.h:                                             ; preds = %bb.e, %bb.c
  %9 = getelementptr inbounds nuw i8, ptr %.067114.us, i64 3
  %10 = icmp ugt ptr %9, %3
  br i1 %10, label %.thread107, label %bb.j

bb.i:                                             ; preds = %bb.f
  %11 = getelementptr inbounds nuw i8, ptr %.062115.us, i64 4
  %12 = shl nuw nsw i32 %i.g, 10
  %13 = add nsw i32 %12, -56613888
  %14 = zext i16 %i.l to i32
  %15 = add nuw nsw i32 %13, %14
  %i.p = trunc i16 %i.l to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %.067114.us, i64 3
  store i8 %i.r, ptr %i.s, align 1, !tbaa !16
  %i.t = lshr i32 %15, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %16 = phi i64 [ 3, %bb.h ], [ 4, %bb.i ]
  %.168.us = phi ptr [ %i.e, %bb.h ], [ %11, %bb.i ]
  %.477.us = phi i32 [ %i.g, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  %i.u = trunc i32 %.477.us to i8
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = getelementptr inbounds nuw i8, ptr %.067114.us, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !16
  %i.y = lshr i32 %.477.us, 6
  br label %bb.k

bb.k:                                             ; preds = %.thread101.us, %bb.j
  %17 = phi i64 [ 2, %.thread101.us ], [ %16, %bb.j ]
  %.269.us = phi ptr [ %i.e, %.thread101.us ], [ %.168.us, %bb.j ]
  %.578.us = phi i32 [ %i.g, %.thread101.us ], [ %i.y, %bb.j ] ; 2 uses
  %i.z = trunc i32 %.578.us to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %.067114.us, i64 1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !16
  %i.ad = lshr i32 %.578.us, 6
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %18 = phi i64 [ 1, %bb.g ], [ %17, %bb.k ]      ; 2 uses
  %.370.us = phi ptr [ %i.e, %bb.g ], [ %.269.us, %bb.k ] ; 3 uses
  %.679.us = phi i32 [ %i.g, %bb.g ], [ %i.ad, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN4llvhL13firstByteMarkE, i64 %18
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = trunc i32 %.679.us to i8
  %i.ah = or i8 %i.af, %i.ag
  store i8 %i.ah, ptr %.067114.us, align 1, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %.067114.us, i64 %18 ; 2 uses
  %i.aj = icmp ult ptr %.370.us, %1
  br i1 %i.aj, label %.lr.ph.split.us.split, label %.thread107

default.unreachable:                              ; preds = %bb.s
  unreachable

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.w
  %.062115.us145 = phi ptr [ %.365100.us153, %bb.w ], [ %i.a, %.lr.ph ] ; 7 uses
  %.067114.us146 = phi ptr [ %i.bw, %bb.w ], [ %i.b, %.lr.ph ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.062115.us145, i64 2 ; 5 uses
  %i.al = load i16, ptr %.062115.us145, align 2, !tbaa !12 ; 4 uses
  %i.am = zext i16 %i.al to i32                   ; 4 uses
  %i.an = and i16 %i.al, -1024
  switch i16 %i.an, label %bb.m [
    i16 -10240, label %bb.o
    i16 -9216, label %.thread107
  ]

bb.m:                                             ; preds = %.lr.ph.split.split.us
  %i.ao = icmp ult i16 %i.al, 128
  br i1 %i.ao, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp ult i16 %i.al, 2048
  br i1 %i.ap, label %bb.r, label %.thread101.us149

bb.o:                                             ; preds = %.lr.ph.split.split.us
  %i.aq = icmp ult ptr %i.ak, %1
  br i1 %i.aq, label %bb.p, label %.thread107

bb.p:                                             ; preds = %bb.o
  %i.ar = load i16, ptr %i.ak, align 2, !tbaa !12 ; 2 uses
  %i.as = and i16 %i.ar, -1024
  %or.cond3.us148 = icmp eq i16 %i.as, -9216
  br i1 %or.cond3.us148, label %bb.q, label %.thread107

bb.q:                                             ; preds = %bb.p
  %i.at = zext i16 %i.ar to i32
  %i.au = shl nuw nsw i32 %i.am, 10
  %i.av = add nsw i32 %i.au, -56613888
  %i.aw = add nsw i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %.062115.us145, i64 4
  br label %.thread101.us149

.thread101.us149:                                 ; preds = %bb.q, %bb.n
  %.27597105.us150 = phi i32 [ %i.am, %bb.n ], [ %i.aw, %bb.q ] ; 2 uses
  %.36599104.us151 = phi ptr [ %i.ak, %bb.n ], [ %i.ax, %bb.q ]
  %i.ay = icmp samesign ult i32 %.27597105.us150, 65536
  %spec.select.us152 = select i1 %i.ay, i16 3, i16 4
  br label %bb.r

bb.r:                                             ; preds = %.thread101.us149, %bb.n, %bb.m
  %.365100.us153 = phi ptr [ %.36599104.us151, %.thread101.us149 ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ] ; 3 uses
  %.27598.us154 = phi i32 [ %.27597105.us150, %.thread101.us149 ], [ %i.am, %bb.m ], [ %i.am, %bb.n ] ; 5 uses
  %.080.us155 = phi i16 [ %spec.select.us152, %.thread101.us149 ], [ 1, %bb.m ], [ 2, %bb.n ] ; 2 uses
  %i.az = zext nneg i16 %.080.us155 to i64        ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.067114.us146, i64 %i.az ; 5 uses
  %i.bb = icmp ugt ptr %i.ba, %3
  br i1 %i.bb, label %.thread107, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i16 %.080.us155, label %default.unreachable [
    i16 4, label %bb.t
    i16 3, label %bb.u
    i16 2, label %bb.v
    i16 1, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.bc = trunc i32 %.27598.us154 to i8
  %i.bd = and i8 %i.bc, 63
  %i.be = or disjoint i8 %i.bd, -128
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 -1 ; 2 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !16
  %i.bg = lshr i32 %.27598.us154, 6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.477.us156 = phi i32 [ %i.bg, %bb.t ], [ %.27598.us154, %bb.s ] ; 2 uses
  %.168.us157 = phi ptr [ %i.bf, %bb.t ], [ %i.ba, %bb.s ]
  %i.bh = trunc i32 %.477.us156 to i8
  %i.bi = and i8 %i.bh, 63
  %i.bj = or disjoint i8 %i.bi, -128
  %i.bk = getelementptr inbounds i8, ptr %.168.us157, i64 -1 ; 2 uses
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !16
  %i.bl = lshr i32 %.477.us156, 6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.578.us158 = phi i32 [ %i.bl, %bb.u ], [ %.27598.us154, %bb.s ] ; 2 uses
  %.269.us159 = phi ptr [ %i.bk, %bb.u ], [ %i.ba, %bb.s ]
  %i.bm = trunc i32 %.578.us158 to i8
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128
  %i.bp = getelementptr inbounds i8, ptr %.269.us159, i64 -1 ; 2 uses
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !16
  %i.bq = lshr i32 %.578.us158, 6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.679.us160 = phi i32 [ %i.bq, %bb.v ], [ %.27598.us154, %bb.s ]
  %.370.us161 = phi ptr [ %i.bp, %bb.v ], [ %i.ba, %bb.s ]
  %i.br = getelementptr inbounds nuw i8, ptr @_ZN4llvhL13firstByteMarkE, i64 %i.az
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = trunc i32 %.679.us160 to i8
  %i.bu = or i8 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %.370.us161, i64 -1 ; 2 uses
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.az ; 2 uses
  %i.bx = icmp ult ptr %.365100.us153, %1
  br i1 %i.bx, label %.lr.ph.split.split.us, label %.thread107

.thread107:                                       ; preds = %bb.l, %bb.d, %bb.h, %bb.g, %.thread101.us, %bb.f, %bb.w, %.lr.ph.split.split.us, %bb.r, %bb.o, %bb.p, %bb.a
  %.067.lcssa = phi ptr [ %i.b, %bb.a ], [ %.067114.us146, %bb.p ], [ %.067114.us146, %bb.r ], [ %.067114.us146, %.lr.ph.split.split.us ], [ %i.bw, %bb.w ], [ %.067114.us146, %bb.o ], [ %.067114.us, %bb.d ], [ %i.ai, %bb.l ], [ %.067114.us, %bb.f ], [ %.067114.us, %.thread101.us ], [ %.067114.us, %bb.g ], [ %.067114.us, %bb.h ]
  %.062.lcssa = phi ptr [ %i.a, %bb.a ], [ %.062115.us145, %bb.p ], [ %.062115.us145, %bb.r ], [ %.062115.us145, %.lr.ph.split.split.us ], [ %.365100.us153, %bb.w ], [ %.062115.us145, %bb.o ], [ %.062115.us, %bb.d ], [ %.370.us, %bb.l ], [ %.062115.us, %bb.f ], [ %.062115.us, %.thread101.us ], [ %.062115.us, %bb.g ], [ %.062115.us, %bb.h ]
  %.4 = phi i32 [ 0, %bb.a ], [ 3, %bb.p ], [ 2, %bb.r ], [ 3, %.lr.ph.split.split.us ], [ 0, %bb.w ], [ 1, %bb.o ], [ 1, %bb.d ], [ 0, %bb.l ], [ 2, %bb.f ], [ 2, %.thread101.us ], [ 2, %bb.g ], [ 2, %bb.h ]
  store ptr %.062.lcssa, ptr %0, align 8, !tbaa !10
  store ptr %.067.lcssa, ptr %2, align 8, !tbaa !14
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN4llvh18ConvertUTF32toUTF8EPPKjS1_PPhS3_NS_15ConversionFlagsE(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(address) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !14     ; 3 uses
  %i.c = icmp ult ptr %i.a, %1
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp eq i32 %4, 0
  br i1 %i.d, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %.04168.us = phi i32 [ %.1.us103, %bb.i ], [ 0, %.lr.ph ] ; 4 uses
  %.04267.us = phi ptr [ %i.e, %bb.i ], [ %i.a, %.lr.ph ] ; 6 uses
  %.05066.us = phi ptr [ %i.ae, %bb.i ], [ %i.b, %.lr.ph ] ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.04267.us, i64 4 ; 3 uses
  %i.f = load i32, ptr %.04267.us, align 4, !tbaa !3 ; 9 uses
  %i.g = icmp ult i32 %i.f, 128
  br i1 %i.g, label %bb.d, label %5

5:                                                ; preds = %.lr.ph.split.us
  %6 = icmp ult i32 %i.f, 2048
  br i1 %6, label %10, label %bb.b

bb.b:                                             ; preds = %5
  %i.h = icmp ult i32 %i.f, 65536
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i32 %i.f, 1114112
  br i1 %i.i, label %7, label %bb.e

7:                                                ; preds = %bb.c
  %8 = getelementptr inbounds nuw i8, ptr %.05066.us, i64 4
  %9 = icmp ugt ptr %8, %3
  br i1 %9, label %.thread, label %bb.f

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %.05066.us, i64 2
  %12 = icmp ugt ptr %11, %3
  br i1 %12, label %.thread, label %bb.h

bb.d:                                             ; preds = %.lr.ph.split.us
  %13 = getelementptr inbounds nuw i8, ptr %.05066.us, i64 1
  %14 = icmp ugt ptr %13, %3
  br i1 %14, label %.thread, label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %.046.us.jt3 = phi i32 [ %i.f, %bb.b ], [ 65533, %bb.c ]
  %.1.us.jt3 = phi i32 [ %.04168.us, %bb.b ], [ 3, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.05066.us, i64 3
  %i.k = icmp ugt ptr %i.j, %3
  br i1 %i.k, label %.thread, label %bb.g

bb.f:                                             ; preds = %7
  %i.l = trunc i32 %i.f to i8
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = getelementptr inbounds nuw i8, ptr %.05066.us, i64 3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !16
  %i.p = lshr i32 %i.f, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %15 = phi i64 [ 3, %bb.e ], [ 4, %bb.f ]
  %.1.us101 = phi i32 [ %.1.us.jt3, %bb.e ], [ %.04168.us, %bb.f ]
  %.147.us = phi i32 [ %.046.us.jt3, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %i.q = trunc i32 %.147.us to i8
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128
  %i.t = getelementptr inbounds nuw i8, ptr %.05066.us, i64 2
  store i8 %i.s, ptr %i.t, align 1, !tbaa !16
  %i.u = lshr i32 %.147.us, 6
  br label %bb.h

bb.h:                                             ; preds = %10, %bb.g
  %16 = phi i64 [ 2, %10 ], [ %15, %bb.g ]
  %.1.us102 = phi i32 [ %.04168.us, %10 ], [ %.1.us101, %bb.g ]
  %.248.us = phi i32 [ %i.f, %10 ], [ %i.u, %bb.g ] ; 2 uses
  %i.v = trunc i32 %.248.us to i8
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = getelementptr inbounds nuw i8, ptr %.05066.us, i64 1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !16
  %i.z = lshr i32 %.248.us, 6
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %17 = phi i64 [ 1, %bb.d ], [ %16, %bb.h ]      ; 2 uses
  %.1.us103 = phi i32 [ %.04168.us, %bb.d ], [ %.1.us102, %bb.h ] ; 2 uses
  %.349.us = phi i32 [ %i.f, %bb.d ], [ %i.z, %bb.h ]
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4llvhL13firstByteMarkE, i64 %17
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = trunc i32 %.349.us to i8
  %i.ad = or i8 %i.ab, %i.ac
  store i8 %i.ad, ptr %.05066.us, align 1, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %.05066.us, i64 %17 ; 2 uses
  %i.af = icmp ult ptr %i.e, %1
  br i1 %i.af, label %.lr.ph.split.us, label %.thread

default.unreachable:                              ; preds = %bb.o
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %.04168 = phi i32 [ %.1, %bb.s ], [ 0, %.lr.ph ] ; 4 uses
  %.04267 = phi ptr [ %i.ag, %bb.s ], [ %i.a, %.lr.ph ] ; 4 uses
  %.05066 = phi ptr [ %i.bk, %bb.s ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.04267, i64 4 ; 3 uses
  %i.ah = load i32, ptr %.04267, align 4, !tbaa !3 ; 9 uses
  %i.ai = and i32 %i.ah, -2048
  %or.cond = icmp eq i32 %i.ai, 55296
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.aj = icmp ult i32 %i.ah, 128
  br i1 %i.aj, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ult i32 %i.ah, 2048
  br i1 %i.ak, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = icmp ult i32 %i.ah, 65536
  br i1 %i.al, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp ult i32 %i.ah, 1114112             ; 3 uses
  %. = select i1 %i.am, i32 %i.ah, i32 65533
  %.59 = select i1 %i.am, i16 4, i16 3
  %.041. = select i1 %i.am, i32 %.04168, i32 3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.046 = phi i32 [ %i.ah, %bb.l ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ], [ %., %bb.m ] ; 5 uses
  %.045 = phi i16 [ 3, %bb.l ], [ 1, %bb.j ], [ 2, %bb.k ], [ %.59, %bb.m ] ; 2 uses
  %.1 = phi i32 [ %.04168, %bb.l ], [ %.04168, %bb.j ], [ %.04168, %bb.k ], [ %.041., %bb.m ] ; 2 uses
  %i.an = zext nneg i16 %.045 to i64              ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05066, i64 %i.an ; 5 uses
  %i.ap = icmp ugt ptr %i.ao, %3
  br i1 %i.ap, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i16 %.045, label %default.unreachable [
    i16 4, label %bb.p
    i16 3, label %bb.q
    i16 2, label %bb.r
    i16 1, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.aq = trunc i32 %.046 to i8
  %i.ar = and i8 %i.aq, 63
  %i.as = or disjoint i8 %i.ar, -128
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 -1 ; 2 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !16
  %i.au = lshr i32 %.046, 6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.151 = phi ptr [ %i.at, %bb.p ], [ %i.ao, %bb.o ]
  %.147 = phi i32 [ %i.au, %bb.p ], [ %.046, %bb.o ] ; 2 uses
  %i.av = trunc i32 %.147 to i8
  %i.aw = and i8 %i.av, 63
  %i.ax = or disjoint i8 %i.aw, -128
  %i.ay = getelementptr inbounds i8, ptr %.151, i64 -1 ; 2 uses
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !16
  %i.az = lshr i32 %.147, 6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.252 = phi ptr [ %i.ay, %bb.q ], [ %i.ao, %bb.o ]
  %.248 = phi i32 [ %i.az, %bb.q ], [ %.046, %bb.o ] ; 2 uses
  %i.ba = trunc i32 %.248 to i8
  %i.bb = and i8 %i.ba, 63
  %i.bc = or disjoint i8 %i.bb, -128
  %i.bd = getelementptr inbounds i8, ptr %.252, i64 -1 ; 2 uses
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !16
  %i.be = lshr i32 %.248, 6
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r
  %.353 = phi ptr [ %i.bd, %bb.r ], [ %i.ao, %bb.o ]
  %.349 = phi i32 [ %i.be, %bb.r ], [ %.046, %bb.o ]
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN4llvhL13firstByteMarkE, i64 %i.an
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = trunc i32 %.349 to i8
  %i.bi = or i8 %i.bg, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %.353, i64 -1 ; 2 uses
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.an ; 2 uses
  %i.bl = icmp ult ptr %i.ag, %1
  br i1 %i.bl, label %.lr.ph.split, label %.thread

.thread:                                          ; preds = %bb.i, %bb.e, %bb.d, %10, %7, %bb.s, %.lr.ph.split, %bb.n, %bb.a
  %.050.lcssa = phi ptr [ %i.b, %bb.a ], [ %.05066, %bb.n ], [ %.05066, %.lr.ph.split ], [ %i.bk, %bb.s ], [ %.05066.us, %bb.e ], [ %i.ae, %bb.i ], [ %.05066.us, %7 ], [ %.05066.us, %10 ], [ %.05066.us, %bb.d ]
  %.042.lcssa = phi ptr [ %i.a, %bb.a ], [ %.04267, %bb.n ], [ %.04267, %.lr.ph.split ], [ %i.ag, %bb.s ], [ %.04267.us, %bb.e ], [ %i.e, %bb.i ], [ %.04267.us, %7 ], [ %.04267.us, %10 ], [ %.04267.us, %bb.d ]
  %.3 = phi i32 [ 0, %bb.a ], [ 2, %bb.n ], [ 3, %.lr.ph.split ], [ %.1, %bb.s ], [ 2, %bb.e ], [ %.1.us103, %bb.i ], [ 2, %7 ], [ 2, %10 ], [ 2, %bb.d ]
  store ptr %.042.lcssa, ptr %0, align 8, !tbaa !7
  store ptr %.050.lcssa, ptr %2, align 8, !tbaa !14
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext range(i8 0, 2) i8 @_ZN4llvh19isLegalUTF8SequenceEPKhS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !16
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4llvhL20trailingBytesForUTF8E, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16
  %i.e = sext i8 %i.d to i32
  %i.f = add nsw i32 %i.e, 1                      ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp slt i64 %i.j, %i.g
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call fastcc noundef zeroext i8 @_ZN4llvhL11isLegalUTF8EPKhi(ptr noundef nonnull %0, i32 noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext range(i8 0, 2) i8 @_ZN4llvhL11isLegalUTF8EPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -127, 65537) %1) unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  switch i32 %1, label %bb.k [
    i32 4, label %bb.b
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 1, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i8, ptr %0, align 1, !tbaa !16
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16
  %or.cond = icmp sgt i8 %i.d, -65
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.0, i64 -1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %or.cond5 = icmp sgt i8 %i.f, -65
  br i1 %or.cond5, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.1 = phi ptr [ %i.e, %bb.c ], [ %i.b, %bb.a ]
  %i.g = getelementptr inbounds i8, ptr %.1, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16    ; 5 uses
  %or.cond8 = icmp sgt i8 %i.h, -65
  br i1 %or.cond8, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %0, align 1, !tbaa !16      ; 2 uses
  switch i8 %i.i, label %bb.j [
    i8 -32, label %bb.f
    i8 -19, label %bb.g
    i8 -16, label %bb.h
    i8 -12, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i8 %i.h, -96
  br i1 %i.j, label %bb.k, label %.thread

bb.g:                                             ; preds = %bb.e
  %i.k = icmp samesign ugt i8 %i.h, -97
  br i1 %i.k, label %bb.k, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i8 %i.h, -112
  br i1 %i.l, label %bb.k, label %.thread

bb.i:                                             ; preds = %bb.e
  %i.m = icmp samesign ugt i8 %i.h, -113
  br i1 %i.m, label %bb.k, label %.thread

bb.j:                                             ; preds = %._crit_edge, %bb.e
  %i.n = phi i8 [ %.pre, %._crit_edge ], [ %i.i, %bb.e ] ; 2 uses
  %or.cond29 = icmp slt i8 %i.n, -62
  br i1 %or.cond29, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.j
  %i.o = phi i8 [ %i.n, %bb.j ], [ -12, %bb.i ], [ -16, %bb.h ], [ -19, %bb.g ], [ -32, %bb.f ]
  %i.p = icmp ult i8 %i.o, -11
  %. = zext i1 %i.p to i8
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.026 = phi i8 [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.i ], [ %., %.thread ], [ 0, %bb.j ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i8 %.026
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 -127, 129) i32 @_ZN4llvh18getNumBytesForUTF8Eh(i8 noundef zeroext %0) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvhL20trailingBytesForUTF8E, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16
  %i.d = sext i8 %i.c to i32
  %i.e = add nsw i32 %i.d, 1
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext range(i8 0, 2) i8 @_ZN4llvh17isLegalUTF8StringEPPKhS1_(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.promoted = load ptr, ptr %0, align 8, !tbaa !14 ; 2 uses
  %.not17 = icmp eq ptr %.promoted, %1
  br i1 %.not17, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.b = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.d ] ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4llvhL20trailingBytesForUTF8E, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = sext i8 %i.f to i32
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub i64 %i.a, %i.j
  %i.l = icmp slt i64 %i.k, %i.i
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc noundef zeroext i8 @_ZN4llvhL11isLegalUTF8EPKhi(ptr noundef nonnull %i.b, i32 noundef %i.h)
  %.not15 = icmp eq i8 %i.m, 0
  br i1 %.not15, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 %i.i ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !14
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.2 = phi i8 [ 1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %bb.d ]
  ret i8 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN4llvh18ConvertUTF8toUTF16EPPKhS1_PPtS3_NS_15ConversionFlagsE(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(address) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !10     ; 2 uses
  %i.c = icmp ult ptr %i.a, %1
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = icmp eq i32 %4, 0                        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.z
  %.067106 = phi ptr [ %i.b, %.lr.ph ], [ %.269, %bb.z ] ; 16 uses
  %.071105 = phi ptr [ %i.a, %.lr.ph ], [ %.6, %bb.z ] ; 12 uses
  %i.f = load i8, ptr %.071105, align 1, !tbaa !16 ; 7 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN4llvhL20trailingBytesForUTF8E, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16    ; 2 uses
  %i.j = sext i8 %i.i to i16                      ; 2 uses
  %i.k = zext i16 %i.j to i64                     ; 2 uses
  %i.l = ptrtoint ptr %.071105 to i64
  %i.m = sub i64 %i.d, %i.l
  %.not = icmp sgt i64 %i.m, %i.k
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.n = zext i16 %i.j to i32
  %i.o = add nuw nsw i32 %i.n, 1                  ; 5 uses
  %i.p = tail call fastcc noundef zeroext i8 @_ZN4llvhL11isLegalUTF8EPKhi(ptr noundef nonnull %.071105, i32 noundef %i.o)
  %.not83 = icmp eq i8 %i.p, 0
  br i1 %.not83, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.i, label %bb.k [
    i8 5, label %bb.e
    i8 4, label %bb.f
    i8 3, label %bb.g
    i8 2, label %bb.h
    i8 1, label %bb.i
end_hunk_0
