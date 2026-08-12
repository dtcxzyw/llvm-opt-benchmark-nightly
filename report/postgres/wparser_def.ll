inline.NumInlined: 59
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@p_isurlchar:bb.a
  %or.cond = icmp ult i8 %i.j, -94
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %i.i, label %bb.d [
    i8 34, label %bb.e
    i8 60, label %bb.e
    i8 62, label %bb.e
    i8 92, label %bb.e
    i8 94, label %bb.e
    i8 96, label %bb.e
    i8 123, label %bb.e
    i8 124, label %bb.e
    i8 125, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @p_isURLPath(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @palloc0(i64 noundef 72) #12 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.c, ptr %i.d, align 8
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sub i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %TParserCopyInit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.w, ptr %i.x, align 8
  br label %TParserCopyInit.exit

TParserCopyInit.exit:                             ; preds = %bb.a, %bb.b
  %i.y = tail call ptr @palloc(i64 noundef 40) #12 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  store i32 0, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ac = tail call ptr @palloc(i64 noundef 40) #12 ; 6 uses
  %.not.i17 = icmp eq ptr %i.ab, null
  br i1 %.not.i17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %TParserCopyInit.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 24, i1 false)
  br label %newTParserPosition.exit

bb.d:                                             ; preds = %TParserCopyInit.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 24, i1 false)
  br label %newTParserPosition.exit

newTParserPosition.exit:                          ; preds = %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %i.ae, align 8
  store ptr %i.ac, ptr %i.z, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  store i32 57, ptr %i.af, align 4
  tail call void @check_stack_depth() #12
  %i.ag = tail call fastcc zeroext i1 @TParserGet(ptr noundef nonnull %i.a)
  br i1 %i.ag, label %bb.e, label %bb.g

bb.e:                                             ; preds = %newTParserPosition.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %i.ai, 18
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = add i32 %i.an, %i.al
  store i32 %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = add i32 %i.at, %i.aq
  store i32 %i.au, ptr %i.as, align 4
  %i.av = load i32, ptr %i.ak, align 8
  %i.aw = load ptr, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = add i32 %i.ay, %i.av
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = load i32, ptr %i.ap, align 4
  %i.bb = load ptr, ptr %i.f, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = add i32 %i.bd, %i.ba
  store i32 %i.be, ptr %i.bc, align 8
  %i.bf = load ptr, ptr %i.z, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.f, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %i.bh, ptr %i.bj, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %newTParserPosition.exit
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %newTParserPosition.exit ]
  %i.bk = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not6.i = icmp eq ptr %i.bk, null
  br i1 %.not6.i, label %TParserCopyClose.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.bl = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.bk, %bb.g ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  tail call void @pfree(ptr noundef nonnull %i.bl) #12
  store ptr %i.bn, ptr %i.z, align 8
  %.not.i18 = icmp eq ptr %i.bn, null
  br i1 %.not.i18, label %TParserCopyClose.exit, label %.lr.ph.i, !llvm.loop !33

TParserCopyClose.exit:                            ; preds = %.lr.ph.i, %bb.g
  tail call void @pfree(ptr noundef nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @SpecialFURL(ptr nofree noundef captures(none) initializes((41, 42)) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = load i32, ptr %i.c, align 8
  %i.g = sub i32 %i.f, %i.e
  store i32 %i.g, ptr %i.c, align 8
  %i.h = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sub i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @SpecialHyphen(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = load i32, ptr %i.b, align 8
  %i.f = sub i32 %i.e, %i.d
  store i32 %i.f, ptr %i.b, align 8
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sub i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @hlCover(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.hlCheck, align 8            ; 6 uses
  %.not = icmp eq ptr %2, null
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %.not, label %.loopexit, label %.lr.ph168.lr.ph

.lr.ph168.lr.ph:                                  ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4              ; 2 uses
  %7 = icmp sgt i32 %i.f, 0
  br i1 %7, label %.lr.ph168, label %.loopexit

.lr.ph168:                                        ; preds = %.lr.ph168.lr.ph
  %i.g = load i32, ptr %3, align 4
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph168, %.thread146
  %8 = phi i32 [ %9, %.thread146 ], [ %i.f, %.lr.ph168 ]
  %.0100250 = phi i32 [ %i.bf, %.thread146 ], [ %i.g, %.lr.ph168 ] ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8
  %wide.trip.count209 = zext nneg i32 %8 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph179, %._crit_edge
  %indvars.iv206 = phi i64 [ 0, %.lr.ph179 ], [ %indvars.iv.next207, %._crit_edge ] ; 2 uses
  %.0104166177 = phi i32 [ -1, %.lr.ph179 ], [ %spec.select, %._crit_edge ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv206
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !34

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %.not127 = icmp sgt i32 %.0100250, %i.q
  br i1 %.not127, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %spec.select = call i32 @llvm.smax.i32(i32 %i.q, i32 %.0104166177) ; 4 uses
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %.lr.ph184, label %bb.b

.lr.ph184:                                        ; preds = %._crit_edge
  %i.r = load i32, ptr %i.a, align 4              ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph192, label %.critedge

.lr.ph192:                                        ; preds = %.lr.ph184
  %i.t = load ptr, ptr %i.b, align 8
  %wide.trip.count218 = zext nneg i32 %i.r to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph192, %bb.h
  %indvars.iv214 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next215, %bb.h ] ; 2 uses
  %.0102183190 = phi i32 [ 2147483646, %.lr.ph192 ], [ %spec.select134, %bb.h ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv214
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = zext i32 %i.w to i64
  br label %bb.f

.critedge:                                        ; preds = %bb.h, %.lr.ph184
  %.0102.lcssa = phi i32 [ 2147483646, %.lr.ph184 ], [ %spec.select134, %bb.h ]
  %i.aa = call i32 @llvm.smax.i32(i32 %.0102.lcssa, i32 %.0100250) ; 4 uses
  %.not129 = icmp sgt i32 %i.aa, %spec.select
  br i1 %.not129, label %.thread146, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.ab = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph197, label %.thread146

.lr.ph197:                                        ; preds = %.preheader
  %i.ad = load ptr, ptr %0, align 8
  %wide.trip.count224 = zext nneg i32 %i.ab to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.g ], [ %i.z, %bb.e ]
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, -1 ; 3 uses
  %i.ae = and i64 %indvars.iv.next212, 2147483648
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = and i64 %indvars.iv.next212, 2147483647
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = zext i16 %i.aj to i32
  %i.al = load i32, ptr %i.y, align 8
  %i.am = sub i32 %i.ak, %i.al                    ; 2 uses
  %.not133 = icmp sgt i32 %i.am, %spec.select
  br i1 %.not133, label %bb.f, label %bb.h, !llvm.loop !35

bb.h:                                             ; preds = %bb.f, %bb.g
  %.299 = phi i32 [ %i.am, %bb.g ], [ -1, %bb.f ]
  %spec.select134 = call i32 @llvm.smin.i32(i32 %.299, i32 %.0102183190) ; 2 uses
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count218
  br i1 %exitcond219.not, label %.critedge, label %bb.e

bb.i:                                             ; preds = %.lr.ph197, %bb.k
  %indvars.iv220 = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next221, %bb.k ] ; 4 uses
  %.089195 = phi i32 [ -1, %.lr.ph197 ], [ %.1, %bb.k ] ; 2 uses
  %.090194 = phi i32 [ -1, %.lr.ph197 ], [ %.2, %bb.k ] ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv220 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp slt i32 %.090194, 0                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.at = load i16, ptr %i.as, align 4
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %.pre228 = trunc nuw nsw i64 %indvars.iv220 to i32
  %.not130 = icmp sle i32 %i.aa, %i.au
  %i.av = trunc nuw nsw i64 %indvars.iv220 to i32 ; 2 uses
  %.pre-phi229 = select i1 %i.ar, i32 %i.av, i32 %.pre228
  %i.aw = and i1 %i.ar, %.not130
  %.191 = select i1 %i.aw, i32 %i.av, i32 %.090194 ; 2 uses
  %.not131 = icmp samesign ult i32 %spec.select, %i.au
  br i1 %.not131, label %._crit_edge198, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2 = phi i32 [ %.090194, %bb.i ], [ %.191, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %.089195, %bb.i ], [ %.pre-phi229, %bb.j ] ; 2 uses
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count224
  br i1 %exitcond225.not, label %._crit_edge198, label %bb.i, !llvm.loop !36

._crit_edge198:                                   ; preds = %bb.k, %bb.j
  %.089.lcssa = phi i32 [ %.089195, %bb.j ], [ %.1, %bb.k ] ; 3 uses
  %.3 = phi i32 [ %.191, %bb.j ], [ %.2, %bb.k ]  ; 5 uses
  %i.ax = icmp slt i32 %.3, 0
  %.not132 = icmp slt i32 %.089.lcssa, %.3
  %or.cond = select i1 %i.ax, i1 true, i1 %.not132
  br i1 %or.cond, label %.thread146, label %bb.l

bb.l:                                             ; preds = %._crit_edge198
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ay = load ptr, ptr %0, align 8
  %i.az = zext nneg i32 %.3 to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.az
  store ptr %i.ba, ptr %6, align 8
  %i.bb = add i32 %.089.lcssa, 1
  %i.bc = sub i32 %i.bb, %.3
  store i32 %i.bc, ptr %i.d, align 8
  %i.bd = call zeroext i1 @TS_execute(ptr noundef nonnull %i.e, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull @checkcondition_HL) #12
  br i1 %i.bd, label %bb.m, label %.thread149

.thread149:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.thread146

bb.m:                                             ; preds = %bb.l
  %i.be = add nsw i32 %i.aa, 1
  store i32 %i.be, ptr %3, align 4
  store i32 %.3, ptr %4, align 4
  store i32 %.089.lcssa, ptr %5, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.loopexit

.thread146:                                       ; preds = %.preheader, %._crit_edge198, %.critedge, %.thread149
  %i.bf = add i32 %i.aa, 1
  %9 = load i32, ptr %i.a, align 4                ; 2 uses
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.lr.ph179, label %.loopexit

.loopexit:                                        ; preds = %.thread146, %bb.b, %bb.c, %.lr.ph168.lr.ph, %bb.a, %bb.m
  %.8.ph = phi i1 [ false, %bb.a ], [ true, %bb.m ], [ false, %bb.b ], [ false, %.lr.ph168.lr.ph ], [ false, %bb.c ], [ false, %.thread146 ]
  ret i1 %.8.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mark_fragment(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %.not41 = icmp sgt i32 %2, %3
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.042.us = phi i32 [ %i.u, %bb.e ], [ %2, %.lr.ph ] ; 2 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = sext i32 %.042.us to i64                 ; 4 uses
  %i.c = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %.not38.us = icmp eq ptr %i.e, null
  br i1 %.not38.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.f = load i32, ptr %i.c, align 8
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.c, align 8
  %.pre44 = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.h = phi ptr [ %.pre44, %bb.b ], [ %i.a, %.lr.ph.split.us ] ; 2 uses
  %i.i = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.b ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = lshr i32 %i.j, 8
  %trunc40.us = trunc i32 %i.k to i8
  switch i8 %trunc40.us, label %bb.e [
    i8 5, label %bb.d
    i8 15, label %bb.d
    i8 16, label %bb.d
    i8 17, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.l = or i32 %i.j, 16
  store i32 %i.l, ptr %i.i, align 8
  %.pre45 = load ptr, ptr %0, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [24 x i8], ptr %.pre45, i64 %i.b
  %.pre46 = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i32 [ %.pre46, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %.pre45, %bb.d ], [ %i.h, %bb.c ]
  %i.o = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.b
  %i.p = lshr i32 %i.m, 2
  %i.q = and i32 %i.p, 2
  %i.r = and i32 %i.m, -3
  %i.s = or disjoint i32 %i.q, %i.r
  %i.t = xor i32 %i.s, 2
  store i32 %i.t, ptr %i.o, align 8
  %i.u = add i32 %.042.us, 1                      ; 2 uses
  %.not.us = icmp sgt i32 %i.u, %3
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !37

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.042 = phi i32 [ %i.ar, %bb.h ], [ %2, %.lr.ph ] ; 2 uses
  %i.v = load ptr, ptr %0, align 8                ; 2 uses
  %i.w = sext i32 %.042 to i64                    ; 3 uses
  %i.x = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %.not38 = icmp eq ptr %i.z, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.aa = load i32, ptr %i.x, align 8
  %i.ab = or i32 %i.aa, 1
  store i32 %i.ab, ptr %i.x, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split
  %i.ac = phi ptr [ %.pre, %bb.f ], [ %i.v, %.lr.ph.split ]
  %i.ad = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.w ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = lshr i32 %i.ae, 8
  %trunc = trunc i32 %i.af to i8
  %switch.tableidx = add i8 %trunc, -5            ; 3 uses
  %i.ag = icmp ult i8 %switch.tableidx, 13
  br i1 %i.ag, label %switch.hole_check, label %bb.h

switch.hole_check:                                ; preds = %bb.g
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 7425, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ah = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.mark_fragment, i64 %i.ah
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.ai = or i32 %i.ae, %switch.ext
  store i32 %i.ai, ptr %i.ad, align 8
  br label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %bb.g, %switch.lookup
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %i.w ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = lshr i32 %i.al, 2
  %i.an = and i32 %i.am, 2
  %i.ao = and i32 %i.al, -3
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = xor i32 %i.ap, 2
  store i32 %i.aq, ptr %i.ak, align 8
  %i.ar = add i32 %.042, 1                        ; 2 uses
  %.not = icmp sgt i32 %i.ar, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.h, %bb.e, %bb.a
  ret void
}

declare zeroext i1 @TS_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
end_hunk_0
