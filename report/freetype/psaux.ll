Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@PS_Conv_ToFixed:bb.a
  %.595 = add nsw i64 %spec.select118, %.393
  %.271 = select i1 %i.be, i8 %.069, i8 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.w
  %i.bi = phi ptr [ %i.bd, %bb.z ], [ %i.ay, %bb.x ], [ %i.ay, %bb.w ]
  %.696 = phi i64 [ %.595, %bb.z ], [ %.393, %bb.x ], [ %.393, %bb.w ] ; 4 uses
  %.3 = phi i8 [ %.271, %bb.z ], [ %.069, %bb.x ], [ %.069, %bb.w ]
  %.2 = phi i1 [ %i.bf, %bb.z ], [ true, %bb.x ], [ true, %bb.w ]
  store ptr %i.bi, ptr %0, align 8, !tbaa !33
  %i.bj = icmp ne i64 %.085.fr, 0
  %i.bk = icmp ne i64 %.380, 0
  %or.cond8 = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond8, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %.not114 = icmp eq i8 %.3, 0
  br i1 %.not114, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  br i1 %.2, label %.preheader127, label %.critedge

.preheader127:                                    ; preds = %bb.ac
  %i.bl = icmp sgt i64 %.696, 0
  br i1 %i.bl, label %.lr.ph224, label %.preheader

.preheader:                                       ; preds = %.preheader127
  %i.bm = icmp slt i64 %.696, 0
  br i1 %i.bm, label %.lr.ph233, label %._crit_edge

.lr.ph224:                                        ; preds = %.preheader127, %bb.ah
  %.4223 = phi i64 [ %.5, %bb.ah ], [ %.376, %.preheader127 ] ; 3 uses
  %.481222 = phi i64 [ %.582, %bb.ah ], [ %.380, %.preheader127 ] ; 3 uses
  %.186221 = phi i64 [ %i.bo, %bb.ah ], [ %.085.fr, %.preheader127 ] ; 2 uses
  %.797220 = phi i64 [ %i.bt, %bb.ah ], [ %.696, %.preheader127 ] ; 2 uses
  %i.bn = icmp samesign ugt i64 %.186221, 214748363
  br i1 %i.bn, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph224
  %i.bo = mul nuw nsw i64 %.186221, 10            ; 2 uses
  %i.bp = icmp sgt i64 %.481222, 214748363
  br i1 %i.bp, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bq = icmp eq i64 %.4223, 1
  br i1 %i.bq, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = sdiv i64 %.4223, 10
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.bs = mul nsw i64 %.481222, 10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.582 = phi i64 [ %.481222, %bb.af ], [ %i.bs, %bb.ag ] ; 2 uses
  %.5 = phi i64 [ %i.br, %bb.af ], [ %.4223, %bb.ag ] ; 2 uses
  %i.bt = add nsw i64 %.797220, -1
  %i.bu = icmp sgt i64 %.797220, 1
  br i1 %i.bu, label %.lr.ph224, label %._crit_edge, !llvm.loop !592

bb.ai:                                            ; preds = %bb.al
  %i.bv = add nsw i64 %.8229, 1                   ; 2 uses
  %exitcond247.not = icmp eq i64 %i.bv, 0
  br i1 %exitcond247.not, label %._crit_edge, label %.lr.ph233, !llvm.loop !593

.lr.ph233:                                        ; preds = %.preheader, %bb.ai
  %.6232 = phi i64 [ %.7, %bb.ai ], [ %.376, %.preheader ] ; 3 uses
  %.683231 = phi i64 [ %.784, %bb.ai ], [ %.380, %.preheader ] ; 2 uses
  %.287230 = phi i64 [ %i.bw, %bb.ai ], [ %.085.fr, %.preheader ] ; 2 uses
  %.8229 = phi i64 [ %i.bv, %bb.ai ], [ %.696, %.preheader ]
  %i.bw = udiv i64 %.287230, 10                   ; 2 uses
  %i.bx = icmp slt i64 %.6232, 214748364
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph233
  %i.by = mul nsw i64 %.6232, 10
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph233
  %i.bz = sdiv i64 %.683231, 10
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.784 = phi i64 [ %.683231, %bb.aj ], [ %i.bz, %bb.ak ] ; 3 uses
  %.7 = phi i64 [ %i.by, %bb.aj ], [ %.6232, %bb.ak ] ; 2 uses
  %i.ca = icmp samesign ugt i64 %.287230, 9
  %i.cb = icmp ne i64 %.784, 0
  %or.cond10 = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond10, label %bb.ai, label %.critedge

._crit_edge:                                      ; preds = %bb.ai, %bb.ah, %.preheader
  %.287.lcssa = phi i64 [ %.085.fr, %.preheader ], [ %i.bo, %bb.ah ], [ %i.bw, %bb.ai ] ; 2 uses
  %.683.lcssa = phi i64 [ %.380, %.preheader ], [ %.582, %bb.ah ], [ %.784, %bb.ai ] ; 2 uses
  %.6.lcssa = phi i64 [ %.376, %.preheader ], [ %.5, %bb.ah ], [ %.7, %bb.ai ]
  %.not116 = icmp eq i64 %.683.lcssa, 0
  br i1 %.not116, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %._crit_edge
  %i.cc = tail call i64 @FT_DivFix(i64 noundef %.683.lcssa, i64 noundef %.6.lcssa) #19
  %i.cd = add nsw i64 %i.cc, %.287.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph224, %bb.ae, %bb.ab, %._crit_edge, %bb.am
  %.388 = phi i64 [ %.287.lcssa, %._crit_edge ], [ %i.cd, %bb.am ], [ 2147483647, %bb.ab ], [ 2147483647, %bb.ae ], [ 2147483647, %.lr.ph224 ] ; 2 uses
  %i.ce = sub nsw i64 0, %.388
  %spec.select = select i1 %.072, i64 %.388, i64 %i.ce
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.y, %bb.ac, %bb.c, %bb.a, %bb.aa, %bb.f, %bb.d, %bb.d, %.loopexit
  %.199 = phi i64 [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.d ], [ %spec.select, %.loopexit ], [ 0, %bb.c ], [ 0, %bb.ac ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i64 %.199
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @PS_Conv_ToInt(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 5 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.not.i.not = icmp ult ptr %i.a, %1
  br i1 %.not.i.not, label %bb.b, label %PS_Conv_Strtol.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !41    ; 2 uses
  switch i8 %i.c, label %bb.e [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %PS_Conv_Strtol.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i8 %i.c, 45
  %i.g = load i8, ptr %i.d, align 1, !tbaa !41
  switch i8 %i.g, label %bb.e [
    i8 45, label %PS_Conv_Strtol.exit.thread
    i8 43, label %PS_Conv_Strtol.exit.thread
  ]

bb.e:                                             ; preds = %bb.d, %bb.b
  %.052.i = phi ptr [ %i.d, %bb.d ], [ %i.a, %bb.b ] ; 5 uses
  %.047.i = phi i1 [ %i.f, %bb.d ], [ true, %bb.b ]
  %i.h = icmp ult ptr %.052.i, %1
  br i1 %i.h, label %.lr.ph.preheader.i, label %PS_Conv_Strtol.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.052117.i = ptrtoaddr ptr %.052.i to i64
  %i.i = sub i64 %i.b, %.052117.i
  %scevgep.i = getelementptr i8, ptr %.052.i, i64 %i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.04678.i = phi i8 [ %.2.i, %bb.l ], [ 0, %.lr.ph.preheader.i ] ; 10 uses
  %.04877.i = phi i64 [ %.250.i, %bb.l ], [ 0, %.lr.ph.preheader.i ] ; 13 uses
  %.15376.i = phi ptr [ %i.x, %bb.l ], [ %.052.i, %.lr.ph.preheader.i ] ; 11 uses
  %i.j = load i8, ptr %.15376.i, align 1, !tbaa !41 ; 4 uses
  switch i8 %i.j, label %bb.f [
    i8 32, label %.thread.loopexit.i
    i8 13, label %.thread.loopexit.i
    i8 10, label %.thread.loopexit.i
    i8 9, label %.thread.loopexit.i
    i8 12, label %.thread.loopexit.i
    i8 0, label %.thread.loopexit.i
  ]

bb.f:                                             ; preds = %.lr.ph.i
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %.thread.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = zext nneg i8 %i.j to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr @ft_char_table, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !41    ; 2 uses
  %i.o = icmp slt i8 %i.n, 0
  br i1 %i.o, label %.thread.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = zext nneg i8 %i.n to i64
  %i.q = add nsw i8 %i.j, -48
  %.not65.i = icmp ult i8 %i.q, 10
  br i1 %.not65.i, label %bb.i, label %.thread.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.r = icmp sgt i64 %.04877.i, 214748364
  br i1 %i.r, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = icmp eq i64 %.04877.i, 214748364
  %i.t = and i64 %i.l, 56
  %i.u = icmp ne i64 %i.t, 48
  %or.cond69.i = and i1 %i.s, %i.u
  br i1 %or.cond69.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = mul nsw i64 %.04877.i, 10
  %i.w = add nsw i64 %i.v, %i.p
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.250.i = phi i64 [ %i.w, %bb.k ], [ 214748364, %bb.j ], [ %.04877.i, %bb.i ] ; 2 uses
  %.2.i = phi i8 [ %.04678.i, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.15376.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.x, %1
  br i1 %exitcond.not.i, label %.thread.loopexit.i, label %.lr.ph.i, !llvm.loop !594

.thread.loopexit.i:                               ; preds = %bb.l, %bb.h, %bb.g, %bb.f, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %.153.lcssa.ph.i = phi ptr [ %scevgep.i, %bb.l ], [ %.15376.i, %bb.g ], [ %.15376.i, %bb.f ], [ %.15376.i, %.lr.ph.i ], [ %.15376.i, %.lr.ph.i ], [ %.15376.i, %.lr.ph.i ], [ %.15376.i, %.lr.ph.i ], [ %.15376.i, %.lr.ph.i ], [ %.15376.i, %.lr.ph.i ], [ %.15376.i, %bb.h ]
  %.048.lcssa.ph.i = phi i64 [ %.250.i, %bb.l ], [ %.04877.i, %bb.g ], [ %.04877.i, %bb.f ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %bb.h ]
  %.046.lcssa.ph.i = phi i8 [ %.2.i, %bb.l ], [ %.04678.i, %bb.g ], [ %.04678.i, %bb.f ], [ %.04678.i, %.lr.ph.i ], [ %.04678.i, %.lr.ph.i ], [ %.04678.i, %.lr.ph.i ], [ %.04678.i, %.lr.ph.i ], [ %.04678.i, %.lr.ph.i ], [ %.04678.i, %.lr.ph.i ], [ %.04678.i, %bb.h ]
  %i.y = icmp eq i8 %.046.lcssa.ph.i, 0
  %i.z = select i1 %i.y, i64 %.048.lcssa.ph.i, i64 2147483647
  br label %PS_Conv_Strtol.exit

PS_Conv_Strtol.exit:                              ; preds = %bb.e, %.thread.loopexit.i
  %.153.lcssa.i = phi ptr [ %.052.i, %bb.e ], [ %.153.lcssa.ph.i, %.thread.loopexit.i ] ; 7 uses
  %.046.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.z, %.thread.loopexit.i ] ; 2 uses
  %i.aa = sub nsw i64 0, %.046.lcssa.i
  %.5.i = select i1 %.047.i, i64 %.046.lcssa.i, i64 %i.aa ; 6 uses
  %i.ab = icmp eq ptr %.153.lcssa.i, %i.a
  br i1 %i.ab, label %PS_Conv_Strtol.exit.thread, label %bb.m

bb.m:                                             ; preds = %PS_Conv_Strtol.exit
  %i.ac = icmp ult ptr %.153.lcssa.i, %1
  br i1 %i.ac, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.ad = load i8, ptr %.153.lcssa.i, align 1, !tbaa !41
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %.153.lcssa.i, i64 1 ; 4 uses
  %.not.i12 = icmp uge ptr %i.af, %1
  %i.ag = add i64 %.5.i, -37
  %or.cond.i = icmp ult i64 %i.ag, -35
  %or.cond70.i = or i1 %.not.i12, %or.cond.i
  br i1 %or.cond70.i, label %PS_Conv_Strtol.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !41  ; 2 uses
  switch i8 %i.ah, label %bb.s [
    i8 45, label %bb.q
    i8 43, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %.153.lcssa.i, i64 2 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, %1
  br i1 %i.aj, label %PS_Conv_Strtol.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = icmp ne i8 %i.ah, 45
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !41
  switch i8 %i.al, label %bb.s [
    i8 45, label %PS_Conv_Strtol.exit.thread
    i8 43, label %PS_Conv_Strtol.exit.thread
  ]

bb.s:                                             ; preds = %bb.r, %bb.p
  %.052.i14 = phi ptr [ %i.ai, %bb.r ], [ %i.af, %bb.p ] ; 5 uses
  %.047.i15 = phi i1 [ %i.ak, %bb.r ], [ true, %bb.p ]
  %.rhs.trunc.i = trunc nuw nsw i64 %.5.i to i32  ; 2 uses
  %i.am = udiv i32 2147483647, %.rhs.trunc.i
  %.zext.i = zext nneg i32 %i.am to i64           ; 3 uses
  %i.an = urem i32 2147483647, %.rhs.trunc.i
  %i.ao = icmp ult ptr %.052.i14, %1
  br i1 %i.ao, label %.lr.ph.preheader.i20, label %PS_Conv_Strtol.exit36

.lr.ph.preheader.i20:                             ; preds = %bb.s
  %.052117.i21 = ptrtoaddr ptr %.052.i14 to i64
  %i.ap = sub i64 %i.b, %.052117.i21
  %scevgep.i22 = getelementptr i8, ptr %.052.i14, i64 %i.ap
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.z, %.lr.ph.preheader.i20
  %.04678.i24 = phi i8 [ %.2.i34, %bb.z ], [ 0, %.lr.ph.preheader.i20 ] ; 10 uses
  %.04877.i25 = phi i64 [ %.250.i33, %bb.z ], [ 0, %.lr.ph.preheader.i20 ] ; 13 uses
  %.15376.i26 = phi ptr [ %i.bd, %bb.z ], [ %.052.i14, %.lr.ph.preheader.i20 ] ; 11 uses
  %i.aq = load i8, ptr %.15376.i26, align 1, !tbaa !41 ; 3 uses
  switch i8 %i.aq, label %bb.t [
    i8 32, label %.thread.loopexit.i27
    i8 13, label %.thread.loopexit.i27
    i8 10, label %.thread.loopexit.i27
    i8 9, label %.thread.loopexit.i27
    i8 12, label %.thread.loopexit.i27
    i8 0, label %.thread.loopexit.i27
  ]

bb.t:                                             ; preds = %.lr.ph.i23
  %i.ar = icmp slt i8 %i.aq, 0
  br i1 %i.ar, label %.thread.loopexit.i27, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = zext nneg i8 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr @ft_char_table, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !41  ; 3 uses
  %i.av = icmp slt i8 %i.au, 0
  br i1 %i.av, label %.thread.loopexit.i27, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = zext nneg i8 %i.au to i64               ; 2 uses
  %.not65.i31 = icmp ugt i64 %.5.i, %i.aw
  br i1 %.not65.i31, label %bb.w, label %.thread.loopexit.i27

bb.w:                                             ; preds = %bb.v
  %i.ax = icmp sgt i64 %.04877.i25, %.zext.i
  br i1 %i.ax, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = icmp eq i64 %.04877.i25, %.zext.i
  %i.az = zext nneg i8 %i.au to i32
  %i.ba = icmp samesign ult i32 %i.an, %i.az
  %or.cond69.i32 = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond69.i32, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = mul nsw i64 %.04877.i25, %.5.i
  %i.bc = add nsw i64 %i.bb, %i.aw
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.250.i33 = phi i64 [ %i.bc, %bb.y ], [ %.zext.i, %bb.x ], [ %.04877.i25, %bb.w ] ; 2 uses
  %.2.i34 = phi i8 [ %.04678.i24, %bb.y ], [ 1, %bb.x ], [ 1, %bb.w ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.15376.i26, i64 1 ; 2 uses
  %exitcond.not.i35 = icmp eq ptr %i.bd, %1
  br i1 %exitcond.not.i35, label %.thread.loopexit.i27, label %.lr.ph.i23, !llvm.loop !594

.thread.loopexit.i27:                             ; preds = %bb.z, %bb.v, %bb.u, %bb.t, %.lr.ph.i23, %.lr.ph.i23, %.lr.ph.i23, %.lr.ph.i23, %.lr.ph.i23, %.lr.ph.i23
  %.153.lcssa.ph.i28 = phi ptr [ %scevgep.i22, %bb.z ], [ %.15376.i26, %bb.u ], [ %.15376.i26, %bb.t ], [ %.15376.i26, %.lr.ph.i23 ], [ %.15376.i26, %.lr.ph.i23 ], [ %.15376.i26, %.lr.ph.i23 ], [ %.15376.i26, %.lr.ph.i23 ], [ %.15376.i26, %.lr.ph.i23 ], [ %.15376.i26, %.lr.ph.i23 ], [ %.15376.i26, %bb.v ]
  %.048.lcssa.ph.i29 = phi i64 [ %.250.i33, %bb.z ], [ %.04877.i25, %bb.u ], [ %.04877.i25, %bb.t ], [ %.04877.i25, %.lr.ph.i23 ], [ %.04877.i25, %.lr.ph.i23 ], [ %.04877.i25, %.lr.ph.i23 ], [ %.04877.i25, %.lr.ph.i23 ], [ %.04877.i25, %.lr.ph.i23 ], [ %.04877.i25, %.lr.ph.i23 ], [ %.04877.i25, %bb.v ]
  %.046.lcssa.ph.i30 = phi i8 [ %.2.i34, %bb.z ], [ %.04678.i24, %bb.u ], [ %.04678.i24, %bb.t ], [ %.04678.i24, %.lr.ph.i23 ], [ %.04678.i24, %.lr.ph.i23 ], [ %.04678.i24, %.lr.ph.i23 ], [ %.04678.i24, %.lr.ph.i23 ], [ %.04678.i24, %.lr.ph.i23 ], [ %.04678.i24, %.lr.ph.i23 ], [ %.04678.i24, %bb.v ]
  %i.be = icmp eq i8 %.046.lcssa.ph.i30, 0
  %i.bf = select i1 %i.be, i64 %.048.lcssa.ph.i29, i64 2147483647
  br label %PS_Conv_Strtol.exit36

PS_Conv_Strtol.exit36:                            ; preds = %bb.s, %.thread.loopexit.i27
  %.153.lcssa.i17 = phi ptr [ %.052.i14, %bb.s ], [ %.153.lcssa.ph.i28, %.thread.loopexit.i27 ] ; 2 uses
  %.046.lcssa.i18 = phi i64 [ 0, %bb.s ], [ %i.bf, %.thread.loopexit.i27 ] ; 2 uses
  %i.bg = sub nsw i64 0, %.046.lcssa.i18
  %.5.i19 = select i1 %.047.i15, i64 %.046.lcssa.i18, i64 %i.bg
  %i.bh = icmp eq ptr %.153.lcssa.i17, %i.af
  br i1 %i.bh, label %PS_Conv_Strtol.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %PS_Conv_Strtol.exit36, %bb.n, %bb.m
  %.041 = phi ptr [ %.153.lcssa.i17, %PS_Conv_Strtol.exit36 ], [ %.153.lcssa.i, %bb.n ], [ %.153.lcssa.i, %bb.m ]
  %.0 = phi i64 [ %.5.i19, %PS_Conv_Strtol.exit36 ], [ %.5.i, %bb.n ], [ %.5.i, %bb.m ]
  store ptr %.041, ptr %0, align 8, !tbaa !33
  br label %PS_Conv_Strtol.exit.thread

PS_Conv_Strtol.exit.thread:                       ; preds = %bb.r, %bb.r, %bb.q, %bb.o, %bb.d, %bb.d, %bb.c, %bb.a, %PS_Conv_Strtol.exit36, %PS_Conv_Strtol.exit, %bb.aa
  %.09 = phi i64 [ %.0, %bb.aa ], [ 0, %PS_Conv_Strtol.exit ], [ 0, %PS_Conv_Strtol.exit36 ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.r ]
  ret i64 %.09
}

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #10

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @afm_compare_kern_pairs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !269
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !270
  %i.f = zext i32 %i.e to i64
  %i.g = or i64 %i.c, %i.f
  %i.h = load i32, ptr %1, align 4, !tbaa !269
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !270
  %i.m = zext i32 %i.l to i64
  %i.n = or i64 %i.j, %i.m
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.g, i64 %i.n)
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @t1_decrypt(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %2) #14 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = select i1 %.not, ptr null, ptr %i.a      ; 2 uses
  %.not.i = icmp ult ptr %0, %i.b
  br i1 %.not.i, label %bb.b, label %PS_Conv_EexecDecode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = and i64 %i.e, 4294967295
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.f) ; 5 uses
  %.not38.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not38.i, label %PS_Conv_EexecDecode.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.g = zext i16 %2 to i32                       ; 2 uses
  %xtraiter = and i64 %spec.select.i, 1
  %i.h = icmp eq i64 %spec.select.i, 1
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %spec.select.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.02836.i = phi i32 [ %i.g, %.lr.ph.preheader.i.new ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !41    ; 2 uses
  %i.k = zext i8 %i.j to i32
  %i.l = lshr i32 %.02836.i, 8
  %i.m = add i32 %.02836.i, %i.k
  %i.n = mul i32 %i.m, 52845
  %i.o = add i32 %i.n, 22719                      ; 2 uses
  %i.p = trunc i32 %i.l to i8
  %i.q = xor i8 %i.j, %i.p
  store i8 %i.q, ptr %i.i, align 1, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !41    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = lshr i32 %i.o, 8
  %i.w = add i32 %i.o, %i.u
  %i.x = mul i32 %i.w, 52845
  %i.y = add i32 %i.x, 22719                      ; 2 uses
  %i.z = trunc i32 %i.v to i8
  %i.aa = xor i8 %i.t, %i.z
  store i8 %i.aa, ptr %i.s, align 1, !tbaa !41
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %PS_Conv_EexecDecode.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !595

PS_Conv_EexecDecode.exit.loopexit.unr-lcssa:      ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PS_Conv_EexecDecode.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %PS_Conv_EexecDecode.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %PS_Conv_EexecDecode.exit.loopexit.unr-lcssa ]
  %.02836.i.epil.init = phi i32 [ %i.g, %.lr.ph.preheader.i ], [ %i.y, %PS_Conv_EexecDecode.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %spec.select.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !41
  %i.ad = lshr i32 %.02836.i.epil.init, 8
  %i.ae = trunc i32 %i.ad to i8
  %i.af = xor i8 %i.ac, %i.ae
  store i8 %i.af, ptr %i.ab, align 1, !tbaa !41
  br label %PS_Conv_EexecDecode.exit

PS_Conv_EexecDecode.exit:                         ; preds = %.lr.ph.i.epil.preheader, %PS_Conv_EexecDecode.exit.loopexit.unr-lcssa, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @cff_random(i32 noundef %0) #2 {
bb.a:
  %i.a = shl i32 %0, 13
  %i.b = xor i32 %i.a, %0                         ; 2 uses
  %i.c = lshr i32 %i.b, 17
  %i.d = xor i32 %i.c, %i.b                       ; 2 uses
  %i.e = shl i32 %i.d, 5
  %i.f = xor i32 %i.e, %i.d
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ps_decoder_init(ptr nofree noundef writeonly captures(none) initializes((0, 1264)) %0, ptr noundef %1, i8 noundef zeroext %2) #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1264) %0, i8 0, i64 1264, i1 false)
  %.not = icmp eq i8 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, i8 0, i64 112, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  store ptr %i.a, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !28
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.m, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.n, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.p, ptr %i.q, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.r, ptr %i.s, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.t, ptr %i.u, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.v, ptr %i.w, align 8, !tbaa !73
  br i1 %.not, label %bb.b, label %ps_builder_init.exit

ps_builder_init.exit:                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 134
end_hunk_0
