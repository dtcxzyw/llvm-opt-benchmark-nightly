Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@PS_Conv_ToInt:bb.a
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
  %.not65.i31 = icmp sgt i64 %.5.i, %i.aw
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
  %i.bc = add nuw nsw i64 %i.bb, %i.aw
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
  %.sink.i = load i8, ptr %i.z, align 2, !tbaa !41
  %.sink65.i = load i8, ptr %i.y, align 1, !tbaa !41
  %.sink66.i = load i8, ptr %i.x, align 4, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %.sink66.i, ptr %i.aa, align 1, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %.sink65.i, ptr %i.ab, align 2, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 %.sink.i, ptr %i.ac, align 1, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %2, ptr %i.ad, align 4, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) @ps_builder_funcs, i64 16, i1 false), !tbaa.struct !84
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 2984
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !170
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 2688
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !155
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !316
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2696
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !156
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i32 %i.al, ptr %i.am, align 8, !tbaa !317
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !157
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !318
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 2920
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !158
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1132
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !596
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2912
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !159
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store ptr %i.au, ptr %i.av, align 8, !tbaa !319
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2716
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !160
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !320
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2720
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !161
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !321
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 2728
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.be = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !28
  store <2 x ptr> %i.be, ptr %i.bd, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2968
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !597
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !322
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 2976
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !598
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !323
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 2712
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !162
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !324
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bq = load <4 x i8>, ptr %i.bo, align 8, !tbaa !41
  store <4 x i8> %i.bq, ptr %i.bp, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.br, align 4, !tbaa !83
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) @ps_builder_funcs, i64 16, i1 false), !tbaa.struct !84
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !288 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !181
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4992
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !170
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 1496
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !291
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !169
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1440
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.cf = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !599
  store <2 x ptr> %i.cf, ptr %i.ce, align 8, !tbaa !599
  %i.cg = load <4 x i32>, ptr %i.cb, align 8, !tbaa !24
  store <4 x i32> %i.cg, ptr %i.cc, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !256
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 1177
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !600
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i8 %i.ck, ptr %i.cl, align 8, !tbaa !325
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1484
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !290
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1132
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !596
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.cr = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !28
  store <2 x ptr> %i.cr, ptr %i.cq, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ps_builder_init.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @t1_make_subfont(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef initializes((0, 1216)) %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8
  %i.b = alloca ptr, align 8
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1216) %2, i8 0, i64 1216, i1 false)
  %i.f = load i8, ptr %i.e, align 8, !tbaa !614   ; 4 uses
  store i8 %i.f, ptr %i.d, align 8, !tbaa !615
  %.not97 = icmp eq i8 %i.f, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@cf2_interpT2CharString:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 6224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.ar, i8 0, i64 6160, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 6225
  store i8 %i.al, ptr %i.as, align 1, !tbaa !349
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 6228
  store ptr %0, ptr %i.aq, align 8, !tbaa !350
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 6208
  store ptr %i.ai, ptr %i.au, align 8, !tbaa !351
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 6216
  store ptr %i.ae, ptr %i.av, align 8, !tbaa !352
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.aw, i8 0, i64 6160, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 41
  store i8 %i.al, ptr %i.ax, align 1, !tbaa !349
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 44
  store ptr %0, ptr %i.ab, align 8, !tbaa !350
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.ai, ptr %i.az, align 8, !tbaa !351
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.ae, ptr %i.ba, align 8, !tbaa !352
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !662
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 18624
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !353
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 18628
  %i.bg = load i32, ptr %i.o, align 8, !tbaa !246 ; 4 uses
  %i.bh = load <2 x i32>, ptr %i.be, align 4, !tbaa !24
  store i32 %i.bg, ptr %i.an, align 4, !tbaa !354
  store i32 %i.bg, ptr %i.at, align 4, !tbaa !354
  store i32 %i.bg, ptr %i.ay, align 4, !tbaa !354
  store <2 x i32> %i.bh, ptr %i.bf, align 4, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 18640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !355
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 18664
  store ptr %10, ptr %i.bj, align 8, !tbaa !356
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 18672
  store ptr %11, ptr %i.bk, align 8, !tbaa !357
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 18680
  store ptr %12, ptr %i.bl, align 8, !tbaa !358
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 18688
  store i32 %6, ptr %i.bm, align 8, !tbaa !359
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 18696
  store ptr %i.aa, ptr %i.bn, align 8, !tbaa !663
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !244
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 18658
  store i8 %i.bp, ptr %i.bq, align 2, !tbaa !360
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !242 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 18704
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !361
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !243 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 18708
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !362
  %i.bx = call i32 @llvm.abs.i32(i32 %i.bs, i1 false)
  %i.by = call i32 @llvm.abs.i32(i32 %i.bv, i1 false)
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.bx, i32 %i.by)
  %i.bz = shl nsw i32 %spec.select.i, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 18712
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !363
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 18716
  store i32 6554, ptr %i.cb, align 4, !tbaa !364
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 18659 ; 2 uses
  store i8 1, ptr %i.cc, align 1, !tbaa !365
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 18656 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 18657 ; 3 uses
  store i8 0, ptr %i.ce, align 1, !tbaa !366
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 18800 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 6 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !231 ; 2 uses
  %.not = icmp ne i8 %i.ch, 0
  %i.ci = zext i1 %.not to i8
  store i8 %i.ci, ptr %i.h, align 1, !tbaa !41
  %.val1260 = load ptr, ptr %i.p, align 8, !tbaa !169
  %i.cj = getelementptr i8, ptr %.val1260, i64 1016
  %.val1260.val = load i64, ptr %i.cj, align 8, !tbaa !664
  %i.ck = trunc i64 %.val1260.val to i32
  %i.cl = shl i32 %i.ck, 16
  store i32 %i.cl, ptr %7, align 4, !tbaa !24
  %.not1135 = icmp eq i8 %i.ch, 0
  br i1 %.not1135, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cm = getelementptr i8, ptr %i.l, i64 1048
  %.val1261 = load ptr, ptr %i.cm, align 8, !tbaa !181
  %i.cn = getelementptr i8, ptr %.val1261, i64 1952
  %.val1261.val = load i32, ptr %i.cn, align 8, !tbaa !665
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.co = phi i32 [ %.val1261.val, %bb.b ], [ 48, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cp = call ptr @ft_mem_qalloc(ptr noundef %i.n, i64 noundef 40, ptr noundef nonnull %i.b) #19 ; 148 uses
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %bb.d, label %cf2_stack_init.exit.thread

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.cp, align 8, !tbaa !666
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 93 uses
  store ptr %i.m, ptr %i.cr, align 8, !tbaa !369
  %i.cs = zext i32 %i.co to i64
  %i.ct = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef 8, i64 noundef 0, i64 noundef %i.cs, ptr noundef null, ptr noundef nonnull %i.b) #19 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cp, i64 16     ; 77 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !370
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !24
  %.not15.i = icmp eq i32 %i.cv, 0
  br i1 %.not15.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ft_mem_free(ptr noundef %i.n, ptr noundef nonnull %i.cp) #19
  br label %cf2_stack_init.exit.thread

cf2_stack_init.exit.thread:                       ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %cf2_arrstack_setCount.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 36 uses
  store i32 %i.co, ptr %i.cw, align 8, !tbaa !667
  %i.cx = getelementptr i8, ptr %i.cp, i64 24     ; 157 uses
  store ptr %i.ct, ptr %i.cx, align 8, !tbaa !371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.cy = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef 1, i64 noundef 0, i64 noundef 544, ptr noundef null, ptr noundef nonnull %i.a) #19 ; 60 uses
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %i.cz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.pr = load i32, ptr %i.m, align 8, !tbaa !24
  %.not1137 = icmp eq i32 %.pr, 0                 ; 2 uses
  br i1 %.not.i.i, label %cf2_arrstack_setCount.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not1137, label %cf2_setError.exit.sink.split, label %cf2_setError.exit

cf2_arrstack_setCount.exit:                       ; preds = %bb.f
  br i1 %.not1137, label %bb.h, label %cf2_setError.exit

bb.h:                                             ; preds = %cf2_arrstack_setCount.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !668
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 1080 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 928 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 25
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 28
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 9
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 9 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 10 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 91 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 1240 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 1256 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 1248 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 932 ; 4 uses
  %i.dz = getelementptr i8, ptr %i.l, i64 24      ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 1184
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 1096
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 1088
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 1104
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 1176
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 1168
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 1100
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 1092
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 1112
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 18784
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 18792
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 18720
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 18736
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 18744
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.h
  %.01057 = phi i32 [ 0, %bb.h ], [ %.01057.be, %.backedge.backedge ] ; 235 uses
  %.01053 = phi ptr [ %i.cy, %bb.h ], [ %.01053.be, %.backedge.backedge ] ; 237 uses
  %.01052 = phi i32 [ 20000000, %bb.h ], [ %.01052.be, %.backedge.backedge ] ; 2 uses
  %.01038 = phi i32 [ 0, %bb.h ], [ %.01038.be, %.backedge.backedge ] ; 4 uses
  %.01036 = phi i8 [ 0, %bb.h ], [ %.01036.be, %.backedge.backedge ] ; 225 uses
  %.01029 = phi i8 [ 0, %bb.h ], [ %.01029.be, %.backedge.backedge ] ; 4 uses
  %.01014 = phi i32 [ 0, %bb.h ], [ %.01014.be, %.backedge.backedge ] ; 129 uses
  %i.fc = getelementptr i8, ptr %.01053, i64 16   ; 3 uses
  %.01053.val = load ptr, ptr %i.fc, align 8, !tbaa !206 ; 10 uses
  %i.fd = getelementptr i8, ptr %.01053, i64 24   ; 15 uses
  %.01053.val1263 = load ptr, ptr %i.fd, align 8, !tbaa !204 ; 4 uses
  %.not2040 = icmp ult ptr %.01053.val1263, %.01053.val
  br i1 %.not2040, label %cf2_buf_readByte.exit, label %bb.i

bb.i:                                             ; preds = %.backedge
  %.not1140 = icmp eq i32 %.01057, 0
  %. = select i1 %.not1140, i32 14, i32 11
  br label %cf2_buf_readByte.exit.thread

cf2_buf_readByte.exit:                            ; preds = %.backedge
  %i.fe = getelementptr inbounds nuw i8, ptr %.01053.val1263, i64 1 ; 3 uses
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !204
  %i.ff = load i8, ptr %.01053.val1263, align 1, !tbaa !41 ; 2 uses
  %i.fg = zext i8 %i.ff to i32                    ; 2 uses
  switch i8 %i.ff, label %cf2_buf_readByte.exit.thread [
    i8 14, label %bb.j
    i8 11, label %bb.j
  ]

bb.j:                                             ; preds = %cf2_buf_readByte.exit, %cf2_buf_readByte.exit
  %i.fh = load i8, ptr %i.cg, align 1, !tbaa !231
  %.not1139 = icmp eq i8 %i.fh, 0
  %spec.select = select i1 %.not1139, i32 %i.fg, i32 0
  br label %cf2_buf_readByte.exit.thread

cf2_buf_readByte.exit.thread:                     ; preds = %bb.j, %cf2_buf_readByte.exit, %bb.i
  %i.fi = phi ptr [ %.01053.val1263, %bb.i ], [ %i.fe, %cf2_buf_readByte.exit ], [ %i.fe, %bb.j ] ; 21 uses
  %.01050 = phi i32 [ %., %bb.i ], [ %i.fg, %cf2_buf_readByte.exit ], [ %spec.select, %bb.j ] ; 17 uses
  %i.fj = load i8, ptr %i.da, align 4, !tbaa !232 ; 2 uses
  %.not1141 = icmp eq i8 %i.fj, 0                 ; 13 uses
  br i1 %.not1141, label %bb.n, label %bb.k

bb.k:                                             ; preds = %cf2_buf_readByte.exit.thread
  %i.fk = icmp ne i8 %.01036, 0
  %i.fl = and i32 %.01050, 253
  %i.fm = icmp eq i32 %i.fl, 1
  %or.cond12 = or i1 %i.fk, %i.fm
  %i.fn = and i32 %.01050, 254
  %i.fo = icmp eq i32 %i.fn, 10                   ; 2 uses
  %i.fp = icmp eq i32 %.01050, 12                 ; 3 uses
  %i.fq = add nsw i32 %.01050, -13
  %i.fr = icmp ult i32 %i.fq, 2
  %i.fs = or i1 %i.fr, %or.cond12
  %i.ft = or i1 %i.fo, %i.fs
  %or.cond27 = or i1 %i.fp, %i.ft
  %i.fu = icmp samesign ugt i32 %.01050, 31       ; 3 uses
  %or.cond30 = select i1 %or.cond27, i1 true, i1 %i.fu
  br i1 %or.cond30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fv = load ptr, ptr %i.cu, align 8, !tbaa !370
  store ptr %i.fv, ptr %i.cx, align 8, !tbaa !371
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.k
  %i.fw = icmp slt i32 %.01038, 1
  %or.cond36 = or i1 %i.fw, %i.fo
  %or.cond39 = or i1 %i.fp, %or.cond36
  %or.cond42 = select i1 %or.cond39, i1 true, i1 %i.fu
  %spec.select1238 = select i1 %or.cond42, i32 %.01038, i32 0
  %i.fx = icmp eq i8 %.01029, 0
  %or.cond45 = select i1 %i.fx, i1 true, i1 %i.fu
  %or.cond48 = or i1 %i.fp, %or.cond45
  %spec.select1256 = select i1 %or.cond48, i8 %.01029, i8 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %cf2_buf_readByte.exit.thread
  %.21040 = phi i32 [ %spec.select1238, %bb.m ], [ %.01038, %cf2_buf_readByte.exit.thread ] ; 172 uses
  %.11030 = phi i8 [ %spec.select1256, %bb.m ], [ %.01029, %cf2_buf_readByte.exit.thread ] ; 174 uses
  %i.fy = load i32, ptr %i.m, align 8, !tbaa !24
  %.not1142 = icmp eq i32 %i.fy, 0
  br i1 %.not1142, label %bb.o, label %cf2_setError.exit

bb.o:                                             ; preds = %bb.n
  %i.fz = add i32 %.01052, -1                     ; 179 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %cf2_setError.exit.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %trunc = trunc nuw i32 %.01050 to i8
  switch i8 %trunc, label %bb.aaf [
    i8 0, label %cf2_hintmask_read.exit
    i8 2, label %cf2_hintmask_read.exit
    i8 17, label %cf2_hintmask_read.exit
    i8 15, label %bb.q
    i8 16, label %bb.aa
    i8 18, label %bb.am
    i8 1, label %bb.am
    i8 23, label %bb.ap
    i8 3, label %bb.ap
    i8 4, label %bb.as
    i8 5, label %bb.bf
    i8 6, label %bb.bs
    i8 7, label %bb.bs
    i8 24, label %bb.bz
    i8 8, label %bb.bz
    i8 9, label %bb.dy
    i8 29, label %bb.ed
    i8 10, label %bb.ed
    i8 11, label %bb.fa
    i8 12, label %bb.fd
    i8 13, label %bb.pl
    i8 14, label %bb.qb
    i8 20, label %bb.qx
    i8 19, label %bb.qx
    i8 21, label %bb.rp
    i8 22, label %bb.si
    i8 25, label %bb.sv
    i8 26, label %bb.us
    i8 27, label %bb.vy
    i8 30, label %bb.xe
    i8 31, label %bb.xe
    i8 28, label %bb.zs
  ]

bb.q:                                             ; preds = %bb.p
  %i.gb = load i8, ptr %i.cg, align 1, !tbaa !231
  %.not1232 = icmp eq i8 %i.gb, 0
  br i1 %.not1232, label %cf2_hintmask_read.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gc = load i8, ptr %i.fa, align 1, !tbaa !237
  %.not1233 = icmp eq i8 %i.gc, 0
  br i1 %.not1233, label %bb.s, label %cf2_arrstack_setCount.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.gd = load ptr, ptr %i.cx, align 8, !tbaa !371 ; 3 uses
  %i.ge = load ptr, ptr %i.cu, align 8, !tbaa !370
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.gg = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1319 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i1319, label %cf2_stack_popInt.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !24
  %.not3.i.i1320 = icmp eq i32 %i.gh, 0
  br i1 %.not3.i.i1320, label %bb.v, label %cf2_stack_popInt.exit.thread

bb.v:                                             ; preds = %bb.u
  store i32 161, ptr %i.gg, align 4, !tbaa !24
  br label %cf2_stack_popInt.exit.thread

bb.w:                                             ; preds = %bb.s
  %i.gi = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !374
  %.not.i1317 = icmp eq i32 %i.gj, 2
  br i1 %.not.i1317, label %cf2_stack_popInt.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gk = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.gk, null
  br i1 %.not.i8.i, label %cf2_stack_popInt.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !24
  %.not3.i9.i = icmp eq i32 %i.gl, 0
  br i1 %.not3.i9.i, label %bb.z, label %cf2_stack_popInt.exit.thread

bb.z:                                             ; preds = %bb.y
  store i32 160, ptr %i.gk, align 4, !tbaa !24
  br label %cf2_stack_popInt.exit.thread

cf2_stack_popInt.exit:                            ; preds = %bb.w
  %i.gm = getelementptr inbounds i8, ptr %i.gd, i64 -8 ; 2 uses
  store ptr %i.gm, ptr %i.cx, align 8, !tbaa !371
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !41 ; 2 uses
  %i.go = icmp sgt i32 %i.gn, -1
  br i1 %i.go, label %cf2_stack_popInt.exit.thread, label %cf2_hintmask_read.exit

cf2_stack_popInt.exit.thread:                     ; preds = %bb.z, %bb.y, %bb.x, %bb.u, %bb.t, %bb.v, %cf2_stack_popInt.exit
  %.0.i13181926 = phi i32 [ %i.gn, %cf2_stack_popInt.exit ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ]
  store i32 %.0.i13181926, ptr %i.ex, align 8, !tbaa !238
  br label %cf2_hintmask_read.exit

bb.aa:                                            ; preds = %bb.p
  %i.gp = load i8, ptr %i.cg, align 1, !tbaa !231
  %.not1228 = icmp eq i8 %i.gp, 0
  br i1 %.not1228, label %cf2_hintmask_read.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gq = load ptr, ptr %i.ev, align 8, !tbaa !236
  %.not1229 = icmp eq ptr %i.gq, null
  br i1 %.not1229, label %cf2_arrstack_setCount.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gr = load ptr, ptr %i.ew, align 8, !tbaa !197
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !235
end_hunk_1
begin_hunk_2_@cf2_interpT2CharString:bb.a

bb.pa:                                            ; preds = %bb.oz
  %i.awy = add i32 %i.aww, -1
  br label %bb.pd

bb.pb:                                            ; preds = %bb.oz
  %.not1163 = icmp ult i32 %i.awr, %i.aww
  br i1 %.not1163, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.awz = xor i32 %i.awr, -1
  %i.axa = add i32 %i.aww, %i.awz
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pb, %bb.pc, %bb.pa
  %.01051 = phi i32 [ %i.awy, %bb.pa ], [ %i.axa, %bb.pc ], [ 0, %bb.pb ]
  %i.axb = call fastcc i32 @cf2_stack_getReal(ptr noundef %i.cp, i32 noundef %.01051)
  %i.axc = load ptr, ptr %i.cx, align 8, !tbaa !371 ; 2 uses
  %i.axd = load ptr, ptr %i.cu, align 8, !tbaa !370
  %i.axe = load i32, ptr %i.cw, align 8, !tbaa !667
  %i.axf = zext i32 %i.axe to i64
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %i.axd, i64 %i.axf
  %i.axh = icmp eq ptr %i.axc, %i.axg
  br i1 %i.axh, label %bb.pe, label %bb.ph

bb.pe:                                            ; preds = %bb.pd
  %i.axi = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1560 = icmp eq ptr %i.axi, null
  br i1 %.not.i.i1560, label %.backedge.backedge, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !24
  %.not3.i.i1561 = icmp eq i32 %i.axj, 0
  br i1 %.not3.i.i1561, label %bb.pg, label %.backedge.backedge

bb.pg:                                            ; preds = %bb.pf
  store i32 130, ptr %i.axi, align 4, !tbaa !24
  br label %.backedge.backedge

bb.ph:                                            ; preds = %bb.pd
  store i32 %i.axb, ptr %i.axc, align 4, !tbaa !41
  %i.axk = load ptr, ptr %i.cx, align 8, !tbaa !371 ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 4
  store i32 0, ptr %i.axl, align 4, !tbaa !374
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  store ptr %i.axm, ptr %i.cx, align 8, !tbaa !371
  br label %.backedge.backedge

bb.pi:                                            ; preds = %bb.fm
  %i.axn = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp)
  %i.axo = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp)
  call fastcc void @cf2_stack_roll(ptr noundef %i.cp, i32 noundef %i.axo, i32 noundef %i.axn)
  br label %.backedge.backedge

bb.pj:                                            ; preds = %bb.fm
  %i.axp = icmp ne i8 %.01036, 0
  %or.cond95 = select i1 %i.ty, i1 %i.axp, i1 false
  br i1 %or.cond95, label %bb.pk, label %cf2_hintmask_read.exit

bb.pk:                                            ; preds = %bb.pj
  %i.axq = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  store i32 %i.axq, ptr %i.d, align 4, !tbaa !24
  %i.axr = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp)
  store i32 %i.axr, ptr %i.c, align 4, !tbaa !24
  store i32 0, ptr %i.dc, align 8, !tbaa !671
  br label %cf2_hintmask_read.exit

bb.pl:                                            ; preds = %bb.p
  br i1 %.not1141, label %cf2_hintmask_read.exit, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.axs = load ptr, ptr %i.cx, align 8, !tbaa !371 ; 6 uses
  %i.axt = load ptr, ptr %i.cu, align 8, !tbaa !370 ; 2 uses
  %i.axu = icmp eq ptr %i.axs, %i.axt
  br i1 %i.axu, label %bb.pn, label %bb.pq

bb.pn:                                            ; preds = %bb.pm
  %i.axv = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1565 = icmp eq ptr %i.axv, null
  br i1 %.not.i.i1565, label %cf2_stack_popFixed.exit1567, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !24
  %.not3.i.i1566 = icmp eq i32 %i.axw, 0
  br i1 %.not3.i.i1566, label %bb.pp, label %cf2_stack_popFixed.exit1567

bb.pp:                                            ; preds = %bb.po
  store i32 161, ptr %i.axv, align 4, !tbaa !24
  br label %cf2_stack_popFixed.exit1567

bb.pq:                                            ; preds = %bb.pm
  %i.axx = getelementptr inbounds i8, ptr %i.axs, i64 -8 ; 5 uses
  store ptr %i.axx, ptr %i.cx, align 8, !tbaa !371
  %i.axy = getelementptr inbounds i8, ptr %i.axs, i64 -4
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !374
  %i.aya = load i32, ptr %i.axx, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.axz, label %cf2_stack_popFixed.exit1567 [
    i32 2, label %bb.pr
    i32 1, label %bb.ps
  ]

bb.pr:                                            ; preds = %bb.pq
  %i.ayb = shl i32 %i.aya, 16
  br label %cf2_stack_popFixed.exit1567

bb.ps:                                            ; preds = %bb.pq
  %i.ayc = add nsw i32 %i.aya, 8192
  %.lobit.neg.i1563 = ashr i32 %i.aya, 31
  %i.ayd = add nsw i32 %i.ayc, %.lobit.neg.i1563
  %i.aye = ashr i32 %i.ayd, 14
  br label %cf2_stack_popFixed.exit1567

cf2_stack_popFixed.exit1567:                      ; preds = %bb.pn, %bb.po, %bb.pp, %bb.pq, %bb.pr, %bb.ps
  %i.ayf = phi ptr [ %i.axx, %bb.ps ], [ %i.axs, %bb.pp ], [ %i.axx, %bb.pr ], [ %i.axs, %bb.pn ], [ %i.axs, %bb.po ], [ %i.axx, %bb.pq ] ; 3 uses
  %.0.i1564 = phi i32 [ %i.aye, %bb.ps ], [ 0, %bb.pp ], [ %i.ayb, %bb.pr ], [ 0, %bb.pn ], [ 0, %bb.po ], [ %i.aya, %bb.pq ]
  %i.ayg = sext i32 %.0.i1564 to i64
  %i.ayh = load ptr, ptr %i.ds, align 8, !tbaa !72 ; 2 uses
  store i64 %i.ayg, ptr %i.ayh, align 8, !tbaa !141
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 8
  store i64 0, ptr %i.ayi, align 8, !tbaa !142
  %i.ayj = icmp eq ptr %i.ayf, %i.axt
  br i1 %i.ayj, label %bb.pt, label %bb.pw

bb.pt:                                            ; preds = %cf2_stack_popFixed.exit1567
  %i.ayk = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1570 = icmp eq ptr %i.ayk, null
  br i1 %.not.i.i1570, label %cf2_stack_popFixed.exit1572, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !24
  %.not3.i.i1571 = icmp eq i32 %i.ayl, 0
  br i1 %.not3.i.i1571, label %bb.pv, label %cf2_stack_popFixed.exit1572

bb.pv:                                            ; preds = %bb.pu
  store i32 161, ptr %i.ayk, align 4, !tbaa !24
  br label %cf2_stack_popFixed.exit1572

bb.pw:                                            ; preds = %cf2_stack_popFixed.exit1567
  %i.aym = getelementptr inbounds i8, ptr %i.ayf, i64 -8 ; 2 uses
  store ptr %i.aym, ptr %i.cx, align 8, !tbaa !371
  %i.ayn = getelementptr inbounds i8, ptr %i.ayf, i64 -4
  %i.ayo = load i32, ptr %i.ayn, align 4, !tbaa !374
  %i.ayp = load i32, ptr %i.aym, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.ayo, label %cf2_stack_popFixed.exit1572 [
    i32 2, label %bb.px
    i32 1, label %bb.py
  ]

bb.px:                                            ; preds = %bb.pw
  %i.ayq = shl i32 %i.ayp, 16
  br label %cf2_stack_popFixed.exit1572

bb.py:                                            ; preds = %bb.pw
  %i.ayr = add nsw i32 %i.ayp, 8192
  %.lobit.neg.i1568 = ashr i32 %i.ayp, 31
  %i.ays = add nsw i32 %i.ayr, %.lobit.neg.i1568
  %i.ayt = ashr i32 %i.ays, 14
  br label %cf2_stack_popFixed.exit1572

cf2_stack_popFixed.exit1572:                      ; preds = %bb.pt, %bb.pu, %bb.pv, %bb.pw, %bb.px, %bb.py
  %.0.i1569 = phi i32 [ %i.ayt, %bb.py ], [ 0, %bb.pv ], [ %i.ayq, %bb.px ], [ 0, %bb.pt ], [ 0, %bb.pu ], [ %i.ayp, %bb.pw ] ; 2 uses
  %i.ayu = load ptr, ptr %i.dt, align 8, !tbaa !71 ; 2 uses
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !141
  %i.ayw = trunc i64 %i.ayv to i32
  %i.ayx = add i32 %.0.i1569, %i.ayw
  %i.ayy = sext i32 %i.ayx to i64
  store i64 %i.ayy, ptr %i.ayu, align 8, !tbaa !141
  store i8 1, ptr %i.h, align 1, !tbaa !41
  %i.ayz = load i8, ptr %i.du, align 1, !tbaa !82
  %.not1159 = icmp eq i8 %i.ayz, 0
  br i1 %.not1159, label %bb.pz, label %cf2_arrstack_setCount.exit.thread

bb.pz:                                            ; preds = %cf2_stack_popFixed.exit1572
  %.not1160 = icmp eq i8 %.01036, 0
  br i1 %.not1160, label %cf2_hintmask_read.exit, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.aza = load i32, ptr %i.c, align 4, !tbaa !24
  %i.azb = add i32 %i.aza, %.0.i1569
  store i32 %i.azb, ptr %i.c, align 4, !tbaa !24
  br label %cf2_hintmask_read.exit

bb.qb:                                            ; preds = %bb.p
  %i.azc = icmp ne i8 %.01036, 0
  %or.cond83 = select i1 %.not1141, i1 true, i1 %i.azc
  br i1 %or.cond83, label %bb.qk, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.azd = load i32, ptr %i.c, align 4, !tbaa !24
  %i.aze = load i32, ptr %i.d, align 4, !tbaa !24
  call fastcc void @cf2_glyphpath_moveTo(ptr noundef %13, i32 noundef %i.azd, i32 noundef %i.aze)
  store i64 0, ptr %i.dj, align 8, !tbaa !391
  store i64 0, ptr %i.di, align 8, !tbaa !391
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  store ptr %i.m, ptr %12, align 8, !tbaa !338
  store i8 1, ptr %i.dq, align 1, !tbaa !392
  %i.azf = icmp sgt i32 %.01057, 0
  br i1 %i.azf, label %.lr.ph2099.preheader, label %bb.qj

.lr.ph2099.preheader:                             ; preds = %bb.qc
  %i.azg = zext nneg i32 %.01057 to i64           ; 3 uses
  %xtraiter = and i64 %i.azg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2099.prol.loopexit, label %.lr.ph2099.prol

.lr.ph2099.prol:                                  ; preds = %.lr.ph2099.preheader
  %indvars.iv.next.prol = add nsw i64 %i.azg, -1  ; 4 uses
  %.not.i1573.prol = icmp ult i32 %.01057, 18
  br i1 %.not.i1573.prol, label %.lr.ph2099.prol.loopexit, label %bb.qd

bb.qd:                                            ; preds = %.lr.ph2099.prol
  %i.azh = load i32, ptr %i.m, align 8, !tbaa !24
  %.not3.i.i1575.prol = icmp eq i32 %i.azh, 0
  br i1 %.not3.i.i1575.prol, label %bb.qe, label %.lr.ph2099.prol.loopexit

bb.qe:                                            ; preds = %bb.qd
  store i32 130, ptr %i.m, align 8, !tbaa !24
  br label %.lr.ph2099.prol.loopexit

.lr.ph2099.prol.loopexit:                         ; preds = %.lr.ph2099.prol, %bb.qd, %bb.qe, %.lr.ph2099.preheader
  %indvars.iv.unr = phi i64 [ %i.azg, %.lr.ph2099.preheader ], [ %indvars.iv.next.prol, %bb.qe ], [ %indvars.iv.next.prol, %bb.qd ], [ %indvars.iv.next.prol, %.lr.ph2099.prol ]
  %.0.i1576.lcssa.unr = phi i64 [ poison, %.lr.ph2099.preheader ], [ %indvars.iv.next.prol, %.lr.ph2099.prol ], [ 0, %bb.qe ], [ 0, %bb.qd ]
  %i.azi = icmp eq i32 %.01057, 1
  br i1 %i.azi, label %._crit_edge2100, label %.lr.ph2099

.lr.ph2099:                                       ; preds = %.lr.ph2099.prol.loopexit, %cf2_arrstack_getPointer.exit1577.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %cf2_arrstack_getPointer.exit1577.1 ], [ %indvars.iv.unr, %.lr.ph2099.prol.loopexit ] ; 4 uses
  %.not.i1573 = icmp samesign ult i64 %indvars.iv, 18
  br i1 %.not.i1573, label %cf2_arrstack_getPointer.exit1577, label %bb.qf

bb.qf:                                            ; preds = %.lr.ph2099
  %i.azj = load i32, ptr %i.m, align 8, !tbaa !24
  %.not3.i.i1575 = icmp eq i32 %i.azj, 0
  br i1 %.not3.i.i1575, label %bb.qg, label %cf2_arrstack_getPointer.exit1577

bb.qg:                                            ; preds = %bb.qf
  store i32 130, ptr %i.m, align 8, !tbaa !24
  br label %cf2_arrstack_getPointer.exit1577

cf2_arrstack_getPointer.exit1577:                 ; preds = %.lr.ph2099, %bb.qf, %bb.qg
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %.not.i1573.1 = icmp slt i64 %indvars.iv, 19
  br i1 %.not.i1573.1, label %cf2_arrstack_getPointer.exit1577.1, label %bb.qh

bb.qh:                                            ; preds = %cf2_arrstack_getPointer.exit1577
  %i.azk = load i32, ptr %i.m, align 8, !tbaa !24
  %.not3.i.i1575.1 = icmp eq i32 %i.azk, 0
  br i1 %.not3.i.i1575.1, label %bb.qi, label %cf2_arrstack_getPointer.exit1577.1

bb.qi:                                            ; preds = %bb.qh
  store i32 130, ptr %i.m, align 8, !tbaa !24
  br label %cf2_arrstack_getPointer.exit1577.1

cf2_arrstack_getPointer.exit1577.1:               ; preds = %bb.qi, %bb.qh, %cf2_arrstack_getPointer.exit1577
  %.0.i1576.1 = phi i64 [ %indvars.iv.next.1, %cf2_arrstack_getPointer.exit1577 ], [ 0, %bb.qi ], [ 0, %bb.qh ]
  %i.azl = icmp sgt i64 %indvars.iv, 2
  br i1 %i.azl, label %.lr.ph2099, label %._crit_edge2100, !llvm.loop !654

._crit_edge2100:                                  ; preds = %cf2_arrstack_getPointer.exit1577.1, %.lr.ph2099.prol.loopexit
  %.0.i1576.lcssa = phi i64 [ %.0.i1576.lcssa.unr, %.lr.ph2099.prol.loopexit ], [ %.0.i1576.1, %cf2_arrstack_getPointer.exit1577.1 ]
  %i.azm = shl nuw nsw i64 %.0.i1576.lcssa, 5
  %i.azn = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.azm
  br label %bb.qj

bb.qj:                                            ; preds = %._crit_edge2100, %bb.qc
  %.21059.lcssa = phi i32 [ 0, %._crit_edge2100 ], [ %.01057, %bb.qc ]
  %.21055.lcssa = phi ptr [ %i.azn, %._crit_edge2100 ], [ %.01053, %bb.qc ] ; 3 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %.21055.lcssa, i64 8
  %i.azp = load ptr, ptr %i.azo, align 8, !tbaa !205
  %i.azq = getelementptr inbounds nuw i8, ptr %.21055.lcssa, i64 24
  store ptr %i.azp, ptr %i.azq, align 8, !tbaa !204
  br label %cf2_hintmask_read.exit

bb.qk:                                            ; preds = %bb.qb
  %.val1282 = load ptr, ptr %i.cu, align 8, !tbaa !370
  %.val1283 = load ptr, ptr %i.cx, align 8, !tbaa !371
  %i.azr = ptrtoint ptr %.val1283 to i64
  %i.azs = ptrtoint ptr %.val1282 to i64
  %i.azt = sub i64 %i.azr, %i.azs
  %i.azu = lshr exact i64 %i.azt, 3
  %i.azv = trunc i64 %i.azu to i32                ; 2 uses
  %i.azw = icmp eq i32 %i.azv, 1
  br i1 %i.azw, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.azx = icmp ne i32 %i.azv, 5
  %i.azy = load i8, ptr %i.h, align 1
  %i.azz = icmp ne i8 %i.azy, 0
  %or.cond97 = select i1 %i.azx, i1 true, i1 %i.azz
  br i1 %or.cond97, label %bb.qo, label %bb.qn

bb.qm:                                            ; preds = %bb.qk
  %.old = load i8, ptr %i.h, align 1, !tbaa !41
  %.old96.not = icmp eq i8 %.old, 0
  br i1 %.old96.not, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %bb.ql, %bb.qm
  %i.baa = call fastcc i32 @cf2_stack_getReal(ptr noundef %i.cp, i32 noundef 0)
  %i.bab = add i32 %i.baa, %i.s
  store i32 %i.bab, ptr %7, align 4, !tbaa !24
  br label %bb.qo

bb.qo:                                            ; preds = %bb.qm, %bb.qn, %bb.ql
  store i8 1, ptr %i.h, align 1, !tbaa !41
  %i.bac = load i8, ptr %i.db, align 8, !tbaa !325
  %.not1152 = icmp eq i8 %i.bac, 0
  br i1 %.not1152, label %bb.qp, label %cf2_arrstack_setCount.exit.thread

bb.qp:                                            ; preds = %bb.qo
  call fastcc void @cf2_glyphpath_closeOpenPath(ptr noundef %13)
  %i.bad = load i8, ptr %i.cg, align 1, !tbaa !231
  %.not1153 = icmp eq i8 %i.bad, 0
  br i1 %.not1153, label %bb.qq, label %cf2_arrstack_setCount.exit.thread

bb.qq:                                            ; preds = %bb.qp
  %i.bae = load i8, ptr %i.da, align 4, !tbaa !232
  %.not1154 = icmp eq i8 %i.bae, 0
  br i1 %.not1154, label %bb.qr, label %cf2_arrstack_setCount.exit.thread

bb.qr:                                            ; preds = %bb.qq
  %.val1278 = load ptr, ptr %i.cu, align 8, !tbaa !370
  %.val1279 = load ptr, ptr %i.cx, align 8, !tbaa !371
  %i.baf = ptrtoint ptr %.val1279 to i64
  %i.bag = ptrtoint ptr %.val1278 to i64
  %i.bah = sub i64 %i.baf, %i.bag
  %i.bai = and i64 %i.bah, 34359738352
  %.not2041 = icmp eq i64 %i.bai, 0
  br i1 %.not2041, label %cf2_arrstack_setCount.exit.thread, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %.not1155 = icmp eq i8 %4, 0
  br i1 %.not1155, label %bb.qt, label %bb.qw

bb.qt:                                            ; preds = %bb.qs
  %i.baj = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp)
  %i.bak = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp)
  %i.bal = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  store i32 %i.bal, ptr %i.d, align 4, !tbaa !24
  %i.bam = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  store i32 %i.bam, ptr %i.c, align 4, !tbaa !24
  %i.ban = call fastcc i32 @cf2_getSeacComponent(ptr noundef nonnull %i.l, i32 noundef %i.baj, ptr noundef %15) ; 2 uses
  %.not1156 = icmp eq i32 %i.ban, 0
  br i1 %.not1156, label %bb.qu, label %bb.qw

bb.qu:                                            ; preds = %bb.qt
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef %i.bam, i32 noundef %i.bal, ptr noundef %i.j)
  %i.bao = getelementptr i8, ptr %i.l, i64 8      ; 2 uses
  %.val1313 = load ptr, ptr %i.bao, align 8, !tbaa !233
  %i.bap = getelementptr i8, ptr %i.l, i64 1152   ; 2 uses
  %.val1314 = load ptr, ptr %i.bap, align 8, !tbaa !699
  %i.baq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !206
  %i.bat = load ptr, ptr %i.baq, align 8, !tbaa !205
  %i.bau = ptrtoint ptr %i.bas to i64
  %i.bav = ptrtoint ptr %i.bat to i64
  %i.baw = sub i64 %i.bau, %i.bav
  call void %.val1314(ptr noundef %.val1313, ptr noundef nonnull %i.baq, i64 noundef %i.baw) #19, !inline_history !655
  %i.bax = call fastcc i32 @cf2_getSeacComponent(ptr noundef nonnull %i.l, i32 noundef %i.bak, ptr noundef %15) ; 2 uses
  %.not1157 = icmp eq i32 %i.bax, 0
  br i1 %.not1157, label %bb.qv, label %bb.qw

bb.qv:                                            ; preds = %bb.qu
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0, ptr noundef %i.j)
  %.val1311 = load ptr, ptr %i.bao, align 8, !tbaa !233
  %.val1312 = load ptr, ptr %i.bap, align 8, !tbaa !699
  %i.bay = load ptr, ptr %i.bar, align 8, !tbaa !206
  %i.baz = load ptr, ptr %i.baq, align 8, !tbaa !205
  %i.bba = ptrtoint ptr %i.bay to i64
  %i.bbb = ptrtoint ptr %i.baz to i64
  %i.bbc = sub i64 %i.bba, %i.bbb
  call void %.val1312(ptr noundef %.val1311, ptr noundef nonnull %i.baq, i64 noundef %i.bbc) #19, !inline_history !655
  br label %bb.qw

bb.qw:                                            ; preds = %bb.qu, %bb.qt, %bb.qs, %bb.qv
  %.12 = phi i32 [ 0, %bb.qv ], [ 18, %bb.qs ], [ %i.ban, %bb.qt ], [ %i.bax, %bb.qu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %cf2_arrstack_setCount.exit.thread

bb.qx:                                            ; preds = %bb.p, %bb.p
  %.val1276 = load ptr, ptr %i.cu, align 8, !tbaa !370
  %.val1277 = load ptr, ptr %i.cx, align 8, !tbaa !371
  %i.bbd = ptrtoint ptr %.val1277 to i64
  %i.bbe = ptrtoint ptr %.val1276 to i64
  %i.bbf = sub i64 %i.bbd, %i.bbe
  %i.bbg = and i64 %i.bbf, 34359738352
  %i.bbh = icmp eq i64 %i.bbg, 0
  %.val1296 = load i8, ptr %i.z, align 8
  %.not1150 = icmp eq i8 %.val1296, 0
  %or.cond2039 = select i1 %i.bbh, i1 true, i1 %.not1150
  br i1 %or.cond2039, label %bb.qy, label %cf2_hintmask_read.exit

bb.qy:                                            ; preds = %bb.qx
  call fastcc void @cf2_doStems(ptr noundef nonnull %0, ptr noundef %i.cp, ptr noundef %11, ptr noundef %7, ptr noundef %i.h, i32 noundef 0)
  %i.bbi = load i8, ptr %i.db, align 8, !tbaa !325
  %.not1151 = icmp eq i8 %i.bbi, 0
  br i1 %.not1151, label %bb.qz, label %cf2_arrstack_setCount.exit.thread

bb.qz:                                            ; preds = %bb.qy
  %i.bbj = icmp eq i32 %.01050, 19
  br i1 %i.bbj, label %bb.ra, label %bb.ri
end_hunk_2
begin_hunk_3_@cf2_interpT2CharString:bb.a
  %.not.i.i1659 = icmp eq ptr %i.bij, null
  br i1 %.not.i.i1659, label %cf2_stack_getReal.exit1663, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !24
  %.not3.i.i1660 = icmp eq i32 %i.bik, 0
  br i1 %.not3.i.i1660, label %bb.tw, label %cf2_stack_getReal.exit1663

bb.tw:                                            ; preds = %bb.tv
  store i32 130, ptr %i.bij, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1663

bb.tx:                                            ; preds = %cf2_stack_getReal.exit1655
  %i.bil = zext i32 %i.bii to i64
  %i.bim = getelementptr inbounds nuw [8 x i8], ptr %.val.i1640, i64 %i.bil ; 2 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bim, i64 4
  %i.bio = load i32, ptr %i.bin, align 4, !tbaa !374
  %i.bip = load i32, ptr %i.bim, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.bio, label %cf2_stack_getReal.exit1663 [
    i32 2, label %bb.ty
    i32 1, label %bb.tz
  ]

bb.ty:                                            ; preds = %bb.tx
  %i.biq = shl i32 %i.bip, 16
  br label %cf2_stack_getReal.exit1663

bb.tz:                                            ; preds = %bb.tx
  %i.bir = add nsw i32 %i.bip, 8192
  %.lobit.neg.i1662 = ashr i32 %i.bip, 31
  %i.bis = add nsw i32 %i.bir, %.lobit.neg.i1662
  %i.bit = ashr i32 %i.bis, 14
  br label %cf2_stack_getReal.exit1663

cf2_stack_getReal.exit1663:                       ; preds = %bb.tu, %bb.tv, %bb.tw, %bb.tx, %bb.ty, %bb.tz
  %.0.i1661 = phi i32 [ %i.bit, %bb.tz ], [ 0, %bb.tw ], [ %i.biq, %bb.ty ], [ 0, %bb.tu ], [ 0, %bb.tv ], [ %i.bip, %bb.tx ]
  %i.biu = add i32 %.0.i1661, %i.bhu              ; 2 uses
  %i.biv = add i32 %.110492092, 3                 ; 2 uses
  %.not.i1666 = icmp ult i32 %i.biv, %i.bhi
  br i1 %.not.i1666, label %bb.ud, label %bb.ua

bb.ua:                                            ; preds = %cf2_stack_getReal.exit1663
  %i.biw = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1667 = icmp eq ptr %i.biw, null
  br i1 %.not.i.i1667, label %cf2_stack_getReal.exit1671, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.bix = load i32, ptr %i.biw, align 4, !tbaa !24
  %.not3.i.i1668 = icmp eq i32 %i.bix, 0
  br i1 %.not3.i.i1668, label %bb.uc, label %cf2_stack_getReal.exit1671

bb.uc:                                            ; preds = %bb.ub
  store i32 130, ptr %i.biw, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1671

bb.ud:                                            ; preds = %cf2_stack_getReal.exit1663
  %i.biy = zext i32 %i.biv to i64
  %i.biz = getelementptr inbounds nuw [8 x i8], ptr %.val.i1640, i64 %i.biy ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biz, i64 4
  %i.bjb = load i32, ptr %i.bja, align 4, !tbaa !374
  %i.bjc = load i32, ptr %i.biz, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.bjb, label %cf2_stack_getReal.exit1671 [
    i32 2, label %bb.ue
    i32 1, label %bb.uf
  ]

bb.ue:                                            ; preds = %bb.ud
  %i.bjd = shl i32 %i.bjc, 16
  br label %cf2_stack_getReal.exit1671

bb.uf:                                            ; preds = %bb.ud
  %i.bje = add nsw i32 %i.bjc, 8192
  %.lobit.neg.i1670 = ashr i32 %i.bjc, 31
  %i.bjf = add nsw i32 %i.bje, %.lobit.neg.i1670
  %i.bjg = ashr i32 %i.bjf, 14
  br label %cf2_stack_getReal.exit1671

cf2_stack_getReal.exit1671:                       ; preds = %bb.ua, %bb.ub, %bb.uc, %bb.ud, %bb.ue, %bb.uf
  %.0.i1669 = phi i32 [ %i.bjg, %bb.uf ], [ 0, %bb.uc ], [ %i.bjd, %bb.ue ], [ 0, %bb.ua ], [ 0, %bb.ub ], [ %i.bjc, %bb.ud ]
  %i.bjh = add i32 %.0.i1669, %i.bih              ; 2 uses
  %i.bji = add i32 %.110492092, 4                 ; 2 uses
  %.not.i1674 = icmp ult i32 %i.bji, %i.bhi
  br i1 %.not.i1674, label %bb.uj, label %bb.ug

bb.ug:                                            ; preds = %cf2_stack_getReal.exit1671
  %i.bjj = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1675 = icmp eq ptr %i.bjj, null
  br i1 %.not.i.i1675, label %cf2_stack_getReal.exit1679, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.bjk = load i32, ptr %i.bjj, align 4, !tbaa !24
  %.not3.i.i1676 = icmp eq i32 %i.bjk, 0
  br i1 %.not3.i.i1676, label %bb.ui, label %cf2_stack_getReal.exit1679

bb.ui:                                            ; preds = %bb.uh
  store i32 130, ptr %i.bjj, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1679

bb.uj:                                            ; preds = %cf2_stack_getReal.exit1671
  %i.bjl = zext i32 %i.bji to i64
  %i.bjm = getelementptr inbounds nuw [8 x i8], ptr %.val.i1640, i64 %i.bjl ; 2 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 4
  %i.bjo = load i32, ptr %i.bjn, align 4, !tbaa !374
  %i.bjp = load i32, ptr %i.bjm, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.bjo, label %cf2_stack_getReal.exit1679 [
    i32 2, label %bb.uk
    i32 1, label %bb.ul
  ]

bb.uk:                                            ; preds = %bb.uj
  %i.bjq = shl i32 %i.bjp, 16
  br label %cf2_stack_getReal.exit1679

bb.ul:                                            ; preds = %bb.uj
  %i.bjr = add nsw i32 %i.bjp, 8192
  %.lobit.neg.i1678 = ashr i32 %i.bjp, 31
  %i.bjs = add nsw i32 %i.bjr, %.lobit.neg.i1678
  %i.bjt = ashr i32 %i.bjs, 14
  br label %cf2_stack_getReal.exit1679

cf2_stack_getReal.exit1679:                       ; preds = %bb.ug, %bb.uh, %bb.ui, %bb.uj, %bb.uk, %bb.ul
  %.0.i1677 = phi i32 [ %i.bjt, %bb.ul ], [ 0, %bb.ui ], [ %i.bjq, %bb.uk ], [ 0, %bb.ug ], [ 0, %bb.uh ], [ %i.bjp, %bb.uj ]
  %i.bju = add i32 %.0.i1677, %i.biu              ; 3 uses
  %i.bjv = add i32 %.110492092, 5                 ; 2 uses
  %.not.i1682 = icmp ult i32 %i.bjv, %i.bhi
  br i1 %.not.i1682, label %bb.up, label %bb.um

bb.um:                                            ; preds = %cf2_stack_getReal.exit1679
  %i.bjw = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1683 = icmp eq ptr %i.bjw, null
  br i1 %.not.i.i1683, label %cf2_stack_getReal.exit1687, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.bjx = load i32, ptr %i.bjw, align 4, !tbaa !24
  %.not3.i.i1684 = icmp eq i32 %i.bjx, 0
  br i1 %.not3.i.i1684, label %bb.uo, label %cf2_stack_getReal.exit1687

bb.uo:                                            ; preds = %bb.un
  store i32 130, ptr %i.bjw, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1687

bb.up:                                            ; preds = %cf2_stack_getReal.exit1679
  %i.bjy = zext i32 %i.bjv to i64
  %i.bjz = getelementptr inbounds nuw [8 x i8], ptr %.val.i1640, i64 %i.bjy ; 2 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 4
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !374
  %i.bkc = load i32, ptr %i.bjz, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.bkb, label %cf2_stack_getReal.exit1687 [
    i32 2, label %bb.uq
    i32 1, label %bb.ur
  ]

bb.uq:                                            ; preds = %bb.up
  %i.bkd = shl i32 %i.bkc, 16
  br label %cf2_stack_getReal.exit1687

bb.ur:                                            ; preds = %bb.up
  %i.bke = add nsw i32 %i.bkc, 8192
  %.lobit.neg.i1686 = ashr i32 %i.bkc, 31
  %i.bkf = add nsw i32 %i.bke, %.lobit.neg.i1686
  %i.bkg = ashr i32 %i.bkf, 14
  br label %cf2_stack_getReal.exit1687

cf2_stack_getReal.exit1687:                       ; preds = %bb.um, %bb.un, %bb.uo, %bb.up, %bb.uq, %bb.ur
  %.0.i1685 = phi i32 [ %i.bkg, %bb.ur ], [ 0, %bb.uo ], [ %i.bkd, %bb.uq ], [ 0, %bb.um ], [ 0, %bb.un ], [ %i.bkc, %bb.up ]
  %i.bkh = add i32 %.0.i1685, %i.bjh              ; 3 uses
  call fastcc void @cf2_glyphpath_curveTo(ptr noundef %13, i32 noundef %i.bhu, i32 noundef %i.bih, i32 noundef %i.biu, i32 noundef %i.bjh, i32 noundef %i.bju, i32 noundef %i.bkh)
  %i.bki = add i32 %.110492092, 6                 ; 2 uses
  %i.bkj = icmp ult i32 %i.bki, %i.bfq
  br i1 %i.bkj, label %.lr.ph2093, label %._crit_edge2094, !llvm.loop !658

._crit_edge2094:                                  ; preds = %cf2_stack_getReal.exit1687, %.preheader
  %.lcssa2091 = phi i32 [ %.lcssa2081, %.preheader ], [ %i.bkh, %cf2_stack_getReal.exit1687 ]
  %.lcssa2089 = phi i32 [ %.lcssa2079, %.preheader ], [ %i.bju, %cf2_stack_getReal.exit1687 ]
  store i32 %.lcssa2089, ptr %i.c, align 4
  store i32 %.lcssa2091, ptr %i.d, align 4
  %i.bkk = load ptr, ptr %i.cu, align 8, !tbaa !370
  store ptr %i.bkk, ptr %i.cx, align 8, !tbaa !371
  br label %.backedge.backedge

bb.us:                                            ; preds = %bb.p
  %.val1268 = load ptr, ptr %i.cu, align 8, !tbaa !370 ; 2 uses
  %.val1269 = load ptr, ptr %i.cx, align 8, !tbaa !371
  %i.bkl = ptrtoint ptr %.val1269 to i64
  %i.bkm = ptrtoint ptr %.val1268 to i64
  %i.bkn = sub i64 %i.bkl, %i.bkm
  %i.bko = lshr exact i64 %i.bkn, 3
  %i.bkp = trunc i64 %i.bko to i32                ; 3 uses
  %i.bkq = and i32 %i.bkp, -3                     ; 2 uses
  %i.bkr = and i32 %i.bkp, 2                      ; 2 uses
  %.promoted2068 = load i32, ptr %i.c, align 4    ; 2 uses
  %.promoted2070 = load i32, ptr %i.d, align 4    ; 2 uses
  %i.bks = icmp ult i32 %i.bkr, %i.bkq
  br i1 %i.bks, label %.lr.ph2074, label %._crit_edge2075

.lr.ph2074:                                       ; preds = %bb.us, %cf2_stack_getReal.exit1727
  %.010122072 = phi i32 [ %i.bni, %cf2_stack_getReal.exit1727 ], [ %i.bkr, %bb.us ] ; 5 uses
  %i.bkt = phi i32 [ %i.bmh, %cf2_stack_getReal.exit1727 ], [ %.promoted2068, %bb.us ] ; 2 uses
  %i.bku = phi i32 [ %i.bnh, %cf2_stack_getReal.exit1727 ], [ %.promoted2070, %bb.us ]
  %i.bkv = sub i32 %i.bkp, %.010122072
  %18 = and i32 %i.bkv, 1
  %.not1145 = icmp eq i32 %18, 0
  %.val.i1696.pre = load ptr, ptr %i.cu, align 8, !tbaa !370 ; 6 uses
  %.val14.i1697.pre = load ptr, ptr %i.cx, align 8, !tbaa !371
  %.pre2216 = ptrtoint ptr %.val14.i1697.pre to i64
  %.pre2218 = ptrtoint ptr %.val.i1696.pre to i64
  %.pre2220 = sub i64 %.pre2216, %.pre2218
  %.pre2222 = lshr exact i64 %.pre2220, 3
  %.pre2224 = trunc i64 %.pre2222 to i32          ; 5 uses
  br i1 %.not1145, label %.lr.ph2074._crit_edge, label %bb.ut

bb.ut:                                            ; preds = %.lr.ph2074
  %.not.i1690 = icmp ult i32 %.010122072, %.pre2224
  br i1 %.not.i1690, label %bb.ux, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.bkw = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1691 = icmp eq ptr %i.bkw, null
  br i1 %.not.i.i1691, label %cf2_stack_getReal.exit1695, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.bkx = load i32, ptr %i.bkw, align 4, !tbaa !24
  %.not3.i.i1692 = icmp eq i32 %i.bkx, 0
  br i1 %.not3.i.i1692, label %bb.uw, label %cf2_stack_getReal.exit1695

bb.uw:                                            ; preds = %bb.uv
  store i32 130, ptr %i.bkw, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1695

bb.ux:                                            ; preds = %bb.ut
  %i.bky = zext i32 %.010122072 to i64
  %i.bkz = getelementptr inbounds nuw [8 x i8], ptr %.val.i1696.pre, i64 %i.bky ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 4
  %i.blb = load i32, ptr %i.bla, align 4, !tbaa !374
  %i.blc = load i32, ptr %i.bkz, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.blb, label %cf2_stack_getReal.exit1695 [
    i32 2, label %bb.uy
    i32 1, label %bb.uz
  ]

bb.uy:                                            ; preds = %bb.ux
  %i.bld = shl i32 %i.blc, 16
  br label %cf2_stack_getReal.exit1695

bb.uz:                                            ; preds = %bb.ux
  %i.ble = add nsw i32 %i.blc, 8192
  %.lobit.neg.i1694 = ashr i32 %i.blc, 31
  %i.blf = add nsw i32 %i.ble, %.lobit.neg.i1694
  %i.blg = ashr i32 %i.blf, 14
  br label %cf2_stack_getReal.exit1695

cf2_stack_getReal.exit1695:                       ; preds = %bb.uu, %bb.uv, %bb.uw, %bb.ux, %bb.uy, %bb.uz
  %.0.i1693 = phi i32 [ %i.blg, %bb.uz ], [ 0, %bb.uw ], [ %i.bld, %bb.uy ], [ 0, %bb.uu ], [ 0, %bb.uv ], [ %i.blc, %bb.ux ]
  %i.blh = add i32 %i.bkt, %.0.i1693
  %i.bli = add nuw i32 %.010122072, 1
  br label %.lr.ph2074._crit_edge

.lr.ph2074._crit_edge:                            ; preds = %.lr.ph2074, %cf2_stack_getReal.exit1695
  %.11013 = phi i32 [ %i.bli, %cf2_stack_getReal.exit1695 ], [ %.010122072, %.lr.ph2074 ] ; 6 uses
  %.01011 = phi i32 [ %i.blh, %cf2_stack_getReal.exit1695 ], [ %i.bkt, %.lr.ph2074 ] ; 2 uses
  %.not.i1698 = icmp ult i32 %.11013, %.pre2224
  br i1 %.not.i1698, label %bb.vd, label %bb.va

bb.va:                                            ; preds = %.lr.ph2074._crit_edge
  %i.blj = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1699 = icmp eq ptr %i.blj, null
  br i1 %.not.i.i1699, label %cf2_stack_getReal.exit1703, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.blk = load i32, ptr %i.blj, align 4, !tbaa !24
  %.not3.i.i1700 = icmp eq i32 %i.blk, 0
  br i1 %.not3.i.i1700, label %bb.vc, label %cf2_stack_getReal.exit1703

bb.vc:                                            ; preds = %bb.vb
  store i32 130, ptr %i.blj, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1703

bb.vd:                                            ; preds = %.lr.ph2074._crit_edge
  %i.bll = zext i32 %.11013 to i64
  %i.blm = getelementptr inbounds nuw [8 x i8], ptr %.val.i1696.pre, i64 %i.bll ; 2 uses
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blm, i64 4
  %i.blo = load i32, ptr %i.bln, align 4, !tbaa !374
  %i.blp = load i32, ptr %i.blm, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.blo, label %cf2_stack_getReal.exit1703 [
    i32 2, label %bb.ve
    i32 1, label %bb.vf
  ]

bb.ve:                                            ; preds = %bb.vd
  %i.blq = shl i32 %i.blp, 16
  br label %cf2_stack_getReal.exit1703

bb.vf:                                            ; preds = %bb.vd
  %i.blr = add nsw i32 %i.blp, 8192
  %.lobit.neg.i1702 = ashr i32 %i.blp, 31
  %i.bls = add nsw i32 %i.blr, %.lobit.neg.i1702
  %i.blt = ashr i32 %i.bls, 14
  br label %cf2_stack_getReal.exit1703

cf2_stack_getReal.exit1703:                       ; preds = %bb.va, %bb.vb, %bb.vc, %bb.vd, %bb.ve, %bb.vf
  %.0.i1701 = phi i32 [ %i.blt, %bb.vf ], [ 0, %bb.vc ], [ %i.blq, %bb.ve ], [ 0, %bb.va ], [ 0, %bb.vb ], [ %i.blp, %bb.vd ]
  %i.blu = add i32 %i.bku, %.0.i1701              ; 2 uses
  %i.blv = add nuw i32 %.11013, 1                 ; 2 uses
  %.not.i1706 = icmp ult i32 %i.blv, %.pre2224
  br i1 %.not.i1706, label %bb.vj, label %bb.vg

bb.vg:                                            ; preds = %cf2_stack_getReal.exit1703
  %i.blw = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1707 = icmp eq ptr %i.blw, null
  br i1 %.not.i.i1707, label %cf2_stack_getReal.exit1711, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.blx = load i32, ptr %i.blw, align 4, !tbaa !24
  %.not3.i.i1708 = icmp eq i32 %i.blx, 0
  br i1 %.not3.i.i1708, label %bb.vi, label %cf2_stack_getReal.exit1711

bb.vi:                                            ; preds = %bb.vh
  store i32 130, ptr %i.blw, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1711

bb.vj:                                            ; preds = %cf2_stack_getReal.exit1703
  %i.bly = zext i32 %i.blv to i64
  %i.blz = getelementptr inbounds nuw [8 x i8], ptr %.val.i1696.pre, i64 %i.bly ; 2 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 4
  %i.bmb = load i32, ptr %i.bma, align 4, !tbaa !374
  %i.bmc = load i32, ptr %i.blz, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.bmb, label %cf2_stack_getReal.exit1711 [
    i32 2, label %bb.vk
    i32 1, label %bb.vl
  ]

bb.vk:                                            ; preds = %bb.vj
  %i.bmd = shl i32 %i.bmc, 16
  br label %cf2_stack_getReal.exit1711

bb.vl:                                            ; preds = %bb.vj
  %i.bme = add nsw i32 %i.bmc, 8192
  %.lobit.neg.i1710 = ashr i32 %i.bmc, 31
  %i.bmf = add nsw i32 %i.bme, %.lobit.neg.i1710
  %i.bmg = ashr i32 %i.bmf, 14
  br label %cf2_stack_getReal.exit1711

cf2_stack_getReal.exit1711:                       ; preds = %bb.vg, %bb.vh, %bb.vi, %bb.vj, %bb.vk, %bb.vl
  %.0.i1709 = phi i32 [ %i.bmg, %bb.vl ], [ 0, %bb.vi ], [ %i.bmd, %bb.vk ], [ 0, %bb.vg ], [ 0, %bb.vh ], [ %i.bmc, %bb.vj ]
  %i.bmh = add i32 %.0.i1709, %.01011             ; 4 uses
  %i.bmi = add nuw i32 %.11013, 2                 ; 2 uses
  %.not.i1714 = icmp ult i32 %i.bmi, %.pre2224
  br i1 %.not.i1714, label %bb.vp, label %bb.vm

bb.vm:                                            ; preds = %cf2_stack_getReal.exit1711
  %i.bmj = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1715 = icmp eq ptr %i.bmj, null
  br i1 %.not.i.i1715, label %cf2_stack_getReal.exit1719, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  %i.bmk = load i32, ptr %i.bmj, align 4, !tbaa !24
  %.not3.i.i1716 = icmp eq i32 %i.bmk, 0
  br i1 %.not3.i.i1716, label %bb.vo, label %cf2_stack_getReal.exit1719

bb.vo:                                            ; preds = %bb.vn
  store i32 130, ptr %i.bmj, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1719

bb.vp:                                            ; preds = %cf2_stack_getReal.exit1711
  %i.bml = zext i32 %i.bmi to i64
  %i.bmm = getelementptr inbounds nuw [8 x i8], ptr %.val.i1696.pre, i64 %i.bml ; 2 uses
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmm, i64 4
  %i.bmo = load i32, ptr %i.bmn, align 4, !tbaa !374
  %i.bmp = load i32, ptr %i.bmm, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.bmo, label %cf2_stack_getReal.exit1719 [
    i32 2, label %bb.vq
    i32 1, label %bb.vr
  ]

bb.vq:                                            ; preds = %bb.vp
  %i.bmq = shl i32 %i.bmp, 16
  br label %cf2_stack_getReal.exit1719

bb.vr:                                            ; preds = %bb.vp
  %i.bmr = add nsw i32 %i.bmp, 8192
  %.lobit.neg.i1718 = ashr i32 %i.bmp, 31
  %i.bms = add nsw i32 %i.bmr, %.lobit.neg.i1718
  %i.bmt = ashr i32 %i.bms, 14
  br label %cf2_stack_getReal.exit1719

cf2_stack_getReal.exit1719:                       ; preds = %bb.vm, %bb.vn, %bb.vo, %bb.vp, %bb.vq, %bb.vr
  %.0.i1717 = phi i32 [ %i.bmt, %bb.vr ], [ 0, %bb.vo ], [ %i.bmq, %bb.vq ], [ 0, %bb.vm ], [ 0, %bb.vn ], [ %i.bmp, %bb.vp ]
  %i.bmu = add i32 %.0.i1717, %i.blu              ; 2 uses
  %i.bmv = add i32 %.11013, 3                     ; 2 uses
  %.not.i1722 = icmp ult i32 %i.bmv, %.pre2224
  br i1 %.not.i1722, label %bb.vv, label %bb.vs

bb.vs:                                            ; preds = %cf2_stack_getReal.exit1719
  %i.bmw = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1723 = icmp eq ptr %i.bmw, null
  br i1 %.not.i.i1723, label %cf2_stack_getReal.exit1727, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.bmx = load i32, ptr %i.bmw, align 4, !tbaa !24
  %.not3.i.i1724 = icmp eq i32 %i.bmx, 0
  br i1 %.not3.i.i1724, label %bb.vu, label %cf2_stack_getReal.exit1727

bb.vu:                                            ; preds = %bb.vt
  store i32 130, ptr %i.bmw, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1727

bb.vv:                                            ; preds = %cf2_stack_getReal.exit1719
  %i.bmy = zext i32 %i.bmv to i64
  %i.bmz = getelementptr inbounds nuw [8 x i8], ptr %.val.i1696.pre, i64 %i.bmy ; 2 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 4
  %i.bnb = load i32, ptr %i.bna, align 4, !tbaa !374
  %i.bnc = load i32, ptr %i.bmz, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.bnb, label %cf2_stack_getReal.exit1727 [
    i32 2, label %bb.vw
    i32 1, label %bb.vx
  ]

bb.vw:                                            ; preds = %bb.vv
  %i.bnd = shl i32 %i.bnc, 16
  br label %cf2_stack_getReal.exit1727

bb.vx:                                            ; preds = %bb.vv
  %i.bne = add nsw i32 %i.bnc, 8192
  %.lobit.neg.i1726 = ashr i32 %i.bnc, 31
  %i.bnf = add nsw i32 %i.bne, %.lobit.neg.i1726
  %i.bng = ashr i32 %i.bnf, 14
  br label %cf2_stack_getReal.exit1727

cf2_stack_getReal.exit1727:                       ; preds = %bb.vs, %bb.vt, %bb.vu, %bb.vv, %bb.vw, %bb.vx
  %.0.i1725 = phi i32 [ %i.bng, %bb.vx ], [ 0, %bb.vu ], [ %i.bnd, %bb.vw ], [ 0, %bb.vs ], [ 0, %bb.vt ], [ %i.bnc, %bb.vv ]
  %i.bnh = add i32 %.0.i1725, %i.bmu              ; 3 uses
  call fastcc void @cf2_glyphpath_curveTo(ptr noundef %13, i32 noundef %.01011, i32 noundef %i.blu, i32 noundef %i.bmh, i32 noundef %i.bmu, i32 noundef %i.bmh, i32 noundef %i.bnh)
  %i.bni = add i32 %.11013, 4                     ; 2 uses
  %i.bnj = icmp ult i32 %i.bni, %i.bkq
  br i1 %i.bnj, label %.lr.ph2074, label %._crit_edge2075.loopexit, !llvm.loop !659

._crit_edge2075.loopexit:                         ; preds = %cf2_stack_getReal.exit1727
  %.pre2190 = load ptr, ptr %i.cu, align 8, !tbaa !370
  br label %._crit_edge2075

._crit_edge2075:                                  ; preds = %._crit_edge2075.loopexit, %bb.us
  %i.bnk = phi ptr [ %.val1268, %bb.us ], [ %.pre2190, %._crit_edge2075.loopexit ]
  %.lcssa2071 = phi i32 [ %.promoted2070, %bb.us ], [ %i.bnh, %._crit_edge2075.loopexit ]
  %.lcssa2069 = phi i32 [ %.promoted2068, %bb.us ], [ %i.bmh, %._crit_edge2075.loopexit ]
  store i32 %.lcssa2069, ptr %i.c, align 4
  store i32 %.lcssa2071, ptr %i.d, align 4
  store ptr %i.bnk, ptr %i.cx, align 8, !tbaa !371
  br label %.backedge.backedge

bb.vy:                                            ; preds = %bb.p
  %.val1266 = load ptr, ptr %i.cu, align 8, !tbaa !370 ; 2 uses
  %.val1267 = load ptr, ptr %i.cx, align 8, !tbaa !371
  %i.bnl = ptrtoint ptr %.val1267 to i64
  %i.bnm = ptrtoint ptr %.val1266 to i64
  %i.bnn = sub i64 %i.bnl, %i.bnm
  %i.bno = lshr exact i64 %i.bnn, 3
  %i.bnp = trunc i64 %i.bno to i32                ; 3 uses
  %i.bnq = and i32 %i.bnp, -3                     ; 2 uses
  %i.bnr = and i32 %i.bnp, 2                      ; 2 uses
  %.promoted2059 = load i32, ptr %i.d, align 4    ; 2 uses
  %.promoted2060 = load i32, ptr %i.c, align 4    ; 2 uses
  %i.bns = icmp ult i32 %i.bnr, %i.bnq
  br i1 %i.bns, label %.lr.ph2064, label %._crit_edge2065

.lr.ph2064:                                       ; preds = %bb.vy, %cf2_stack_getReal.exit1767
  %.010092062 = phi i32 [ %i.bqi, %cf2_stack_getReal.exit1767 ], [ %i.bnr, %bb.vy ] ; 5 uses
  %i.bnt = phi i32 [ %i.bpu, %cf2_stack_getReal.exit1767 ], [ %.promoted2059, %bb.vy ] ; 2 uses
  %i.bnu = phi i32 [ %i.bqh, %cf2_stack_getReal.exit1767 ], [ %.promoted2060, %bb.vy ]
  %i.bnv = sub i32 %i.bnp, %.010092062
  %19 = and i32 %i.bnv, 1
  %.not1144 = icmp eq i32 %19, 0
  %.val.i1736.pre = load ptr, ptr %i.cu, align 8, !tbaa !370 ; 6 uses
  %.val14.i1737.pre = load ptr, ptr %i.cx, align 8, !tbaa !371
  %.pre2226 = ptrtoint ptr %.val14.i1737.pre to i64
  %.pre2228 = ptrtoint ptr %.val.i1736.pre to i64
  %.pre2230 = sub i64 %.pre2226, %.pre2228
  %.pre2232 = lshr exact i64 %.pre2230, 3
  %.pre2234 = trunc i64 %.pre2232 to i32          ; 5 uses
  br i1 %.not1144, label %.lr.ph2064._crit_edge, label %bb.vz

bb.vz:                                            ; preds = %.lr.ph2064
  %.not.i1730 = icmp ult i32 %.010092062, %.pre2234
  br i1 %.not.i1730, label %bb.wd, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.bnw = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1731 = icmp eq ptr %i.bnw, null
  br i1 %.not.i.i1731, label %cf2_stack_getReal.exit1735, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.bnx = load i32, ptr %i.bnw, align 4, !tbaa !24
  %.not3.i.i1732 = icmp eq i32 %i.bnx, 0
  br i1 %.not3.i.i1732, label %bb.wc, label %cf2_stack_getReal.exit1735

bb.wc:                                            ; preds = %bb.wb
  store i32 130, ptr %i.bnw, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1735

bb.wd:                                            ; preds = %bb.vz
  %i.bny = zext i32 %.010092062 to i64
  %i.bnz = getelementptr inbounds nuw [8 x i8], ptr %.val.i1736.pre, i64 %i.bny ; 2 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 4
  %i.bob = load i32, ptr %i.boa, align 4, !tbaa !374
  %i.boc = load i32, ptr %i.bnz, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.bob, label %cf2_stack_getReal.exit1735 [
    i32 2, label %bb.we
    i32 1, label %bb.wf
  ]

bb.we:                                            ; preds = %bb.wd
  %i.bod = shl i32 %i.boc, 16
  br label %cf2_stack_getReal.exit1735

bb.wf:                                            ; preds = %bb.wd
  %i.boe = add nsw i32 %i.boc, 8192
  %.lobit.neg.i1734 = ashr i32 %i.boc, 31
  %i.bof = add nsw i32 %i.boe, %.lobit.neg.i1734
  %i.bog = ashr i32 %i.bof, 14
  br label %cf2_stack_getReal.exit1735

cf2_stack_getReal.exit1735:                       ; preds = %bb.wa, %bb.wb, %bb.wc, %bb.wd, %bb.we, %bb.wf
  %.0.i1733 = phi i32 [ %i.bog, %bb.wf ], [ 0, %bb.wc ], [ %i.bod, %bb.we ], [ 0, %bb.wa ], [ 0, %bb.wb ], [ %i.boc, %bb.wd ]
  %i.boh = add i32 %i.bnt, %.0.i1733
  %i.boi = add nuw i32 %.010092062, 1
  br label %.lr.ph2064._crit_edge

.lr.ph2064._crit_edge:                            ; preds = %.lr.ph2064, %cf2_stack_getReal.exit1735
  %.11010 = phi i32 [ %i.boi, %cf2_stack_getReal.exit1735 ], [ %.010092062, %.lr.ph2064 ] ; 6 uses
  %.01008 = phi i32 [ %i.boh, %cf2_stack_getReal.exit1735 ], [ %i.bnt, %.lr.ph2064 ] ; 2 uses
  %.not.i1738 = icmp ult i32 %.11010, %.pre2234
  br i1 %.not.i1738, label %bb.wj, label %bb.wg

bb.wg:                                            ; preds = %.lr.ph2064._crit_edge
  %i.boj = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1739 = icmp eq ptr %i.boj, null
  br i1 %.not.i.i1739, label %cf2_stack_getReal.exit1743, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  %i.bok = load i32, ptr %i.boj, align 4, !tbaa !24
  %.not3.i.i1740 = icmp eq i32 %i.bok, 0
  br i1 %.not3.i.i1740, label %bb.wi, label %cf2_stack_getReal.exit1743

bb.wi:                                            ; preds = %bb.wh
  store i32 130, ptr %i.boj, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1743

bb.wj:                                            ; preds = %.lr.ph2064._crit_edge
  %i.bol = zext i32 %.11010 to i64
  %i.bom = getelementptr inbounds nuw [8 x i8], ptr %.val.i1736.pre, i64 %i.bol ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 4
  %i.boo = load i32, ptr %i.bon, align 4, !tbaa !374
  %i.bop = load i32, ptr %i.bom, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.boo, label %cf2_stack_getReal.exit1743 [
    i32 2, label %bb.wk
    i32 1, label %bb.wl
  ]

bb.wk:                                            ; preds = %bb.wj
  %i.boq = shl i32 %i.bop, 16
  br label %cf2_stack_getReal.exit1743

bb.wl:                                            ; preds = %bb.wj
  %i.bor = add nsw i32 %i.bop, 8192
  %.lobit.neg.i1742 = ashr i32 %i.bop, 31
  %i.bos = add nsw i32 %i.bor, %.lobit.neg.i1742
  %i.bot = ashr i32 %i.bos, 14
  br label %cf2_stack_getReal.exit1743

cf2_stack_getReal.exit1743:                       ; preds = %bb.wg, %bb.wh, %bb.wi, %bb.wj, %bb.wk, %bb.wl
  %.0.i1741 = phi i32 [ %i.bot, %bb.wl ], [ 0, %bb.wi ], [ %i.boq, %bb.wk ], [ 0, %bb.wg ], [ 0, %bb.wh ], [ %i.bop, %bb.wj ]
  %i.bou = add i32 %i.bnu, %.0.i1741              ; 2 uses
  %i.bov = add nuw i32 %.11010, 1                 ; 2 uses
  %.not.i1746 = icmp ult i32 %i.bov, %.pre2234
  br i1 %.not.i1746, label %bb.wp, label %bb.wm

bb.wm:                                            ; preds = %cf2_stack_getReal.exit1743
  %i.bow = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1747 = icmp eq ptr %i.bow, null
  br i1 %.not.i.i1747, label %cf2_stack_getReal.exit1751, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %i.box = load i32, ptr %i.bow, align 4, !tbaa !24
  %.not3.i.i1748 = icmp eq i32 %i.box, 0
  br i1 %.not3.i.i1748, label %bb.wo, label %cf2_stack_getReal.exit1751

bb.wo:                                            ; preds = %bb.wn
  store i32 130, ptr %i.bow, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1751

bb.wp:                                            ; preds = %cf2_stack_getReal.exit1743
  %i.boy = zext i32 %i.bov to i64
  %i.boz = getelementptr inbounds nuw [8 x i8], ptr %.val.i1736.pre, i64 %i.boy ; 2 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 4
  %i.bpb = load i32, ptr %i.bpa, align 4, !tbaa !374
  %i.bpc = load i32, ptr %i.boz, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.bpb, label %cf2_stack_getReal.exit1751 [
    i32 2, label %bb.wq
    i32 1, label %bb.wr
  ]

bb.wq:                                            ; preds = %bb.wp
  %i.bpd = shl i32 %i.bpc, 16
  br label %cf2_stack_getReal.exit1751

bb.wr:                                            ; preds = %bb.wp
  %i.bpe = add nsw i32 %i.bpc, 8192
  %.lobit.neg.i1750 = ashr i32 %i.bpc, 31
  %i.bpf = add nsw i32 %i.bpe, %.lobit.neg.i1750
  %i.bpg = ashr i32 %i.bpf, 14
  br label %cf2_stack_getReal.exit1751

cf2_stack_getReal.exit1751:                       ; preds = %bb.wm, %bb.wn, %bb.wo, %bb.wp, %bb.wq, %bb.wr
  %.0.i1749 = phi i32 [ %i.bpg, %bb.wr ], [ 0, %bb.wo ], [ %i.bpd, %bb.wq ], [ 0, %bb.wm ], [ 0, %bb.wn ], [ %i.bpc, %bb.wp ]
  %i.bph = add i32 %.0.i1749, %i.bou              ; 2 uses
  %i.bpi = add nuw i32 %.11010, 2                 ; 2 uses
  %.not.i1754 = icmp ult i32 %i.bpi, %.pre2234
  br i1 %.not.i1754, label %bb.wv, label %bb.ws

bb.ws:                                            ; preds = %cf2_stack_getReal.exit1751
  %i.bpj = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1755 = icmp eq ptr %i.bpj, null
  br i1 %.not.i.i1755, label %cf2_stack_getReal.exit1759, label %bb.wt

bb.wt:                                            ; preds = %bb.ws
  %i.bpk = load i32, ptr %i.bpj, align 4, !tbaa !24
  %.not3.i.i1756 = icmp eq i32 %i.bpk, 0
  br i1 %.not3.i.i1756, label %bb.wu, label %cf2_stack_getReal.exit1759

bb.wu:                                            ; preds = %bb.wt
  store i32 130, ptr %i.bpj, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1759

bb.wv:                                            ; preds = %cf2_stack_getReal.exit1751
  %i.bpl = zext i32 %i.bpi to i64
  %i.bpm = getelementptr inbounds nuw [8 x i8], ptr %.val.i1736.pre, i64 %i.bpl ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 4
  %i.bpo = load i32, ptr %i.bpn, align 4, !tbaa !374
  %i.bpp = load i32, ptr %i.bpm, align 4, !tbaa !41 ; 4 uses
  switch i32 %i.bpo, label %cf2_stack_getReal.exit1759 [
    i32 2, label %bb.ww
    i32 1, label %bb.wx
  ]

bb.ww:                                            ; preds = %bb.wv
  %i.bpq = shl i32 %i.bpp, 16
  br label %cf2_stack_getReal.exit1759

bb.wx:                                            ; preds = %bb.wv
  %i.bpr = add nsw i32 %i.bpp, 8192
  %.lobit.neg.i1758 = ashr i32 %i.bpp, 31
  %i.bps = add nsw i32 %i.bpr, %.lobit.neg.i1758
  %i.bpt = ashr i32 %i.bps, 14
  br label %cf2_stack_getReal.exit1759

cf2_stack_getReal.exit1759:                       ; preds = %bb.ws, %bb.wt, %bb.wu, %bb.wv, %bb.ww, %bb.wx
  %.0.i1757 = phi i32 [ %i.bpt, %bb.wx ], [ 0, %bb.wu ], [ %i.bpq, %bb.ww ], [ 0, %bb.ws ], [ 0, %bb.wt ], [ %i.bpp, %bb.wv ]
  %i.bpu = add i32 %.0.i1757, %.01008             ; 4 uses
  %i.bpv = add i32 %.11010, 3                     ; 2 uses
  %.not.i1762 = icmp ult i32 %i.bpv, %.pre2234
  br i1 %.not.i1762, label %bb.xb, label %bb.wy

bb.wy:                                            ; preds = %cf2_stack_getReal.exit1759
  %i.bpw = load ptr, ptr %i.cr, align 8, !tbaa !369 ; 3 uses
  %.not.i.i1763 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1763, label %cf2_stack_getReal.exit1767, label %bb.wz

bb.wz:                                            ; preds = %bb.wy
  %i.bpx = load i32, ptr %i.bpw, align 4, !tbaa !24
  %.not3.i.i1764 = icmp eq i32 %i.bpx, 0
  br i1 %.not3.i.i1764, label %bb.xa, label %cf2_stack_getReal.exit1767

bb.xa:                                            ; preds = %bb.wz
  store i32 130, ptr %i.bpw, align 4, !tbaa !24
  br label %cf2_stack_getReal.exit1767

bb.xb:                                            ; preds = %cf2_stack_getReal.exit1759
  %i.bpy = zext i32 %i.bpv to i64
  %i.bpz = getelementptr inbounds nuw [8 x i8], ptr %.val.i1736.pre, i64 %i.bpy ; 2 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 4
end_hunk_3
begin_hunk_4_@cf2_hintmap_map:bb.a
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !418
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.bd, %i.ba                ; 2 uses
  %i.bf = ashr i64 %i.be, 63
  %i.bg = add nsw i64 %i.be, 32768
  %i.bh = add nsw i64 %i.bg, %i.bf
  %i.bi = lshr i64 %i.bh, 16
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !419
  %i.bm = add i32 %i.bl, %i.bj
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge._crit_edge, %bb.c
  %.135 = phi i32 [ %i.o, %bb.c ], [ %i.au, %bb.h ], [ %i.bm, %._crit_edge._crit_edge ]
  ret i32 %.135
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cf2_hintmap_insertHint(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #4 {
bb.a:
  %.val100 = load i32, ptr %1, align 8, !tbaa !416
  %.not107 = icmp eq i32 %.val100, 0
  br i1 %.not107, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val99 = load i32, ptr %2, align 8, !tbaa !416
  %.not = icmp eq i32 %.val99, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !417
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !417
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %.not88105 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.a ] ; 5 uses
  %.084104 = phi ptr [ %1, %bb.b ], [ %1, %bb.c ], [ %2, %bb.a ] ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !414  ; 3 uses
  %.not117 = icmp eq i32 %i.g, 0
  br i1 %.not117, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.h = getelementptr inbounds nuw i8, ptr %.084104, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !417  ; 2 uses
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !417  ; 3 uses
  %.not89 = icmp slt i32 %i.l, %i.i
  br i1 %.not89, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !751

bb.f:                                             ; preds = %bb.d
  %i.m = trunc nuw i64 %indvars.iv to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = icmp eq i32 %i.l, %i.i
  br i1 %i.p, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not88105, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !417
  %.not90 = icmp sgt i32 %i.l, %i.r
  br i1 %.not90, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h, %bb.g
  %.val101 = load i32, ptr %i.o, align 8, !tbaa !416
  %i.s = and i32 %.val101, 8
  %.not91 = icmp eq i32 %i.s, 0
  br i1 %.not91, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %bb.e, %.thread, %bb.i
  %.081110 = phi i32 [ %i.m, %bb.i ], [ 0, %.thread ], [ %i.g, %bb.e ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !351  ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val = load i8, ptr %i.v, align 8, !tbaa !402
  %.not92 = icmp eq i8 %.val, 0
  br i1 %.not92, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %.084.val = load i32, ptr %.084104, align 8, !tbaa !416
  %i.w = and i32 %.084.val, 16
  %.not93 = icmp eq i32 %i.w, 0
  br i1 %.not93, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.084104, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !417  ; 3 uses
  br i1 %.not88105, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !417
  %i.ab = sub i32 %i.aa, %i.y
  %i.ac = sdiv i32 %i.ab, 2
  %i.ad = add i32 %i.ac, %i.y
  %i.ae = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %i.u, i32 noundef %i.ad) ; 2 uses
  %i.af = load i32, ptr %i.z, align 8, !tbaa !417
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !417
  %i.ah = sub i32 %i.af, %i.ag
  %i.ai = sdiv i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !354
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am                ; 2 uses
  %i.ao = ashr i64 %i.an, 63
  %i.ap = add nsw i64 %i.an, 32768
  %i.aq = add nsw i64 %i.ap, %i.ao
  %i.ar = lshr i64 %i.aq, 16
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = sub i32 %i.ae, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  store i32 %i.at, ptr %i.au, align 4, !tbaa !419
  %i.av = add i32 %i.ae, %i.as
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.aw = tail call fastcc i32 @cf2_hintmap_map(ptr noundef nonnull %i.u, i32 noundef %i.y)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l
  %.sink127 = phi ptr [ %2, %bb.l ], [ %.084104, %bb.m ]
  %.sink = phi i32 [ %i.av, %bb.l ], [ %i.aw, %bb.m ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink127, i64 20
  store i32 %.sink, ptr %i.ax, align 4, !tbaa !419
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.j, %.loopexit
  %.not95 = icmp eq i32 %.081110, 0
  br i1 %.not95, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !419
  %i.ba = add i32 %.081110, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 60
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !419
  %i.bf = icmp slt i32 %i.az, %i.be
  br i1 %i.bf, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = load i32, ptr %i.f, align 8, !tbaa !414 ; 8 uses
  %i.bh = icmp ult i32 %.081110, %i.bg
  br i1 %i.bh, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bi = zext i32 %.081110 to i64
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 60
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !419 ; 2 uses
  br i1 %.not88105, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !419
  %i.bo = icmp sgt i32 %i.bn, %i.bl
  br i1 %i.bo, label %bb.v, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.084104, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !419
  %i.br = icmp sgt i32 %i.bq, %i.bl
  br i1 %i.br, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p
  %i.bs = add i32 %i.bg, 1                        ; 2 uses
  %i.bt = select i1 %.not88105, i32 %i.bg, i32 %i.bs ; 4 uses
  %i.bu = sub i32 %i.bg, %.081110                 ; 4 uses
  %i.bv = icmp ugt i32 %i.bt, 191
  br i1 %i.bv, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.t
  %.not97112 = icmp eq i32 %i.bu, 0
  br i1 %.not97112, label %._crit_edge, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.neg = add i32 %.081110, 1
  %xtraiter = and i32 %i.bu, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph116
  %i.bx = add nsw i32 %i.bu, -1
  %.080.prol = add i32 %i.bg, -1                  ; 2 uses
  %i.by = add nsw i32 %i.bt, -1
  %i.bz = zext nneg i32 %i.bt to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = zext i32 %.080.prol to i64
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !tbaa.struct !753
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph116
  %.0115.unr = phi i32 [ %i.bu, %.lr.ph116 ], [ %i.bx, %.prol.loopexit.unr-lcssa ]
  %.079114.unr = phi i32 [ %i.bt, %.lr.ph116 ], [ %i.by, %.prol.loopexit.unr-lcssa ]
  %.080.in113.unr = phi i32 [ %i.bg, %.lr.ph116 ], [ %.080.prol, %.prol.loopexit.unr-lcssa ]
  %i.cd = icmp eq i32 %i.bg, %.neg
  br i1 %i.cd, label %._crit_edge, label %.lr.ph116.new

.lr.ph116.new:                                    ; preds = %.prol.loopexit, %.lr.ph116.new
  %.0115 = phi i32 [ %i.cj, %.lr.ph116.new ], [ %.0115.unr, %.prol.loopexit ]
  %.079114 = phi i32 [ %i.ck, %.lr.ph116.new ], [ %.079114.unr, %.prol.loopexit ] ; 3 uses
  %.080.in113 = phi i32 [ %.080.1, %.lr.ph116.new ], [ %.080.in113.unr, %.prol.loopexit ] ; 2 uses
  %.080 = add i32 %.080.in113, -1
  %i.ce = add i32 %.079114, -1
  %i.cf = zext i32 %.079114 to i64
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.cf
  %i.ch = zext i32 %.080 to i64
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 32, i1 false), !tbaa.struct !753
  %i.cj = add i32 %.0115, -2                      ; 2 uses
  %.080.1 = add i32 %.080.in113, -2               ; 2 uses
  %i.ck = add i32 %.079114, -2
  %i.cl = zext i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.cl
  %i.cn = zext i32 %.080.1 to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.co, i64 32, i1 false), !tbaa.struct !753
  %.not97.1 = icmp eq i32 %i.cj, 0
  br i1 %.not97.1, label %._crit_edge, label %.lr.ph116.new, !llvm.loop !752

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph116.new, %.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cq = zext i32 %.081110 to i64
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %.084104, i64 32, i1 false), !tbaa.struct !753
  store i32 %i.bs, ptr %i.f, align 8, !tbaa !414
  br i1 %.not88105, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.cs = add i32 %.081110, 1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !753
  %i.cv = add i32 %i.bg, 2
  store i32 %i.cv, ptr %i.f, align 8, !tbaa !414
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %._crit_edge, %bb.s, %bb.r, %bb.o, %bb.i, %bb.h, %bb.f, %bb.c
  ret void
}

declare hidden void @FT_GlyphLoader_Add(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!"any p2 pointer", !13, i64 0}
!17 = !{!"p2 omnipotent char", !16, i64 0}
!18 = !{!"p1 int", !13, i64 0}
!19 = !{!"p1 _ZTS13FT_MemoryRec_", !13, i64 0}
!20 = !{!"PS_Table_FuncsRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!21 = !{!"PS_TableRec_", !14, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !10, i64 32, !17, i64 40, !18, i64 48, !19, i64 56, !20, i64 64}
!22 = !{!21, !19, i64 56}
!23 = !{!21, !17, i64 40}
!24 = !{!10, !10, i64 0}
!25 = !{!21, !18, i64 48}
!26 = !{!21, !10, i64 32}
!27 = !{!21, !15, i64 24}
!28 = !{!13, !13, i64 0}
!29 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28}
!30 = !{!21, !15, i64 8}
!31 = !{!21, !14, i64 0}
!32 = !{!21, !15, i64 16}
!33 = !{!14, !14, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"PS_Parser_FuncsRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!36 = !{!"PS_ParserRec_", !14, i64 0, !14, i64 8, !14, i64 16, !10, i64 24, !19, i64 32, !35, i64 40}
!37 = !{!36, !10, i64 24}
!38 = !{!36, !14, i64 16}
!39 = !{!36, !14, i64 0}
!40 = !{!36, !19, i64 32}
!41 = !{!9, !9, i64 0}
!42 = !{!15, !15, i64 0}
!43 = !{!"short", !9, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"T1_TokenRec_", !14, i64 0, !14, i64 8, !10, i64 16}
!46 = !{!45, !10, i64 16}
!47 = !{!45, !14, i64 0}
!48 = !{!45, !14, i64 8}
!49 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 4, !24}
!50 = !{!"T1_FieldRec_", !10, i64 0, !14, i64 8, !10, i64 16, !10, i64 20, !13, i64 24, !10, i64 32, !9, i64 36, !10, i64 40, !10, i64 44, !10, i64 48}
!51 = !{!50, !10, i64 20}
!52 = !{!50, !10, i64 32}
!53 = !{!"FT_BBox_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!54 = !{!19, !19, i64 0}
!55 = !{!"p1 _ZTS11FT_FaceRec_", !13, i64 0}
!56 = !{!"p1 _ZTS17CFF_GlyphSlotRec_", !13, i64 0}
!57 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !13, i64 0}
!58 = !{!"p1 _ZTS11FT_Outline_", !13, i64 0}
!59 = !{!"p1 long", !13, i64 0}
!60 = !{!"p1 _ZTS10FT_Vector_", !13, i64 0}
!61 = !{!"p1 _ZTS8FT_BBox_", !13, i64 0}
!62 = !{!"PS_Builder_FuncsRec_", !13, i64 0, !13, i64 8}
!63 = !{!"PS_Builder_", !19, i64 0, !55, i64 8, !56, i64 16, !57, i64 24, !58, i64 32, !58, i64 40, !59, i64 48, !59, i64 56, !60, i64 64, !60, i64 72, !61, i64 80, !9, i64 88, !9, i64 89, !9, i64 90, !9, i64 91, !9, i64 92, !62, i64 96}
!64 = !{!63, !19, i64 0}
!65 = !{!63, !55, i64 8}
!66 = !{!58, !58, i64 0}
!67 = !{!63, !58, i64 32}
!68 = !{!63, !58, i64 40}
!69 = !{!63, !59, i64 48}
!70 = !{!63, !59, i64 56}
!71 = !{!63, !60, i64 64}
!72 = !{!63, !60, i64 72}
!73 = !{!63, !61, i64 80}
!74 = !{!"p1 _ZTS11TT_FaceRec_", !13, i64 0}
!75 = !{!"FT_Vector_", !15, i64 0, !15, i64 8}
!76 = !{!"CFF_Builder_FuncsRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!77 = !{!"CFF_Builder_", !19, i64 0, !74, i64 8, !56, i64 16, !57, i64 24, !58, i64 32, !58, i64 40, !15, i64 48, !15, i64 56, !75, i64 64, !75, i64 80, !53, i64 96, !9, i64 128, !9, i64 129, !9, i64 130, !9, i64 131, !13, i64 136, !13, i64 144, !76, i64 152}
!78 = !{!77, !9, i64 128}
!79 = !{!63, !9, i64 88}
end_hunk_4
