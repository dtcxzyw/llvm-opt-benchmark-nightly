begin_hunk_0_@cactive:bb.a
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv100
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv100
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4  ; 2 uses
  %.not6582 = icmp sgt i32 %i.cf, %i.cd
  br i1 %.not6582, label %.loopexit, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %bb.i
  %i.cg = sext i32 %i.cf to i64
  %i.ch = add i32 %i.cd, 1
  br label %.lr.ph84

bb.j:                                             ; preds = %.lr.ph84
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next97 to i32
  %exitcond99.not = icmp eq i32 %i.ch, %lftr.wideiv
  br i1 %exitcond99.not, label %.loopexit, label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %bb.j
  %indvars.iv96 = phi i64 [ %i.cg, %.lr.ph84.preheader ], [ %indvars.iv.next97, %bb.j ] ; 3 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %indvars.iv96
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv96
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = xor i32 %i.cl, -1
  %i.cn = and i32 %i.cj, %i.cm
  %.not66 = icmp eq i32 %i.cn, 0
  br i1 %.not66, label %bb.j, label %bb.k

bb.k:                                             ; preds = %.lr.ph84
  %i.co = icmp sgt i32 %.55486, 0
  br i1 %i.co, label %.loopexit73, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = add nsw i32 %.55486, 1
  %i.cq = trunc nsw i64 %indvars.iv100 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.i, %bb.l
  %.655 = phi i32 [ %i.cp, %bb.l ], [ %.55486, %bb.i ], [ %.55486, %bb.j ]
  %.6 = phi i32 [ %i.cq, %bb.l ], [ %.589, %bb.i ], [ %.589, %bb.j ] ; 2 uses
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, 1 ; 2 uses
  %lftr.wideiv103 = trunc i64 %indvars.iv.next101 to i32
  %exitcond104.not = icmp eq i32 %i.bv, %lftr.wideiv103
  br i1 %exitcond104.not, label %.loopexit73, label %bb.i

.loopexit73:                                      ; preds = %bb.f, %.loopexit, %bb.k, %.loopexit74, %bb.c
  %.2 = phi i32 [ -1, %bb.c ], [ %.4.ph, %.loopexit74 ], [ -1, %bb.k ], [ %.6, %.loopexit ], [ -1, %bb.f ]
  ret i32 %.2
}

declare i32 @bit_index(...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ccommon(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !14 ; 4 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %.loopexit74, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.b
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %i.g = or i32 %i.f, %i.d                        ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = or i32 %i.i, %i.f                        ; 2 uses
  %i.k = lshr i32 %i.g, 1
  %i.l = and i32 %i.k, %i.g
  %i.m = lshr i32 %i.j, 1
  %i.n = and i32 %i.m, %i.j
  %.demorgan = or i32 %i.n, %i.l
  %i.o = xor i32 %.demorgan, -1
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !15
  %i.q = and i32 %i.p, %i.o
  %.not60 = icmp eq i32 %i.q, 0
  br i1 %.not60, label %.preheader73, label %.loopexit75

.preheader73:                                     ; preds = %bb.b
  %i.r = icmp sgt i32 %i.a, 1
  br i1 %i.r, label %.lr.ph.preheader, label %.loopexit74

.lr.ph.preheader:                                 ; preds = %.preheader73
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit74, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %i.w = or i32 %i.v, %i.t                        ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = or i32 %i.y, %i.v                        ; 2 uses
  %i.aa = lshr i32 %i.w, 1
  %i.ab = and i32 %i.aa, %i.w
  %i.ac = lshr i32 %i.z, 1
  %i.ad = and i32 %i.ac, %i.z
  %.demorgan61 = or i32 %i.ad, %i.ab
  %i.ae = and i32 %.demorgan61, 1431655765
  %.not62 = icmp eq i32 %i.ae, 1431655765
  br i1 %.not62, label %bb.c, label %.loopexit75

.loopexit74:                                      ; preds = %bb.c, %.preheader73, %bb.a
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !16 ; 2 uses
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %.not6985 = icmp slt i32 %i.af, %i.ag
  br i1 %.not6985, label %.lr.ph88, label %.loopexit75

.lr.ph88:                                         ; preds = %.loopexit74
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !18
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !19
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !20
  %i.ak = sext i32 %i.af to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph88, %.loopexit
  %indvars.iv101 = phi i64 [ %i.ak, %.lr.ph88 ], [ %indvars.iv.next102, %.loopexit ] ; 4 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv101
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv101
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv101
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %.not6379 = icmp sgt i32 %i.aq, %i.ao
  br i1 %.not6379, label %.loopexit, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %bb.d
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = add i32 %i.ao, 1                        ; 2 uses
  br label %.lr.ph81

bb.e:                                             ; preds = %.lr.ph81
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next93 to i32
  %exitcond95.not = icmp eq i32 %i.as, %lftr.wideiv
  br i1 %exitcond95.not, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.e
  %indvars.iv92 = phi i64 [ %i.ar, %.lr.ph81.preheader ], [ %indvars.iv.next93, %bb.e ] ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv92
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv92
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv92
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = or i32 %i.ay, %i.aw
  %i.ba = xor i32 %i.az, -1
  %i.bb = and i32 %i.au, %i.ba
  %.not64 = icmp eq i32 %i.bb, 0
  br i1 %.not64, label %bb.e, label %.lr.ph84

bb.f:                                             ; preds = %.lr.ph84
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 2 uses
  %lftr.wideiv99 = trunc i64 %indvars.iv.next97 to i32
  %exitcond100.not = icmp eq i32 %i.as, %lftr.wideiv99
  br i1 %exitcond100.not, label %.loopexit, label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph81, %bb.f
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %bb.f ], [ %i.ar, %.lr.ph81 ] ; 4 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv96
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv96
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv96
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = or i32 %i.bh, %i.bf
  %i.bj = xor i32 %i.bi, -1
  %i.bk = and i32 %i.bd, %i.bj
  %.not66 = icmp eq i32 %i.bk, 0
  br i1 %.not66, label %bb.f, label %.loopexit75

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.d
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, 1 ; 2 uses
  %lftr.wideiv104 = trunc i64 %indvars.iv.next102 to i32
  %exitcond105.not = icmp eq i32 %i.ag, %lftr.wideiv104
  br i1 %exitcond105.not, label %.loopexit75, label %bb.d

.loopexit75:                                      ; preds = %.lr.ph, %.loopexit, %.lr.ph84, %.loopexit74, %bb.b
  %.2 = phi i32 [ 0, %.loopexit ], [ 1, %bb.b ], [ 1, %.lr.ph84 ], [ 0, %.loopexit74 ], [ 1, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @descend(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.d = lshr i32 %i.c, 16                        ; 2 uses
  %.shift = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %2 = load i16, ptr %.shift, align 2, !tbaa !4
  %3 = zext i16 %2 to i32                         ; 2 uses
  %i.e = icmp samesign ugt i32 %i.d, %3
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %i.d, %3
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.c, 1023
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ %i.o, %bb.f ]  ; 3 uses
  %i.h = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4    ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = icmp ugt i32 %i.j, %i.l
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i32 %i.j, %i.l
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %.0, -1
  %i.p = icmp sgt i32 %.0, 1
  br i1 %i.p, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.b ], [ -1, %bb.a ], [ 1, %bb.e ], [ -1, %bb.d ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @ascend(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.d = lshr i32 %i.c, 16                        ; 2 uses
  %.shift = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %2 = load i16, ptr %.shift, align 2, !tbaa !4
  %3 = zext i16 %2 to i32                         ; 2 uses
  %i.e = icmp samesign ugt i32 %i.d, %3
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %i.d, %3
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.c, 1023
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ %i.o, %bb.f ]  ; 3 uses
  %i.h = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4    ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = icmp ugt i32 %i.j, %i.l
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i32 %i.j, %i.l
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %.0, -1
  %i.p = icmp sgt i32 %.0, 1
  br i1 %i.p, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %bb.a
  %.1 = phi i32 [ -1, %bb.b ], [ 1, %bb.a ], [ -1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @lex_order(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = load i32, ptr %i.a, align 4, !tbaa !4
  %i.d = and i32 %i.c, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ %i.l, %bb.d ]  ; 3 uses
  %i.e = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %i.g, %i.i
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.0, -1
  %i.m = icmp sgt i32 %.0, 1
  br i1 %i.m, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.012 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ 0, %bb.d ]
  ret i32 %.012
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @d1_order(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !57
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = load i32, ptr %i.a, align 4, !tbaa !4
  %i.f = and i32 %i.e, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.014 = phi i32 [ %i.f, %bb.a ], [ %i.r, %bb.d ] ; 3 uses
  %i.g = zext nneg i32 %.014 to i64               ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = or i32 %i.k, %i.i                        ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = or i32 %i.n, %i.k                        ; 2 uses
  %i.p = icmp ugt i32 %i.l, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i32 %i.l, %i.o
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i32 %.014, -1
  %i.s = icmp sgt i32 %.014, 1
  br i1 %i.s, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ -1, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @desc1(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %1, null
  %i.c = zext i1 %i.b to i32
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.f = lshr i32 %i.e, 16                        ; 2 uses
  %.shift = getelementptr inbounds nuw i8, ptr %1, i64 2
  %2 = load i16, ptr %.shift, align 2, !tbaa !4
  %3 = zext i16 %2 to i32                         ; 2 uses
  %i.g = icmp samesign ugt i32 %i.f, %3
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i32 %i.f, %3
  br i1 %i.h, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = and i32 %i.e, 1023
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.018 = phi i32 [ %i.i, %bb.f ], [ %i.q, %bb.i ] ; 3 uses
  %i.j = zext nneg i32 %.018 to i64               ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %i.o = icmp ugt i32 %i.l, %i.n
  br i1 %i.o, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ult i32 %i.l, %i.n
  br i1 %i.p, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = add nsw i32 %.018, -1
  %i.r = icmp sgt i32 %.018, 1
  br i1 %i.r, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.d ], [ 1, %bb.h ], [ -1, %bb.g ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 88}
!9 = !{!"cube_struct", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !12, i64 72, !12, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !5, i64 108, !10, i64 112, !5, i64 120, !5, i64 124}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p2 int", !13, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!9, !5, i64 108}
!15 = !{!9, !5, i64 104}
!16 = !{!9, !5, i64 8}
!17 = !{!9, !5, i64 4}
!18 = !{!9, !12, i64 72}
!19 = !{!9, !10, i64 48}
!20 = !{!9, !10, i64 40}
!21 = !{!10, !10, i64 0}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = !{!28}
!28 = distinct !{!28, !24}
!29 = !{!23, !26}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !31}
!34 = !{!9, !5, i64 0}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = !{!41}
!41 = distinct !{!41, !37}
!42 = !{!36, !39}
!43 = distinct !{!43, !31, !32}
!44 = distinct !{!44, !31}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!49}
!49 = distinct !{!49, !47}
!50 = !{!51}
!51 = distinct !{!51, !47}
!52 = !{!53}
!53 = distinct !{!53, !47}
!54 = !{!46, !49, !51}
!55 = distinct !{!55, !31, !32}
!56 = distinct !{!56, !31}
!57 = !{!9, !12, i64 80}
end_hunk_0
