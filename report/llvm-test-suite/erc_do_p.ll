inline.NumInlined: 24
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 39
begin_hunk_0_@ercConcealInterFrame:bb.a

.lr.ph166.preheader:                              ; preds = %.lr.ph170
  %i.aa = zext nneg i32 %i.r to i64               ; 2 uses
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %._crit_edge167
  %.0132168 = phi i32 [ %i.cl, %._crit_edge167 ], [ 0, %.lr.ph166.preheader ] ; 3 uses
  %i.ab = and i32 %.0132168, 1
  %.not149 = icmp eq i32 %i.ab, 0
  %i.ac = lshr i32 %.0132168, 1                   ; 2 uses
  %i.ad = xor i32 %i.ac, -1
  %i.ae = add nsw i32 %i.s, %i.ad
  %i.af = select i1 %.not149, i32 %i.ac, i32 %i.ae ; 4 uses
  %i.ag = shl i32 %i.af, 1                        ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph166, %.loopexit
  %.0134164 = phi i32 [ 0, %.lr.ph166 ], [ %i.cj, %.loopexit ] ; 9 uses
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !31  ; 2 uses
  %i.ai = mul i32 %i.x, %.0134164
  %i.aj = add nsw i32 %i.ai, %i.ag
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = icmp slt i32 %i.am, 2
  br i1 %i.an, label %.preheader155.preheader, label %.loopexit

.preheader155.preheader:                          ; preds = %bb.i
  %i.ao = sext i32 %.0134164 to i64               ; 2 uses
  %indvars.iv.next193 = add nsw i64 %i.ao, 1      ; 2 uses
  %i.ap = icmp slt i64 %indvars.iv.next193, %i.aa
  br i1 %i.ap, label %.lr.ph196, label %.preheader153

.preheader155:                                    ; preds = %.lr.ph196
  %indvars.iv.next = add nsw i64 %indvars.iv.next195, 1 ; 2 uses
  %i.aq = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.aq, label %.lr.ph196, label %.preheader153, !llvm.loop !32

.lr.ph196:                                        ; preds = %.preheader155.preheader, %.preheader155
  %indvars.iv.next195 = phi i64 [ %indvars.iv.next, %.preheader155 ], [ %indvars.iv.next193, %.preheader155.preheader ] ; 3 uses
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %.preheader155 ], [ %i.ao, %.preheader155.preheader ] ; 2 uses
  %i.ar = trunc nsw i64 %indvars.iv.next195 to i32
  %i.as = mul i32 %i.x, %i.ar
  %i.at = add nsw i32 %i.as, %i.ag
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.j, label %.preheader155, !llvm.loop !32

bb.j:                                             ; preds = %.lr.ph196
  %i.ay = trunc nsw i64 %indvars.iv194 to i32     ; 6 uses
  %.not150 = icmp sgt i32 %i.r, %i.ay
  br i1 %.not150, label %bb.n, label %.preheader153

.preheader153:                                    ; preds = %.preheader155, %.preheader155.preheader, %bb.j
  %i.az = icmp slt i32 %.0134164, %i.r
  br i1 %i.az, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader153, %bb.m
  %.0135156 = phi i32 [ %i.bi, %bb.m ], [ %.0134164, %.preheader153 ] ; 3 uses
  %i.ba = shl i32 %.0135156, 1
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.bc = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %i.a, i32 noundef %i.ba, i32 noundef %i.ag, ptr noundef %i.bb, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 2, i8 noundef zeroext 0) #23 ; 0 uses
  %i.bd = load i32, ptr @erc_mvperMB, align 4, !tbaa !4
  %i.be = icmp sgt i32 %i.bd, 7
  %i.bf = mul nsw i32 %.0135156, %i.s
  %i.bg = add nsw i32 %i.bf, %i.af                ; 3 uses
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !31
  call fastcc void @concealByTrial(ptr noundef %0, ptr noundef %i.p, i32 noundef %i.bg, ptr noundef %1, ptr noundef %i.a, i32 noundef %2, ptr noundef %i.bh)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  call fastcc void @concealByCopy(ptr noundef %0, i32 noundef %i.bg, ptr noundef %1, i32 noundef %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @ercMarkCurrMBConcealed(i32 noundef %i.bg, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #23
  %i.bi = add i32 %.0135156, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %i.r
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !34

bb.n:                                             ; preds = %bb.j
  %i.bj = icmp eq i32 %.0134164, 0
  br i1 %i.bj, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.n
  %i.bk = icmp sgt i64 %indvars.iv194, -1
  br i1 %i.bk, label %.lr.ph163, label %._crit_edge

.lr.ph163:                                        ; preds = %.preheader, %bb.q
  %.1136162 = phi i32 [ %i.bt, %bb.q ], [ %i.ay, %.preheader ] ; 4 uses
  %i.bl = shl nuw nsw i32 %.1136162, 1
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.bn = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %i.a, i32 noundef %i.bl, i32 noundef %i.ag, ptr noundef %i.bm, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 2, i8 noundef zeroext 0) #23 ; 0 uses
  %i.bo = load i32, ptr @erc_mvperMB, align 4, !tbaa !4
  %i.bp = icmp sgt i32 %i.bo, 7
  %i.bq = mul nuw nsw i32 %.1136162, %i.s
  %i.br = add nsw i32 %i.bq, %i.af                ; 3 uses
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph163
  %i.bs = load ptr, ptr %i.v, align 8, !tbaa !31
  call fastcc void @concealByTrial(ptr noundef %0, ptr noundef %i.p, i32 noundef %i.br, ptr noundef %1, ptr noundef %i.a, i32 noundef %2, ptr noundef %i.bs)
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph163
  call fastcc void @concealByCopy(ptr noundef %0, i32 noundef %i.br, ptr noundef %1, i32 noundef %2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @ercMarkCurrMBConcealed(i32 noundef %i.br, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #23
  %i.bt = add nsw i32 %.1136162, -1
  %i.bu = icmp sgt i32 %.1136162, 0
  br i1 %i.bu, label %.lr.ph163, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %i.bv = add nsw i32 %i.ay, 1
  br label %.loopexit

bb.r:                                             ; preds = %bb.n
  %i.bw = add nsw i32 %i.ay, 1                    ; 3 uses
  %.not151157 = icmp sgt i32 %.0134164, %i.ay
  br i1 %.not151157, label %.loopexit, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %bb.r
  %i.bx = sub i32 %i.bw, %.0134164
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %bb.u
  %.0131160 = phi i32 [ %i.ci, %bb.u ], [ 0, %.lr.ph161.preheader ] ; 3 uses
  %.0138159 = phi i32 [ %.1139, %bb.u ], [ %.0134164, %.lr.ph161.preheader ] ; 2 uses
  %.2142158 = phi i32 [ %.3, %bb.u ], [ %i.ay, %.lr.ph161.preheader ] ; 2 uses
  %.not152 = trunc i32 %.0131160 to i1
  %i.by = and i32 %.0131160, 1                    ; 2 uses
  %.3 = sub nsw i32 %.2142158, %i.by
  %i.bz = xor i32 %i.by, 1
  %.1139 = add nsw i32 %i.bz, %.0138159
  %.2137 = select i1 %.not152, i32 %.2142158, i32 %.0138159 ; 2 uses
  %i.ca = shl i32 %.2137, 1
  %i.cb = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.cc = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %i.a, i32 noundef %i.ca, i32 noundef %i.ag, ptr noundef %i.cb, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 2, i8 noundef zeroext 0) #23 ; 0 uses
  %i.cd = load i32, ptr @erc_mvperMB, align 4, !tbaa !4
  %i.ce = icmp sgt i32 %i.cd, 7
  %i.cf = mul nsw i32 %.2137, %i.s
  %i.cg = add nsw i32 %i.cf, %i.af                ; 3 uses
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph161
  %i.ch = load ptr, ptr %i.v, align 8, !tbaa !31
  call fastcc void @concealByTrial(ptr noundef %0, ptr noundef %i.p, i32 noundef %i.cg, ptr noundef %1, ptr noundef %i.a, i32 noundef %2, ptr noundef %i.ch)
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph161
  call fastcc void @concealByCopy(ptr noundef %0, i32 noundef %i.cg, ptr noundef %1, i32 noundef %2)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @ercMarkCurrMBConcealed(i32 noundef %i.cg, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #23
  %i.ci = add nuw i32 %.0131160, 1                ; 2 uses
  %exitcond174.not = icmp eq i32 %i.ci, %i.bx
  br i1 %exitcond174.not, label %.loopexit, label %.lr.ph161, !llvm.loop !36

.loopexit:                                        ; preds = %bb.m, %bb.u, %.preheader153, %bb.r, %._crit_edge, %bb.i
  %.2 = phi i32 [ %.0134164, %bb.i ], [ %i.bw, %bb.r ], [ %i.bv, %._crit_edge ], [ %i.r, %.preheader153 ], [ %i.bw, %bb.u ], [ %i.r, %bb.m ]
  %i.cj = add nsw i32 %.2, 1                      ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.r
  br i1 %i.ck, label %bb.i, label %._crit_edge167, !llvm.loop !37

._crit_edge167:                                   ; preds = %.loopexit
  %i.cl = add nuw nsw i32 %.0132168, 1            ; 2 uses
  %exitcond175.not = icmp eq i32 %i.cl, %i.s
  br i1 %exitcond175.not, label %._crit_edge171.split, label %.lr.ph166, !llvm.loop !38

._crit_edge171.split:                             ; preds = %._crit_edge167, %.lr.ph170, %bb.h
  call void @free(ptr noundef %i.p) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge171.split
  %.0133 = phi i32 [ 1, %bb.c ], [ 1, %._crit_edge171.split ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0133
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

declare i32 @ercCollect8PredBlocks(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @concealByTrial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = ashr i32 %5, 4                           ; 4 uses
  %i.c = shl i32 %2, 2
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [24 x i8], ptr %3, i64 %i.d ; 6 uses
  %i.f = sdiv i32 %2, %i.b
  %i.g = ashr i32 %5, 3                           ; 3 uses
  %i.h = shl nsw i32 %i.g, 1
  %i.i = mul i32 %i.h, %i.f
  %i.j = srem i32 %2, %i.b
  %i.k = shl nsw i32 %i.j, 1
  %i.l = add nsw i32 %i.i, %i.k                   ; 9 uses
  %i.m = srem i32 %i.l, %i.g
  %i.n = shl nsw i32 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 4 uses
  store i32 %i.n, ptr %i.o, align 4, !tbaa !39
  %i.p = sdiv i32 %i.l, %i.g
  %i.q = shl i32 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store i32 %i.q, ptr %i.r, align 4, !tbaa !41
  %i.s = add nsw i32 %2, 1
  %i.t = add nsw i32 %i.b, %2
  %i.u = add nsw i32 %2, -1
  %i.v = sub nsw i32 %2, %i.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.af, %bb.a
  %.sroa.0.0 = phi <3 x i32> [ undef, %bb.a ], [ %.sroa.0.3, %bb.af ]
  %i.y = phi i1 [ true, %bb.a ], [ false, %bb.af ]
  %.1210 = phi i32 [ 3, %bb.a ], [ 2, %bb.af ]
  %.1195 = phi i32 [ 0, %bb.a ], [ %.4198, %bb.af ]
  %.1190 = phi i32 [ 0, %bb.a ], [ %.4193, %bb.af ]
  %.1 = phi i32 [ 0, %bb.a ], [ %.4, %bb.af ]
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  %.sroa.0.1 = phi <3 x i32> [ %.sroa.0.0, %bb.b ], [ %.sroa.0.3, %.loopexit ] ; 7 uses
  %indvars.iv = phi i64 [ 4, %bb.b ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.2251 = phi i32 [ %.1, %bb.b ], [ %.4, %.loopexit ] ; 2 uses
  %.2191250 = phi i32 [ %.1190, %bb.b ], [ %.4193, %.loopexit ] ; 2 uses
  %.2196249 = phi i32 [ %.1195, %bb.b ], [ %.4198, %.loopexit ] ; 2 uses
  %.0204247 = phi i32 [ 0, %bb.b ], [ %.4208, %.loopexit ] ; 8 uses
  %.0212246 = phi i32 [ 0, %bb.b ], [ %.4216, %.loopexit ] ; 7 uses
  %.0219244 = phi i32 [ 0, %bb.b ], [ %.3222, %.loopexit ] ; 7 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %.not232 = icmp slt i32 %i.aa, %.1210
  br i1 %.not232, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.ab, label %bb.i [
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.3197 = phi i32 [ %.2196249, %bb.d ], [ 3, %bb.e ], [ 3, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ] ; 14 uses
  %.3192 = phi i32 [ %.2191250, %bb.d ], [ 2, %bb.e ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ] ; 14 uses
  %.3 = phi i32 [ %.2251, %bb.d ], [ %i.v, %bb.e ], [ %i.u, %bb.f ], [ %i.t, %bb.g ], [ %i.s, %bb.h ] ; 10 uses
  %i.ac = shl i32 %.3, 2
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %3, i64 %i.ad ; 12 uses
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !42  ; 3 uses
  %i.ag = icmp ugt i8 %i.af, 2                    ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = zext nneg i32 %.3192 to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !42
  %i.ak = icmp eq i8 %i.aj, 6
  br i1 %i.ak, label %.loopexit, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = icmp eq i8 %i.af, 2
  br i1 %i.al, label %.loopexit, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.am = zext nneg i32 %.3197 to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !42
  %i.ap = icmp eq i8 %i.ao, 6
  br i1 %i.ap, label %.loopexit, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aq = icmp ne i32 %.3192, %.3197              ; 2 uses
  %cond = icmp eq i8 %i.af, 0
  br i1 %cond, label %bb.o, label %._crit_edge263

bb.n:                                             ; preds = %bb.l
  %i.ar = icmp ne i32 %.3192, %.3197              ; 3 uses
  %i.as = zext nneg i32 %.3192 to i64             ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.as
  %i.au = load i8, ptr %i.at, align 4, !tbaa !42
  switch i8 %i.au, label %._crit_edge263 [
    i8 4, label %bb.o
    i8 6, label %bb.v
  ]

._crit_edge263:                                   ; preds = %bb.n, %bb.m
  %i.av = phi i1 [ %i.ar, %bb.n ], [ %i.aq, %bb.m ]
  %.pn.idx.peel = phi i64 [ %i.as, %bb.n ], [ 0, %bb.m ]
  %.pn.peel = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.pn.idx.peel ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn.peel, i64 12
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !tbaa !4
  store <2 x i32> %i.ax, ptr %i.a, align 16, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn.peel, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  br label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ba = phi i1 [ %i.ar, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %.not233.peel = icmp eq i32 %.0212246, 0
  br i1 %.not233.peel, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.w, align 4, !tbaa !4
  store i32 0, ptr %i.a, align 16, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge263
  %.sink = phi i32 [ 0, %bb.p ], [ %i.az, %._crit_edge263 ]
  %i.bb = phi i1 [ %i.ba, %bb.p ], [ %i.av, %._crit_edge263 ] ; 2 uses
  %.2214.peel = phi i32 [ 1, %bb.p ], [ %.0212246, %._crit_edge263 ] ; 2 uses
  store i32 %.sink, ptr %i.x, align 8, !tbaa !4
  %i.bc = load ptr, ptr @erc_img, align 8, !tbaa !14
  %i.bd = load i32, ptr %i.o, align 4, !tbaa !39
  %i.be = load i32, ptr %i.r, align 4, !tbaa !41
  call fastcc void @buildPredRegionYUV(ptr noundef %i.bc, ptr noundef %i.a, i32 noundef %i.bd, i32 noundef %i.be, ptr noundef %1)
  %i.bf = load ptr, ptr %0, align 8, !tbaa !43
  %i.bg = tail call fastcc i32 @edgeDistortion(ptr noundef %4, i32 noundef %i.l, ptr noundef %1, ptr noundef %i.bf, i32 noundef %5) ; 2 uses
  %i.bh = icmp sge i32 %i.bg, %.0204247
  %i.bi = icmp ne i32 %.0219244, 0
  %or.cond.peel = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.peel, label %bb.v, label %.preheader235.preheader.peel

.preheader235.preheader.peel:                     ; preds = %bb.q
  %.sroa.0.0.copyload1 = load <3 x i32>, ptr %i.a, align 16, !tbaa !4
  %i.bj = load i8, ptr %i.ae, align 4, !tbaa !42  ; 2 uses
  %i.bk = icmp ugt i8 %i.bj, 2
  br i1 %i.bk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader235.preheader.peel
  %i.bl = icmp eq i8 %i.bj, 0
  br i1 %i.bl, label %bb.u, label %bb.t

bb.s:                                             ; preds = %.preheader235.preheader.peel
  %i.bm = zext nneg i32 %.3192 to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !42
  %i.bp = icmp eq i8 %i.bo, 4
  br i1 %i.bp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.bq = phi i8 [ 1, %bb.t ], [ 0, %bb.r ], [ 0, %bb.s ]
  store i8 %i.bq, ptr %i.e, align 4, !tbaa !42
  tail call fastcc void @copyPredMB(i32 noundef %i.l, ptr noundef %1, i32 noundef %5)
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %bb.u, %bb.q, %bb.o
  %.sroa.0.2 = phi <3 x i32> [ %.sroa.0.1, %bb.q ], [ %.sroa.0.0.copyload1, %bb.u ], [ %.sroa.0.1, %bb.o ], [ %.sroa.0.1, %bb.n ] ; 5 uses
  %i.br = phi i1 [ %i.bb, %bb.q ], [ %i.bb, %bb.u ], [ %i.ba, %bb.o ], [ %i.ar, %bb.n ]
  %.2221.peel = phi i32 [ 1, %bb.q ], [ 1, %bb.u ], [ %.0219244, %bb.o ], [ %.0219244, %bb.n ] ; 5 uses
  %.3215.peel = phi i32 [ %.2214.peel, %bb.q ], [ %.2214.peel, %bb.u ], [ 1, %bb.o ], [ %.0212246, %bb.n ] ; 5 uses
  %.3207.peel = phi i32 [ %.0204247, %bb.q ], [ %i.bg, %bb.u ], [ %.0204247, %bb.o ], [ %.0204247, %bb.n ] ; 6 uses
  %i.bs = and i1 %i.br, %i.ag
  br i1 %i.bs, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.v
  %i.bt = load i8, ptr %i.ae, align 4, !tbaa !42  ; 2 uses
  %i.bu = icmp ugt i8 %i.bt, 2
  br i1 %i.bu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.peel.next
  %i.bv = zext nneg i32 %.3197 to i64             ; 2 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !42
  switch i8 %i.bx, label %._crit_edge264 [
    i8 4, label %bb.y
    i8 6, label %.loopexit
  ]

bb.x:                                             ; preds = %.peel.next
  switch i8 %i.bt, label %._crit_edge264 [
    i8 0, label %bb.y
    i8 2, label %.loopexit
  ]

bb.y:                                             ; preds = %bb.w, %bb.x
  %.not233 = icmp eq i32 %.3215.peel, 0
  br i1 %.not233, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.w, align 4, !tbaa !4
  store i32 0, ptr %i.a, align 16, !tbaa !4
  br label %bb.aa

._crit_edge264:                                   ; preds = %bb.w, %bb.x
  %.pn.idx = phi i64 [ %i.bv, %bb.w ], [ 0, %bb.x ]
  %.pn = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.pn.idx ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pn, i64 12
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !tbaa !4
  store <2 x i32> %i.bz, ptr %i.a, align 16, !tbaa !4
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge264, %bb.z
  %.sink282 = phi i32 [ %i.cb, %._crit_edge264 ], [ 0, %bb.z ]
  %.2214 = phi i32 [ %.3215.peel, %._crit_edge264 ], [ 1, %bb.z ] ; 2 uses
  store i32 %.sink282, ptr %i.x, align 8, !tbaa !4
  %i.cc = load ptr, ptr @erc_img, align 8, !tbaa !14
  %i.cd = load i32, ptr %i.o, align 4, !tbaa !39
  %i.ce = load i32, ptr %i.r, align 4, !tbaa !41
  call fastcc void @buildPredRegionYUV(ptr noundef %i.cc, ptr noundef %i.a, i32 noundef %i.cd, i32 noundef %i.ce, ptr noundef %1)
  %i.cf = load ptr, ptr %0, align 8, !tbaa !43
  %i.cg = tail call fastcc i32 @edgeDistortion(ptr noundef %4, i32 noundef %i.l, ptr noundef %1, ptr noundef %i.cf, i32 noundef %5) ; 2 uses
  %i.ch = icmp sge i32 %i.cg, %.3207.peel
  %i.ci = icmp ne i32 %.2221.peel, 0
  %or.cond = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond, label %.loopexit, label %.preheader235.preheader

.preheader235.preheader:                          ; preds = %bb.aa
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.a, align 16, !tbaa !4
  %i.cj = load i8, ptr %i.ae, align 4, !tbaa !42  ; 2 uses
  %i.ck = icmp ugt i8 %i.cj, 2
  br i1 %i.ck, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.preheader235.preheader
  %i.cl = zext nneg i32 %.3197 to i64
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !42
  %i.co = icmp eq i8 %i.cn, 4
  br i1 %i.co, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %.preheader235.preheader
  %i.cp = icmp eq i8 %i.cj, 0
  br i1 %i.cp, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.cq = phi i8 [ 1, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ]
  store i8 %i.cq, ptr %i.e, align 4, !tbaa !42
  tail call fastcc void @copyPredMB(i32 noundef %i.l, ptr noundef %1, i32 noundef %5)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.v, %bb.y, %bb.aa, %bb.ae, %bb.x, %bb.j, %bb.k, %bb.l, %bb.c
  %.sroa.0.3 = phi <3 x i32> [ %.sroa.0.1, %bb.c ], [ %.sroa.0.1, %bb.j ], [ %.sroa.0.1, %bb.l ], [ %.sroa.0.2, %bb.aa ], [ %.sroa.0.0.copyload, %bb.ae ], [ %.sroa.0.2, %bb.y ], [ %.sroa.0.2, %bb.w ], [ %.sroa.0.2, %bb.x ], [ %.sroa.0.2, %bb.v ], [ %.sroa.0.1, %bb.k ] ; 4 uses
  %.3222 = phi i32 [ %.0219244, %bb.c ], [ %.0219244, %bb.j ], [ %.0219244, %bb.l ], [ 1, %bb.aa ], [ 1, %bb.ae ], [ %.2221.peel, %bb.y ], [ %.2221.peel, %bb.w ], [ %.2221.peel, %bb.x ], [ %.2221.peel, %bb.v ], [ %.0219244, %bb.k ] ; 3 uses
  %.4216 = phi i32 [ %.0212246, %bb.c ], [ %.0212246, %bb.j ], [ %.0212246, %bb.l ], [ %.2214, %bb.aa ], [ %.2214, %bb.ae ], [ 1, %bb.y ], [ %.3215.peel, %bb.w ], [ %.3215.peel, %bb.x ], [ %.3215.peel, %bb.v ], [ %.0212246, %bb.k ] ; 2 uses
  %.4208 = phi i32 [ %.0204247, %bb.c ], [ %.0204247, %bb.j ], [ %.0204247, %bb.l ], [ %.3207.peel, %bb.aa ], [ %i.cg, %bb.ae ], [ %.3207.peel, %bb.y ], [ %.3207.peel, %bb.w ], [ %.3207.peel, %bb.x ], [ %.3207.peel, %bb.v ], [ %.0204247, %bb.k ] ; 2 uses
  %.4198 = phi i32 [ %.2196249, %bb.c ], [ %.3197, %bb.j ], [ %.3197, %bb.l ], [ %.3197, %bb.aa ], [ %.3197, %bb.ae ], [ %.3197, %bb.y ], [ %.3197, %bb.w ], [ %.3197, %bb.x ], [ %.3197, %bb.v ], [ %.3197, %bb.k ] ; 2 uses
  %.4193 = phi i32 [ %.2191250, %bb.c ], [ %.3192, %bb.j ], [ %.3192, %bb.l ], [ %.3192, %bb.aa ], [ %.3192, %bb.ae ], [ %.3192, %bb.y ], [ %.3192, %bb.w ], [ %.3192, %bb.x ], [ %.3192, %bb.v ], [ %.3192, %bb.k ] ; 2 uses
  %.4 = phi i32 [ %.2251, %bb.c ], [ %.3, %bb.j ], [ %.3, %bb.l ], [ %.3, %bb.aa ], [ %.3, %bb.ae ], [ %.3, %bb.y ], [ %.3, %bb.w ], [ %.3, %bb.x ], [ %.3, %bb.v ], [ %.3, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.af, label %bb.c, !llvm.loop !46

bb.af:                                            ; preds = %.loopexit
  %i.cr = icmp eq i32 %.3222, 0
  %i.cs = select i1 %i.y, i1 %i.cr, i1 false
  br i1 %i.cs, label %bb.b, label %bb.ag, !llvm.loop !47

bb.ag:                                            ; preds = %bb.af
  %.not = icmp eq i32 %.4216, 0
  br i1 %.not, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.w, align 4, !tbaa !4
  store i32 0, ptr %i.a, align 16, !tbaa !4
  store i32 0, ptr %i.x, align 8, !tbaa !4
  %i.ct = load ptr, ptr @erc_img, align 8, !tbaa !14
  %i.cu = load i32, ptr %i.o, align 4, !tbaa !39
  %i.cv = load i32, ptr %i.r, align 4, !tbaa !41
  call fastcc void @buildPredRegionYUV(ptr noundef %i.ct, ptr noundef %i.a, i32 noundef %i.cu, i32 noundef %i.cv, ptr noundef %1)
  %i.cw = load ptr, ptr %0, align 8, !tbaa !43
  %i.cx = tail call fastcc i32 @edgeDistortion(ptr noundef %4, i32 noundef %i.l, ptr noundef %1, ptr noundef %i.cw, i32 noundef %5)
  %i.cy = icmp sge i32 %i.cx, %.4208
  %i.cz = icmp ne i32 %.3222, 0
  %or.cond3 = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond3, label %bb.ai, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ah
  %.sroa.0.0.copyload2 = load <3 x i32>, ptr %i.a, align 16, !tbaa !4
  store i8 0, ptr %i.e, align 4, !tbaa !42
  tail call fastcc void @copyPredMB(i32 noundef %i.l, ptr noundef %1, i32 noundef %5)
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader.preheader, %bb.ah, %bb.ag
  %.sroa.0.4 = phi <3 x i32> [ %.sroa.0.3, %bb.ah ], [ %.sroa.0.0.copyload2, %.preheader.preheader ], [ %.sroa.0.3, %bb.ag ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store <3 x i32> %.sroa.0.4, ptr %i.da, align 4, !tbaa !4
  %i.db = sext i32 %i.l to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %6, i64 %i.db
  store i32 2, ptr %i.dc, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @concealByCopy(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = shl i32 %1, 2
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [24 x i8], ptr %2, i64 %i.b ; 3 uses
  store i8 0, ptr %i.c, align 4, !tbaa !42
  %i.d = ashr i32 %3, 4                           ; 2 uses
  %i.e = srem i32 %1, %i.d                        ; 2 uses
  %i.f = shl nsw i32 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !39
  %i.h = sdiv i32 %1, %i.d                        ; 2 uses
  %i.i = shl i32 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.i, ptr %i.j, align 4, !tbaa !41
  %i.k = ashr i32 %3, 3                           ; 3 uses
  %i.l = shl nsw i32 %i.k, 1
  %i.m = mul i32 %i.l, %i.h
  %i.n = shl nsw i32 %i.e, 1
  %i.o = add nsw i32 %i.m, %i.n                   ; 2 uses
  %i.p = load ptr, ptr @listX, align 16, !tbaa !48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50   ; 2 uses
  %i.r = srem i32 %i.o, %i.k
  %i.s = shl nsw i32 %i.r, 3                      ; 3 uses
  %i.t = sdiv i32 %i.o, %i.k
  %i.u = shl i32 %i.t, 3                          ; 3 uses
  %i.v = add nsw i32 %i.u, 16                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 316920
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.y = load ptr, ptr %0, align 8, !tbaa !43
  %i.z = sext i32 %i.s to i64                     ; 17 uses
  %i.aa = sext i32 %i.u to i64
  %i.ab = sext i32 %3 to i64
  %i.ac = sext i32 %i.v to i64
  %indvars.iv.next.i = or disjoint i64 %i.z, 1    ; 2 uses
  %indvars.iv.next.i.1 = or disjoint i64 %i.z, 2  ; 2 uses
  %indvars.iv.next.i.2 = or disjoint i64 %i.z, 3  ; 2 uses
  %indvars.iv.next.i.3 = or disjoint i64 %i.z, 4  ; 2 uses
  %indvars.iv.next.i.4 = or disjoint i64 %i.z, 5  ; 2 uses
  %indvars.iv.next.i.5 = or disjoint i64 %i.z, 6  ; 2 uses
  %indvars.iv.next.i.6 = or disjoint i64 %i.z, 7  ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %i.z, 8      ; 2 uses
  %indvars.iv.next.i.8 = add nsw i64 %i.z, 9      ; 2 uses
  %indvars.iv.next.i.9 = add nsw i64 %i.z, 10     ; 2 uses
  %indvars.iv.next.i.10 = add nsw i64 %i.z, 11    ; 2 uses
  %indvars.iv.next.i.11 = add nsw i64 %i.z, 12    ; 2 uses
  %indvars.iv.next.i.12 = add nsw i64 %i.z, 13    ; 2 uses
  %indvars.iv.next.i.13 = add nsw i64 %i.z, 14    ; 2 uses
  %indvars.iv.next.i.14 = add nsw i64 %i.z, 15    ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.a
  %indvars.iv56.i = phi i64 [ %i.aa, %bb.a ], [ %indvars.iv.next57.i, %.preheader.i ] ; 3 uses
  %i.ad = mul nsw i64 %indvars.iv56.i, %i.ab
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv56.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60 ; 16 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.y, i64 %i.ad ; 16 uses
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.z
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !61
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.z
  store i16 %i.ah, ptr %gep.i, align 2, !tbaa !61
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !61
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store i16 %i.aj, ptr %gep.i.1, align 2, !tbaa !61
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.1
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !61
  %gep.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store i16 %i.al, ptr %gep.i.2, align 2, !tbaa !61
  %i.am = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !61
  %gep.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store i16 %i.an, ptr %gep.i.3, align 2, !tbaa !61
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.3
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !61
  %gep.i.4 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.3
  store i16 %i.ap, ptr %gep.i.4, align 2, !tbaa !61
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.4
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !61
  %gep.i.5 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.4
  store i16 %i.ar, ptr %gep.i.5, align 2, !tbaa !61
  %i.as = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.5
  %i.at = load i16, ptr %i.as, align 2, !tbaa !61
  %gep.i.6 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.5
  store i16 %i.at, ptr %gep.i.6, align 2, !tbaa !61
  %i.au = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.6
  %i.av = load i16, ptr %i.au, align 2, !tbaa !61
  %gep.i.7 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.6
  store i16 %i.av, ptr %gep.i.7, align 2, !tbaa !61
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.7
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !61
  %gep.i.8 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.7
  store i16 %i.ax, ptr %gep.i.8, align 2, !tbaa !61
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.8
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !61
  %gep.i.9 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.8
  store i16 %i.az, ptr %gep.i.9, align 2, !tbaa !61
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.9
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !61
  %gep.i.10 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.9
  store i16 %i.bb, ptr %gep.i.10, align 2, !tbaa !61
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.10
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !61
  %gep.i.11 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.10
  store i16 %i.bd, ptr %gep.i.11, align 2, !tbaa !61
  %i.be = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.11
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !61
  %gep.i.12 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.11
  store i16 %i.bf, ptr %gep.i.12, align 2, !tbaa !61
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.12
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !61
  %gep.i.13 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.12
  store i16 %i.bh, ptr %gep.i.13, align 2, !tbaa !61
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.13
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !61
  %gep.i.14 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.13
  store i16 %i.bj, ptr %gep.i.14, align 2, !tbaa !61
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i.14
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !61
  %gep.i.15 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.14
  store i16 %i.bl, ptr %gep.i.15, align 2, !tbaa !61
  %indvars.iv.next57.i = add nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.bm = icmp slt i64 %indvars.iv.next57.i, %i.ac
  br i1 %i.bm, label %.preheader.i, label %bb.b, !llvm.loop !62

bb.b:                                             ; preds = %.preheader.i
  %i.bn = load ptr, ptr @dec_picture, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 317044
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @uv_div, i64 16), i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4  ; 2 uses
  %i.bt = ashr i32 %i.u, %i.bs                    ; 2 uses
  %i.bu = ashr i32 %i.v, %i.bs                    ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph52.i, label %copyBetweenFrames.exit

.lr.ph52.i:                                       ; preds = %bb.b
  %i.bw = getelementptr inbounds [4 x i8], ptr @uv_div, i64 %i.bq
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 3 uses
  %i.by = ashr i32 %i.s, %i.bx                    ; 2 uses
  %i.bz = add nsw i32 %i.s, 16
  %i.ca = ashr i32 %i.bz, %i.bx                   ; 2 uses
  %i.cb = icmp slt i32 %i.by, %i.ca
  br i1 %i.cb, label %.lr.ph52.split.i, label %copyBetweenFrames.exit

.lr.ph52.split.i:                                 ; preds = %.lr.ph52.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 316928
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !64 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !65
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !66 ; 6 uses
  %i.ci = ptrtoaddr ptr %i.ch to i64              ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !65
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !67 ; 6 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64              ; 2 uses
  %i.cn = sext i32 %i.by to i64                   ; 7 uses
  %i.co = sext i32 %i.bt to i64
  %wide.trip.count65.i = sext i32 %i.bu to i64
  %wide.trip.count.i = sext i32 %i.ca to i64      ; 4 uses
  %i.cp = sub nsw i64 %wide.trip.count.i, %i.cn   ; 7 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  %i.cq = sub i64 %i.ci, %i.cm
  %diff.check = icmp ugt i64 %i.cq, -32
  %min.iters.check8 = icmp ult i64 %i.cp, 16
  %i.cr = and i64 %i.cp, 12
  %n.vec = and i64 %i.cp, -16                     ; 4 uses
  %i.cs = add nsw i64 %n.vec, %i.cn
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cr, 0
  %n.vec12 = and i64 %i.cp, -4                    ; 3 uses
  %i.ct = add nsw i64 %n.vec12, %i.cn
  %cmp.n17 = icmp eq i64 %i.cp, %n.vec12
  %i.cu = add nsw i64 %wide.trip.count.i, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.lr.ph52.split.i
  %indvars.iv62.i = phi i64 [ %i.co, %.lr.ph52.split.i ], [ %indvars.iv.next63.i, %._crit_edge.i ] ; 4 uses
  %i.cv = trunc i64 %indvars.iv62.i to i32
  %i.cw = mul i32 %3, %i.cv
  %i.cx = ashr i32 %i.cw, %i.bx
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv62.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !60 ; 6 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv62.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !60 ; 6 uses
  %i.dc = sext i32 %i.cx to i64                   ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dd = ptrtoaddr ptr %i.db to i64              ; 2 uses
  %i.de = ptrtoaddr ptr %i.cz to i64              ; 2 uses
  %i.df = shl nsw i64 %i.dc, 1                    ; 3 uses
  %i.dg = add i64 %i.df, %i.ci
  %i.dh = sub i64 %i.de, %i.dg
end_hunk_0
begin_hunk_1_@copyPredMB:bb.a
  %n.vec = and i64 %i.er, 8589934576              ; 4 uses
  %i.et = add nsw i64 %n.vec, %i.ec
  %cmp.n = icmp eq i64 %i.er, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.es, 0
  %n.vec19 = and i64 %i.er, 8589934588            ; 3 uses
  %i.eu = add nsw i64 %n.vec19, %i.ec
  %cmp.n24 = icmp eq i64 %i.er, %n.vec19
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph8.split, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph8.split ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv18 = phi i64 [ %i.ee, %.lr.ph8.split ], [ %indvars.iv.next19, %._crit_edge ] ; 4 uses
  %i.ev = mul i32 %i.dx, %indvar
  %i.ew = add i32 %i.en, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 1                    ; 2 uses
  %scevgep5 = getelementptr i8, ptr %scevgep4, i64 %i.ey ; 2 uses
  %scevgep7 = getelementptr i8, ptr %scevgep6, i64 %i.ey ; 2 uses
  %i.ez = trunc i64 %indvars.iv18 to i32
  %i.fa = sub i32 %i.ez, %i.dp
  %i.fb = mul i32 %i.fa, %i.dx
  %invariant.op = sub i32 %i.fb, %i.dt            ; 5 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %indvars.iv18
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !60 ; 7 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %indvars.iv18
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !60 ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fg = mul i32 %i.dx, %indvar
  %i.fh = add i32 %i.eh, %i.fg                    ; 2 uses
  %i.fi = add i32 %i.fh, %i.eg
  %i.fj = icmp slt i32 %i.fi, %i.fh
  br i1 %i.fj, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.fd, i64 %i.ei ; 2 uses
  %scevgep1 = getelementptr i8, ptr %i.fd, i64 %i.em ; 2 uses
  %scevgep2 = getelementptr i8, ptr %i.ff, i64 %i.ei ; 2 uses
  %scevgep3 = getelementptr i8, ptr %i.ff, i64 %i.em ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep1
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %scevgep, %scevgep7
  %bound19 = icmp ult ptr %scevgep5, %scevgep1
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  %bound011 = icmp ult ptr %scevgep2, %scevgep7
  %bound112 = icmp ult ptr %scevgep5, %scevgep3
  %found.conflict13 = and i1 %bound011, %bound112
  %conflict.rdx14 = or i1 %conflict.rdx, %found.conflict13
  br i1 %conflict.rdx14, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fk = add i64 %index, %i.ec                   ; 3 uses
  %i.fl = trunc nsw i64 %i.fk to i32
  %i.fm = add i32 %invariant.op, %i.fl
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr [2 x i8], ptr %1, i64 %i.fn ; 4 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 512
  %i.fq = getelementptr i8, ptr %i.fo, i64 528
  %wide.load = load <8 x i16>, ptr %i.fp, align 2, !tbaa !61, !alias.scope !197
  %wide.load16 = load <8 x i16>, ptr %i.fq, align 2, !tbaa !61, !alias.scope !197
  %i.fr = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %i.fk ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <8 x i16> %wide.load, ptr %i.fr, align 2, !tbaa !61, !alias.scope !200, !noalias !202
  store <8 x i16> %wide.load16, ptr %i.fs, align 2, !tbaa !61, !alias.scope !200, !noalias !202
  %i.ft = getelementptr i8, ptr %i.fo, i64 640
  %i.fu = getelementptr i8, ptr %i.fo, i64 656
  %wide.load17 = load <8 x i16>, ptr %i.ft, align 2, !tbaa !61, !alias.scope !197
  %wide.load18 = load <8 x i16>, ptr %i.fu, align 2, !tbaa !61, !alias.scope !197
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %i.fk ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <8 x i16> %wide.load17, ptr %i.fv, align 2, !tbaa !61, !alias.scope !204, !noalias !197
  store <8 x i16> %wide.load18, ptr %i.fw, align 2, !tbaa !61, !alias.scope !204, !noalias !197
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.fy = add i64 %index20, %i.ec                 ; 3 uses
  %i.fz = trunc nsw i64 %i.fy to i32
  %i.ga = add i32 %invariant.op, %i.fz
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr [2 x i8], ptr %1, i64 %i.gb ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 512
  %wide.load21 = load <4 x i16>, ptr %i.gd, align 2, !tbaa !61, !alias.scope !197
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %i.fy
  store <4 x i16> %wide.load21, ptr %i.ge, align 2, !tbaa !61, !alias.scope !200, !noalias !202
  %i.gf = getelementptr i8, ptr %i.gc, i64 640
  %wide.load22 = load <4 x i16>, ptr %i.gf, align 2, !tbaa !61, !alias.scope !197
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %i.fy
  store <4 x i16> %wide.load22, ptr %i.gg, align 2, !tbaa !61, !alias.scope !204, !noalias !197
  %index.next23 = add nuw i64 %index20, 4         ; 2 uses
  %i.gh = icmp eq i64 %index.next23, %n.vec19
  br i1 %i.gh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !206

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n24, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv13.ph = phi i64 [ %i.ec, %iter.check ], [ %i.ec, %vector.scevcheck ], [ %i.ec, %vector.memcheck ], [ %i.et, %vec.epilog.iter.check ], [ %i.eu, %vec.epilog.middle.block ] ; 6 uses
  %i.gi = trunc i64 %indvars.iv13.ph to i32       ; 2 uses
  %i.gj = add i32 %i.ds, %i.gi
  %i.gk = and i32 %i.gj, 1
  %lcmp.mod.not.not = icmp eq i32 %i.gk, 0
  br i1 %lcmp.mod.not.not, label %vec.epilog.scalar.ph.prol, label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.gl = trunc nsw i64 %indvars.iv13.ph to i32
  %.reass.prol = add i32 %invariant.op, %i.gl
  %i.gm = sext i32 %.reass.prol to i64
  %i.gn = getelementptr [2 x i8], ptr %1, i64 %i.gm ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 512
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !61
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %indvars.iv13.ph
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !61
  %i.gr = getelementptr i8, ptr %i.gn, i64 640
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !61
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %indvars.iv13.ph
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !61
  %indvars.iv.next14.prol = add nsw i64 %indvars.iv13.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv13.unr = phi i64 [ %indvars.iv13.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next14.prol, %vec.epilog.scalar.ph.prol ]
  %i.gu = icmp eq i32 %i.ds, %i.gi
  br i1 %i.gu, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv13 = phi i64 [ %indvars.iv.next14.1, %vec.epilog.scalar.ph ], [ %indvars.iv13.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.gv = trunc nsw i64 %indvars.iv13 to i32
  %.reass = add i32 %invariant.op, %i.gv
  %i.gw = sext i32 %.reass to i64
  %i.gx = getelementptr [2 x i8], ptr %1, i64 %i.gw ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 512
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !61
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %indvars.iv13
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !61
  %i.hb = getelementptr i8, ptr %i.gx, i64 640
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !61
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %indvars.iv13
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !61
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, 1 ; 3 uses
  %i.he = trunc nsw i64 %indvars.iv.next14 to i32
  %.reass.1 = add i32 %invariant.op, %i.he
  %i.hf = sext i32 %.reass.1 to i64
  %i.hg = getelementptr [2 x i8], ptr %1, i64 %i.hf ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 512
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !61
  %i.hj = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %indvars.iv.next14
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !61
  %i.hk = getelementptr i8, ptr %i.hg, i64 640
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !61
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %indvars.iv.next14
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !61
  %indvars.iv.next14.1 = add nsw i64 %indvars.iv13, 2 ; 2 uses
  %lftr.wideiv16.1 = trunc i64 %indvars.iv.next14.1 to i32
  %exitcond17.not.1 = icmp eq i32 %i.ed, %lftr.wideiv16.1
  br i1 %exitcond17.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !207

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1 ; 2 uses
  %lftr.wideiv21 = trunc i64 %indvars.iv.next19 to i32
  %exitcond22.not = icmp eq i32 %i.ef, %lftr.wideiv21
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond22.not, label %.loopexit, label %iter.check, !llvm.loop !208

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %.lr.ph8, %bb.b
  ret void
}

declare void @get_block(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @init_lists(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(0,1) }

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
!8 = !{!9, !5, i64 64}
!9 = !{!"ercVariables_s", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !12, i64 32, !5, i64 40, !10, i64 48, !5, i64 56, !5, i64 60, !5, i64 64}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS12ercSegment_s", !11, i64 0}
!13 = !{!9, !5, i64 60}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS7img_par", !11, i64 0}
!16 = !{!17, !5, i64 5932}
!17 = !{!"img_par", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !10, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !6, i64 104, !6, i64 616, !6, i64 1384, !6, i64 2408, !6, i64 5480, !18, i64 5544, !10, i64 5552, !20, i64 5560, !22, i64 5568, !5, i64 5576, !5, i64 5580, !5, i64 5584, !5, i64 5588, !11, i64 5592, !23, i64 5600, !5, i64 5608, !5, i64 5612, !5, i64 5616, !5, i64 5620, !5, i64 5624, !5, i64 5628, !24, i64 5632, !5, i64 5640, !5, i64 5644, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !5, i64 5664, !5, i64 5668, !5, i64 5672, !5, i64 5676, !5, i64 5680, !5, i64 5684, !5, i64 5688, !5, i64 5692, !6, i64 5696, !5, i64 5708, !5, i64 5712, !5, i64 5716, !5, i64 5720, !5, i64 5724, !5, i64 5728, !5, i64 5732, !5, i64 5736, !5, i64 5740, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !20, i64 5768, !20, i64 5776, !25, i64 5784, !5, i64 5792, !5, i64 5796, !5, i64 5800, !5, i64 5804, !5, i64 5808, !5, i64 5812, !5, i64 5816, !5, i64 5820, !5, i64 5824, !5, i64 5828, !5, i64 5832, !5, i64 5836, !5, i64 5840, !5, i64 5844, !5, i64 5848, !5, i64 5852, !5, i64 5856, !5, i64 5860, !5, i64 5864, !5, i64 5868, !5, i64 5872, !5, i64 5876, !5, i64 5880, !5, i64 5884, !5, i64 5888, !5, i64 5892, !5, i64 5896, !5, i64 5900, !5, i64 5904, !5, i64 5908, !5, i64 5912, !5, i64 5916, !5, i64 5920, !5, i64 5924, !5, i64 5928, !5, i64 5932, !5, i64 5936, !5, i64 5940, !5, i64 5944, !6, i64 5948, !6, i64 5972, !5, i64 5996, !5, i64 6000, !27, i64 6008, !27, i64 6016, !28, i64 6024, !28, i64 6040, !5, i64 6056, !5, i64 6060, !5, i64 6064, !5, i64 6068, !5, i64 6072, !5, i64 6076, !5, i64 6080, !5, i64 6084, !5, i64 6088, !5, i64 6092, !5, i64 6096, !5, i64 6100, !5, i64 6104}
!18 = !{!"p2 omnipotent char", !19, i64 0}
!19 = !{!"any p2 pointer", !11, i64 0}
!20 = !{!"p3 int", !21, i64 0}
!21 = !{!"any p3 pointer", !19, i64 0}
!22 = !{!"p2 int", !19, i64 0}
!23 = !{!"p1 _ZTS10macroblock", !11, i64 0}
!24 = !{!"p1 _ZTS18DecRefPicMarking_s", !11, i64 0}
!25 = !{!"p4 int", !26, i64 0}
!26 = !{!"any p4 pointer", !21, i64 0}
!27 = !{!"long", !6, i64 0}
!28 = !{!"timeb", !27, i64 0, !29, i64 8, !29, i64 10, !29, i64 12}
!29 = !{!"short", !6, i64 0}
!30 = !{!17, !5, i64 5936}
!31 = !{!9, !10, i64 8}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = !{!40, !5, i64 4}
!40 = !{!"", !6, i64 0, !5, i64 4, !5, i64 8, !6, i64 12}
!41 = !{!40, !5, i64 8}
!42 = !{!40, !6, i64 0}
!43 = !{!44, !45, i64 0}
!44 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16}
!45 = !{!"p1 short", !11, i64 0}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !33}
!48 = !{!49, !49, i64 0}
!49 = !{!"p2 _ZTS16storable_picture", !19, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTS16storable_picture", !11, i64 0}
!52 = !{!53, !54, i64 316920}
!53 = !{!"storable_picture", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 24, !6, i64 79224, !6, i64 158424, !6, i64 237624, !5, i64 316824, !5, i64 316828, !5, i64 316832, !5, i64 316836, !5, i64 316840, !5, i64 316844, !5, i64 316848, !5, i64 316852, !5, i64 316856, !29, i64 316860, !5, i64 316864, !5, i64 316868, !5, i64 316872, !5, i64 316876, !5, i64 316880, !5, i64 316884, !5, i64 316888, !5, i64 316892, !5, i64 316896, !5, i64 316900, !5, i64 316904, !5, i64 316908, !5, i64 316912, !54, i64 316920, !55, i64 316928, !56, i64 316936, !54, i64 316944, !57, i64 316952, !58, i64 316960, !58, i64 316968, !59, i64 316976, !18, i64 316984, !18, i64 316992, !51, i64 317000, !51, i64 317008, !51, i64 317016, !5, i64 317024, !5, i64 317028, !5, i64 317032, !5, i64 317036, !5, i64 317040, !5, i64 317044, !5, i64 317048, !5, i64 317052, !5, i64 317056, !5, i64 317060, !5, i64 317064, !5, i64 317068, !5, i64 317072, !6, i64 317076, !5, i64 317084, !24, i64 317088, !5, i64 317096}
!54 = !{!"p2 short", !19, i64 0}
!55 = !{!"p3 short", !21, i64 0}
!56 = !{!"p1 omnipotent char", !11, i64 0}
!57 = !{!"p3 omnipotent char", !21, i64 0}
!58 = !{!"p3 long long", !21, i64 0}
!59 = !{!"p4 short", !26, i64 0}
!60 = !{!45, !45, i64 0}
!61 = !{!29, !29, i64 0}
!62 = distinct !{!62, !33}
!63 = !{!53, !5, i64 317044}
!64 = !{!53, !55, i64 316928}
!65 = !{!54, !54, i64 0}
!66 = !{!44, !45, i64 8}
!67 = !{!44, !45, i64 16}
!68 = distinct !{!68, !33, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!"branch_weights", i32 4, i32 12}
!72 = distinct !{!72, !33, !69, !70}
!73 = distinct !{!73, !33, !69}
!74 = distinct !{!74, !33}
!75 = !{!17, !5, i64 6080}
!76 = !{!17, !5, i64 6064}
!77 = !{!17, !5, i64 6056}
!78 = !{!17, !5, i64 6072}
!79 = !{!17, !5, i64 5660}
!80 = !{!17, !5, i64 5816}
!81 = !{!17, !5, i64 5676}
!82 = !{!17, !5, i64 48}
!83 = !{!17, !5, i64 52}
!84 = !{!17, !5, i64 56}
!85 = !{!17, !5, i64 64}
!86 = !{!53, !5, i64 316900}
!87 = !{!53, !5, i64 316832}
!88 = !{!53, !5, i64 316824}
!89 = !{!53, !5, i64 316856}
!90 = !{!53, !5, i64 316852}
!91 = !{!53, !5, i64 316848}
!92 = !{!53, !5, i64 317096}
!93 = !{!53, !5, i64 317040}
!94 = !{!17, !5, i64 6060}
!95 = !{!96, !5, i64 28}
!96 = !{!"decoded_picture_buffer", !97, i64 0, !97, i64 8, !97, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !98, i64 56}
!97 = !{!"p2 _ZTS11frame_store", !19, i64 0}
!98 = !{!"p1 _ZTS11frame_store", !11, i64 0}
!99 = !{!96, !97, i64 0}
!100 = !{!98, !98, i64 0}
!101 = !{!102, !5, i64 0}
!102 = !{!"frame_store", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !51, i64 48, !51, i64 56, !51, i64 64}
!103 = !{!102, !51, i64 48}
!104 = !{!53, !5, i64 316844}
!105 = distinct !{!105, !33}
!106 = !{!17, !5, i64 6084}
!107 = !{!53, !5, i64 317024}
!108 = !{!53, !5, i64 317028}
!109 = distinct !{!109, !33}
!110 = !{!102, !5, i64 44}
!111 = distinct !{!111, !33}
!112 = !{!11, !11, i64 0}
!113 = !{!114, !5, i64 1112}
!114 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 56, !6, i64 440, !6, i64 952, !6, i64 976, !5, i64 984, !5, i64 988, !5, i64 992, !6, i64 996, !6, i64 1028, !6, i64 1060, !5, i64 1092, !5, i64 1096, !5, i64 1100, !10, i64 1104, !5, i64 1112, !5, i64 1116, !5, i64 1120, !5, i64 1124, !5, i64 1128, !5, i64 1132, !5, i64 1136, !5, i64 1140, !5, i64 1144, !5, i64 1148, !5, i64 1152}
!115 = !{!96, !5, i64 32}
!116 = !{!117, !5, i64 1008}
!117 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !6, i64 72, !6, i64 456, !6, i64 968, !6, i64 992, !5, i64 1000, !5, i64 1004, !5, i64 1008, !5, i64 1012, !5, i64 1016, !5, i64 1020, !5, i64 1024, !5, i64 1028, !5, i64 1032, !6, i64 1036, !5, i64 2060, !5, i64 2064, !5, i64 2068, !5, i64 2072, !5, i64 2076, !5, i64 2080, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !118, i64 2112}
!118 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !119, i64 84, !5, i64 496, !119, i64 500, !5, i64 912, !5, i64 916, !5, i64 920, !5, i64 924, !5, i64 928, !5, i64 932, !5, i64 936, !5, i64 940, !5, i64 944, !5, i64 948}
!119 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !6, i64 140, !6, i64 268, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408}
!120 = !{!102, !5, i64 20}
!121 = !{!17, !5, i64 6076}
!122 = !{!102, !5, i64 28}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = !{!53, !5, i64 4}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33}
!128 = distinct !{!128, !33, !69, !70}
!129 = distinct !{!129, !130}
!130 = !{!"llvm.loop.unroll.disable"}
!131 = distinct !{!131, !33, !69, !70}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !33, !69}
!134 = distinct !{!134, !33, !69}
!135 = distinct !{!135, !33, !69, !70}
!136 = distinct !{!136, !33, !70, !69}
!137 = !{!117, !5, i64 2060}
!138 = !{!53, !5, i64 316836}
!139 = !{!17, !5, i64 6068}
!140 = distinct !{!140, !33}
!141 = !{!102, !5, i64 40}
!142 = !{!143, !51, i64 0}
!143 = !{!"concealment_node", !51, i64 0, !5, i64 8, !144, i64 16}
!144 = !{!"p1 _ZTS16concealment_node", !11, i64 0}
!145 = !{!143, !5, i64 8}
!146 = !{!143, !144, i64 16}
!147 = distinct !{!147, !33}
end_hunk_1
