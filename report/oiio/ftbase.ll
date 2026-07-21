inline.NumInlined: 362
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@FT_Outline_Render:bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not37 = icmp eq ptr %1, null
  br i1 %.not37, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not38 = icmp eq ptr %2, null
  br i1 %.not38, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !137  ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %FT_Outline_Get_CBox.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 5 uses
  %i.f = sext i16 %i.b to i64
  %.idx.i = shl nsw i64 %i.f, 4
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %.idx.i
  %i.h = load i64, ptr %i.e, align 8, !tbaa !165  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !167  ; 4 uses
  %i.k = icmp sgt i16 %i.b, 1
  br i1 %i.k, label %.lr.ph.preheader.i, label %FT_Outline_Get_CBox.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.04051.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.04057.i = phi ptr [ %.040.i, %.lr.ph.i ], [ %.04051.i, %.lr.ph.preheader.i ] ; 3 uses
  %.056.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %.03455.i = phi i64 [ %.135.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.03754.i = phi i64 [ %.138.i, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %.pn53.i = phi ptr [ %.04057.i, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %.04152.i = phi i64 [ %.142.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %i.l = load i64, ptr %.04057.i, align 8, !tbaa !165 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.056.i) ; 2 uses
  %.138.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 %.03754.i) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn53.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !167  ; 2 uses
  %.135.i = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.03455.i) ; 2 uses
  %.142.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 %.04152.i) ; 2 uses
  %.040.i = getelementptr inbounds nuw i8, ptr %.04057.i, i64 16 ; 2 uses
  %i.o = icmp ult ptr %.040.i, %i.g
  br i1 %i.o, label %.lr.ph.i, label %FT_Outline_Get_CBox.exit, !llvm.loop !287

FT_Outline_Get_CBox.exit:                         ; preds = %.lr.ph.i, %bb.d, %bb.e
  %.243.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.e ], [ %.142.i, %.lr.ph.i ] ; 2 uses
  %.239.i = phi i64 [ 0, %bb.d ], [ %i.h, %bb.e ], [ %.138.i, %.lr.ph.i ] ; 2 uses
  %.236.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.e ], [ %.135.i, %.lr.ph.i ] ; 2 uses
  %.2.i = phi i64 [ 0, %bb.d ], [ %i.h, %bb.e ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.p = icmp slt i64 %.2.i, -16777216
  %i.q = icmp slt i64 %.236.i, -16777216
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  %i.r = icmp sgt i64 %.239.i, 16777216
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.r
  %i.s = icmp sgt i64 %.243.i, 16777216
  %or.cond8 = select i1 %or.cond5, i1 true, i1 %i.s
  br i1 %or.cond8, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !148  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.x, align 8, !tbaa !564
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !567
  %i.aa = and i32 %i.z, 6
  %or.cond44 = icmp eq i32 %i.aa, 2
  br i1 %or.cond44, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = ashr i64 %.2.i, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !568
  %i.ad = ashr i64 %.236.i, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !569
  %i.af = add nsw i64 %.239.i, 63
  %i.ag = ashr i64 %i.af, 6
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !570
  %i.ai = add nsw i64 %.243.i, 63
  %i.aj = ashr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !571
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not4151 = icmp eq ptr %i.u, null
  br i1 %.not4151, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !521
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !505
  %i.ap = tail call i32 %i.am(ptr noundef %i.ao, ptr noundef nonnull %2) #30 ; 2 uses
  %.not4277 = icmp eq i32 %i.ap, 0
  br i1 %.not4277, label %.loopexit, label %.lr.ph79

.lr.ph.loopexit:                                  ; preds = %.lr.ph.i45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !521
  %i.as = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !505
  %i.au = tail call i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %2) #30 ; 2 uses
  %.not42 = icmp eq i32 %i.au, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph79, !llvm.loop !572

.lr.ph79:                                         ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %i.av = phi i32 [ %i.au, %.lr.ph.loopexit ], [ %i.ap, %.lr.ph.preheader ] ; 4 uses
  %.0505278 = phi ptr [ %.232.i, %.lr.ph.loopexit ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %i.aw = and i32 %i.av, 255
  %.not43 = icmp eq i32 %i.aw, 19
  br i1 %.not43, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph79
  %.not25.i = icmp eq ptr %.0505278, null
  %i.ax = getelementptr inbounds nuw i8, ptr %.0505278, i64 8
  %spec.select = select i1 %.not25.i, ptr %i.v, ptr %i.ax
  %.016.i = load ptr, ptr %spec.select, align 8, !tbaa !369 ; 2 uses
  %.not2631.i = icmp eq ptr %.016.i, null
  br i1 %.not2631.i, label %.loopexit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.i, %bb.j
  %.232.i = phi ptr [ %i.be, %bb.j ], [ %.016.i, %bb.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.232.i, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !155 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !149
  %i.bc = icmp eq i32 %i.bb, 1869968492
  br i1 %i.bc, label %.lr.ph.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i45
  %i.bd = getelementptr inbounds nuw i8, ptr %.232.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !157 ; 2 uses
  %.not26.i = icmp eq ptr %i.be, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph.i45

.loopexit:                                        ; preds = %.lr.ph79, %.lr.ph.loopexit, %bb.i, %bb.j, %.lr.ph.preheader, %bb.h, %FT_Outline_Get_CBox.exit, %bb.c, %bb.b, %bb.a
  %.031 = phi i32 [ 6, %bb.c ], [ 20, %FT_Outline_Get_CBox.exit ], [ 20, %bb.b ], [ 33, %bb.a ], [ 19, %bb.h ], [ %i.av, %bb.j ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.loopexit ], [ %i.av, %.lr.ph79 ], [ %i.av, %bb.i ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define i32 @FT_Outline_Get_Bitmap(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Raster_Params_, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %3, align 8, !tbaa !573
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !567
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.c = load i8, ptr %i.b, align 2, !tbaa !290
  switch i8 %i.c, label %bb.d [
    i8 2, label %bb.c
    i8 5, label %bb.c
    i8 6, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  store i32 1, ptr %i.a, align 8, !tbaa !567
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = call i32 @FT_Outline_Render(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 21) i32 @FT_Outline_Embolden(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call i32 @FT_Outline_EmboldenXY(ptr noundef %0, i64 noundef %1, i64 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 21) i32 @FT_Outline_EmboldenXY(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = sdiv i64 %1, 2                             ; 3 uses
  %4 = sdiv i64 %2, 2                             ; 3 uses
  %.off = add i64 %1, 1
  %i.a = icmp ult i64 %.off, 3
  %.off117 = add i64 %2, 1
  %i.b = icmp ult i64 %.off117, 3
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @FT_Outline_Get_Orientation(ptr noundef nonnull %0) ; 2 uses
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i16, ptr %0, align 8, !tbaa !138
  %.not123 = icmp eq i16 %i.e, 0
  %. = select i1 %.not123, i32 0, i32 6
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162  ; 3 uses
  %i.h = load i16, ptr %0, align 8, !tbaa !138    ; 2 uses
  %i.i = icmp sgt i16 %i.h, 0
  br i1 %i.i, label %.lr.ph199, label %.loopexit

.lr.ph199:                                        ; preds = %bb.e
  %wide.trip.count = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !139
  %i.l = icmp eq i32 %i.c, 0                      ; 3 uses
  %sext.i130 = shl i64 %3, 32
  %i.m = ashr exact i64 %sext.i130, 32
  %.023.i = tail call i64 @llvm.abs.i64(i64 %3, i1 true)
  %i.n = icmp slt i64 %1, -1
  %sext.i144 = shl i64 %4, 32
  %i.o = ashr exact i64 %sext.i144, 32
  %.023.i150 = tail call i64 @llvm.abs.i64(i64 %4, i1 true)
  %i.p = icmp slt i64 %2, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph199, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0111197 = phi i32 [ -1, %.lr.ph199 ], [ %i.t, %._crit_edge ]
  %i.q = add nsw i32 %.0111197, 1                 ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !141  ; 2 uses
  %i.t = sext i16 %i.s to i32                     ; 5 uses
  %i.u = icmp ne i32 %i.q, %i.t
  %i.v = icmp ne i16 %i.s, -1
  %i.w = and i1 %i.u, %i.v
  br i1 %i.w, label %.lr.ph195, label %._crit_edge

.lr.ph195:                                        ; preds = %bb.f, %FT_Vector_NormLen.exit.thread
  %.0193 = phi i32 [ %.3, %FT_Vector_NormLen.exit.thread ], [ -1, %bb.f ] ; 6 uses
  %.097192 = phi i32 [ %i.gw, %FT_Vector_NormLen.exit.thread ], [ %i.q, %bb.f ] ; 9 uses
  %.098191 = phi i32 [ %.3101, %FT_Vector_NormLen.exit.thread ], [ %i.t, %bb.f ] ; 6 uses
  %.0104189 = phi i64 [ %.3107, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.0109188 = phi i64 [ %.1110, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.052.0186 = phi i64 [ %.sroa.052.3, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.5.0184 = phi i64 [ %.sroa.5.3, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.056.0183 = phi i64 [ %.sroa.056.1, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.8.0182 = phi i64 [ %.sroa.8.1, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.not118 = icmp eq i32 %.097192, %.0193
  br i1 %.not118, label %bb.r, label %bb.g

bb.g:                                             ; preds = %.lr.ph195
  %i.x = sext i32 %.097192 to i64
  %i.y = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !165
  %i.aa = sext i32 %.098191 to i64
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !165
  %i.ad = sub nsw i64 %i.z, %i.ac                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !167
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !167
  %i.ai = sub nsw i64 %i.af, %i.ah                ; 2 uses
  %i.aj = trunc i64 %i.ad to i32                  ; 3 uses
  %i.ak = trunc i64 %i.ai to i32                  ; 3 uses
  %i.al = icmp slt i32 %i.aj, 0                   ; 2 uses
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 false) ; 6 uses
  %i.am = icmp slt i32 %i.ak, 0                   ; 2 uses
  %.087.i = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 false) ; 6 uses
  %i.an = icmp eq i32 %i.aj, 0
  %.not102.i = icmp eq i32 %i.ak, 0               ; 2 uses
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.i = select i1 %i.am, i64 -65536, i64 65536
  br i1 %.not102.i, label %FT_Vector_NormLen.exit.thread, label %FT_Vector_NormLen.exit

bb.i:                                             ; preds = %bb.g
  %spec.select103.i = select i1 %i.al, i64 -65536, i64 65536
  br i1 %.not102.i, label %FT_Vector_NormLen.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ugt i32 %spec.select.i, %.087.i
  %i.ap = lshr i32 %.087.i, 1
  %i.aq = add nuw i32 %i.ap, %spec.select.i
  %i.ar = lshr i32 %spec.select.i, 1
  %i.as = add nuw i32 %.087.i, %i.ar
  %i.at = select i1 %i.ao, i32 %i.aq, i32 %i.as   ; 3 uses
  %i.au = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.at, i1 true) ; 2 uses
  %i.av = zext i32 %i.at to i64
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = lshr i64 2863311530, %i.aw
  %.not.i = icmp samesign ugt i64 %i.ax, %i.av
  %.neg.i = select i1 %.not.i, i32 -15, i32 -16
  %i.ay = add nsw i32 %.neg.i, %i.au              ; 7 uses
  %i.az = icmp sgt i32 %i.ay, 0                   ; 2 uses
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = shl i32 %spec.select.i, %i.ay           ; 4 uses
  %i.bb = shl i32 %.087.i, %i.ay                  ; 4 uses
  %i.bc = icmp ugt i32 %i.ba, %i.bb
  %i.bd = lshr i32 %i.bb, 1
  %i.be = add i32 %i.bd, %i.ba
  %i.bf = lshr i32 %i.ba, 1
  %i.bg = add i32 %i.bf, %i.bb
  %i.bh = select i1 %i.bc, i32 %i.be, i32 %i.bg
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bi = sub nsw i32 0, %i.ay                    ; 3 uses
  %i.bj = lshr i32 %spec.select.i, %i.bi
  %i.bk = lshr i32 %.087.i, %i.bi
  %i.bl = lshr i32 %i.at, %i.bi
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.190.i = phi i32 [ %i.ba, %bb.k ], [ %i.bj, %bb.l ] ; 3 uses
  %.188.i = phi i32 [ %i.bb, %bb.k ], [ %i.bk, %bb.l ] ; 3 uses
  %.085.i = phi i32 [ %i.bh, %bb.k ], [ %i.bl, %bb.l ]
  %i.bm = sub nsw i32 65536, %.085.i
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.091.i = phi i32 [ %i.bm, %bb.m ], [ %i.cb, %bb.n ] ; 4 uses
  %i.bn = mul nsw i32 %.091.i, %.190.i
  %i.bo = ashr i32 %i.bn, 16
  %i.bp = add nsw i32 %i.bo, %.190.i              ; 4 uses
  %i.bq = mul nsw i32 %.091.i, %.188.i
  %i.br = ashr i32 %i.bq, 16
  %i.bs = add nsw i32 %i.br, %.188.i              ; 4 uses
  %i.bt = mul i32 %i.bp, %i.bp
  %i.bu = mul i32 %i.bs, %i.bs
  %i.bv = add i32 %i.bt, %i.bu
  %i.bw = sdiv i32 %i.bv, -512
  %i.bx = add nsw i32 %.091.i, 65536
  %i.by = ashr i32 %i.bx, 8
  %i.bz = mul nsw i32 %i.bw, %i.by                ; 2 uses
  %i.ca = lshr i32 %i.bz, 16
  %i.cb = add nsw i32 %i.ca, %.091.i
  %i.cc = icmp sgt i32 %i.bz, 65535
  br i1 %i.cc, label %bb.n, label %bb.o, !llvm.loop !174

bb.o:                                             ; preds = %bb.n
  %i.cd = zext i32 %i.bp to i64                   ; 2 uses
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = select i1 %i.al, i64 %i.ce, i64 %i.cd   ; 2 uses
  %i.cg = zext i32 %i.bs to i64                   ; 2 uses
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = select i1 %i.am, i64 %i.ch, i64 %i.cg   ; 2 uses
  %i.cj = mul i32 %i.bp, %.190.i
  %i.ck = mul i32 %i.bs, %.188.i
  %i.cl = add i32 %i.cj, %i.ck
  %i.cm = sdiv i32 %i.cl, 65536
  %i.cn = add nsw i32 %i.cm, 65536                ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = add nsw i32 %i.ay, -1
  %i.cp = shl nuw nsw i32 1, %i.co
  %i.cq = add nuw nsw i32 %i.cn, %i.cp
  %i.cr = lshr i32 %i.cq, %i.ay
  br label %FT_Vector_NormLen.exit

bb.q:                                             ; preds = %bb.o
  %i.cs = sub nsw i32 0, %i.ay
  %i.ct = shl i32 %i.cn, %i.cs
  br label %FT_Vector_NormLen.exit

FT_Vector_NormLen.exit:                           ; preds = %bb.h, %bb.i, %bb.p, %bb.q
  %.sroa.11.1175 = phi i64 [ %i.ai, %bb.i ], [ %i.ci, %bb.p ], [ %i.ci, %bb.q ], [ %.0.i, %bb.h ]
  %.sroa.0.1173 = phi i64 [ %spec.select103.i, %bb.i ], [ %i.cf, %bb.p ], [ %i.cf, %bb.q ], [ %i.ad, %bb.h ]
  %.086.i = phi i32 [ %spec.select.i, %bb.i ], [ %i.cr, %bb.p ], [ %i.ct, %bb.q ], [ %.087.i, %bb.h ] ; 2 uses
  %i.cu = zext i32 %.086.i to i64
  %i.cv = icmp eq i32 %.086.i, 0
  br i1 %i.cv, label %FT_Vector_NormLen.exit.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph195, %FT_Vector_NormLen.exit
  %.sroa.11.0174 = phi i64 [ %.sroa.11.1175, %FT_Vector_NormLen.exit ], [ %.sroa.5.0184, %.lr.ph195 ] ; 5 uses
  %.sroa.0.0172 = phi i64 [ %.sroa.0.1173, %FT_Vector_NormLen.exit ], [ %.sroa.052.0186, %.lr.ph195 ] ; 5 uses
  %.0108 = phi i64 [ %i.cu, %FT_Vector_NormLen.exit ], [ %.0104189, %.lr.ph195 ] ; 4 uses
  %.not119 = icmp eq i64 %.0109188, 0
  br i1 %.not119, label %FT_Vector_NormLen.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = icmp slt i32 %.0193, 0
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.5.1 = phi i64 [ %.sroa.8.0182, %bb.t ], [ %.sroa.5.0184, %bb.s ] ; 2 uses
  %.sroa.052.1 = phi i64 [ %.sroa.056.0183, %bb.t ], [ %.sroa.052.0186, %bb.s ] ; 2 uses
  %.1105 = phi i64 [ %.0109188, %bb.t ], [ %.0104189, %bb.s ] ; 2 uses
  %.1 = phi i32 [ %.098191, %bb.t ], [ %.0193, %bb.s ] ; 2 uses
  %sext.i = shl i64 %.sroa.056.0183, 32
  %i.cx = ashr exact i64 %sext.i, 32              ; 2 uses
  %sext2.i = shl i64 %.sroa.0.0172, 32
  %i.cy = ashr exact i64 %sext2.i, 32             ; 2 uses
  %i.cz = mul nsw i64 %i.cy, %i.cx                ; 2 uses
  %i.da = ashr i64 %i.cz, 63
  %i.db = add nsw i64 %i.cz, 32768
  %i.dc = add nsw i64 %i.db, %i.da
  %i.dd = shl i64 %i.dc, 16
  %i.de = ashr i64 %i.dd, 32
  %sext.i124 = shl i64 %.sroa.8.0182, 32
  %i.df = ashr exact i64 %sext.i124, 32           ; 2 uses
  %sext2.i125 = shl i64 %.sroa.11.0174, 32
  %i.dg = ashr exact i64 %sext2.i125, 32          ; 2 uses
  %i.dh = mul nsw i64 %i.dg, %i.df                ; 2 uses
  %i.di = ashr i64 %i.dh, 63
  %i.dj = add nsw i64 %i.dh, 32768
  %i.dk = add nsw i64 %i.dj, %i.di
  %i.dl = shl i64 %i.dk, 16
  %i.dm = ashr i64 %i.dl, 32
  %i.dn = add nsw i64 %i.de, %i.dm                ; 2 uses
  %i.do = icmp sgt i64 %i.dn, -61440
  br i1 %i.do, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.dp = add nsw i64 %i.dn, 65536                ; 5 uses
  %i.dq = add nsw i64 %.sroa.11.0174, %.sroa.8.0182 ; 4 uses
  %i.dr = add nsw i64 %.sroa.0.0172, %.sroa.056.0183 ; 4 uses
  %i.ds = sub nsw i64 0, %i.dq
  %i.dt = sub nsw i64 0, %i.dr
  %.sroa.11.0 = select i1 %i.l, i64 %i.dr, i64 %i.dt ; 2 uses
  %.sroa.0.0 = select i1 %i.l, i64 %i.ds, i64 %i.dq ; 2 uses
  %i.du = mul nsw i64 %i.cy, %i.df                ; 2 uses
  %i.dv = ashr i64 %i.du, 63
  %i.dw = add nsw i64 %i.du, 32768
  %i.dx = add nsw i64 %i.dw, %i.dv
  %i.dy = shl i64 %i.dx, 16
  %i.dz = ashr i64 %i.dy, 32
  %i.ea = mul nsw i64 %i.dg, %i.cx                ; 2 uses
  %i.eb = ashr i64 %i.ea, 63
  %i.ec = add nsw i64 %i.ea, 32768
  %i.ed = add nsw i64 %i.ec, %i.eb
  %i.ee = shl i64 %i.ed, 16
  %i.ef = ashr i64 %i.ee, 32
  %i.eg = sub nsw i64 %i.dz, %i.ef                ; 4 uses
  %i.eh = sub nsw i64 0, %i.eg
  %.0102 = select i1 %i.l, i64 %i.eh, i64 %i.eg   ; 5 uses
  %i.ei = tail call i64 @llvm.smin.i64(i64 %.0109188, i64 %.0108) ; 3 uses
  %sext2.i131 = shl i64 %.0102, 32
  %i.ej = ashr exact i64 %sext2.i131, 32          ; 2 uses
  %i.ek = mul nsw i64 %i.ej, %i.m                 ; 2 uses
  %i.el = ashr i64 %i.ek, 63
  %i.em = add nsw i64 %i.ek, 32768
  %i.en = add nsw i64 %i.em, %i.el
  %i.eo = shl i64 %i.en, 16
  %i.ep = ashr i64 %i.eo, 32
  %sext.i132 = shl nuw i64 %i.ei, 32
  %i.eq = ashr exact i64 %sext.i132, 32
  %sext2.i133 = shl i64 %i.dp, 32
  %i.er = ashr exact i64 %sext2.i133, 32
  %i.es = mul nsw i64 %i.er, %i.eq                ; 2 uses
  %i.et = ashr i64 %i.es, 63
  %i.eu = add nsw i64 %i.es, 32768
  %i.ev = add nsw i64 %i.eu, %i.et
  %i.ew = shl i64 %i.ev, 16
  %i.ex = ashr i64 %i.ew, 32                      ; 2 uses
  %.not120 = icmp sgt i64 %i.ep, %i.ex
  br i1 %.not120, label %bb.w, label %FT_MulDiv.exit

FT_MulDiv.exit:                                   ; preds = %bb.v
  %spec.select.i135 = tail call i64 @llvm.abs.i64(i64 %i.dq, i1 false)
  %i.ey = mul i64 %spec.select.i135, %.023.i
  %i.ez = lshr i64 %i.dp, 1
  %i.fa = add i64 %i.ez, %i.ey
  %i.fb = udiv i64 %i.fa, %i.dp                   ; 2 uses
  %i.fc = icmp slt i64 %.sroa.0.0, 0
  %i.fd = xor i1 %i.n, %i.fc
  %i.fe = sub nsw i64 0, %i.fb
  %i.ff = select i1 %i.fd, i64 %i.fe, i64 %i.fb
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %.not.i136 = icmp eq i64 %.0102, 0
  br i1 %.not.i136, label %FT_MulDiv.exit143, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.022.i137 = tail call i64 @llvm.abs.i64(i64 %i.eg, i1 true) ; 2 uses
  %.023.i138 = tail call i64 @llvm.abs.i64(i64 %i.ei, i1 false)
  %spec.select.i139 = tail call i64 @llvm.abs.i64(i64 %i.dq, i1 false)
  %i.fg = mul i64 %.023.i138, %spec.select.i139
  %i.fh = lshr i64 %.022.i137, 1
  %i.fi = add i64 %i.fh, %i.fg
  %i.fj = udiv i64 %i.fi, %.022.i137
  br label %FT_MulDiv.exit143

FT_MulDiv.exit143:                                ; preds = %bb.w, %bb.x
  %i.fk = phi i64 [ %i.fj, %bb.x ], [ 2147483647, %bb.w ] ; 2 uses
  %i.fl = xor i64 %.sroa.0.0, %.0102
  %i.fm = icmp slt i64 %i.fl, 0
  %i.fn = sub i64 0, %i.fk
  %i.fo = select i1 %i.fm, i64 %i.fn, i64 %i.fk
  br label %bb.y

bb.y:                                             ; preds = %FT_MulDiv.exit143, %FT_MulDiv.exit
  %.sroa.0.1 = phi i64 [ %i.ff, %FT_MulDiv.exit ], [ %i.fo, %FT_MulDiv.exit143 ] ; 2 uses
  %i.fp = mul nsw i64 %i.ej, %i.o                 ; 2 uses
  %i.fq = ashr i64 %i.fp, 63
  %i.fr = add nsw i64 %i.fp, 32768
  %i.fs = add nsw i64 %i.fr, %i.fq
  %i.ft = shl i64 %i.fs, 16
  %i.fu = ashr i64 %i.ft, 32
  %.not121 = icmp sgt i64 %i.fu, %i.ex
  br i1 %.not121, label %bb.z, label %FT_MulDiv.exit155

FT_MulDiv.exit155:                                ; preds = %bb.y
  %spec.select.i151 = tail call i64 @llvm.abs.i64(i64 %i.dr, i1 false)
  %i.fv = mul i64 %spec.select.i151, %.023.i150
  %i.fw = lshr i64 %i.dp, 1
  %i.fx = add i64 %i.fw, %i.fv
  %i.fy = udiv i64 %i.fx, %i.dp                   ; 2 uses
  %i.fz = icmp slt i64 %.sroa.11.0, 0
  %i.ga = xor i1 %i.p, %i.fz
  %i.gb = sub nsw i64 0, %i.fy
  %i.gc = select i1 %i.ga, i64 %i.gb, i64 %i.fy
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not.i156 = icmp eq i64 %.0102, 0
  br i1 %.not.i156, label %FT_MulDiv.exit163, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.022.i157 = tail call i64 @llvm.abs.i64(i64 %i.eg, i1 true) ; 2 uses
  %.023.i158 = tail call i64 @llvm.abs.i64(i64 %i.ei, i1 false)
  %spec.select.i159 = tail call i64 @llvm.abs.i64(i64 %i.dr, i1 false)
  %i.gd = mul i64 %.023.i158, %spec.select.i159
  %i.ge = lshr i64 %.022.i157, 1
  %i.gf = add i64 %i.ge, %i.gd
  %i.gg = udiv i64 %i.gf, %.022.i157
  br label %FT_MulDiv.exit163

FT_MulDiv.exit163:                                ; preds = %bb.z, %bb.aa
  %i.gh = phi i64 [ %i.gg, %bb.aa ], [ 2147483647, %bb.z ] ; 2 uses
  %i.gi = xor i64 %.sroa.11.0, %.0102
  %i.gj = icmp slt i64 %i.gi, 0
  %i.gk = sub i64 0, %i.gh
  %i.gl = select i1 %i.gj, i64 %i.gk, i64 %i.gh
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %FT_MulDiv.exit155, %FT_MulDiv.exit163
  %.sroa.11.1 = phi i64 [ %i.gc, %FT_MulDiv.exit155 ], [ %i.gl, %FT_MulDiv.exit163 ], [ 0, %bb.u ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %FT_MulDiv.exit155 ], [ %.sroa.0.1, %FT_MulDiv.exit163 ], [ 0, %bb.u ]
  %.not122180 = icmp eq i32 %.098191, %.097192
  br i1 %.not122180, label %FT_Vector_NormLen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %5 = add nsw i64 %.sroa.0.2, %3
  %6 = add nsw i64 %.sroa.11.1, %4
  %i.gm = insertelement <2 x i64> poison, i64 %5, i64 0
  %7 = insertelement <2 x i64> %i.gm, i64 %6, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ac
  %.199181 = phi i32 [ %.098191, %.lr.ph ], [ %i.gt, %bb.ac ] ; 3 uses
  %i.gn = sext i32 %.199181 to i64
  %i.go = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.gn ; 2 uses
  %i.gp = load <2 x i64>, ptr %i.go, align 8, !tbaa !39
  %i.gq = add nsw <2 x i64> %7, %i.gp
  store <2 x i64> %i.gq, ptr %i.go, align 8, !tbaa !39
  %i.gr = icmp slt i32 %.199181, %i.t
  %i.gs = add nsw i32 %.199181, 1
  %i.gt = select i1 %i.gr, i32 %i.gs, i32 %i.q    ; 2 uses
  %.not122 = icmp eq i32 %i.gt, %.097192
  br i1 %.not122, label %FT_Vector_NormLen.exit.thread, label %bb.ac, !llvm.loop !574

FT_Vector_NormLen.exit.thread:                    ; preds = %bb.ac, %bb.ab, %bb.h, %bb.r, %FT_Vector_NormLen.exit
  %.sroa.8.1 = phi i64 [ %.sroa.8.0182, %FT_Vector_NormLen.exit ], [ %.sroa.8.0182, %bb.h ], [ %.sroa.11.0174, %bb.r ], [ %.sroa.11.0174, %bb.ab ], [ %.sroa.11.0174, %bb.ac ]
  %.sroa.056.1 = phi i64 [ %.sroa.056.0183, %FT_Vector_NormLen.exit ], [ %.sroa.056.0183, %bb.h ], [ %.sroa.0.0172, %bb.r ], [ %.sroa.0.0172, %bb.ab ], [ %.sroa.0.0172, %bb.ac ]
  %.sroa.5.3 = phi i64 [ %.sroa.5.0184, %FT_Vector_NormLen.exit ], [ %.sroa.5.0184, %bb.h ], [ %.sroa.5.0184, %bb.r ], [ %.sroa.5.1, %bb.ab ], [ %.sroa.5.1, %bb.ac ]
  %.sroa.052.3 = phi i64 [ %.sroa.052.0186, %FT_Vector_NormLen.exit ], [ %.sroa.052.0186, %bb.h ], [ %.sroa.052.0186, %bb.r ], [ %.sroa.052.1, %bb.ab ], [ %.sroa.052.1, %bb.ac ]
  %.1110 = phi i64 [ %.0109188, %FT_Vector_NormLen.exit ], [ %.0109188, %bb.h ], [ %.0108, %bb.r ], [ %.0108, %bb.ab ], [ %.0108, %bb.ac ]
  %.3107 = phi i64 [ %.0104189, %FT_Vector_NormLen.exit ], [ %.0104189, %bb.h ], [ %.0104189, %bb.r ], [ %.1105, %bb.ab ], [ %.1105, %bb.ac ]
  %.3101 = phi i32 [ %.098191, %FT_Vector_NormLen.exit ], [ %.098191, %bb.h ], [ %.097192, %bb.r ], [ %.097192, %bb.ab ], [ %.097192, %bb.ac ] ; 3 uses
  %.3 = phi i32 [ %.0193, %FT_Vector_NormLen.exit ], [ %.0193, %bb.h ], [ %.0193, %bb.r ], [ %.1, %bb.ab ], [ %.1, %bb.ac ] ; 2 uses
  %i.gu = icmp slt i32 %.097192, %i.t
  %i.gv = add nsw i32 %.097192, 1
  %i.gw = select i1 %i.gu, i32 %i.gv, i32 %i.q    ; 2 uses
  %i.gx = icmp ne i32 %i.gw, %.3101
  %i.gy = icmp ne i32 %.3101, %.3
  %i.gz = and i1 %i.gx, %i.gy
  br i1 %i.gz, label %.lr.ph195, label %._crit_edge, !llvm.loop !575

._crit_edge:                                      ; preds = %FT_Vector_NormLen.exit.thread, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !576

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.d, %bb.b, %bb.a
  %.0103 = phi i32 [ 20, %bb.a ], [ %., %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %._crit_edge ]
  ret i32 %.0103
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 3) i32 @FT_Outline_Get_Orientation(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %FT_Outline_Get_CBox.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !137  ; 3 uses
  %i.c = icmp slt i16 %i.b, 1
  br i1 %i.c, label %FT_Outline_Get_CBox.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 9 uses
  %i.f = zext nneg i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not59 = icmp eq i16 %i.b, 1
  br i1 %.not59, label %FT_Outline_Get_CBox.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !167  ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !165  ; 2 uses
  %.04051.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.04057.i = phi ptr [ %.040.i, %.lr.ph.i ], [ %.04051.i, %.lr.ph.preheader.i ] ; 3 uses
  %.056.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.03455.i = phi i64 [ %.135.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.03754.i = phi i64 [ %.138.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.pn53.i = phi ptr [ %.04057.i, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %.04152.i = phi i64 [ %.142.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %i.k = load i64, ptr %.04057.i, align 8, !tbaa !165 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %.056.i) ; 4 uses
  %.138.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 %.03754.i) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn53.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !167  ; 2 uses
  %.135.i = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.03455.i) ; 4 uses
  %.142.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %.04152.i) ; 4 uses
  %.040.i = getelementptr inbounds nuw i8, ptr %.04057.i, i64 16 ; 2 uses
  %i.n = icmp ult ptr %.040.i, %i.g
  br i1 %i.n, label %.lr.ph.i, label %FT_Outline_Get_CBox.exit, !llvm.loop !287

FT_Outline_Get_CBox.exit:                         ; preds = %.lr.ph.i
  %i.o = icmp eq i64 %spec.select.i, %.138.i
  %i.p = icmp eq i64 %.135.i, %.142.i
  %or.cond58 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond58, label %FT_Outline_Get_CBox.exit.thread, label %bb.d

bb.d:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.q = icmp slt i64 %spec.select.i, -16777216
  %i.r = icmp slt i64 %.135.i, -16777216
  %or.cond = or i1 %i.q, %i.r
  %i.s = icmp sgt i64 %.138.i, 16777216
  %or.cond5 = or i1 %i.s, %or.cond
  %i.t = icmp sgt i64 %.142.i, 16777216
  %or.cond8 = or i1 %i.t, %or.cond5
  br i1 %or.cond8, label %FT_Outline_Get_CBox.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i16, ptr %0, align 8, !tbaa !138    ; 2 uses
  %i.v = icmp sgt i16 %i.u, 0
  br i1 %i.v, label %.lr.ph70, label %.thread

.lr.ph70:                                         ; preds = %bb.e
  %wide.trip.count77 = zext nneg i16 %i.u to i64
  %i.w = sub nsw i64 %.142.i, %.135.i
  %i.x = trunc i64 %i.w to i32
  %i.y = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.x, i1 true)
  %i.z = sub nsw i32 17, %i.y
  %i.aa = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.ab = tail call i64 @llvm.abs.i64(i64 %.138.i, i1 true)
  %i.ac = tail call i64 @llvm.abs.i64(i64 %spec.select.i, i1 true)
  %i.ad = or i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ae, i1 true)
  %i.ag = sub nsw i32 17, %i.af
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 0)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !139
  %i.ak = zext nneg i32 %i.ah to i64              ; 4 uses
  %i.al = zext nneg i32 %i.aa to i64              ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph70, %._crit_edge
  %indvars.iv74 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next75, %._crit_edge ] ; 2 uses
  %.068 = phi i64 [ 0, %.lr.ph70 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.04367 = phi i32 [ -1, %.lr.ph70 ], [ %i.ao, %._crit_edge ] ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv74
  %i.an = load i16, ptr %i.am, align 2, !tbaa !141 ; 3 uses
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %.not53.not61 = icmp slt i32 %.04367, %i.ao
  br i1 %.not53.not61, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ap = sext i16 %i.an to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !167
  %i.at = ashr i64 %i.as, %i.al                   ; 2 uses
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !165
  %i.av = ashr i64 %i.au, %i.ak                   ; 2 uses
  %i.aw = sext i32 %.04367 to i64                 ; 4 uses
  %wide.trip.count = sext i16 %i.an to i64        ; 3 uses
  %i.ax = sub nsw i64 %wide.trip.count, %i.aw
  %xtraiter = and i64 %i.ax, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next.prol = add nsw i64 %i.aw, 1    ; 2 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.e, i64 %indvars.iv.next.prol ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.ba = ashr i64 %i.az, %i.ak                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !167
  %i.bd = ashr i64 %i.bc, %i.al                   ; 2 uses
  %i.be = sub nsw i64 %i.bd, %i.at
  %i.bf = add nsw i64 %i.ba, %i.av
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = add i64 %i.bg, %.068
  %i.bi = freeze i64 %i.bh                        ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.bi, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.aw, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.165.unr = phi i64 [ %.068, %.lr.ph.preheader ], [ %i.bi, %.lr.ph.prol ]
  %.sroa.023.063.unr = phi i64 [ %i.av, %.lr.ph.preheader ], [ %i.ba, %.lr.ph.prol ]
  %.sroa.524.062.unr = phi i64 [ %i.at, %.lr.ph.preheader ], [ %i.bd, %.lr.ph.prol ]
  %i.bj = add nsw i64 %wide.trip.count, -1
  %i.bk = icmp eq i64 %i.bj, %i.aw
  br i1 %i.bk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.165 = phi i64 [ %i.cg, %.lr.ph ], [ %.165.unr, %.lr.ph.prol.loopexit ]
  %.sroa.023.063 = phi i64 [ %i.bz, %.lr.ph ], [ %.sroa.023.063.unr, %.lr.ph.prol.loopexit ]
  %.sroa.524.062 = phi i64 [ %i.cc, %.lr.ph ], [ %.sroa.524.062.unr, %.lr.ph.prol.loopexit ]
  %i.bl = getelementptr [16 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !165
  %i.bo = ashr i64 %i.bn, %i.ak                   ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bl, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !167
  %i.br = ashr i64 %i.bq, %i.al                   ; 2 uses
  %i.bs = sub nsw i64 %i.br, %.sroa.524.062
  %i.bt = add nsw i64 %i.bo, %.sroa.023.063
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = add i64 %i.bu, %.165
  %i.bw = freeze i64 %i.bv
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.e, i64 %indvars.iv.next.1 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !165
  %i.bz = ashr i64 %i.by, %i.ak                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !167
  %i.cc = ashr i64 %i.cb, %i.al                   ; 2 uses
  %i.cd = sub nsw i64 %i.cc, %i.br
  %i.ce = add nsw i64 %i.bz, %i.bo
  %i.cf = mul i64 %i.cd, %i.ce
  %.fr = freeze i64 %i.cf
  %i.cg = add i64 %.fr, %i.bw                     ; 2 uses
end_hunk_0
