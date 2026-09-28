Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unames?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6icu_78L17writeFactorSuffixEPKttPKcjPtPS3_S5_Pct:bb.a
  store i16 %i.o, ptr %i.p, align 2, !tbaa !29
  %i.q = udiv i32 %.05674, %i.m                   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.s = load i16, ptr %i.r, align 2, !tbaa !29
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = urem i32 %i.q, %i.t
  %i.v = trunc nuw i32 %i.u to i16
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next
  store i16 %i.v, ptr %i.w, align 2, !tbaa !29
  %i.x = udiv i32 %i.q, %i.t                      ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.y = and i64 %indvars.iv.next.1, 65535
  %.not.1 = icmp eq i64 %i.y, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %wide.trip.count.pre-phi = phi i64 [ 0, %bb.a ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph.prol.loopexit ]
  %.056.lcssa = phi i32 [ %3, %bb.a ], [ %.lcssa120.unr, %.lr.ph.prol.loopexit ], [ %i.x, %.lr.ph ]
  %i.z = trunc i32 %.056.lcssa to i16
  store i16 %i.z, ptr %4, align 2, !tbaa !29
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge95, %._crit_edge
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %._crit_edge95 ], [ 0, %._crit_edge ] ; 4 uses
  %.057 = phi ptr [ %.4.lcssa, %._crit_edge95 ], [ %2, %._crit_edge ] ; 3 uses
  %.054 = phi ptr [ %.155, %._crit_edge95 ], [ %5, %._crit_edge ] ; 3 uses
  %.052 = phi ptr [ %.153, %._crit_edge95 ], [ %6, %._crit_edge ] ; 3 uses
  %.049 = phi ptr [ %.150.lcssa, %._crit_edge95 ], [ %7, %._crit_edge ] ; 2 uses
  %.047 = phi i16 [ %.148.lcssa, %._crit_edge95 ], [ %8, %._crit_edge ] ; 2 uses
  %.0 = phi i16 [ %.1.lcssa, %._crit_edge95 ], [ 0, %._crit_edge ] ; 2 uses
  %.not60 = icmp eq ptr %.054, null
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store ptr %.057, ptr %.054, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.155 = phi ptr [ %i.aa, %bb.c ], [ null, %bb.b ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv106 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !29 ; 2 uses
  %.not6176 = icmp eq i16 %i.ac, 0
  br i1 %.not6176, label %._crit_edge79, label %.preheader70

.preheader70:                                     ; preds = %bb.d, %.preheader70
  %.04378 = phi i16 [ %i.ad, %.preheader70 ], [ %i.ac, %bb.d ]
  %.15877 = phi ptr [ %scevgep102, %.preheader70 ], [ %.057, %bb.d ] ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.15877)
  %scevgep = getelementptr i8, ptr %.15877, i64 1
  %scevgep102 = getelementptr i8, ptr %scevgep, i64 %strlen ; 2 uses
  %i.ad = add i16 %.04378, -1                     ; 2 uses
  %.not61 = icmp eq i16 %i.ad, 0
  br i1 %.not61, label %._crit_edge79, label %.preheader70, !llvm.loop !110

._crit_edge79:                                    ; preds = %.preheader70, %bb.d
  %.158.lcssa = phi ptr [ %.057, %bb.d ], [ %scevgep102, %.preheader70 ] ; 3 uses
  %.not62 = icmp eq ptr %.052, null
  br i1 %.not62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge79
  %i.ae = getelementptr inbounds nuw i8, ptr %.052, i64 8
  store ptr %.158.lcssa, ptr %.052, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge79
  %.153 = phi ptr [ %i.ae, %bb.e ], [ null, %._crit_edge79 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.158.lcssa, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.158.lcssa, align 1, !tbaa !25 ; 2 uses
  %.not6381 = icmp eq i8 %i.ag, 0
  br i1 %.not6381, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.f, %bb.h
  %i.ah = phi i8 [ %i.an, %bb.h ], [ %i.ag, %bb.f ]
  %i.ai = phi ptr [ %i.am, %bb.h ], [ %i.af, %bb.f ] ; 2 uses
  %.184 = phi i16 [ %i.al, %bb.h ], [ %.0, %bb.f ]
  %.14883 = phi i16 [ %.2, %bb.h ], [ %.047, %bb.f ] ; 2 uses
  %.15082 = phi ptr [ %.251, %bb.h ], [ %.049, %bb.f ] ; 3 uses
  %.not68 = icmp eq i16 %.14883, 0
  br i1 %.not68, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph86
  %i.aj = getelementptr inbounds nuw i8, ptr %.15082, i64 1
  store i8 %i.ah, ptr %.15082, align 1, !tbaa !25
  %i.ak = add i16 %.14883, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph86
  %.251 = phi ptr [ %i.aj, %bb.g ], [ %.15082, %.lr.ph86 ] ; 2 uses
  %.2 = phi i16 [ %i.ak, %bb.g ], [ 0, %.lr.ph86 ] ; 2 uses
  %i.al = add i16 %.184, 1                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !25  ; 2 uses
  %.not63 = icmp eq i8 %i.an, 0
  br i1 %.not63, label %._crit_edge87, label %.lr.ph86, !llvm.loop !111

._crit_edge87:                                    ; preds = %bb.h, %bb.f
  %.150.lcssa = phi ptr [ %.049, %bb.f ], [ %.251, %bb.h ] ; 2 uses
  %.148.lcssa = phi i16 [ %.047, %bb.f ], [ %.2, %bb.h ] ; 2 uses
  %.1.lcssa = phi i16 [ %.0, %bb.f ], [ %i.al, %bb.h ] ; 2 uses
  %.lcssa71 = phi ptr [ %i.af, %bb.f ], [ %i.am, %bb.h ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv106, %wide.trip.count.pre-phi
  br i1 %exitcond.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge87
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv106
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !29
  %i.aq = load i16, ptr %i.ab, align 2, !tbaa !29
  %i.ar = xor i16 %i.aq, -1
  %i.as = add i16 %i.ap, %i.ar                    ; 2 uses
  %.not6592 = icmp eq i16 %i.as, 0
  br i1 %.not6592, label %._crit_edge95, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %.14494 = phi i16 [ %i.at, %.preheader ], [ %i.as, %bb.i ]
  %.493 = phi ptr [ %scevgep105, %.preheader ], [ %.lcssa71, %bb.i ] ; 2 uses
  %strlen103 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.493)
  %scevgep104 = getelementptr i8, ptr %.493, i64 1
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %strlen103 ; 2 uses
  %i.at = add i16 %.14494, -1                     ; 2 uses
  %.not65 = icmp eq i16 %i.at, 0
  br i1 %.not65, label %._crit_edge95, label %.preheader, !llvm.loop !112

._crit_edge95:                                    ; preds = %.preheader, %bb.i
  %.4.lcssa = phi ptr [ %.lcssa71, %bb.i ], [ %scevgep105, %.preheader ]
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %bb.b, !llvm.loop !113

bb.j:                                             ; preds = %._crit_edge87
  %.not67 = icmp eq i16 %.148.lcssa, 0
  br i1 %.not67, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %.150.lcssa, align 1, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret i16 %.1.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i16 @_ZN6icu_78L10expandNameEPNS_10UCharNamesEPKht15UCharNameChoicePct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i32 noundef range(i32 -2147483648, 4) %3, ptr nofree noundef writeonly captures(none) %4, i16 noundef zeroext %5) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 6 uses
  %i.c = load i16, ptr %i.a, align 2, !tbaa !29   ; 4 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !36
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = and i32 %3, -3
  %or.cond.not = icmp eq i32 %i.g, 0
  br i1 %or.cond.not, label %.loopexit102, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i16 %i.c, 60
  br i1 %i.h, label %.preheader361, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load i16, ptr %i.i, align 4, !tbaa !29
  %i.k = icmp eq i16 %i.j, -1
  br i1 %i.k, label %.preheader361, label %.loopexit99

.preheader361:                                    ; preds = %bb.b, %bb.c
  %.old5.not = icmp eq i16 %2, 0
  br i1 %.old5.not, label %.loopexit101, label %.preheader

.preheader:                                       ; preds = %.preheader361, %.preheader
  %.179 = phi i16 [ %i.l, %.preheader ], [ %2, %.preheader361 ]
  %.173 = phi ptr [ %i.m, %.preheader ], [ %1, %.preheader361 ] ; 2 uses
  %i.l = add i16 %.179, -1                        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.173, i64 1 ; 2 uses
  %i.n = load i8, ptr %.173, align 1, !tbaa !25
  %i.o = icmp ne i8 %i.n, 59
  %i.p = icmp ne i16 %i.l, 0
  %or.cond6 = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond6, label %.preheader, label %.loopexit101, !llvm.loop !114

.loopexit101:                                     ; preds = %.preheader, %.preheader361
  %.280 = phi i16 [ 0, %.preheader361 ], [ %i.l, %.preheader ] ; 3 uses
  %.274 = phi ptr [ %1, %.preheader361 ], [ %i.m, %.preheader ] ; 3 uses
  %i.q = icmp sgt i32 %3, 1
  br i1 %i.q, label %bb.d, label %.loopexit102

bb.d:                                             ; preds = %.loopexit101
  %.old5.not.1 = icmp eq i16 %.280, 0
  br i1 %.old5.not.1, label %.loopexit101.1, label %.preheader.1

.preheader.1:                                     ; preds = %bb.d, %.preheader.1
  %.179.1 = phi i16 [ %i.r, %.preheader.1 ], [ %.280, %bb.d ]
  %.173.1 = phi ptr [ %i.s, %.preheader.1 ], [ %.274, %bb.d ] ; 2 uses
  %i.r = add i16 %.179.1, -1                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.173.1, i64 1 ; 2 uses
  %i.t = load i8, ptr %.173.1, align 1, !tbaa !25
  %i.u = icmp ne i8 %i.t, 59
  %i.v = icmp ne i16 %i.r, 0
  %or.cond6.1 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond6.1, label %.preheader.1, label %.loopexit101.1, !llvm.loop !114

.loopexit101.1:                                   ; preds = %bb.d, %.preheader.1
  %.280.1 = phi i16 [ 0, %bb.d ], [ %i.r, %.preheader.1 ] ; 2 uses
  %.274.1 = phi ptr [ %.274, %bb.d ], [ %i.s, %.preheader.1 ] ; 2 uses
  %.not = icmp eq i16 %.280.1, 0
  br i1 %.not, label %.loopexit102, label %.preheader.2

.preheader.2:                                     ; preds = %.loopexit101.1, %.preheader.2
  %.179.2 = phi i16 [ %i.w, %.preheader.2 ], [ %.280.1, %.loopexit101.1 ]
  %.173.2 = phi ptr [ %i.x, %.preheader.2 ], [ %.274.1, %.loopexit101.1 ] ; 2 uses
  %i.w = add i16 %.179.2, -1                      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.173.2, i64 1 ; 2 uses
  %i.y = load i8, ptr %.173.2, align 1, !tbaa !25
  %i.z = icmp ne i8 %i.y, 59
  %i.aa = icmp ne i16 %i.w, 0
  %or.cond6.2 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond6.2, label %.preheader.2, label %.loopexit102, !llvm.loop !114

.loopexit102:                                     ; preds = %.loopexit101, %.preheader.2, %.loopexit101.1, %bb.a
  %.381 = phi i16 [ %2, %bb.a ], [ %.280, %.loopexit101 ], [ 0, %.loopexit101.1 ], [ %i.w, %.preheader.2 ] ; 3 uses
  %.375 = phi ptr [ %1, %bb.a ], [ %.274, %.loopexit101 ], [ %.274.1, %.loopexit101.1 ], [ %i.x, %.preheader.2 ] ; 2 uses
  %.not124179 = icmp eq i16 %.381, 0
  br i1 %.not124179, label %.loopexit99, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.loopexit102
  %i.ab = icmp eq i32 %3, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  br i1 %i.ab, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %.outer.us
  %.061.ph184.us = phi i16 [ %.2.us, %.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 5 uses
  %.063.ph183.us = phi i16 [ %.5.us, %.outer.us ], [ %5, %.lr.ph.lr.ph ] ; 10 uses
  %.066.ph182.us = phi ptr [ %.571.us, %.outer.us ], [ %4, %.lr.ph.lr.ph ] ; 12 uses
  %.476.ph181.us = phi ptr [ %.6.us, %.outer.us ], [ %.375, %.lr.ph.lr.ph ] ; 3 uses
  %.482.ph180.us = phi i16 [ %.684.us, %.outer.us ], [ %.381, %.lr.ph.lr.ph ] ; 2 uses
  %i.ad = add i16 %.482.ph180.us, -1              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.476.ph181.us, i64 1 ; 3 uses
  %i.af = load i8, ptr %.476.ph181.us, align 1, !tbaa !25 ; 5 uses
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = zext i8 %i.af to i16
  %.not91.us189.peel = icmp ugt i16 %i.c, %i.ah
  br i1 %.not91.us189.peel, label %bb.e, label %.split.us195

bb.e:                                             ; preds = %.lr.ph.us
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ag
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !29 ; 2 uses
  %i.ak = icmp eq i16 %i.aj, -2
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.476.ph181.us, i64 2
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !25
  %i.an = zext i8 %i.am to i64
  %.idx.us190.peel = shl nuw nsw i64 %i.ag, 9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.us190.peel
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !29
  %i.ar = add i16 %.482.ph180.us, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.583.us191.peel = phi i16 [ %i.ar, %bb.f ], [ %i.ad, %bb.e ] ; 4 uses
  %.577.us192.peel = phi ptr [ %i.al, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %.062.us193.peel = phi i16 [ %i.aq, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %i.as = icmp eq i16 %.062.us193.peel, -1
  br i1 %i.as, label %bb.h, label %.split145.us196

bb.h:                                             ; preds = %bb.g
  %.not94.us194.peel = icmp eq i8 %i.af, 59
  br i1 %.not94.us194.peel, label %bb.i, label %.split151.us197

bb.i:                                             ; preds = %bb.h
  %i.at = icmp eq i16 %.061.ph184.us, 0
  br i1 %i.at, label %bb.j, label %.loopexit99

bb.j:                                             ; preds = %bb.i
  %i.au = load i16, ptr %i.ac, align 4, !tbaa !29
  %i.av = icmp ne i16 %i.au, -1
  %.not.us.peel = icmp eq i16 %.583.us191.peel, 0
  %or.cond = or i1 %i.av, %.not.us.peel
  br i1 %or.cond, label %.loopexit99, label %.peel.next

.peel.next:                                       ; preds = %bb.j, %bb.o
  %.476126.us = phi ptr [ %.577.us192, %bb.o ], [ %.577.us192.peel, %bb.j ] ; 3 uses
  %.482125.us = phi i16 [ %.583.us191, %bb.o ], [ %.583.us191.peel, %bb.j ] ; 2 uses
  %i.aw = add i16 %.482125.us, -1                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.476126.us, i64 1 ; 3 uses
  %i.ay = load i8, ptr %.476126.us, align 1, !tbaa !25 ; 5 uses
  %i.az = zext i8 %i.ay to i64                    ; 2 uses
  %i.ba = zext i8 %i.ay to i16
  %.not91.us189 = icmp ugt i16 %i.c, %i.ba
  br i1 %.not91.us189, label %bb.k, label %.split.us195

bb.k:                                             ; preds = %.peel.next
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.az
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !29 ; 2 uses
  %i.bd = icmp eq i16 %i.bc, -2
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.476126.us, i64 2
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !25
  %i.bg = zext i8 %i.bf to i64
  %.idx.us190 = shl nuw nsw i64 %i.az, 9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.us190
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !29
  %i.bk = add i16 %.482125.us, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.583.us191 = phi i16 [ %i.bk, %bb.l ], [ %i.aw, %bb.k ] ; 4 uses
  %.577.us192 = phi ptr [ %i.be, %bb.l ], [ %i.ax, %bb.k ] ; 3 uses
  %.062.us193 = phi i16 [ %i.bj, %bb.l ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bl = icmp eq i16 %.062.us193, -1
  br i1 %i.bl, label %bb.n, label %.split145.us196

bb.n:                                             ; preds = %bb.m
  %.not94.us194 = icmp eq i8 %i.ay, 59
  br i1 %.not94.us194, label %bb.o, label %.split151.us197

bb.o:                                             ; preds = %bb.n
  %.not.us = icmp eq i16 %.583.us191, 0
  br i1 %.not.us, label %.loopexit99, label %.peel.next, !llvm.loop !115

.split.us195:                                     ; preds = %.peel.next, %.lr.ph.us
  %.061127.us.lcssa = phi i16 [ %.061.ph184.us, %.lr.ph.us ], [ 0, %.peel.next ] ; 2 uses
  %.lcssa230 = phi i16 [ %i.ad, %.lr.ph.us ], [ %i.aw, %.peel.next ]
  %.lcssa226 = phi ptr [ %i.ae, %.lr.ph.us ], [ %i.ax, %.peel.next ]
  %.lcssa = phi i8 [ %i.af, %.lr.ph.us ], [ %i.ay, %.peel.next ] ; 2 uses
  %.not96.us = icmp eq i8 %.lcssa, 59
  br i1 %.not96.us, label %.loopexit99, label %bb.p

bb.p:                                             ; preds = %.split.us195
  %.not98.us = icmp eq i16 %.063.ph183.us, 0
  br i1 %.not98.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.066.ph182.us, i64 1
  store i8 %.lcssa, ptr %.066.ph182.us, align 1, !tbaa !25
  %i.bn = add i16 %.063.ph183.us, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.167.us = phi ptr [ %i.bm, %bb.q ], [ %.066.ph182.us, %bb.p ]
  %.164.us = phi i16 [ %i.bn, %bb.q ], [ 0, %bb.p ]
  %i.bo = add i16 %.061127.us.lcssa, 1
  br label %.outer.us

.split145.us196:                                  ; preds = %bb.m, %bb.g
  %.583.us191.lcssa = phi i16 [ %.583.us191.peel, %bb.g ], [ %.583.us191, %bb.m ] ; 2 uses
  %.577.us192.lcssa = phi ptr [ %.577.us192.peel, %bb.g ], [ %.577.us192, %bb.m ] ; 2 uses
  %.062.us193.lcssa = phi i16 [ %.062.us193.peel, %bb.g ], [ %.062.us193, %bb.m ]
  %.061127.us.lcssa234 = phi i16 [ %.061.ph184.us, %bb.g ], [ 0, %bb.m ] ; 2 uses
  %i.bp = zext i16 %.062.us193.lcssa to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !25  ; 2 uses
  %.not92171.us = icmp eq i8 %i.br, 0
  br i1 %.not92171.us, label %.outer.us, label %.lr.ph175.us

.lr.ph175.us:                                     ; preds = %.split145.us196, %bb.t
  %i.bs = phi i8 [ %i.bx, %bb.t ], [ %i.br, %.split145.us196 ]
  %.pn216 = phi ptr [ %i.bt, %bb.t ], [ %i.bq, %.split145.us196 ]
  %.1174.us = phi i16 [ %i.bw, %bb.t ], [ %.061127.us.lcssa234, %.split145.us196 ]
  %.3173.us = phi i16 [ %.4.us, %bb.t ], [ %.063.ph183.us, %.split145.us196 ] ; 2 uses
  %.369172.us = phi ptr [ %.470.us, %bb.t ], [ %.066.ph182.us, %.split145.us196 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn216, i64 1 ; 2 uses
  %.not93.us = icmp eq i16 %.3173.us, 0
  br i1 %.not93.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph175.us
  %i.bu = getelementptr inbounds nuw i8, ptr %.369172.us, i64 1
  store i8 %i.bs, ptr %.369172.us, align 1, !tbaa !25
  %i.bv = add i16 %.3173.us, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph175.us
  %.470.us = phi ptr [ %i.bu, %bb.s ], [ %.369172.us, %.lr.ph175.us ] ; 2 uses
  %.4.us = phi i16 [ %i.bv, %bb.s ], [ 0, %.lr.ph175.us ] ; 2 uses
  %i.bw = add i16 %.1174.us, 1                    ; 2 uses
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !25  ; 2 uses
  %.not92.us = icmp eq i8 %i.bx, 0
  br i1 %.not92.us, label %.outer.us, label %.lr.ph175.us, !llvm.loop !116

.split151.us197:                                  ; preds = %bb.n, %bb.h
  %.583.us191.lcssa241 = phi i16 [ %.583.us191.peel, %bb.h ], [ %.583.us191, %bb.n ]
  %.577.us192.lcssa239 = phi ptr [ %.577.us192.peel, %bb.h ], [ %.577.us192, %bb.n ]
  %.061127.us.lcssa235 = phi i16 [ %.061.ph184.us, %bb.h ], [ 0, %bb.n ]
  %.lcssa224 = phi i8 [ %i.af, %bb.h ], [ %i.ay, %bb.n ]
  %.not95.us = icmp eq i16 %.063.ph183.us, 0
  br i1 %.not95.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split151.us197
  %i.by = getelementptr inbounds nuw i8, ptr %.066.ph182.us, i64 1
  store i8 %.lcssa224, ptr %.066.ph182.us, align 1, !tbaa !25
  %i.bz = add i16 %.063.ph183.us, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.split151.us197
  %.268.us = phi ptr [ %i.by, %bb.u ], [ %.066.ph182.us, %.split151.us197 ]
  %.265.us = phi i16 [ %i.bz, %bb.u ], [ 0, %.split151.us197 ]
  %i.ca = add i16 %.061127.us.lcssa235, 1
  br label %.outer.us

.outer.us:                                        ; preds = %bb.t, %.split145.us196, %bb.v, %bb.r
  %.684.us = phi i16 [ %.lcssa230, %bb.r ], [ %.583.us191.lcssa241, %bb.v ], [ %.583.us191.lcssa, %.split145.us196 ], [ %.583.us191.lcssa, %bb.t ] ; 2 uses
  %.6.us = phi ptr [ %.lcssa226, %bb.r ], [ %.577.us192.lcssa239, %bb.v ], [ %.577.us192.lcssa, %.split145.us196 ], [ %.577.us192.lcssa, %bb.t ]
  %.571.us = phi ptr [ %.167.us, %bb.r ], [ %.268.us, %bb.v ], [ %.066.ph182.us, %.split145.us196 ], [ %.470.us, %bb.t ] ; 2 uses
  %.5.us = phi i16 [ %.164.us, %bb.r ], [ %.265.us, %bb.v ], [ %.063.ph183.us, %.split145.us196 ], [ %.4.us, %bb.t ] ; 2 uses
  %.2.us = phi i16 [ %i.bo, %bb.r ], [ %i.ca, %bb.v ], [ %.061127.us.lcssa234, %.split145.us196 ], [ %i.bw, %bb.t ] ; 2 uses
  %.not124.us = icmp eq i16 %.684.us, 0
  br i1 %.not124.us, label %.loopexit99, label %.lr.ph.us, !llvm.loop !117

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.061.ph184 = phi i16 [ %.2, %.outer ], [ 0, %.lr.ph.lr.ph ] ; 6 uses
  %.063.ph183 = phi i16 [ %.5, %.outer ], [ %5, %.lr.ph.lr.ph ] ; 8 uses
  %.066.ph182 = phi ptr [ %.571, %.outer ], [ %4, %.lr.ph.lr.ph ] ; 10 uses
  %.476.ph181 = phi ptr [ %.6, %.outer ], [ %.375, %.lr.ph.lr.ph ] ; 3 uses
  %.482.ph180 = phi i16 [ %.684, %.outer ], [ %.381, %.lr.ph.lr.ph ] ; 2 uses
  %i.cb = add i16 %.482.ph180, -1                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.476.ph181, i64 1 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_78L10expandNameEPNS_10UCharNamesEPKht15UCharNameChoicePct:bb.a
  %.061117 = phi i16 [ 0, %bb.c ], [ 0, %.loopexit102 ], [ %.061127.us.lcssa, %.split.us195 ], [ 0, %bb.o ], [ %.2.us, %.outer.us ], [ %.061.ph184.us, %bb.i ], [ 0, %bb.j ], [ %.061.ph184, %.split.us ], [ %.2, %.outer ], [ %.061.ph184, %bb.z ]
  %.not97 = icmp eq i16 %.063.ph119, 0
  br i1 %.not97, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.loopexit99
  store i8 0, ptr %.066.ph121, align 1, !tbaa !25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit99
  ret i16 %.061117
}

declare signext i8 @u_charType_78(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZN6icu_78L14enumGroupNamesEPNS_10UCharNamesEPKtiiPFaPvi15UCharNameChoicePKciES4_S5_(ptr nofree noundef readonly captures(none) %0, i16 %.2.val, i16 %.4.val, i32 noundef %1, i32 noundef range(i32 -2147483648, 2147483647) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, i32 noundef range(i32 -2147483648, 4) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [34 x i16], align 16              ; 6 uses
  %i.b = alloca [34 x i16], align 16              ; 6 uses
  %i.c = alloca [200 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = zext i16 %.2.val to i32
  %i.i = shl nuw i32 %i.h, 16
  %i.j = zext i16 %.4.val to i32
  %i.k = or disjoint i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.02749.i = phi i16 [ 0, %bb.a ], [ %.2.i, %bb.i ] ; 2 uses
  %.02848.i = phi i16 [ 0, %bb.a ], [ %.129.i, %bb.i ] ; 4 uses
  %.03047.i = phi i16 [ 0, %bb.a ], [ %.131.i, %bb.i ] ; 3 uses
  %.03246.i = phi ptr [ %i.b, %bb.a ], [ %.133.i, %bb.i ] ; 5 uses
  %.03445.i = phi ptr [ %i.a, %bb.a ], [ %.135.i, %bb.i ] ; 5 uses
  %.03644.i = phi ptr [ %i.m, %bb.a ], [ %i.n, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03644.i, i64 1 ; 4 uses
  %i.o = load i8, ptr %.03644.i, align 1, !tbaa !25 ; 5 uses
  %i.p = icmp samesign ugt i16 %.02749.i, 11
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i16 %.02749.i, 4
  %i.r = and i16 %i.q, 48
  %i.s = lshr i8 %i.o, 4
  %i.t = zext nneg i8 %i.s to i16
  %i.u = or disjoint i16 %i.r, 12
  %i.v = add nuw nsw i16 %i.u, %i.t
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.w = icmp ugt i8 %i.o, -65
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i8 %i.o, 4
  %i.y = zext nneg i8 %i.x to i16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = and i8 %i.o, 63
  %narrow.i = add nuw nsw i8 %i.z, 12
  %i.aa = zext nneg i8 %narrow.i to i16           ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03445.i, i64 2
  store i16 %.02848.i, ptr %.03445.i, align 2, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %.03246.i, i64 2
  store i16 %i.aa, ptr %.03246.i, align 2, !tbaa !29
  %i.ad = add i16 %.02848.i, %i.aa
  %i.ae = add nuw nsw i16 %.03047.i, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.c
  %.1.ph.i = phi i16 [ %i.y, %bb.e ], [ %i.v, %bb.c ] ; 2 uses
  %.0.ph.i = and i8 %i.o, 15                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03445.i, i64 2 ; 2 uses
  store i16 %.02848.i, ptr %.03445.i, align 2, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %.03246.i, i64 2 ; 2 uses
  store i16 %.1.ph.i, ptr %.03246.i, align 2, !tbaa !29
  %i.ah = add i16 %.1.ph.i, %.02848.i             ; 3 uses
  %i.ai = add nuw nsw i16 %.03047.i, 1
  %i.aj = zext nneg i8 %.0.ph.i to i16            ; 4 uses
  %i.ak = icmp samesign ult i8 %.0.ph.i, 12
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.03445.i, i64 4
  store i16 %i.ah, ptr %i.af, align 2, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %.03246.i, i64 4
  store i16 %i.aj, ptr %i.ag, align 2, !tbaa !29
  %i.an = add i16 %i.ah, %i.aj
  %i.ao = add nuw nsw i16 %.03047.i, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.135.i = phi ptr [ %i.al, %bb.h ], [ %i.af, %bb.g ], [ %i.ab, %bb.f ]
  %.133.i = phi ptr [ %i.am, %bb.h ], [ %i.ag, %bb.g ], [ %i.ac, %bb.f ]
  %.131.i = phi i16 [ %i.ao, %bb.h ], [ %i.ai, %bb.g ], [ %i.ae, %bb.f ] ; 2 uses
  %.129.i = phi i16 [ %i.an, %bb.h ], [ %i.ah, %bb.g ], [ %i.ad, %bb.f ]
  %.2.i = phi i16 [ %i.aj, %bb.h ], [ %i.aj, %bb.g ], [ 0, %bb.f ]
  %i.ap = icmp ult i16 %.131.i, 32
  br i1 %i.ap, label %bb.b, label %_ZN6icu_78L18expandGroupLengthsEPKhPtS2_.exit, !llvm.loop !1

_ZN6icu_78L18expandGroupLengthsEPKhPtS2_.exit:    ; preds = %bb.i
  %.not = icmp eq ptr %3, null
  %.not4630 = icmp sgt i32 %1, %2                 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_78L18expandGroupLengthsEPKhPtS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  br i1 %.not4630, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.aq = icmp eq i32 %5, 2
  br i1 %i.aq, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.04229.us = phi i32 [ %i.bc, %bb.l ], [ %1, %.lr.ph ] ; 4 uses
  %i.ar = and i32 %.04229.us, 31
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !29
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.as
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !29
  %i.az = call fastcc noundef zeroext i16 @_ZN6icu_78L10expandNameEPNS_10UCharNamesEPKht15UCharNameChoicePct(ptr noundef %0, ptr noundef nonnull %i.aw, i16 noundef zeroext %i.ay, i32 noundef %5, ptr noundef nonnull %i.c, i16 noundef zeroext 200) ; 2 uses
  %.not49.us = icmp eq i16 %i.az, 0
  br i1 %.not49.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.ba = zext i16 %i.az to i32
  %i.bb = call noundef signext i8 %3(ptr noundef %4, i32 noundef %.04229.us, i32 noundef %5, ptr noundef nonnull %i.c, i32 noundef %i.ba)
  %.not50.us = icmp eq i8 %i.bb, 0
  br i1 %.not50.us, label %.split.us, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split.us
  %i.bc = add i32 %.04229.us, 1
  %exitcond.not = icmp eq i32 %.04229.us, %2
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !119

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %.04229 = phi i32 [ %i.bs, %bb.n ], [ %1, %.lr.ph ] ; 5 uses
  %i.bd = and i32 %.04229, 31
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !29
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.be
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !29
  %i.bl = call fastcc noundef zeroext i16 @_ZN6icu_78L10expandNameEPNS_10UCharNamesEPKht15UCharNameChoicePct(ptr noundef %0, ptr noundef nonnull %i.bi, i16 noundef zeroext %i.bk, i32 noundef 2, ptr noundef nonnull %i.c, i16 noundef zeroext 200) ; 2 uses
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %.thread

bb.m:                                             ; preds = %.lr.ph.split
  %i.bn = call fastcc noundef zeroext i16 @_ZN6icu_78L10getExtNameEjPct(i32 noundef %.04229, ptr noundef nonnull %i.c, i16 noundef zeroext 200) ; 3 uses
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bo
  store i8 0, ptr %i.bp, align 1, !tbaa !25
  %.not49 = icmp eq i16 %i.bn, 0
  br i1 %.not49, label %bb.n, label %.thread

.thread:                                          ; preds = %.lr.ph.split, %bb.m
  %.03981 = phi i16 [ %i.bn, %bb.m ], [ %i.bl, %.lr.ph.split ]
  %i.bq = zext i16 %.03981 to i32
  %i.br = call noundef signext i8 %3(ptr noundef %4, i32 noundef %.04229, i32 noundef 2, ptr noundef nonnull %i.c, i32 noundef %i.bq)
  %.not50 = icmp eq i8 %i.br, 0
  br i1 %.not50, label %.split.us, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %i.bs = add i32 %.04229, 1
  %exitcond60.not = icmp eq i32 %.04229, %2
  br i1 %exitcond60.not, label %.critedge, label %.lr.ph.split, !llvm.loop !119

.split.us:                                        ; preds = %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.critedge52

bb.o:                                             ; preds = %_ZN6icu_78L18expandGroupLengthsEPKhPtS2_.exit
  %i.bt = load ptr, ptr %4, align 8, !tbaa !34    ; 5 uses
  br i1 %.not4630, label %.critedge52, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  %i.bw = load i16, ptr %i.bu, align 4, !tbaa !29 ; 3 uses
  %i.bx = load i32, ptr %0, align 4, !tbaa !36
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  %i.ca = and i32 %5, -3
  %or.cond.not.i = icmp eq i32 %i.ca, 0
  %i.cb = icmp ult i16 %i.bw, 60
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cd = icmp eq i32 %5, 2
  %i.ce = icmp sgt i32 %5, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph33, %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread
  %.14331 = phi i32 [ %1, %.lr.ph33 ], [ %i.ez, %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread ] ; 4 uses
  %i.cf = and i32 %.14331, 31
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !29
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cg
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !29 ; 3 uses
  br i1 %or.cond.not.i, label %.loopexit90.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.cb, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = load i16, ptr %i.cc, align 4, !tbaa !29
  %i.co = icmp eq i16 %i.cn, -1
  br i1 %i.co, label %.preheader, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit

.preheader:                                       ; preds = %bb.q, %bb.r
  %.old5.not.i = icmp eq i16 %i.cm, 0
  br i1 %.old5.not.i, label %.loopexit89.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader, %.preheader.i
  %.166.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.ck, %.preheader ] ; 2 uses
  %.162.i = phi i16 [ %i.cp, %.preheader.i ], [ %i.cm, %.preheader ]
  %i.cp = add i16 %.162.i, -1                     ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.166.i, i64 1 ; 2 uses
  %i.cr = load i8, ptr %.166.i, align 1, !tbaa !25
  %i.cs = icmp ne i8 %i.cr, 59
  %i.ct = icmp ne i16 %i.cp, 0
  %or.cond6.i = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond6.i, label %.preheader.i, label %.loopexit89.i, !llvm.loop !120

.loopexit89.i:                                    ; preds = %.preheader.i, %.preheader
  %.267.i = phi ptr [ %i.ck, %.preheader ], [ %i.cq, %.preheader.i ] ; 3 uses
  %.263.i = phi i16 [ 0, %.preheader ], [ %i.cp, %.preheader.i ] ; 3 uses
  br i1 %i.ce, label %bb.s, label %.loopexit90.i

bb.s:                                             ; preds = %.loopexit89.i
  %.old5.not.i.1 = icmp eq i16 %.263.i, 0
  br i1 %.old5.not.i.1, label %.loopexit89.i.1, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.s, %.preheader.i.1
  %.166.i.1 = phi ptr [ %i.cv, %.preheader.i.1 ], [ %.267.i, %bb.s ] ; 2 uses
  %.162.i.1 = phi i16 [ %i.cu, %.preheader.i.1 ], [ %.263.i, %bb.s ]
  %i.cu = add i16 %.162.i.1, -1                   ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.166.i.1, i64 1 ; 2 uses
  %i.cw = load i8, ptr %.166.i.1, align 1, !tbaa !25
  %i.cx = icmp ne i8 %i.cw, 59
  %i.cy = icmp ne i16 %i.cu, 0
  %or.cond6.i.1 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond6.i.1, label %.preheader.i.1, label %.loopexit89.i.1, !llvm.loop !120

.loopexit89.i.1:                                  ; preds = %bb.s, %.preheader.i.1
  %.267.i.1 = phi ptr [ %.267.i, %bb.s ], [ %i.cv, %.preheader.i.1 ] ; 2 uses
  %.263.i.1 = phi i16 [ 0, %bb.s ], [ %i.cu, %.preheader.i.1 ] ; 2 uses
  %.old5.not.i.2 = icmp eq i16 %.263.i.1, 0
  br i1 %.old5.not.i.2, label %.loopexit90.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.loopexit89.i.1, %.preheader.i.2
  %.166.i.2 = phi ptr [ %i.da, %.preheader.i.2 ], [ %.267.i.1, %.loopexit89.i.1 ] ; 2 uses
  %.162.i.2 = phi i16 [ %i.cz, %.preheader.i.2 ], [ %.263.i.1, %.loopexit89.i.1 ]
  %i.cz = add i16 %.162.i.2, -1                   ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.166.i.2, i64 1 ; 2 uses
  %i.db = load i8, ptr %.166.i.2, align 1, !tbaa !25
  %i.dc = icmp ne i8 %i.db, 59
  %i.dd = icmp ne i16 %i.cz, 0
  %or.cond6.i.2 = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond6.i.2, label %.preheader.i.2, label %.loopexit90.i, !llvm.loop !120

.loopexit90.i:                                    ; preds = %.loopexit89.i, %.preheader.i.2, %.loopexit89.i.1, %bb.p
  %.368.i = phi ptr [ %i.ck, %bb.p ], [ %.267.i, %.loopexit89.i ], [ %.267.i.1, %.loopexit89.i.1 ], [ %i.da, %.preheader.i.2 ]
  %.364.i = phi i16 [ %i.cm, %bb.p ], [ %.263.i, %.loopexit89.i ], [ 0, %.loopexit89.i.1 ], [ %i.cz, %.preheader.i.2 ] ; 2 uses
  %.not109138.i = icmp eq i16 %.364.i, 0
  br i1 %.not109138.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit90.i, %.thread.i
  %.056.ph141.i = phi ptr [ %.3.i, %.thread.i ], [ %i.bt, %.loopexit90.i ] ; 8 uses
  %.4.ph140.i = phi i16 [ %.6.i, %.thread.i ], [ %.364.i, %.loopexit90.i ] ; 3 uses
  %.469.ph139.i = phi ptr [ %.671.i, %.thread.i ], [ %.368.i, %.loopexit90.i ] ; 4 uses
  %i.de = icmp eq ptr %.056.ph141.i, %i.bt
  %or.cond3.i = and i1 %i.cd, %i.de
  br i1 %or.cond3.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.x
  %.4111.us.i = phi i16 [ %.5.us.i, %bb.x ], [ %.4.ph140.i, %.lr.ph.i ] ; 2 uses
  %.469110.us.i = phi ptr [ %.570.us.i, %bb.x ], [ %.469.ph139.i, %.lr.ph.i ] ; 3 uses
  %i.df = add i16 %.4111.us.i, -1                 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.469110.us.i, i64 1 ; 3 uses
  %i.dh = load i8, ptr %.469110.us.i, align 1, !tbaa !25 ; 5 uses
  %i.di = zext i8 %i.dh to i64                    ; 2 uses
  %i.dj = zext i8 %i.dh to i16
  %.not78.us.i = icmp ugt i16 %i.bw, %i.dj
  br i1 %.not78.us.i, label %bb.t, label %.split.us.i

bb.t:                                             ; preds = %.lr.ph.split.us.i
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.di
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !29 ; 2 uses
  %i.dm = icmp eq i16 %i.dl, -2
  br i1 %i.dm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %.469110.us.i, i64 2
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !25
  %i.dp = zext i8 %i.do to i64
  %.idx.us.i = shl nuw nsw i64 %i.di, 9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.us.i
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.dp
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !29
  %i.dt = add i16 %.4111.us.i, -2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.570.us.i = phi ptr [ %i.dn, %bb.u ], [ %i.dg, %bb.t ] ; 3 uses
  %.5.us.i = phi i16 [ %i.dt, %bb.u ], [ %i.df, %bb.t ] ; 4 uses
  %.055.us.i = phi i16 [ %i.ds, %bb.u ], [ %i.dl, %bb.t ] ; 2 uses
  %i.du = icmp eq i16 %.055.us.i, -1
  br i1 %i.du, label %bb.w, label %.split121.us.i

bb.w:                                             ; preds = %bb.v
  %.not81.us.i = icmp eq i8 %i.dh, 59
  br i1 %.not81.us.i, label %bb.x, label %.split126.us.i

bb.x:                                             ; preds = %bb.w
  %i.dv = load i16, ptr %i.cc, align 4, !tbaa !29
  %i.dw = icmp ne i16 %i.dv, -1
  %.not.us.i = icmp eq i16 %.5.us.i, 0
  %or.cond.i = select i1 %i.dw, i1 true, i1 %.not.us.i
  br i1 %or.cond.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit, label %.lr.ph.split.us.i, !llvm.loop !121

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.dx = add i16 %.4.ph140.i, -1                 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.469.ph139.i, i64 1 ; 3 uses
  %i.dz = load i8, ptr %.469.ph139.i, align 1, !tbaa !25 ; 5 uses
  %i.ea = zext i8 %i.dz to i64                    ; 2 uses
  %i.eb = zext i8 %i.dz to i16
  %.not78.i = icmp ugt i16 %i.bw, %i.eb
  br i1 %.not78.i, label %bb.z, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i, %.lr.ph.split.i
  %.us-phi.i = phi i16 [ %i.dx, %.lr.ph.split.i ], [ %i.df, %.lr.ph.split.us.i ]
  %.us-phi117.i = phi ptr [ %i.dy, %.lr.ph.split.i ], [ %i.dg, %.lr.ph.split.us.i ]
  %.us-phi118.i = phi i8 [ %i.dz, %.lr.ph.split.i ], [ %i.dh, %.lr.ph.split.us.i ] ; 2 uses
  %.not83.i = icmp eq i8 %.us-phi118.i, 59
  br i1 %.not83.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit, label %bb.y

bb.y:                                             ; preds = %.split.us.i
  %i.ec = getelementptr i8, ptr %.056.ph141.i, i64 1
  %i.ed = load i8, ptr %.056.ph141.i, align 1, !tbaa !25
  %.not84.i = icmp eq i8 %.us-phi118.i, %i.ed
  br i1 %.not84.i, label %.thread.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread

bb.z:                                             ; preds = %.lr.ph.split.i
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.ea
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !29 ; 2 uses
  %i.eg = icmp eq i16 %i.ef, -2
  br i1 %i.eg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %.469.ph139.i, i64 2
  %i.ei = load i8, ptr %i.dy, align 1, !tbaa !25
  %i.ej = zext i8 %i.ei to i64
  %.idx.i = shl nuw nsw i64 %i.ea, 9
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load i16, ptr %i.el, align 2, !tbaa !29
  %i.en = add i16 %.4.ph140.i, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.570.i = phi ptr [ %i.eh, %bb.aa ], [ %i.dy, %bb.z ] ; 2 uses
  %.5.i = phi i16 [ %i.en, %bb.aa ], [ %i.dx, %bb.z ] ; 2 uses
  %.055.i = phi i16 [ %i.em, %bb.aa ], [ %i.ef, %bb.z ] ; 2 uses
  %i.eo = icmp eq i16 %.055.i, -1
  br i1 %i.eo, label %bb.ac, label %.split121.us.i

bb.ac:                                            ; preds = %bb.ab
  %.not81.i = icmp eq i8 %i.dz, 59
  br i1 %.not81.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit, label %.split126.us.i

.split126.us.i:                                   ; preds = %bb.w, %bb.ac
  %.us-phi127.i = phi ptr [ %.570.i, %bb.ac ], [ %.570.us.i, %bb.w ]
  %.us-phi128.i = phi i16 [ %.5.i, %bb.ac ], [ %.5.us.i, %bb.w ]
  %.us-phi129.i = phi i8 [ %i.dz, %bb.ac ], [ %i.dh, %bb.w ]
  %i.ep = getelementptr i8, ptr %.056.ph141.i, i64 1
  %i.eq = load i8, ptr %.056.ph141.i, align 1, !tbaa !25
  %.not82.i = icmp eq i8 %.us-phi129.i, %i.eq
  br i1 %.not82.i, label %.thread.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread

.split121.us.i:                                   ; preds = %bb.v, %bb.ab
  %.us-phi122.i = phi ptr [ %.570.i, %bb.ab ], [ %.570.us.i, %bb.v ]
  %.us-phi123.i = phi i16 [ %.5.i, %bb.ab ], [ %.5.us.i, %bb.v ]
  %.us-phi124.i = phi i16 [ %.055.i, %bb.ab ], [ %.055.us.i, %bb.v ]
  %i.er = zext i16 %.us-phi124.i to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.er
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.split121.us.i
  %.1.i = phi ptr [ %.056.ph141.i, %.split121.us.i ], [ %i.ev, %bb.ae ] ; 3 uses
  %.0.i = phi ptr [ %i.es, %.split121.us.i ], [ %i.eu, %bb.ae ] ; 2 uses
  %i.et = load i8, ptr %.0.i, align 1, !tbaa !25  ; 2 uses
  %.not79.i = icmp eq i8 %i.et, 0
  br i1 %.not79.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.ev = getelementptr i8, ptr %.1.i, i64 1
  %i.ew = load i8, ptr %.1.i, align 1, !tbaa !25
  %.not80.i = icmp eq i8 %i.et, %i.ew
  br i1 %.not80.i, label %bb.ad, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread, !llvm.loop !122

.thread.i:                                        ; preds = %bb.ad, %.split126.us.i, %bb.y
  %.671.i = phi ptr [ %.us-phi117.i, %bb.y ], [ %.us-phi127.i, %.split126.us.i ], [ %.us-phi122.i, %bb.ad ]
  %.6.i = phi i16 [ %.us-phi.i, %bb.y ], [ %.us-phi128.i, %.split126.us.i ], [ %.us-phi123.i, %bb.ad ] ; 2 uses
  %.3.i = phi ptr [ %i.ec, %bb.y ], [ %i.ep, %.split126.us.i ], [ %.1.i, %bb.ad ] ; 2 uses
  %.not109.i = icmp eq i16 %.6.i, 0
  br i1 %.not109.i, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit, label %.lr.ph.i, !llvm.loop !121

_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit: ; preds = %.split.us.i, %bb.ac, %.thread.i, %bb.x, %bb.r, %.loopexit90.i
  %.056.ph106.i = phi ptr [ %i.bt, %bb.x ], [ %i.bt, %.loopexit90.i ], [ %i.bt, %bb.r ], [ %.056.ph141.i, %.split.us.i ], [ %.3.i, %.thread.i ], [ %.056.ph141.i, %bb.ac ]
  %i.ex = load i8, ptr %.056.ph106.i, align 1, !tbaa !25
  %.not3 = icmp eq i8 %i.ex, 0
  br i1 %.not3, label %bb.af, label %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread

bb.af:                                            ; preds = %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.14331, ptr %i.ey, align 8, !tbaa !35
  br label %.critedge52

_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread: ; preds = %.split126.us.i, %bb.y, %bb.ae, %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit
  %i.ez = add i32 %.14331, 1
  %exitcond61.not = icmp eq i32 %.14331, %2
  br i1 %exitcond61.not, label %.critedge52, label %bb.p, !llvm.loop !123

.critedge:                                        ; preds = %bb.l, %bb.n, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.critedge52

.critedge52:                                      ; preds = %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread, %bb.o, %.critedge, %bb.af, %.split.us
  %.2 = phi i8 [ 0, %bb.af ], [ 0, %.split.us ], [ 1, %.critedge ], [ 1, %bb.o ], [ 1, %_ZN6icu_78L11compareNameEPNS_10UCharNamesEPKht15UCharNameChoicePKc.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i8 %.2
}

declare void @u_charsToUChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
end_hunk_1
