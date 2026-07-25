inline.NumInlined: 362
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@FT_Outline_Render:bb.a
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
  %i.a = insertelement <2 x i64> poison, i64 %1, i64 0
  %i.b = insertelement <2 x i64> %i.a, i64 %2, i64 1
  %i.c = sdiv <2 x i64> %i.b, splat (i64 2)       ; 3 uses
  %.off = add i64 %1, 1
  %i.d = icmp ult i64 %.off, 3
  %.off117 = add i64 %2, 1
  %i.e = icmp ult i64 %.off117, 3
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @FT_Outline_Get_Orientation(ptr noundef nonnull %0) ; 2 uses
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i16, ptr %0, align 8, !tbaa !138
  %.not123 = icmp eq i16 %i.h, 0
  %. = select i1 %.not123, i32 0, i32 6
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162  ; 3 uses
  %i.k = load i16, ptr %0, align 8, !tbaa !138    ; 2 uses
  %i.l = icmp sgt i16 %i.k, 0
  br i1 %i.l, label %.lr.ph199, label %.loopexit

.lr.ph199:                                        ; preds = %bb.e
  %wide.trip.count = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139
  %i.o = icmp eq i32 %i.f, 0                      ; 3 uses
  %i.p = extractelement <2 x i64> %i.c, i64 0     ; 2 uses
  %sext.i130 = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext.i130, 32
  %.023.i = tail call i64 @llvm.abs.i64(i64 %i.p, i1 true)
  %i.r = icmp slt i64 %1, -1
  %i.s = extractelement <2 x i64> %i.c, i64 1     ; 2 uses
  %sext.i144 = shl i64 %i.s, 32
  %i.t = ashr exact i64 %sext.i144, 32
  %.023.i150 = tail call i64 @llvm.abs.i64(i64 %i.s, i1 true)
  %i.u = icmp slt i64 %2, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph199, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0111197 = phi i32 [ -1, %.lr.ph199 ], [ %i.y, %._crit_edge ]
  %i.v = add nsw i32 %.0111197, 1                 ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 2, !tbaa !141  ; 2 uses
  %i.y = sext i16 %i.x to i32                     ; 5 uses
  %i.z = icmp ne i32 %i.v, %i.y
  %i.aa = icmp ne i16 %i.x, -1
  %i.ab = and i1 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph195, label %._crit_edge

.lr.ph195:                                        ; preds = %bb.f, %FT_Vector_NormLen.exit.thread
  %.0193 = phi i32 [ %.3, %FT_Vector_NormLen.exit.thread ], [ -1, %bb.f ] ; 6 uses
  %.097192 = phi i32 [ %i.hd, %FT_Vector_NormLen.exit.thread ], [ %i.v, %bb.f ] ; 9 uses
  %.098191 = phi i32 [ %.3101, %FT_Vector_NormLen.exit.thread ], [ %i.y, %bb.f ] ; 6 uses
  %.0104189 = phi i64 [ %.3107, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.0109188 = phi i64 [ %.1110, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.052.0186 = phi i64 [ %.sroa.052.3, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.5.0184 = phi i64 [ %.sroa.5.3, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.056.0183 = phi i64 [ %.sroa.056.1, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.8.0182 = phi i64 [ %.sroa.8.1, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.not118 = icmp eq i32 %.097192, %.0193
  br i1 %.not118, label %bb.r, label %bb.g

bb.g:                                             ; preds = %.lr.ph195
  %i.ac = sext i32 %.097192 to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = sext i32 %.098191 to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !165
  %i.ai = sub nsw i64 %i.ae, %i.ah                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !167
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !167
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = trunc i64 %i.ai to i32                  ; 3 uses
  %i.ap = trunc i64 %i.an to i32                  ; 3 uses
  %i.aq = icmp slt i32 %i.ao, 0                   ; 2 uses
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 false) ; 6 uses
  %i.ar = icmp slt i32 %i.ap, 0                   ; 2 uses
  %.087.i = tail call i32 @llvm.abs.i32(i32 %i.ap, i1 false) ; 6 uses
  %i.as = icmp eq i32 %i.ao, 0
  %.not102.i = icmp eq i32 %i.ap, 0               ; 2 uses
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.i = select i1 %i.ar, i64 -65536, i64 65536
  br i1 %.not102.i, label %FT_Vector_NormLen.exit.thread, label %FT_Vector_NormLen.exit

bb.i:                                             ; preds = %bb.g
  %spec.select103.i = select i1 %i.aq, i64 -65536, i64 65536
  br i1 %.not102.i, label %FT_Vector_NormLen.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = icmp ugt i32 %spec.select.i, %.087.i
  %i.au = lshr i32 %.087.i, 1
  %i.av = add nuw i32 %i.au, %spec.select.i
  %i.aw = lshr i32 %spec.select.i, 1
  %i.ax = add nuw i32 %.087.i, %i.aw
  %i.ay = select i1 %i.at, i32 %i.av, i32 %i.ax   ; 3 uses
  %i.az = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ay, i1 true) ; 2 uses
  %i.ba = zext i32 %i.ay to i64
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = lshr i64 2863311530, %i.bb
  %.not.i = icmp samesign ugt i64 %i.bc, %i.ba
  %.neg.i = select i1 %.not.i, i32 -15, i32 -16
  %i.bd = add nsw i32 %.neg.i, %i.az              ; 7 uses
  %i.be = icmp sgt i32 %i.bd, 0                   ; 2 uses
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = shl i32 %spec.select.i, %i.bd           ; 4 uses
  %i.bg = shl i32 %.087.i, %i.bd                  ; 4 uses
  %i.bh = icmp ugt i32 %i.bf, %i.bg
  %i.bi = lshr i32 %i.bg, 1
  %i.bj = add i32 %i.bi, %i.bf
  %i.bk = lshr i32 %i.bf, 1
  %i.bl = add i32 %i.bk, %i.bg
  %i.bm = select i1 %i.bh, i32 %i.bj, i32 %i.bl
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bn = sub nsw i32 0, %i.bd                    ; 3 uses
  %i.bo = lshr i32 %spec.select.i, %i.bn
  %i.bp = lshr i32 %.087.i, %i.bn
  %i.bq = lshr i32 %i.ay, %i.bn
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.190.i = phi i32 [ %i.bf, %bb.k ], [ %i.bo, %bb.l ] ; 3 uses
  %.188.i = phi i32 [ %i.bg, %bb.k ], [ %i.bp, %bb.l ] ; 3 uses
  %.085.i = phi i32 [ %i.bm, %bb.k ], [ %i.bq, %bb.l ]
  %i.br = sub nsw i32 65536, %.085.i
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.091.i = phi i32 [ %i.br, %bb.m ], [ %i.cg, %bb.n ] ; 4 uses
  %i.bs = mul nsw i32 %.091.i, %.190.i
  %i.bt = ashr i32 %i.bs, 16
  %i.bu = add nsw i32 %i.bt, %.190.i              ; 4 uses
  %i.bv = mul nsw i32 %.091.i, %.188.i
  %i.bw = ashr i32 %i.bv, 16
  %i.bx = add nsw i32 %i.bw, %.188.i              ; 4 uses
  %i.by = mul i32 %i.bu, %i.bu
  %i.bz = mul i32 %i.bx, %i.bx
  %i.ca = add i32 %i.by, %i.bz
  %i.cb = sdiv i32 %i.ca, -512
  %i.cc = add nsw i32 %.091.i, 65536
  %i.cd = ashr i32 %i.cc, 8
  %i.ce = mul nsw i32 %i.cb, %i.cd                ; 2 uses
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = add nsw i32 %i.cf, %.091.i
  %i.ch = icmp sgt i32 %i.ce, 65535
  br i1 %i.ch, label %bb.n, label %bb.o, !llvm.loop !174

bb.o:                                             ; preds = %bb.n
  %i.ci = zext i32 %i.bu to i64                   ; 2 uses
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = select i1 %i.aq, i64 %i.cj, i64 %i.ci   ; 2 uses
  %i.cl = zext i32 %i.bx to i64                   ; 2 uses
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = select i1 %i.ar, i64 %i.cm, i64 %i.cl   ; 2 uses
  %i.co = mul i32 %i.bu, %.190.i
  %i.cp = mul i32 %i.bx, %.188.i
  %i.cq = add i32 %i.co, %i.cp
  %i.cr = sdiv i32 %i.cq, 65536
  %i.cs = add nsw i32 %i.cr, 65536                ; 2 uses
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = add nsw i32 %i.bd, -1
  %i.cu = shl nuw nsw i32 1, %i.ct
  %i.cv = add nuw nsw i32 %i.cs, %i.cu
  %i.cw = lshr i32 %i.cv, %i.bd
  br label %FT_Vector_NormLen.exit

bb.q:                                             ; preds = %bb.o
  %i.cx = sub nsw i32 0, %i.bd
  %i.cy = shl i32 %i.cs, %i.cx
  br label %FT_Vector_NormLen.exit

FT_Vector_NormLen.exit:                           ; preds = %bb.h, %bb.i, %bb.p, %bb.q
  %.sroa.11.1175 = phi i64 [ %i.an, %bb.i ], [ %i.cn, %bb.p ], [ %i.cn, %bb.q ], [ %.0.i, %bb.h ]
  %.sroa.0.1173 = phi i64 [ %spec.select103.i, %bb.i ], [ %i.ck, %bb.p ], [ %i.ck, %bb.q ], [ %i.ai, %bb.h ]
  %.086.i = phi i32 [ %spec.select.i, %bb.i ], [ %i.cw, %bb.p ], [ %i.cy, %bb.q ], [ %.087.i, %bb.h ] ; 2 uses
  %i.cz = zext i32 %.086.i to i64
  %i.da = icmp eq i32 %.086.i, 0
  br i1 %i.da, label %FT_Vector_NormLen.exit.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph195, %FT_Vector_NormLen.exit
  %.sroa.11.0174 = phi i64 [ %.sroa.11.1175, %FT_Vector_NormLen.exit ], [ %.sroa.5.0184, %.lr.ph195 ] ; 5 uses
  %.sroa.0.0172 = phi i64 [ %.sroa.0.1173, %FT_Vector_NormLen.exit ], [ %.sroa.052.0186, %.lr.ph195 ] ; 5 uses
  %.0108 = phi i64 [ %i.cz, %FT_Vector_NormLen.exit ], [ %.0104189, %.lr.ph195 ] ; 4 uses
  %.not119 = icmp eq i64 %.0109188, 0
  br i1 %.not119, label %FT_Vector_NormLen.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = icmp slt i32 %.0193, 0
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.5.1 = phi i64 [ %.sroa.8.0182, %bb.t ], [ %.sroa.5.0184, %bb.s ] ; 2 uses
  %.sroa.052.1 = phi i64 [ %.sroa.056.0183, %bb.t ], [ %.sroa.052.0186, %bb.s ] ; 2 uses
  %.1105 = phi i64 [ %.0109188, %bb.t ], [ %.0104189, %bb.s ] ; 2 uses
  %.1 = phi i32 [ %.098191, %bb.t ], [ %.0193, %bb.s ] ; 2 uses
  %sext.i = shl i64 %.sroa.056.0183, 32
  %i.dc = ashr exact i64 %sext.i, 32              ; 2 uses
  %sext2.i = shl i64 %.sroa.0.0172, 32
  %i.dd = ashr exact i64 %sext2.i, 32             ; 2 uses
  %i.de = mul nsw i64 %i.dd, %i.dc                ; 2 uses
  %i.df = ashr i64 %i.de, 63
  %i.dg = add nsw i64 %i.de, 32768
  %i.dh = add nsw i64 %i.dg, %i.df
  %i.di = shl i64 %i.dh, 16
  %i.dj = ashr i64 %i.di, 32
  %sext.i124 = shl i64 %.sroa.8.0182, 32
  %i.dk = ashr exact i64 %sext.i124, 32           ; 2 uses
  %sext2.i125 = shl i64 %.sroa.11.0174, 32
  %i.dl = ashr exact i64 %sext2.i125, 32          ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.dk                ; 2 uses
  %i.dn = ashr i64 %i.dm, 63
  %i.do = add nsw i64 %i.dm, 32768
  %i.dp = add nsw i64 %i.do, %i.dn
  %i.dq = shl i64 %i.dp, 16
  %i.dr = ashr i64 %i.dq, 32
  %i.ds = add nsw i64 %i.dj, %i.dr                ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, -61440
  br i1 %i.dt, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.du = add nsw i64 %i.ds, 65536                ; 5 uses
end_hunk_0
