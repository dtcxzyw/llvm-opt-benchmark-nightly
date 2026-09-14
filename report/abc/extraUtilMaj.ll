Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilMaj?download=true
inline.NumInlined: 110
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 31
begin_hunk_0_@Gem_GroupsDerive:bb.a
  %i.gq = lshr <2 x i64> %i.go, %broadcast.splat84
  %i.gr = or <2 x i64> %i.gp, %i.gn
  %i.gs = or <2 x i64> %i.gq, %i.go
  store <2 x i64> %i.gr, ptr %i.gl, align 8, !tbaa !53
  store <2 x i64> %i.gs, ptr %i.gm, align 8, !tbaa !53
  %index.next89 = add nuw i64 %index86, 4         ; 2 uses
  %i.gt = icmp eq i64 %index.next89, %n.vec80
  br i1 %i.gt, label %.lr.ph.i57.i, label %vector.body85, !llvm.loop !76

scalar.ph77:                                      ; preds = %.lr.ph.i42.i, %scalar.ph77
  %indvars.iv48.i.i = phi i64 [ %indvars.iv.next49.i.i, %scalar.ph77 ], [ 0, %.lr.ph.i42.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv48.i.i ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !53
  %i.gw = and i64 %i.gv, %i.gj                    ; 2 uses
  %i.gx = lshr i64 %i.gw, %i.gk
  %i.gy = or i64 %i.gx, %i.gw
  store i64 %i.gy, ptr %i.gu, align 8, !tbaa !53
  %indvars.iv.next49.i.i = add nuw nsw i64 %indvars.iv48.i.i, 1 ; 2 uses
  %exitcond52.not.i.i = icmp eq i64 %indvars.iv.next49.i.i, %i.o
  br i1 %exitcond52.not.i.i, label %.lr.ph.i57.i, label %scalar.ph77, !llvm.loop !77

.preheader.lr.ph.i30.i:                           ; preds = %._crit_edge.us.i27.i
  %i.gz = add nsw i64 %indvars.iv, -5             ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 31
  %i.hb = trunc nsw i64 %i.gz to i32              ; 2 uses
  %i.hc = shl i32 2, %i.hb
  %i.hd = sext i32 %i.hc to i64
  br i1 %i.ha, label %.lr.ph.i63.i.preheader, label %.preheader.us.preheader.i32.i

.preheader.us.preheader.i32.i:                    ; preds = %Abc_TtCofactor1p.exit.thread.i.thread38, %.preheader.lr.ph.i30.i.thread, %.preheader.lr.ph.i30.i
  %i.he = phi i64 [ %i.cq, %.preheader.lr.ph.i30.i.thread ], [ %i.hd, %.preheader.lr.ph.i30.i ], [ 2, %Abc_TtCofactor1p.exit.thread.i.thread38 ] ; 2 uses
  %.pn = phi i32 [ 32, %.preheader.lr.ph.i30.i.thread ], [ %i.hb, %.preheader.lr.ph.i30.i ], [ 0, %Abc_TtCofactor1p.exit.thread.i.thread38 ] ; 3 uses
  %i.hf = shl nuw i32 1, %.pn                     ; 6 uses
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %smax.i33.i = tail call i32 @llvm.smax.i32(i32 %i.hf, i32 1)
  %wide.trip.count.i34.i = zext nneg i32 %smax.i33.i to i64 ; 2 uses
  %min.iters.check52 = icmp slt i32 %i.hf, 4
  %n.vec54 = and i64 %wide.trip.count.i34.i, 2147483644
  %exitcond.not.i40.i = icmp slt i32 %i.hf, 2
  %exitcond.not.i40.i.1 = icmp eq i32 %.pn, 1
  br label %.preheader.us.i35.i

.preheader.us.i35.i:                              ; preds = %._crit_edge.us.i41.i, %.preheader.us.preheader.i32.i
  %.03643.us.i.i = phi ptr [ %i.hr, %._crit_edge.us.i41.i ], [ %2, %.preheader.us.preheader.i32.i ] ; 6 uses
  %invariant.gep.i36.i = getelementptr [8 x i8], ptr %.03643.us.i.i, i64 %i.hg ; 4 uses
  br i1 %min.iters.check52, label %scalar.ph51, label %vector.body55

vector.body55:                                    ; preds = %.preheader.us.i35.i, %vector.body55
  %index56 = phi i64 [ %index.next59, %vector.body55 ], [ 0, %.preheader.us.i35.i ] ; 3 uses
  %i.hh = getelementptr [8 x i8], ptr %invariant.gep.i36.i, i64 %index56 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !53
  %wide.load58 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !53
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.03643.us.i.i, i64 %index56 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store <2 x i64> %wide.load57, ptr %i.hj, align 8, !tbaa !53
  store <2 x i64> %wide.load58, ptr %i.hk, align 8, !tbaa !53
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.hl = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.hl, label %._crit_edge.us.i41.i, label %vector.body55, !llvm.loop !78

scalar.ph51:                                      ; preds = %.preheader.us.i35.i
  %i.hm = load i64, ptr %invariant.gep.i36.i, align 8, !tbaa !53
  store i64 %i.hm, ptr %.03643.us.i.i, align 8, !tbaa !53
  br i1 %exitcond.not.i40.i, label %._crit_edge.us.i41.i, label %scalar.ph51.1

scalar.ph51.1:                                    ; preds = %scalar.ph51
  %gep.i38.i.1 = getelementptr i8, ptr %invariant.gep.i36.i, i64 8
  %i.hn = load i64, ptr %gep.i38.i.1, align 8, !tbaa !53
  %i.ho = getelementptr inbounds nuw i8, ptr %.03643.us.i.i, i64 8
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !53
  br i1 %exitcond.not.i40.i.1, label %._crit_edge.us.i41.i, label %scalar.ph51.2

scalar.ph51.2:                                    ; preds = %scalar.ph51.1
  %gep.i38.i.2 = getelementptr i8, ptr %invariant.gep.i36.i, i64 16
  %i.hp = load i64, ptr %gep.i38.i.2, align 8, !tbaa !53
  %i.hq = getelementptr inbounds nuw i8, ptr %.03643.us.i.i, i64 16
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !53
  br label %._crit_edge.us.i41.i

._crit_edge.us.i41.i:                             ; preds = %vector.body55, %scalar.ph51, %scalar.ph51.1, %scalar.ph51.2
  %i.hr = getelementptr inbounds [8 x i8], ptr %.03643.us.i.i, i64 %i.he ; 2 uses
  %i.hs = icmp ult ptr %i.hr, %i.q
  br i1 %i.hs, label %.preheader.us.i35.i, label %.preheader.us.i49.i.preheader, !llvm.loop !3

.preheader.us.i49.i.preheader:                    ; preds = %._crit_edge.us.i41.i
  %min.iters.check = icmp slt i32 %i.hf, 4
  %n.vec = and i64 %wide.trip.count.i34.i, 2147483644
  %exitcond.not.i55.i = icmp slt i32 %i.hf, 2
  %exitcond.not.i55.i.1 = icmp eq i32 %.pn, 1
  br label %.preheader.us.i49.i

.lr.ph.i57.i:                                     ; preds = %vector.body85, %scalar.ph77
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !53 ; 2 uses
  br i1 %min.iters.check64, label %scalar.ph63, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph.i57.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.hu, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert67 = insertelement <2 x i64> poison, i64 %i.gk, i64 0
  %broadcast.splat68 = shufflevector <2 x i64> %broadcast.splatinsert67, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph65
  %index70 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body69 ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index70 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %wide.load71 = load <2 x i64>, ptr %i.hv, align 8, !tbaa !53
  %wide.load72 = load <2 x i64>, ptr %i.hw, align 8, !tbaa !53
  %i.hx = and <2 x i64> %wide.load71, %broadcast.splat ; 2 uses
  %i.hy = and <2 x i64> %wide.load72, %broadcast.splat ; 2 uses
  %i.hz = shl <2 x i64> %i.hx, %broadcast.splat68
  %i.ia = shl <2 x i64> %i.hy, %broadcast.splat68
  %i.ib = or <2 x i64> %i.hz, %i.hx
  %i.ic = or <2 x i64> %i.ia, %i.hy
  store <2 x i64> %i.ib, ptr %i.hv, align 8, !tbaa !53
  store <2 x i64> %i.ic, ptr %i.hw, align 8, !tbaa !53
  %index.next73 = add nuw i64 %index70, 4         ; 2 uses
  %i.id = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.id, label %.lr.ph.i63.i.preheader, label %vector.body69, !llvm.loop !79

scalar.ph63:                                      ; preds = %.lr.ph.i57.i, %scalar.ph63
  %indvars.iv48.i59.i = phi i64 [ %indvars.iv.next49.i60.i, %scalar.ph63 ], [ 0, %.lr.ph.i57.i ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv48.i59.i ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !53
  %i.ig = and i64 %i.if, %i.hu                    ; 2 uses
  %i.ih = shl i64 %i.ig, %i.gk
  %i.ii = or i64 %i.ih, %i.ig
  store i64 %i.ii, ptr %i.ie, align 8, !tbaa !53
  %indvars.iv.next49.i60.i = add nuw nsw i64 %indvars.iv48.i59.i, 1 ; 2 uses
  %exitcond52.not.i61.i = icmp eq i64 %indvars.iv.next49.i60.i, %i.o
  br i1 %exitcond52.not.i61.i, label %.lr.ph.i63.i.preheader, label %scalar.ph63, !llvm.loop !80

.preheader.us.i49.i:                              ; preds = %.preheader.us.i49.i.preheader, %._crit_edge.us.i56.i
  %.03643.us.i50.i = phi ptr [ %i.it, %._crit_edge.us.i56.i ], [ %3, %.preheader.us.i49.i.preheader ] ; 6 uses
  %invariant.gep.i51.i = getelementptr [8 x i8], ptr %.03643.us.i50.i, i64 %i.hg ; 4 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i49.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i49.i ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.03643.us.i50.i, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load = load <2 x i64>, ptr %i.ij, align 8, !tbaa !53
  %wide.load48 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !53
  %i.il = getelementptr [8 x i8], ptr %invariant.gep.i51.i, i64 %index ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 16
  store <2 x i64> %wide.load, ptr %i.il, align 8, !tbaa !53
  store <2 x i64> %wide.load48, ptr %i.im, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %._crit_edge.us.i56.i, label %vector.body, !llvm.loop !81

scalar.ph:                                        ; preds = %.preheader.us.i49.i
  %i.io = load i64, ptr %.03643.us.i50.i, align 8, !tbaa !53
  store i64 %i.io, ptr %invariant.gep.i51.i, align 8, !tbaa !53
  br i1 %exitcond.not.i55.i, label %._crit_edge.us.i56.i, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.ip = getelementptr inbounds nuw i8, ptr %.03643.us.i50.i, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !53
  %gep.i53.i.1 = getelementptr i8, ptr %invariant.gep.i51.i, i64 8
  store i64 %i.iq, ptr %gep.i53.i.1, align 8, !tbaa !53
  br i1 %exitcond.not.i55.i.1, label %._crit_edge.us.i56.i, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.ir = getelementptr inbounds nuw i8, ptr %.03643.us.i50.i, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !53
  %gep.i53.i.2 = getelementptr i8, ptr %invariant.gep.i51.i, i64 16
  store i64 %i.is, ptr %gep.i53.i.2, align 8, !tbaa !53
  br label %._crit_edge.us.i56.i

._crit_edge.us.i56.i:                             ; preds = %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2
  %i.it = getelementptr inbounds [8 x i8], ptr %.03643.us.i50.i, i64 %i.he ; 2 uses
  %i.iu = icmp ult ptr %i.it, %i.r
  br i1 %i.iu, label %.preheader.us.i49.i, label %.lr.ph.i63.i.preheader, !llvm.loop !4

.lr.ph.i63.i.preheader:                           ; preds = %vector.body69, %scalar.ph63, %._crit_edge.us.i56.i, %.preheader.lr.ph.i30.i
  br label %.lr.ph.i63.i

bb.d:                                             ; preds = %.lr.ph.i63.i
  %indvars.iv.next.i66.i = add nuw nsw i64 %indvars.iv.i64.i, 1 ; 2 uses
  %exitcond.not.i67.i = icmp eq i64 %indvars.iv.next.i66.i, %i.o
  br i1 %exitcond.not.i67.i, label %Abc_TtVarsAreSymmetric.exit.thread, label %.lr.ph.i63.i, !llvm.loop !82

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader, %bb.d
  %indvars.iv.i64.i = phi i64 [ %indvars.iv.next.i66.i, %bb.d ], [ 0, %.lr.ph.i63.i.preheader ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i64.i
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !53
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i64.i
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !53
  %.not.i65.i = icmp eq i64 %i.iw, %i.iy
  br i1 %.not.i65.i, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i63.i
  %i.iz = shl nuw i32 1, %indvars25
  %i.ja = or i32 %.020, %i.iz
  br label %Abc_TtVarsAreSymmetric.exit.thread

Abc_TtVarsAreSymmetric.exit.thread:               ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %i.jb = phi i32 [ %i.ja, %bb.e ], [ %.020, %bb.b ], [ %.020, %bb.c ], [ %.020, %bb.d ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count29
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !66

._crit_edge:                                      ; preds = %Abc_TtVarsAreSymmetric.exit.thread, %Abc_TtCofactor0p.exit.thread68.i.us, %bb.a
  %.0.lcssa = phi i32 [ %i.e, %bb.a ], [ %spec.select, %Abc_TtCofactor0p.exit.thread68.i.us ], [ %i.jb, %Abc_TtVarsAreSymmetric.exit.thread ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @Gem_GroupVarRemove(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = sub nsw i32 32, %1
  %i.b = lshr i32 -1, %i.a
  %i.c = select i1 %.not, i32 0, i32 %i.b         ; 2 uses
  %i.d = and i32 %i.c, %0
  %i.e = xor i32 %i.c, -1
  %i.f = and i32 %0, %i.e
  %i.g = ashr i32 %i.f, 1
  %i.h = or i32 %i.g, %i.d
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @Gem_GroupVarsInsert1(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = sub nsw i32 31, %1
  %i.c = lshr i32 -1, %i.b
  %i.d = select i1 %.not, i32 0, i32 %i.c         ; 2 uses
  %i.e = and i32 %i.d, %0
  %i.f = xor i32 %i.d, -1
  %i.g = and i32 %0, %i.f
  %i.h = shl i32 %i.g, 1
  %i.i = shl i32 %2, %i.a
  %i.j = or i32 %i.e, %i.i
  %i.k = or i32 %i.j, %i.h
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @Gem_GroupVarsInsert3(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = sub nsw i32 31, %1
  %i.c = lshr i32 -1, %i.b
  %i.d = select i1 %.not, i32 0, i32 %i.c         ; 2 uses
  %i.e = and i32 %i.d, %0
  %i.f = xor i32 %i.d, -1
  %i.g = and i32 %0, %i.f
  %i.h = shl i32 %i.g, 3
  %i.i = shl i32 4, %i.a
  %i.j = or i32 %i.e, %i.i
  %i.k = or i32 %i.j, %i.h
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define i32 @Gem_GroupUnpack(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %.not10 = icmp eq i32 %0, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 3 uses
  %.0712 = phi i32 [ %i.e, %bb.c ], [ 0, %bb.a ]  ; 2 uses
  %.0811 = phi i32 [ %i.f, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.a = and i32 %.0811, 1
  %.not9 = icmp eq i32 %i.a, 0
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = add nsw i32 %.013, 1
  %i.c = sext i32 %.013 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  store i32 %.0712, ptr %i.d, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.b, %bb.b ], [ %.013, %.lr.ph ] ; 2 uses
  %i.e = add nuw nsw i32 %.0712, 1
  %i.f = ashr i32 %.0811, 1                       ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Gem_FuncFindPlace(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = alloca [16 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %.not10.i = icmp eq i32 %2, 0
  br i1 %.not10.i, label %Gem_GroupUnpack.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.013.i = phi i32 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.0712.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.0811.i = phi i32 [ %i.i, %bb.c ], [ %2, %bb.a ] ; 2 uses
  %i.d = and i32 %.0811.i, 1
  %.not9.i = icmp eq i32 %i.d, 0
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add nsw i32 %.013.i, 1
  %i.f = sext i32 %.013.i to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  store i32 %.0712.i, ptr %i.g, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %i.e, %bb.b ], [ %.013.i, %.lr.ph.i ] ; 4 uses
  %i.h = add nuw nsw i32 %.0712.i, 1
  %i.i = ashr i32 %.0811.i, 1                     ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %Gem_GroupUnpack.exit, label %.lr.ph.i, !llvm.loop !5

Gem_GroupUnpack.exit:                             ; preds = %bb.c
  %.not = icmp eq i32 %.1.i, 0
  br i1 %.not, label %Gem_GroupUnpack.exit.thread, label %bb.d

bb.d:                                             ; preds = %Gem_GroupUnpack.exit
  %i.j = sext i32 %.1.i to i64
  %i.k = getelementptr [4 x i8], ptr %i.c, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  br label %Gem_GroupUnpack.exit.thread

Gem_GroupUnpack.exit.thread:                      ; preds = %bb.a, %Gem_GroupUnpack.exit, %bb.d
  %.0.lcssa.i95 = phi i32 [ %.1.i, %bb.d ], [ 0, %Gem_GroupUnpack.exit ], [ 0, %bb.a ] ; 2 uses
  %i.n = phi i32 [ %i.m, %bb.d ], [ -1, %Gem_GroupUnpack.exit ], [ -1, %bb.a ] ; 2 uses
  %i.o = icmp slt i32 %1, 1                       ; 10 uses
  br i1 %i.o, label %Abc_TtCopy.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %Gem_GroupUnpack.exit.thread
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %1, 8
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i39.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8, !tbaa !53
  %wide.load150 = load <2 x i64>, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %wide.load, ptr %i.s, align 8, !tbaa !53
  store <2 x i64> %wide.load150, ptr %i.t, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i39.prol.loopexit, label %.lr.ph.i39.prol

.lr.ph.i39.prol:                                  ; preds = %.lr.ph.i39.preheader, %.lr.ph.i39.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i39.prol ], [ %indvars.iv.i.ph, %.lr.ph.i39.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i39.prol ], [ 0, %.lr.ph.i39.preheader ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.prol
  %i.w = load i64, ptr %i.v, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.prol
  store i64 %i.w, ptr %i.x, align 8, !tbaa !53
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i39.prol.loopexit, label %.lr.ph.i39.prol, !llvm.loop !84

.lr.ph.i39.prol.loopexit:                         ; preds = %.lr.ph.i39.prol, %.lr.ph.i39.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i39.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i39.prol ]
  %i.y = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %Abc_TtCopy.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.prol.loopexit, %.lr.ph.i39
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i39 ], [ %indvars.iv.i.unr, %.lr.ph.i39.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
end_hunk_0
begin_hunk_1_@Gem_FuncReduce:bb.a
  store i64 %i.ej, ptr %gep81.i, align 8, !tbaa !53
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %i.ec
  br i1 %exitcond.not.i81, label %._crit_edge.us.i, label %scalar.ph259, !llvm.loop !164

._crit_edge.us.i:                                 ; preds = %vector.body263, %scalar.ph259
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ea ; 2 uses
  %i.em = icmp ult ptr %i.el, %i.dn
  br i1 %i.em, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !7

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %.lr.ph.i82, %scalar.ph241, %middle.block256, %bb.b, %bb.d, %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.en = load i32, ptr %i.j, align 4
  %i.eo = and i32 %i.en, 15                       ; 2 uses
  %i.ep = add nsw i32 %i.eo, -1
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next, %i.eq
  br i1 %i.er, label %.lr.ph, label %.preheader, !llvm.loop !165

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %Abc_TtSwapAdjacent.exit103
  %indvars.iv207 = phi i64 [ %i.by, %.lr.ph200.preheader ], [ %indvars.iv.next208, %Abc_TtSwapAdjacent.exit103 ] ; 7 uses
  %i.es = load i32, ptr %i.ap, align 4, !tbaa !31 ; 5 uses
  %i.et = icmp slt i64 %indvars.iv207, 5
  br i1 %i.et, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph200
  %i.eu = icmp sgt i32 %i.es, 0
  br i1 %i.eu, label %.lr.ph64.i98, label %Abc_TtSwapAdjacent.exit103

.lr.ph64.i98:                                     ; preds = %bb.f
  %i.ev = trunc nsw i64 %indvars.iv207 to i32
  %i.ew = shl nuw nsw i32 1, %i.ev
  %i.ex = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv207 ; 3 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !53 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !53 ; 2 uses
  %i.fb = zext nneg i32 %i.ew to i64              ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !53 ; 2 uses
  %wide.trip.count73.i99 = zext nneg i32 %i.es to i64 ; 3 uses
  %min.iters.check274 = icmp ult i32 %i.es, 4
  br i1 %min.iters.check274, label %scalar.ph273.preheader, label %vector.ph275

vector.ph275:                                     ; preds = %.lr.ph64.i98
  %n.vec276 = and i64 %wide.trip.count73.i99, 2147483644 ; 3 uses
  %broadcast.splatinsert277 = insertelement <2 x i64> poison, i64 %i.ey, i64 0
  %broadcast.splat278 = shufflevector <2 x i64> %broadcast.splatinsert277, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert279 = insertelement <2 x i64> poison, i64 %i.fa, i64 0
  %broadcast.splat280 = shufflevector <2 x i64> %broadcast.splatinsert279, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert281 = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %broadcast.splat282 = shufflevector <2 x i64> %broadcast.splatinsert281, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert283 = insertelement <2 x i64> poison, i64 %i.fd, i64 0
  %broadcast.splat284 = shufflevector <2 x i64> %broadcast.splatinsert283, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph275
  %index286 = phi i64 [ 0, %vector.ph275 ], [ %index.next289, %vector.body285 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index286 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %wide.load287 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !53 ; 3 uses
  %wide.load288 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !53 ; 3 uses
  %i.fg = and <2 x i64> %wide.load287, %broadcast.splat278
  %i.fh = and <2 x i64> %wide.load288, %broadcast.splat278
  %i.fi = and <2 x i64> %wide.load287, %broadcast.splat280
  %i.fj = and <2 x i64> %wide.load288, %broadcast.splat280
  %i.fk = shl <2 x i64> %i.fi, %broadcast.splat282
  %i.fl = shl <2 x i64> %i.fj, %broadcast.splat282
  %i.fm = or <2 x i64> %i.fk, %i.fg
  %i.fn = or <2 x i64> %i.fl, %i.fh
  %i.fo = and <2 x i64> %wide.load287, %broadcast.splat284
  %i.fp = and <2 x i64> %wide.load288, %broadcast.splat284
  %i.fq = lshr <2 x i64> %i.fo, %broadcast.splat282
  %i.fr = lshr <2 x i64> %i.fp, %broadcast.splat282
  %i.fs = or <2 x i64> %i.fm, %i.fq
  %i.ft = or <2 x i64> %i.fn, %i.fr
  store <2 x i64> %i.fs, ptr %i.fe, align 8, !tbaa !53
  store <2 x i64> %i.ft, ptr %i.ff, align 8, !tbaa !53
  %index.next289 = add nuw i64 %index286, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next289, %n.vec276
  br i1 %i.fu, label %middle.block290, label %vector.body285, !llvm.loop !166

middle.block290:                                  ; preds = %vector.body285
  %cmp.n291 = icmp eq i64 %n.vec276, %wide.trip.count73.i99
  br i1 %cmp.n291, label %Abc_TtSwapAdjacent.exit103, label %scalar.ph273.preheader

scalar.ph273.preheader:                           ; preds = %.lr.ph64.i98, %middle.block290
  %indvars.iv70.i100.ph = phi i64 [ 0, %.lr.ph64.i98 ], [ %n.vec276, %middle.block290 ]
  br label %scalar.ph273

scalar.ph273:                                     ; preds = %scalar.ph273.preheader, %scalar.ph273
  %indvars.iv70.i100 = phi i64 [ %indvars.iv.next71.i101, %scalar.ph273 ], [ %indvars.iv70.i100.ph, %scalar.ph273.preheader ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv70.i100 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !53 ; 3 uses
  %i.fx = and i64 %i.fw, %i.ey
  %i.fy = and i64 %i.fw, %i.fa
  %i.fz = shl i64 %i.fy, %i.fb
  %i.ga = or i64 %i.fz, %i.fx
  %i.gb = and i64 %i.fw, %i.fd
  %i.gc = lshr i64 %i.gb, %i.fb
  %i.gd = or i64 %i.ga, %i.gc
  store i64 %i.gd, ptr %i.fv, align 8, !tbaa !53
  %indvars.iv.next71.i101 = add nuw nsw i64 %indvars.iv70.i100, 1 ; 2 uses
  %exitcond74.not.i102 = icmp eq i64 %indvars.iv.next71.i101, %wide.trip.count73.i99
  br i1 %exitcond74.not.i102, label %Abc_TtSwapAdjacent.exit103, label %scalar.ph273, !llvm.loop !167

bb.g:                                             ; preds = %.lr.ph200
  %i.ge = icmp eq i64 %indvars.iv207, 5
  %i.gf = sext i32 %i.es to i64
  %.idx65.i83 = shl nsw i64 %i.gf, 3
  %i.gg = getelementptr inbounds i8, ptr %i.ah, i64 %.idx65.i83 ; 2 uses
  %i.gh = icmp sgt i32 %i.es, 0                   ; 2 uses
  br i1 %i.ge, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.gh, label %.lr.ph.i96, label %Abc_TtSwapAdjacent.exit103

.lr.ph.i96:                                       ; preds = %bb.h, %.lr.ph.i96
  %.05462.i97 = phi ptr [ %i.gl, %.lr.ph.i96 ], [ %i.ah, %bb.h ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.05462.i97, i64 4 ; 2 uses
  %i.gj = load <2 x i32>, ptr %i.gi, align 4, !tbaa !24
  %i.gk = shufflevector <2 x i32> %i.gj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gk, ptr %i.gi, align 4, !tbaa !24
  %i.gl = getelementptr inbounds nuw i8, ptr %.05462.i97, i64 16 ; 2 uses
  %i.gm = icmp ult ptr %i.gl, %i.gg
  br i1 %i.gm, label %.lr.ph.i96, label %Abc_TtSwapAdjacent.exit103, !llvm.loop !6

bb.i:                                             ; preds = %bb.g
  br i1 %i.gh, label %.preheader.us.preheader.i85, label %Abc_TtSwapAdjacent.exit103

.preheader.us.preheader.i85:                      ; preds = %bb.i
  %i.gn = icmp samesign ult i64 %indvars.iv207, 7
  %i.go = trunc nuw nsw i64 %indvars.iv207 to i32
  %i.gp = add nsw i32 %i.go, -6
  %i.gq = shl nuw nsw i32 1, %i.gp
  %i.gr = select i1 %i.gn, i32 1, i32 %i.gq       ; 4 uses
  %i.gs = shl nuw nsw i32 %i.gr, 2
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = shl nuw nsw i32 %i.gr, 1
  %i.gv = zext nneg i32 %i.gr to i64              ; 3 uses
  %i.gw = zext nneg i32 %i.gu to i64
  %min.iters.check294 = icmp samesign ult i32 %i.gr, 4
  %n.vec296 = and i64 %i.gv, 2147483644
  br label %.preheader.us.i86

.preheader.us.i86:                                ; preds = %._crit_edge.us.i95, %.preheader.us.preheader.i85
  %.061.us.i87 = phi ptr [ %i.he, %._crit_edge.us.i95 ], [ %i.ah, %.preheader.us.preheader.i85 ] ; 3 uses
  %invariant.gep.i88 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i87, i64 %i.gv ; 2 uses
  %invariant.gep80.i89 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i87, i64 %i.gw ; 2 uses
  br i1 %min.iters.check294, label %scalar.ph293, label %vector.body297

vector.body297:                                   ; preds = %.preheader.us.i86, %vector.body297
  %index298 = phi i64 [ %index.next303, %vector.body297 ], [ 0, %.preheader.us.i86 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i88, i64 %index298 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %wide.load299 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !53
  %wide.load300 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !53
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i89, i64 %index298 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %wide.load301 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !53
  %wide.load302 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !53
  store <2 x i64> %wide.load301, ptr %i.gx, align 8, !tbaa !53
  store <2 x i64> %wide.load302, ptr %i.gy, align 8, !tbaa !53
  store <2 x i64> %wide.load299, ptr %i.gz, align 8, !tbaa !53
  store <2 x i64> %wide.load300, ptr %i.ha, align 8, !tbaa !53
  %index.next303 = add nuw i64 %index298, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next303, %n.vec296
  br i1 %i.hb, label %._crit_edge.us.i95, label %vector.body297, !llvm.loop !168

scalar.ph293:                                     ; preds = %.preheader.us.i86, %scalar.ph293
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i93, %scalar.ph293 ], [ 0, %.preheader.us.i86 ] ; 3 uses
  %gep.i91 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i88, i64 %indvars.iv.i90 ; 2 uses
  %i.hc = load i64, ptr %gep.i91, align 8, !tbaa !53
  %gep81.i92 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i89, i64 %indvars.iv.i90 ; 2 uses
  %i.hd = load i64, ptr %gep81.i92, align 8, !tbaa !53
  store i64 %i.hd, ptr %gep.i91, align 8, !tbaa !53
  store i64 %i.hc, ptr %gep81.i92, align 8, !tbaa !53
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %i.gv
  br i1 %exitcond.not.i94, label %._crit_edge.us.i95, label %scalar.ph293, !llvm.loop !169

._crit_edge.us.i95:                               ; preds = %vector.body297, %scalar.ph293
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i87, i64 %i.gt ; 2 uses
  %i.hf = icmp ult ptr %i.he, %i.gg
  br i1 %i.hf, label %.preheader.us.i86, label %Abc_TtSwapAdjacent.exit103, !llvm.loop !7

Abc_TtSwapAdjacent.exit103:                       ; preds = %._crit_edge.us.i95, %.lr.ph.i96, %scalar.ph273, %middle.block290, %bb.f, %bb.h, %bb.i
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, 1 ; 3 uses
  %i.hg = load i32, ptr %i.j, align 4
  %i.hh = and i32 %i.hg, 15
  %i.hi = add nsw i32 %i.hh, -2
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next208, %i.hj
  br i1 %i.hk, label %.lr.ph200, label %._crit_edge.loopexit, !llvm.loop !170

._crit_edge.loopexit:                             ; preds = %Abc_TtSwapAdjacent.exit103
  %i.hl = trunc nsw i64 %indvars.iv.next208 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.1.lcssa = phi i32 [ %2, %.preheader ], [ %i.hl, %._crit_edge.loopexit ] ; 11 uses
  %i.hm = load i32, ptr %i.ap, align 4, !tbaa !31 ; 15 uses
  %i.hn = add nsw i32 %.1.lcssa, 1                ; 4 uses
  %i.ho = icmp eq i32 %i.hm, 1
  br i1 %i.ho, label %Abc_TtCofactor0p.exit.thread174, label %bb.j

Abc_TtCofactor0p.exit.thread174:                  ; preds = %._crit_edge
  %i.hp = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.hq = sext i32 %i.hn to i64                   ; 2 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !53
  %i.ht = and i64 %i.hs, %i.hp                    ; 2 uses
  %i.hu = shl nuw i32 1, %i.hn
  %i.hv = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hw = shl i64 %i.ht, %i.hv
  %i.hx = or i64 %i.hw, %i.ht
  store i64 %i.hx, ptr %i.ak, align 8, !tbaa !53
  %i.hy = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.hz = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.hq
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !53
  %i.ib = and i64 %i.ia, %i.hy                    ; 2 uses
  %i.ic = lshr i64 %i.ib, %i.hv
  %i.id = or i64 %i.ic, %i.ib
  store i64 %i.id, ptr %i.an, align 8, !tbaa !53
  %i.ie = load i64, ptr %i.ak, align 8, !tbaa !53
  %i.if = sext i32 %.1.lcssa to i64               ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.if
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !53
  %i.ii = and i64 %i.ih, %i.ie                    ; 2 uses
  %i.ij = shl nuw i32 1, %.1.lcssa
  %i.ik = zext nneg i32 %i.ij to i64              ; 2 uses
  %i.il = shl i64 %i.ii, %i.ik
  %i.im = or i64 %i.il, %i.ii
  store i64 %i.im, ptr %i.ak, align 8, !tbaa !53
  %i.in = load i64, ptr %i.an, align 8, !tbaa !53
  %i.io = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.if
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !53
  %i.iq = and i64 %i.ip, %i.in                    ; 2 uses
  %i.ir = lshr i64 %i.iq, %i.ik
  %i.is = or i64 %i.ir, %i.iq
  store i64 %i.is, ptr %i.an, align 8, !tbaa !53
  br label %Abc_TtCofactor1.exit.thread

bb.j:                                             ; preds = %._crit_edge
  %i.it = icmp slt i32 %.1.lcssa, 5
  br i1 %i.it, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.iu = icmp sgt i32 %i.hm, 0
  br i1 %i.iu, label %.lr.ph.i114, label %Abc_TtMux.exit

.lr.ph.i114:                                      ; preds = %bb.k
  %i.iv = shl nuw nsw i32 1, %i.hn
  %i.iw = sext i32 %i.hn to i64                   ; 2 uses
  %i.ix = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.iw
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !53 ; 4 uses
  %i.iz = zext nneg i32 %i.iv to i64              ; 8 uses
  %wide.trip.count59.i = zext nneg i32 %i.hm to i64 ; 10 uses
  %min.iters.check373 = icmp ult i32 %i.hm, 6
  %i.ja = sub i64 %i.ai, %i.al
  %diff.check371 = icmp ugt i64 %i.ja, -32
  %or.cond = select i1 %min.iters.check373, i1 true, i1 %diff.check371
  br i1 %or.cond, label %scalar.ph372.preheader, label %vector.ph374

vector.ph374:                                     ; preds = %.lr.ph.i114
  %n.vec375 = and i64 %wide.trip.count59.i, 2147483644 ; 3 uses
  %broadcast.splatinsert376 = insertelement <2 x i64> poison, i64 %i.iy, i64 0
  %broadcast.splat377 = shufflevector <2 x i64> %broadcast.splatinsert376, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert378 = insertelement <2 x i64> poison, i64 %i.iz, i64 0
  %broadcast.splat379 = shufflevector <2 x i64> %broadcast.splatinsert378, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body380

vector.body380:                                   ; preds = %vector.body380, %vector.ph374
  %index381 = phi i64 [ 0, %vector.ph374 ], [ %index.next384, %vector.body380 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index381 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load382 = load <2 x i64>, ptr %i.jb, align 8, !tbaa !53
  %wide.load383 = load <2 x i64>, ptr %i.jc, align 8, !tbaa !53
  %i.jd = and <2 x i64> %wide.load382, %broadcast.splat377 ; 2 uses
  %i.je = and <2 x i64> %wide.load383, %broadcast.splat377 ; 2 uses
  %i.jf = shl <2 x i64> %i.jd, %broadcast.splat379
  %i.jg = shl <2 x i64> %i.je, %broadcast.splat379
  %i.jh = or <2 x i64> %i.jf, %i.jd
  %i.ji = or <2 x i64> %i.jg, %i.je
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index381 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store <2 x i64> %i.jh, ptr %i.jj, align 8, !tbaa !53
  store <2 x i64> %i.ji, ptr %i.jk, align 8, !tbaa !53
  %index.next384 = add nuw i64 %index381, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next384, %n.vec375
  br i1 %i.jl, label %middle.block385, label %vector.body380, !llvm.loop !171

middle.block385:                                  ; preds = %vector.body380
  %cmp.n386 = icmp eq i64 %n.vec375, %wide.trip.count59.i
  br i1 %cmp.n386, label %.lr.ph.i126, label %scalar.ph372.preheader

scalar.ph372.preheader:                           ; preds = %.lr.ph.i114, %middle.block385
  %indvars.iv56.i.ph = phi i64 [ 0, %.lr.ph.i114 ], [ %n.vec375, %middle.block385 ] ; 5 uses
  %xtraiter495 = and i64 %wide.trip.count59.i, 1
  %lcmp.mod496.not = icmp eq i64 %xtraiter495, 0
  br i1 %lcmp.mod496.not, label %scalar.ph372.prol.loopexit, label %scalar.ph372.prol

scalar.ph372.prol:                                ; preds = %scalar.ph372.preheader
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv56.i.ph
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !53
  %i.jo = and i64 %i.jn, %i.iy                    ; 2 uses
  %i.jp = shl i64 %i.jo, %i.iz
  %i.jq = or i64 %i.jp, %i.jo
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv56.i.ph
  store i64 %i.jq, ptr %i.jr, align 8, !tbaa !53
  %indvars.iv.next57.i.prol = or disjoint i64 %indvars.iv56.i.ph, 1
  br label %scalar.ph372.prol.loopexit

scalar.ph372.prol.loopexit:                       ; preds = %scalar.ph372.prol, %scalar.ph372.preheader
  %indvars.iv56.i.unr = phi i64 [ %indvars.iv56.i.ph, %scalar.ph372.preheader ], [ %indvars.iv.next57.i.prol, %scalar.ph372.prol ]
  %i.js = add nsw i64 %wide.trip.count59.i, -1
  %i.jt = icmp eq i64 %indvars.iv56.i.ph, %i.js
  br i1 %i.jt, label %.lr.ph.i126, label %scalar.ph372

scalar.ph372:                                     ; preds = %scalar.ph372.prol.loopexit, %scalar.ph372
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.1, %scalar.ph372 ], [ %indvars.iv56.i.unr, %scalar.ph372.prol.loopexit ] ; 4 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv56.i
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !53
  %i.jw = and i64 %i.jv, %i.iy                    ; 2 uses
  %i.jx = shl i64 %i.jw, %i.iz
  %i.jy = or i64 %i.jx, %i.jw
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv56.i
  store i64 %i.jy, ptr %i.jz, align 8, !tbaa !53
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next57.i
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !53
  %i.kc = and i64 %i.kb, %i.iy                    ; 2 uses
  %i.kd = shl i64 %i.kc, %i.iz
  %i.ke = or i64 %i.kd, %i.kc
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next57.i
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !53
  %indvars.iv.next57.i.1 = add nuw nsw i64 %indvars.iv56.i, 2 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %indvars.iv.next57.i.1, %wide.trip.count59.i
  br i1 %exitcond60.not.i.1, label %.lr.ph.i126, label %scalar.ph372, !llvm.loop !172

bb.l:                                             ; preds = %bb.j
  %i.kg = sext i32 %i.hm to i64
  %.idx.i = shl nsw i64 %i.kg, 3
  %i.kh = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.i
  %i.ki = add nsw i32 %.1.lcssa, -5               ; 3 uses
  %i.kj = shl nuw i32 1, %i.ki                    ; 6 uses
  %i.kk = icmp sgt i32 %i.hm, 0
  br i1 %i.kk, label %.preheader.lr.ph.i104, label %Abc_TtCofactor1p.exit.thread

.preheader.lr.ph.i104:                            ; preds = %bb.l
  %.not.i = icmp eq i32 %i.ki, 31
  %i.kl = shl i32 2, %i.ki
  %i.km = sext i32 %i.kl to i64                   ; 4 uses
  br i1 %.not.i, label %.preheader.us.preheader.i130, label %.preheader.us.preheader.i105

.preheader.us.preheader.i105:                     ; preds = %.preheader.lr.ph.i104
  %i.kn = sext i32 %i.kj to i64                   ; 7 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.kj, i32 1) ; 2 uses
  %wide.trip.count.i106 = zext nneg i32 %smax.i to i64 ; 6 uses
  %i.ko = shl nsw i64 %i.kn, 3                    ; 2 uses
  %i.kp = add i64 %i.ko, %i.al
  %min.iters.check313 = icmp slt i32 %i.kj, 8
  %diff.check308 = icmp ult i64 %i.ko, 32
  %i.kq = sub i64 %i.ai, %i.al
  %diff.check309 = icmp ugt i64 %i.kq, -32
  %conflict.rdx = or i1 %diff.check308, %diff.check309
  %i.kr = sub i64 %i.ai, %i.kp
  %diff.check310 = icmp ugt i64 %i.kr, -32
  %conflict.rdx311 = or i1 %conflict.rdx, %diff.check310
  %n.vec315 = and i64 %wide.trip.count.i106, 2147483644
  %xtraiter486 = and i64 %wide.trip.count.i106, 3 ; 3 uses
  %i.ks = icmp slt i32 %i.kj, 4
  %unroll_iter = and i64 %wide.trip.count.i106, 2147483644
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  %lcmp.mod488 = icmp ne i64 %xtraiter486, 0
  br label %.preheader.us.i107

.preheader.us.i107:                               ; preds = %._crit_edge.us.i113, %.preheader.us.preheader.i105
  %.04251.us.i = phi ptr [ %i.lq, %._crit_edge.us.i113 ], [ %i.ak, %.preheader.us.preheader.i105 ] ; 8 uses
  %.04350.us.i = phi ptr [ %i.lp, %._crit_edge.us.i113 ], [ %i.ah, %.preheader.us.preheader.i105 ] ; 7 uses
  %invariant.gep.i108 = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.kn ; 6 uses
  %brmerge = select i1 %min.iters.check313, i1 true, i1 %conflict.rdx311
  br i1 %brmerge, label %scalar.ph312.preheader, label %vector.body316

scalar.ph312.preheader:                           ; preds = %.preheader.us.i107
  br i1 %i.ks, label %scalar.ph312.epil.preheader, label %scalar.ph312

vector.body316:                                   ; preds = %.preheader.us.i107, %vector.body316
  %index317 = phi i64 [ %index.next320, %vector.body316 ], [ 0, %.preheader.us.i107 ] ; 4 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index317 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %wide.load318 = load <2 x i64>, ptr %i.kt, align 8, !tbaa !53 ; 2 uses
  %wide.load319 = load <2 x i64>, ptr %i.ku, align 8, !tbaa !53 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index317 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store <2 x i64> %wide.load318, ptr %i.kv, align 8, !tbaa !53
  store <2 x i64> %wide.load319, ptr %i.kw, align 8, !tbaa !53
  %i.kx = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %index317 ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 16
  store <2 x i64> %wide.load318, ptr %i.kx, align 8, !tbaa !53
  store <2 x i64> %wide.load319, ptr %i.ky, align 8, !tbaa !53
  %index.next320 = add nuw i64 %index317, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next320, %n.vec315
  br i1 %i.kz, label %._crit_edge.us.i113, label %vector.body316, !llvm.loop !173

scalar.ph312:                                     ; preds = %scalar.ph312.preheader, %scalar.ph312
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i111.3, %scalar.ph312 ], [ 0, %scalar.ph312.preheader ] ; 7 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph312 ], [ 0, %scalar.ph312.preheader ]
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i109
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !53 ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i109
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !53
  %gep.i110 = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %indvars.iv.i109
  store i64 %i.lb, ptr %gep.i110, align 8, !tbaa !53
  %indvars.iv.next.i111 = or disjoint i64 %indvars.iv.i109, 1 ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i111
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !53 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i111
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !53
  %gep.i110.1 = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %indvars.iv.next.i111
  store i64 %i.le, ptr %gep.i110.1, align 8, !tbaa !53
  %indvars.iv.next.i111.1 = or disjoint i64 %indvars.iv.i109, 2 ; 3 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i111.1
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !53 ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i111.1
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !53
  %gep.i110.2 = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %indvars.iv.next.i111.1
  store i64 %i.lh, ptr %gep.i110.2, align 8, !tbaa !53
  %indvars.iv.next.i111.2 = or disjoint i64 %indvars.iv.i109, 3 ; 3 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i111.2
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !53 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i111.2
  store i64 %i.lk, ptr %i.ll, align 8, !tbaa !53
  %gep.i110.3 = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %indvars.iv.next.i111.2
  store i64 %i.lk, ptr %gep.i110.3, align 8, !tbaa !53
  %indvars.iv.next.i111.3 = add nuw nsw i64 %indvars.iv.i109, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i113.loopexit.unr-lcssa, label %scalar.ph312, !llvm.loop !174

._crit_edge.us.i113.loopexit.unr-lcssa:           ; preds = %scalar.ph312
  br i1 %lcmp.mod487.not, label %._crit_edge.us.i113, label %scalar.ph312.epil.preheader

scalar.ph312.epil.preheader:                      ; preds = %._crit_edge.us.i113.loopexit.unr-lcssa, %scalar.ph312.preheader
  %indvars.iv.i109.epil.init = phi i64 [ 0, %scalar.ph312.preheader ], [ %indvars.iv.next.i111.3, %._crit_edge.us.i113.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod488)
  br label %scalar.ph312.epil

scalar.ph312.epil:                                ; preds = %scalar.ph312.epil, %scalar.ph312.epil.preheader
  %indvars.iv.i109.epil = phi i64 [ %indvars.iv.next.i111.epil, %scalar.ph312.epil ], [ %indvars.iv.i109.epil.init, %scalar.ph312.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph312.epil ], [ 0, %scalar.ph312.epil.preheader ]
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i109.epil
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !53 ; 2 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i109.epil
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !53
  %gep.i110.epil = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %indvars.iv.i109.epil
  store i64 %i.ln, ptr %gep.i110.epil, align 8, !tbaa !53
  %indvars.iv.next.i111.epil = add nuw nsw i64 %indvars.iv.i109.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter486
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i113, label %scalar.ph312.epil, !llvm.loop !175

._crit_edge.us.i113:                              ; preds = %vector.body316, %._crit_edge.us.i113.loopexit.unr-lcssa, %scalar.ph312.epil
  %i.lp = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.km ; 2 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.km
  %i.lr = icmp ult ptr %i.lp, %i.kh
  br i1 %i.lr, label %.preheader.us.i107, label %.preheader.us.preheader.i118, !llvm.loop !1

.lr.ph.i126:                                      ; preds = %scalar.ph372.prol.loopexit, %scalar.ph372, %middle.block385
  %i.ls = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.iw
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !53 ; 4 uses
  %min.iters.check391 = icmp ult i32 %i.hm, 6
  %i.lu = sub i64 %i.ai, %i.ao
  %diff.check389 = icmp ugt i64 %i.lu, -32
  %or.cond474 = select i1 %min.iters.check391, i1 true, i1 %diff.check389
  br i1 %or.cond474, label %scalar.ph390.preheader, label %vector.ph392

vector.ph392:                                     ; preds = %.lr.ph.i126
  %n.vec393 = and i64 %wide.trip.count59.i, 2147483644 ; 3 uses
  %broadcast.splatinsert394 = insertelement <2 x i64> poison, i64 %i.lt, i64 0
  %broadcast.splat395 = shufflevector <2 x i64> %broadcast.splatinsert394, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert396 = insertelement <2 x i64> poison, i64 %i.iz, i64 0
  %broadcast.splat397 = shufflevector <2 x i64> %broadcast.splatinsert396, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph392
  %index399 = phi i64 [ 0, %vector.ph392 ], [ %index.next402, %vector.body398 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index399 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %wide.load400 = load <2 x i64>, ptr %i.lv, align 8, !tbaa !53
  %wide.load401 = load <2 x i64>, ptr %i.lw, align 8, !tbaa !53
  %i.lx = and <2 x i64> %wide.load400, %broadcast.splat395 ; 2 uses
  %i.ly = and <2 x i64> %wide.load401, %broadcast.splat395 ; 2 uses
  %i.lz = lshr <2 x i64> %i.lx, %broadcast.splat397
  %i.ma = lshr <2 x i64> %i.ly, %broadcast.splat397
  %i.mb = or <2 x i64> %i.lz, %i.lx
  %i.mc = or <2 x i64> %i.ma, %i.ly
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index399 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store <2 x i64> %i.mb, ptr %i.md, align 8, !tbaa !53
  store <2 x i64> %i.mc, ptr %i.me, align 8, !tbaa !53
  %index.next402 = add nuw i64 %index399, 4       ; 2 uses
  %i.mf = icmp eq i64 %index.next402, %n.vec393
  br i1 %i.mf, label %middle.block403, label %vector.body398, !llvm.loop !176

middle.block403:                                  ; preds = %vector.body398
  %cmp.n404 = icmp eq i64 %n.vec393, %wide.trip.count59.i
  br i1 %cmp.n404, label %.lr.ph.i140, label %scalar.ph390.preheader

scalar.ph390.preheader:                           ; preds = %.lr.ph.i126, %middle.block403
  %indvars.iv58.i.ph = phi i64 [ 0, %.lr.ph.i126 ], [ %n.vec393, %middle.block403 ] ; 5 uses
  %xtraiter498 = and i64 %wide.trip.count59.i, 1
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod499.not, label %scalar.ph390.prol.loopexit, label %scalar.ph390.prol

scalar.ph390.prol:                                ; preds = %scalar.ph390.preheader
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv58.i.ph
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !53
  %i.mi = and i64 %i.mh, %i.lt                    ; 2 uses
  %i.mj = lshr i64 %i.mi, %i.iz
  %i.mk = or i64 %i.mj, %i.mi
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv58.i.ph
  store i64 %i.mk, ptr %i.ml, align 8, !tbaa !53
  %indvars.iv.next59.i.prol = or disjoint i64 %indvars.iv58.i.ph, 1
  br label %scalar.ph390.prol.loopexit

scalar.ph390.prol.loopexit:                       ; preds = %scalar.ph390.prol, %scalar.ph390.preheader
  %indvars.iv58.i.unr = phi i64 [ %indvars.iv58.i.ph, %scalar.ph390.preheader ], [ %indvars.iv.next59.i.prol, %scalar.ph390.prol ]
  %i.mm = add nsw i64 %wide.trip.count59.i, -1
  %i.mn = icmp eq i64 %indvars.iv58.i.ph, %i.mm
  br i1 %i.mn, label %.lr.ph.i140, label %scalar.ph390

scalar.ph390:                                     ; preds = %scalar.ph390.prol.loopexit, %scalar.ph390
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i.1, %scalar.ph390 ], [ %indvars.iv58.i.unr, %scalar.ph390.prol.loopexit ] ; 4 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv58.i
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !53
  %i.mq = and i64 %i.mp, %i.lt                    ; 2 uses
  %i.mr = lshr i64 %i.mq, %i.iz
  %i.ms = or i64 %i.mr, %i.mq
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv58.i
  store i64 %i.ms, ptr %i.mt, align 8, !tbaa !53
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next59.i
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !53
  %i.mw = and i64 %i.mv, %i.lt                    ; 2 uses
  %i.mx = lshr i64 %i.mw, %i.iz
  %i.my = or i64 %i.mx, %i.mw
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next59.i
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !53
  %indvars.iv.next59.i.1 = add nuw nsw i64 %indvars.iv58.i, 2 ; 2 uses
  %exitcond62.not.i.1 = icmp eq i64 %indvars.iv.next59.i.1, %wide.trip.count59.i
  br i1 %exitcond62.not.i.1, label %.lr.ph.i140, label %scalar.ph390, !llvm.loop !177

.preheader.us.preheader.i118:                     ; preds = %._crit_edge.us.i113
  %i.na = zext nneg i32 %i.hm to i64
  %.idx.i115 = shl nuw nsw i64 %i.na, 3
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i115
  %i.nc = shl nsw i64 %i.kn, 3                    ; 2 uses
  %i.nd = sub i64 %i.ao, %i.ai                    ; 2 uses
  %min.iters.check331 = icmp slt i32 %i.kj, 8
  %diff.check325 = icmp ult i64 %i.nc, 32
  %i.ne = sub i64 %i.nc, %i.nd
  %diff.check326 = icmp ugt i64 %i.ne, -32
  %conflict.rdx327 = or i1 %diff.check325, %diff.check326
  %i.nf = add i64 %i.nd, -1
  %diff.check328 = icmp ult i64 %i.nf, 31
  %conflict.rdx329 = or i1 %conflict.rdx327, %diff.check328
  %n.vec333 = and i64 %wide.trip.count.i106, 2147483644
  %xtraiter489 = and i64 %wide.trip.count.i106, 1
  %i.ng = icmp slt i32 %i.kj, 2
  %unroll_iter493 = and i64 %wide.trip.count.i106, 2147483646
  %lcmp.mod491.not = icmp eq i64 %xtraiter489, 0
  %lcmp.mod492 = trunc i32 %smax.i to i1
  br label %.preheader.us.i121

.preheader.us.i121:                               ; preds = %._crit_edge.us.i125, %.preheader.us.preheader.i118
  %.04453.us.i = phi ptr [ %i.of, %._crit_edge.us.i125 ], [ %i.an, %.preheader.us.preheader.i118 ] ; 9 uses
  %.04552.us.i = phi ptr [ %i.oe, %._crit_edge.us.i125 ], [ %i.ah, %.preheader.us.preheader.i118 ] ; 5 uses
  %brmerge510 = select i1 %min.iters.check331, i1 true, i1 %conflict.rdx329
  br i1 %brmerge510, label %scalar.ph330.preheader, label %vector.body334

scalar.ph330.preheader:                           ; preds = %.preheader.us.i121
  br i1 %i.ng, label %scalar.ph330.epil.preheader, label %scalar.ph330

vector.body334:                                   ; preds = %.preheader.us.i121, %vector.body334
  %index335 = phi i64 [ %index.next338, %vector.body334 ], [ 0, %.preheader.us.i121 ] ; 3 uses
  %i.nh = add nuw nsw i64 %index335, %i.kn        ; 2 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.nh ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %wide.load336 = load <2 x i64>, ptr %i.ni, align 8, !tbaa !53 ; 2 uses
  %wide.load337 = load <2 x i64>, ptr %i.nj, align 8, !tbaa !53 ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %index335 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store <2 x i64> %wide.load336, ptr %i.nk, align 8, !tbaa !53
  store <2 x i64> %wide.load337, ptr %i.nl, align 8, !tbaa !53
  %i.nm = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.nh ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store <2 x i64> %wide.load336, ptr %i.nm, align 8, !tbaa !53
  store <2 x i64> %wide.load337, ptr %i.nn, align 8, !tbaa !53
  %index.next338 = add nuw i64 %index335, 4       ; 2 uses
  %i.no = icmp eq i64 %index.next338, %n.vec333
  br i1 %i.no, label %._crit_edge.us.i125, label %vector.body334, !llvm.loop !178

scalar.ph330:                                     ; preds = %scalar.ph330.preheader, %scalar.ph330
  %indvars.iv.i122 = phi i64 [ %indvars.iv.next.i123.1, %scalar.ph330 ], [ 0, %scalar.ph330.preheader ] ; 4 uses
  %niter494 = phi i64 [ %niter494.next.1, %scalar.ph330 ], [ 0, %scalar.ph330.preheader ]
  %i.np = add nuw nsw i64 %indvars.iv.i122, %i.kn ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.np
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !53 ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.i122
  store i64 %i.nr, ptr %i.ns, align 8, !tbaa !53
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.np
  store i64 %i.nr, ptr %i.nt, align 8, !tbaa !53
  %indvars.iv.next.i123 = or disjoint i64 %indvars.iv.i122, 1 ; 2 uses
  %i.nu = add nuw nsw i64 %indvars.iv.next.i123, %i.kn ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !53 ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.next.i123
  store i64 %i.nw, ptr %i.nx, align 8, !tbaa !53
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.nu
  store i64 %i.nw, ptr %i.ny, align 8, !tbaa !53
  %indvars.iv.next.i123.1 = add nuw nsw i64 %indvars.iv.i122, 2 ; 2 uses
  %niter494.next.1 = add i64 %niter494, 2         ; 2 uses
  %niter494.ncmp.1 = icmp eq i64 %niter494.next.1, %unroll_iter493
  br i1 %niter494.ncmp.1, label %._crit_edge.us.i125.loopexit.unr-lcssa, label %scalar.ph330, !llvm.loop !179

._crit_edge.us.i125.loopexit.unr-lcssa:           ; preds = %scalar.ph330
  br i1 %lcmp.mod491.not, label %._crit_edge.us.i125, label %scalar.ph330.epil.preheader

scalar.ph330.epil.preheader:                      ; preds = %._crit_edge.us.i125.loopexit.unr-lcssa, %scalar.ph330.preheader
  %indvars.iv.i122.epil.init = phi i64 [ 0, %scalar.ph330.preheader ], [ %indvars.iv.next.i123.1, %._crit_edge.us.i125.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod492)
  %i.nz = add nuw nsw i64 %indvars.iv.i122.epil.init, %i.kn ; 2 uses
  %i.oa = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.nz
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !53 ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.i122.epil.init
  store i64 %i.ob, ptr %i.oc, align 8, !tbaa !53
  %i.od = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.nz
  store i64 %i.ob, ptr %i.od, align 8, !tbaa !53
  br label %._crit_edge.us.i125

._crit_edge.us.i125:                              ; preds = %vector.body334, %scalar.ph330.epil.preheader, %._crit_edge.us.i125.loopexit.unr-lcssa
  %i.oe = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.km ; 2 uses
  %i.of = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.km
  %i.og = icmp ult ptr %i.oe, %i.nb
  br i1 %i.og, label %.preheader.us.i121, label %Abc_TtCofactor1p.exit.thread, !llvm.loop !2

Abc_TtCofactor1p.exit.thread:                     ; preds = %._crit_edge.us.i125, %bb.l
  %i.oh = icmp eq i32 %.1.lcssa, 5
  %4 = icmp sgt i32 %i.hm, 0                      ; 2 uses
  br i1 %i.oh, label %Abc_TtCofactor1p.exit.thread.thread, label %6

Abc_TtCofactor1p.exit.thread.thread:              ; preds = %Abc_TtCofactor1p.exit.thread
  br i1 %4, label %.lr.ph.i140, label %Abc_TtMux.exit

.lr.ph.i140:                                      ; preds = %scalar.ph390.prol.loopexit, %scalar.ph390, %middle.block403, %Abc_TtCofactor1p.exit.thread.thread
  %i.oi = shl nuw nsw i32 1, %.1.lcssa
  %i.oj = sext i32 %.1.lcssa to i64               ; 2 uses
  %i.ok = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.oj
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !53 ; 2 uses
  %5 = zext nneg i32 %i.oi to i64                 ; 4 uses
  %wide.trip.count51.i = zext nneg i32 %i.hm to i64 ; 6 uses
  %min.iters.check407 = icmp ult i32 %i.hm, 4
  br i1 %min.iters.check407, label %scalar.ph406.preheader, label %vector.ph408

vector.ph408:                                     ; preds = %.lr.ph.i140
  %n.vec409 = and i64 %wide.trip.count51.i, 2147483644 ; 3 uses
  %broadcast.splatinsert410 = insertelement <2 x i64> poison, i64 %i.ol, i64 0
  %broadcast.splat411 = shufflevector <2 x i64> %broadcast.splatinsert410, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert412 = insertelement <2 x i64> poison, i64 %5, i64 0
  %broadcast.splat413 = shufflevector <2 x i64> %broadcast.splatinsert412, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph408
  %index415 = phi i64 [ 0, %vector.ph408 ], [ %index.next418, %vector.body414 ] ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index415 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %wide.load416 = load <2 x i64>, ptr %i.om, align 8, !tbaa !53
  %wide.load417 = load <2 x i64>, ptr %i.on, align 8, !tbaa !53
  %i.oo = and <2 x i64> %wide.load416, %broadcast.splat411 ; 2 uses
  %i.op = and <2 x i64> %wide.load417, %broadcast.splat411 ; 2 uses
  %i.oq = shl <2 x i64> %i.oo, %broadcast.splat413
  %i.or = shl <2 x i64> %i.op, %broadcast.splat413
  %i.os = or <2 x i64> %i.oq, %i.oo
  %i.ot = or <2 x i64> %i.or, %i.op
  store <2 x i64> %i.os, ptr %i.om, align 8, !tbaa !53
  store <2 x i64> %i.ot, ptr %i.on, align 8, !tbaa !53
  %index.next418 = add nuw i64 %index415, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next418, %n.vec409
  br i1 %i.ou, label %middle.block419, label %vector.body414, !llvm.loop !180

middle.block419:                                  ; preds = %vector.body414
  %cmp.n420 = icmp eq i64 %n.vec409, %wide.trip.count51.i
  br i1 %cmp.n420, label %.lr.ph.i155, label %scalar.ph406.preheader

scalar.ph406.preheader:                           ; preds = %.lr.ph.i140, %middle.block419
  %indvars.iv48.i.ph = phi i64 [ 0, %.lr.ph.i140 ], [ %n.vec409, %middle.block419 ]
  br label %scalar.ph406

scalar.ph406:                                     ; preds = %scalar.ph406.preheader, %scalar.ph406
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %scalar.ph406 ], [ %indvars.iv48.i.ph, %scalar.ph406.preheader ] ; 2 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv48.i ; 2 uses
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !53
  %i.ox = and i64 %i.ow, %i.ol                    ; 2 uses
  %i.oy = shl i64 %i.ox, %5
  %i.oz = or i64 %i.oy, %i.ox
  store i64 %i.oz, ptr %i.ov, align 8, !tbaa !53
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %.lr.ph.i155, label %scalar.ph406, !llvm.loop !181

6:                                                ; preds = %Abc_TtCofactor1p.exit.thread
  br i1 %4, label %.preheader.lr.ph.i128, label %Abc_TtMux.exit

.preheader.lr.ph.i128:                            ; preds = %6
  %i.pa = add nsw i32 %.1.lcssa, -6               ; 3 uses
  %i.pb = shl nuw i32 1, %i.pa
  %.not.i129 = icmp eq i32 %i.pa, 31
  %i.pc = shl i32 2, %i.pa
  %i.pd = sext i32 %i.pc to i64
  br i1 %.not.i129, label %Abc_TtCofactor1.exit.thread, label %.preheader.us.preheader.i130

.preheader.us.preheader.i130:                     ; preds = %.preheader.lr.ph.i104, %.preheader.lr.ph.i128
  %i.pe = phi i64 [ %i.pd, %.preheader.lr.ph.i128 ], [ -2147483648, %.preheader.lr.ph.i104 ] ; 2 uses
  %i.pf = phi i32 [ %i.pb, %.preheader.lr.ph.i128 ], [ 1073741824, %.preheader.lr.ph.i104 ] ; 8 uses
  %.idx.i127229.pn.in = zext i32 %i.hm to i64
  %.idx.i127229.pn = shl nuw nsw i64 %.idx.i127229.pn.in, 3
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i127229.pn
  %i.ph = sext i32 %i.pf to i64                   ; 2 uses
  %smax.i131 = tail call i32 @llvm.smax.i32(i32 %i.pf, i32 1)
  %wide.trip.count.i132 = zext nneg i32 %smax.i131 to i64 ; 2 uses
  %min.iters.check345 = icmp slt i32 %i.pf, 4
  %n.vec347 = and i64 %wide.trip.count.i132, 2147483644
  %exitcond.not.i138 = icmp slt i32 %i.pf, 2
  %exitcond.not.i138.1 = icmp eq i32 %i.pf, 2
  br label %.preheader.us.i133

.preheader.us.i133:                               ; preds = %._crit_edge.us.i139, %.preheader.us.preheader.i130
  %.03643.us.i = phi ptr [ %i.ps, %._crit_edge.us.i139 ], [ %i.ak, %.preheader.us.preheader.i130 ] ; 6 uses
  %invariant.gep.i134 = getelementptr [8 x i8], ptr %.03643.us.i, i64 %i.ph ; 4 uses
  br i1 %min.iters.check345, label %scalar.ph344, label %vector.body348

vector.body348:                                   ; preds = %.preheader.us.i133, %vector.body348
  %index349 = phi i64 [ %index.next352, %vector.body348 ], [ 0, %.preheader.us.i133 ] ; 3 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.03643.us.i, i64 %index349 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %wide.load350 = load <2 x i64>, ptr %i.pi, align 8, !tbaa !53
  %wide.load351 = load <2 x i64>, ptr %i.pj, align 8, !tbaa !53
  %i.pk = getelementptr [8 x i8], ptr %invariant.gep.i134, i64 %index349 ; 2 uses
  %i.pl = getelementptr i8, ptr %i.pk, i64 16
  store <2 x i64> %wide.load350, ptr %i.pk, align 8, !tbaa !53
  store <2 x i64> %wide.load351, ptr %i.pl, align 8, !tbaa !53
  %index.next352 = add nuw i64 %index349, 4       ; 2 uses
  %i.pm = icmp eq i64 %index.next352, %n.vec347
  br i1 %i.pm, label %._crit_edge.us.i139, label %vector.body348, !llvm.loop !182

scalar.ph344:                                     ; preds = %.preheader.us.i133
  %i.pn = load i64, ptr %.03643.us.i, align 8, !tbaa !53
  store i64 %i.pn, ptr %invariant.gep.i134, align 8, !tbaa !53
  br i1 %exitcond.not.i138, label %._crit_edge.us.i139, label %scalar.ph344.1

scalar.ph344.1:                                   ; preds = %scalar.ph344
  %i.po = getelementptr inbounds nuw i8, ptr %.03643.us.i, i64 8
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !53
  %gep.i136.1 = getelementptr i8, ptr %invariant.gep.i134, i64 8
  store i64 %i.pp, ptr %gep.i136.1, align 8, !tbaa !53
  br i1 %exitcond.not.i138.1, label %._crit_edge.us.i139, label %scalar.ph344.2

scalar.ph344.2:                                   ; preds = %scalar.ph344.1
  %i.pq = getelementptr inbounds nuw i8, ptr %.03643.us.i, i64 16
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !53
  %gep.i136.2 = getelementptr i8, ptr %invariant.gep.i134, i64 16
  store i64 %i.pr, ptr %gep.i136.2, align 8, !tbaa !53
  br label %._crit_edge.us.i139

._crit_edge.us.i139:                              ; preds = %vector.body348, %scalar.ph344, %scalar.ph344.1, %scalar.ph344.2
  %i.ps = getelementptr inbounds [8 x i8], ptr %.03643.us.i, i64 %i.pe ; 2 uses
  %i.pt = icmp ult ptr %i.ps, %i.pg
  br i1 %i.pt, label %.preheader.us.i133, label %.preheader.us.preheader.i144, !llvm.loop !4

.lr.ph.i155:                                      ; preds = %scalar.ph406, %middle.block419
  %i.pu = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.oj
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !53 ; 2 uses
  %min.iters.check423 = icmp ult i32 %i.hm, 4
  br i1 %min.iters.check423, label %scalar.ph422.preheader, label %vector.ph424

vector.ph424:                                     ; preds = %.lr.ph.i155
  %n.vec425 = and i64 %wide.trip.count51.i, 2147483644 ; 3 uses
  %broadcast.splatinsert426 = insertelement <2 x i64> poison, i64 %i.pv, i64 0
  %broadcast.splat427 = shufflevector <2 x i64> %broadcast.splatinsert426, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert428 = insertelement <2 x i64> poison, i64 %5, i64 0
  %broadcast.splat429 = shufflevector <2 x i64> %broadcast.splatinsert428, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph424
  %index431 = phi i64 [ 0, %vector.ph424 ], [ %index.next434, %vector.body430 ] ; 2 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index431 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16 ; 2 uses
  %wide.load432 = load <2 x i64>, ptr %i.pw, align 8, !tbaa !53
  %wide.load433 = load <2 x i64>, ptr %i.px, align 8, !tbaa !53
  %i.py = and <2 x i64> %wide.load432, %broadcast.splat427 ; 2 uses
  %i.pz = and <2 x i64> %wide.load433, %broadcast.splat427 ; 2 uses
  %i.qa = lshr <2 x i64> %i.py, %broadcast.splat429
  %i.qb = lshr <2 x i64> %i.pz, %broadcast.splat429
  %i.qc = or <2 x i64> %i.qa, %i.py
  %i.qd = or <2 x i64> %i.qb, %i.pz
  store <2 x i64> %i.qc, ptr %i.pw, align 8, !tbaa !53
  store <2 x i64> %i.qd, ptr %i.px, align 8, !tbaa !53
  %index.next434 = add nuw i64 %index431, 4       ; 2 uses
  %i.qe = icmp eq i64 %index.next434, %n.vec425
  br i1 %i.qe, label %middle.block435, label %vector.body430, !llvm.loop !183

middle.block435:                                  ; preds = %vector.body430
  %cmp.n436 = icmp eq i64 %n.vec425, %wide.trip.count51.i
  br i1 %cmp.n436, label %Abc_TtCofactor1.exit.thread, label %scalar.ph422.preheader

scalar.ph422.preheader:                           ; preds = %.lr.ph.i155, %middle.block435
  %indvars.iv48.i157.ph = phi i64 [ 0, %.lr.ph.i155 ], [ %n.vec425, %middle.block435 ]
  br label %scalar.ph422

scalar.ph422:                                     ; preds = %scalar.ph422.preheader, %scalar.ph422
  %indvars.iv48.i157 = phi i64 [ %indvars.iv.next49.i158, %scalar.ph422 ], [ %indvars.iv48.i157.ph, %scalar.ph422.preheader ] ; 2 uses
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv48.i157 ; 2 uses
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !53
  %i.qh = and i64 %i.qg, %i.pv                    ; 2 uses
  %i.qi = lshr i64 %i.qh, %5
  %i.qj = or i64 %i.qi, %i.qh
  store i64 %i.qj, ptr %i.qf, align 8, !tbaa !53
  %indvars.iv.next49.i158 = add nuw nsw i64 %indvars.iv48.i157, 1 ; 2 uses
  %exitcond52.not.i159 = icmp eq i64 %indvars.iv.next49.i158, %wide.trip.count51.i
  br i1 %exitcond52.not.i159, label %Abc_TtCofactor1.exit.thread, label %scalar.ph422, !llvm.loop !184

.preheader.us.preheader.i144:                     ; preds = %._crit_edge.us.i139
  %i.qk = zext nneg i32 %i.hm to i64              ; 2 uses
  %.idx.i141 = shl nuw nsw i64 %i.qk, 3
  %i.ql = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i141
  %min.iters.check359 = icmp slt i32 %i.pf, 4
  %n.vec361 = and i64 %wide.trip.count.i132, 2147483644
  %exitcond.not.i153 = icmp slt i32 %i.pf, 2
  %exitcond.not.i153.1 = icmp eq i32 %i.pf, 2
  br label %.preheader.us.i147

.preheader.us.i147:                               ; preds = %._crit_edge.us.i154, %.preheader.us.preheader.i144
  %.03643.us.i148 = phi ptr [ %i.qw, %._crit_edge.us.i154 ], [ %i.an, %.preheader.us.preheader.i144 ] ; 6 uses
  %invariant.gep.i149 = getelementptr [8 x i8], ptr %.03643.us.i148, i64 %i.ph ; 4 uses
  br i1 %min.iters.check359, label %scalar.ph358, label %vector.body362

vector.body362:                                   ; preds = %.preheader.us.i147, %vector.body362
  %index363 = phi i64 [ %index.next366, %vector.body362 ], [ 0, %.preheader.us.i147 ] ; 3 uses
  %i.qm = getelementptr [8 x i8], ptr %invariant.gep.i149, i64 %index363 ; 2 uses
  %i.qn = getelementptr i8, ptr %i.qm, i64 16
  %wide.load364 = load <2 x i64>, ptr %i.qm, align 8, !tbaa !53
  %wide.load365 = load <2 x i64>, ptr %i.qn, align 8, !tbaa !53
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %.03643.us.i148, i64 %index363 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store <2 x i64> %wide.load364, ptr %i.qo, align 8, !tbaa !53
  store <2 x i64> %wide.load365, ptr %i.qp, align 8, !tbaa !53
  %index.next366 = add nuw i64 %index363, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.qq, label %._crit_edge.us.i154, label %vector.body362, !llvm.loop !185

scalar.ph358:                                     ; preds = %.preheader.us.i147
  %i.qr = load i64, ptr %invariant.gep.i149, align 8, !tbaa !53
  store i64 %i.qr, ptr %.03643.us.i148, align 8, !tbaa !53
  br i1 %exitcond.not.i153, label %._crit_edge.us.i154, label %scalar.ph358.1

scalar.ph358.1:                                   ; preds = %scalar.ph358
  %gep.i151.1 = getelementptr i8, ptr %invariant.gep.i149, i64 8
  %i.qs = load i64, ptr %gep.i151.1, align 8, !tbaa !53
  %i.qt = getelementptr inbounds nuw i8, ptr %.03643.us.i148, i64 8
  store i64 %i.qs, ptr %i.qt, align 8, !tbaa !53
  br i1 %exitcond.not.i153.1, label %._crit_edge.us.i154, label %scalar.ph358.2

scalar.ph358.2:                                   ; preds = %scalar.ph358.1
  %gep.i151.2 = getelementptr i8, ptr %invariant.gep.i149, i64 16
  %i.qu = load i64, ptr %gep.i151.2, align 8, !tbaa !53
  %i.qv = getelementptr inbounds nuw i8, ptr %.03643.us.i148, i64 16
  store i64 %i.qu, ptr %i.qv, align 8, !tbaa !53
  br label %._crit_edge.us.i154

._crit_edge.us.i154:                              ; preds = %vector.body362, %scalar.ph358, %scalar.ph358.1, %scalar.ph358.2
  %i.qw = getelementptr inbounds [8 x i8], ptr %.03643.us.i148, i64 %i.pe ; 2 uses
  %i.qx = icmp ult ptr %i.qw, %i.ql
  br i1 %i.qx, label %.preheader.us.i147, label %Abc_TtCofactor1.exit, !llvm.loop !3

Abc_TtCofactor1.exit.thread:                      ; preds = %scalar.ph422, %middle.block435, %.preheader.lr.ph.i128, %Abc_TtCofactor0p.exit.thread174
  %i.qy = sext i32 %.1.lcssa to i64
  %.pre = zext nneg i32 %i.hm to i64
  br label %.lr.ph.preheader.i160

Abc_TtCofactor1.exit:                             ; preds = %._crit_edge.us.i154
  %i.qz = zext nneg i32 %.1.lcssa to i64
  br label %.lr.ph.preheader.i160

.lr.ph.preheader.i160:                            ; preds = %Abc_TtCofactor1.exit, %Abc_TtCofactor1.exit.thread
  %wide.trip.count.i161.pre-phi = phi i64 [ %i.qk, %Abc_TtCofactor1.exit ], [ %.pre, %Abc_TtCofactor1.exit.thread ] ; 6 uses
  %.pn = phi i64 [ %i.qz, %Abc_TtCofactor1.exit ], [ %i.qy, %Abc_TtCofactor1.exit.thread ]
  %.in = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.pn
  %i.ra = load ptr, ptr %.in, align 8, !tbaa !51  ; 5 uses
  %min.iters.check445 = icmp samesign ult i64 %wide.trip.count.i161.pre-phi, 12
  br i1 %min.iters.check445, label %.lr.ph.i162.preheader, label %vector.memcheck438

vector.memcheck438:                               ; preds = %.lr.ph.preheader.i160
  %i.rb = ptrtoaddr ptr %i.ra to i64
  %i.rc = sub i64 %i.rb, %i.ai
  %diff.check439 = icmp ugt i64 %i.rc, -32
  %i.rd = sub i64 %i.ao, %i.ai
  %diff.check440 = icmp ugt i64 %i.rd, -32
  %conflict.rdx441 = or i1 %diff.check439, %diff.check440
  %i.re = sub i64 %i.al, %i.ai
  %diff.check442 = icmp ugt i64 %i.re, -32
  %conflict.rdx443 = or i1 %conflict.rdx441, %diff.check442
  br i1 %conflict.rdx443, label %.lr.ph.i162.preheader, label %vector.ph446

vector.ph446:                                     ; preds = %vector.memcheck438
  %n.vec447 = and i64 %wide.trip.count.i161.pre-phi, 2147483644 ; 3 uses
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph446
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next456, %vector.body448 ] ; 5 uses
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %index449 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %wide.load450 = load <2 x i64>, ptr %i.rf, align 8, !tbaa !53 ; 2 uses
  %wide.load451 = load <2 x i64>, ptr %i.rg, align 8, !tbaa !53 ; 2 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index449 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %wide.load452 = load <2 x i64>, ptr %i.rh, align 8, !tbaa !53
  %wide.load453 = load <2 x i64>, ptr %i.ri, align 8, !tbaa !53
  %i.rj = and <2 x i64> %wide.load452, %wide.load450
  %i.rk = and <2 x i64> %wide.load453, %wide.load451
  %i.rl = xor <2 x i64> %wide.load450, splat (i64 -1)
  %i.rm = xor <2 x i64> %wide.load451, splat (i64 -1)
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index449 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %wide.load454 = load <2 x i64>, ptr %i.rn, align 8, !tbaa !53
  %wide.load455 = load <2 x i64>, ptr %i.ro, align 8, !tbaa !53
  %i.rp = and <2 x i64> %wide.load454, %i.rl
  %i.rq = and <2 x i64> %wide.load455, %i.rm
  %i.rr = or <2 x i64> %i.rp, %i.rj
  %i.rs = or <2 x i64> %i.rq, %i.rk
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index449 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  store <2 x i64> %i.rr, ptr %i.rt, align 8, !tbaa !53
  store <2 x i64> %i.rs, ptr %i.ru, align 8, !tbaa !53
  %index.next456 = add nuw i64 %index449, 4       ; 2 uses
  %i.rv = icmp eq i64 %index.next456, %n.vec447
  br i1 %i.rv, label %middle.block457, label %vector.body448, !llvm.loop !186

middle.block457:                                  ; preds = %vector.body448
  %cmp.n458 = icmp eq i64 %wide.trip.count.i161.pre-phi, %n.vec447
  br i1 %cmp.n458, label %Abc_TtMux.exit, label %.lr.ph.i162.preheader

.lr.ph.i162.preheader:                            ; preds = %vector.memcheck438, %.lr.ph.preheader.i160, %middle.block457
  %indvars.iv.i163.ph = phi i64 [ 0, %vector.memcheck438 ], [ 0, %.lr.ph.preheader.i160 ], [ %n.vec447, %middle.block457 ] ; 7 uses
  %.neg = or disjoint i64 %indvars.iv.i163.ph, 1
  %xtraiter501 = and i64 %wide.trip.count.i161.pre-phi, 1
  %lcmp.mod502.not = icmp eq i64 %xtraiter501, 0
  br i1 %lcmp.mod502.not, label %.lr.ph.i162.prol.loopexit, label %.lr.ph.i162.prol

.lr.ph.i162.prol:                                 ; preds = %.lr.ph.i162.preheader
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %indvars.iv.i163.ph
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !53 ; 2 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i163.ph
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !53
  %i.sa = and i64 %i.rz, %i.rx
  %i.sb = xor i64 %i.rx, -1
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i163.ph
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !53
  %i.se = and i64 %i.sd, %i.sb
  %i.sf = or i64 %i.se, %i.sa
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i163.ph
  store i64 %i.sf, ptr %i.sg, align 8, !tbaa !53
  %indvars.iv.next.i164.prol = or disjoint i64 %indvars.iv.i163.ph, 1
  br label %.lr.ph.i162.prol.loopexit

.lr.ph.i162.prol.loopexit:                        ; preds = %.lr.ph.i162.prol, %.lr.ph.i162.preheader
  %indvars.iv.i163.unr = phi i64 [ %indvars.iv.i163.ph, %.lr.ph.i162.preheader ], [ %indvars.iv.next.i164.prol, %.lr.ph.i162.prol ]
  %i.sh = icmp eq i64 %wide.trip.count.i161.pre-phi, %.neg
  br i1 %i.sh, label %Abc_TtMux.exit, label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %.lr.ph.i162.prol.loopexit, %.lr.ph.i162
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i164.1, %.lr.ph.i162 ], [ %indvars.iv.i163.unr, %.lr.ph.i162.prol.loopexit ] ; 6 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %indvars.iv.i163
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !53 ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i163
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !53
  %i.sm = and i64 %i.sl, %i.sj
  %i.sn = xor i64 %i.sj, -1
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i163
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !53
  %i.sq = and i64 %i.sp, %i.sn
  %i.sr = or i64 %i.sq, %i.sm
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i163
  store i64 %i.sr, ptr %i.ss, align 8, !tbaa !53
  %indvars.iv.next.i164 = add nuw nsw i64 %indvars.iv.i163, 1 ; 4 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %indvars.iv.next.i164
  %i.su = load i64, ptr %i.st, align 8, !tbaa !53 ; 2 uses
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i164
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !53
  %i.sx = and i64 %i.sw, %i.su
  %i.sy = xor i64 %i.su, -1
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i164
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !53
  %i.tb = and i64 %i.ta, %i.sy
  %i.tc = or i64 %i.tb, %i.sx
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i164
  store i64 %i.tc, ptr %i.td, align 8, !tbaa !53
  %indvars.iv.next.i164.1 = add nuw nsw i64 %indvars.iv.i163, 2 ; 2 uses
  %exitcond.not.i165.1 = icmp eq i64 %indvars.iv.next.i164.1, %wide.trip.count.i161.pre-phi
  br i1 %exitcond.not.i165.1, label %Abc_TtMux.exit, label %.lr.ph.i162, !llvm.loop !187

Abc_TtMux.exit:                                   ; preds = %.lr.ph.i162.prol.loopexit, %.lr.ph.i162, %middle.block457, %bb.k, %6, %Abc_TtCofactor1p.exit.thread.thread
  %i.te = load i32, ptr %i.j, align 4
  %i.tf = and i32 %i.te, 15
  %i.tg = add nsw i32 %i.tf, -1
  %i.th = call i32 @Abc_TtCanonicizePerm(ptr noundef %i.ah, i32 noundef %i.tg, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.ti = load i32, ptr %i.j, align 4
  %i.tj = and i32 %i.ti, 15                       ; 2 uses
  %i.tk = call i32 @llvm.umax.i32(i32 %i.tj, i32 7) ; 2 uses
  %i.tl = add nsw i32 %i.tk, -1
  %i.tm = load i32, ptr %0, align 8, !tbaa !30    ; 3 uses
  %i.tn = icmp eq i32 %i.tl, %i.tm
  br i1 %i.tn, label %Abc_TtStretch6.exit, label %bb.m

bb.m:                                             ; preds = %Abc_TtMux.exit
  %i.to = icmp samesign ult i32 %i.tj, 8          ; 2 uses
  %i.tp = add nsw i32 %i.tk, -7                   ; 2 uses
  %i.tq = shl nuw nsw i32 1, %i.tp
  %i.tr = select i1 %i.to, i32 1, i32 %i.tq       ; 4 uses
  %i.ts = icmp slt i32 %i.tm, 7
  %i.tt = add nsw i32 %i.tm, -6
  %i.tu = shl nuw i32 1, %i.tt
  %i.tv = select i1 %i.ts, i32 1, i32 %i.tu       ; 3 uses
  %i.tw = icmp ne i32 %i.tr, %i.tv
  %i.tx = icmp sgt i32 %i.tv, 0
  %or.cond.i = and i1 %i.tx, %i.tw
  br i1 %or.cond.i, label %.preheader.preheader.i, label %Abc_TtStretch6.exit

.preheader.preheader.i:                           ; preds = %bb.m
  %i.ty = zext nneg i32 %i.tr to i64              ; 4 uses
  %i.tz = zext nneg i32 %i.tv to i64
  %min.iters.check463 = icmp samesign ult i32 %i.tr, 4
  %i.ua = select i1 %i.to, i32 0, i32 %i.tp
  %i.ub = zext i32 %i.ua to i64
  %i.uc = add nuw nsw i64 %i.ub, 3
  %n.vec465 = and i64 %i.ty, 2147483644
  %xtraiter504 = and i64 %i.ty, 3                 ; 3 uses
  %i.ud = icmp samesign ult i32 %i.tr, 4
  %unroll_iter508 = and i64 %i.ty, 2147483644
  %lcmp.mod506.not = icmp eq i64 %xtraiter504, 0
  %lcmp.mod507 = icmp ne i64 %xtraiter504, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block471, %.preheader.preheader.i
  %indvar = phi i64 [ %indvar.next, %middle.block471 ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %middle.block471 ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %invariant.gep.i166 = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv26.i ; 6 uses
  br i1 %min.iters.check463, label %scalar.ph462.preheader, label %vector.memcheck460

scalar.ph462.preheader:                           ; preds = %vector.memcheck460, %.preheader.i
  br i1 %i.ud, label %scalar.ph462.epil.preheader, label %scalar.ph462

vector.memcheck460:                               ; preds = %.preheader.i
  %i.ue = shl i64 %indvar, %i.uc
  %i.uf = add i64 %i.ue, -1
  %diff.check461 = icmp ult i64 %i.uf, 31
  br i1 %diff.check461, label %scalar.ph462.preheader, label %vector.body466

vector.body466:                                   ; preds = %vector.memcheck460, %vector.body466
  %index467 = phi i64 [ %index.next470, %vector.body466 ], [ 0, %vector.memcheck460 ] ; 3 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index467 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %wide.load468 = load <2 x i64>, ptr %i.ug, align 8, !tbaa !53
  %wide.load469 = load <2 x i64>, ptr %i.uh, align 8, !tbaa !53
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i166, i64 %index467 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  store <2 x i64> %wide.load468, ptr %i.ui, align 8, !tbaa !53
  store <2 x i64> %wide.load469, ptr %i.uj, align 8, !tbaa !53
  %index.next470 = add nuw i64 %index467, 4       ; 2 uses
  %i.uk = icmp eq i64 %index.next470, %n.vec465
  br i1 %i.uk, label %middle.block471, label %vector.body466, !llvm.loop !188

scalar.ph462:                                     ; preds = %scalar.ph462.preheader, %scalar.ph462
  %indvars.iv.i167 = phi i64 [ %indvars.iv.next.i169.3, %scalar.ph462 ], [ 0, %scalar.ph462.preheader ] ; 6 uses
  %niter509 = phi i64 [ %niter509.next.3, %scalar.ph462 ], [ 0, %scalar.ph462.preheader ]
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i167
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !53
  %gep.i168 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i166, i64 %indvars.iv.i167
  store i64 %i.um, ptr %gep.i168, align 8, !tbaa !53
  %indvars.iv.next.i169 = or disjoint i64 %indvars.iv.i167, 1 ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i169
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !53
  %gep.i168.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i166, i64 %indvars.iv.next.i169
  store i64 %i.uo, ptr %gep.i168.1, align 8, !tbaa !53
  %indvars.iv.next.i169.1 = or disjoint i64 %indvars.iv.i167, 2 ; 2 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i169.1
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !53
  %gep.i168.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i166, i64 %indvars.iv.next.i169.1
  store i64 %i.uq, ptr %gep.i168.2, align 8, !tbaa !53
  %indvars.iv.next.i169.2 = or disjoint i64 %indvars.iv.i167, 3 ; 2 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i169.2
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !53
  %gep.i168.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i166, i64 %indvars.iv.next.i169.2
  store i64 %i.us, ptr %gep.i168.3, align 8, !tbaa !53
  %indvars.iv.next.i169.3 = add nuw nsw i64 %indvars.iv.i167, 4 ; 2 uses
  %niter509.next.3 = add i64 %niter509, 4         ; 2 uses
  %niter509.ncmp.3 = icmp eq i64 %niter509.next.3, %unroll_iter508
  br i1 %niter509.ncmp.3, label %middle.block471.loopexit.unr-lcssa, label %scalar.ph462, !llvm.loop !189

middle.block471.loopexit.unr-lcssa:               ; preds = %scalar.ph462
  br i1 %lcmp.mod506.not, label %middle.block471, label %scalar.ph462.epil.preheader

scalar.ph462.epil.preheader:                      ; preds = %middle.block471.loopexit.unr-lcssa, %scalar.ph462.preheader
  %indvars.iv.i167.epil.init = phi i64 [ 0, %scalar.ph462.preheader ], [ %indvars.iv.next.i169.3, %middle.block471.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod507)
  br label %scalar.ph462.epil

scalar.ph462.epil:                                ; preds = %scalar.ph462.epil, %scalar.ph462.epil.preheader
  %indvars.iv.i167.epil = phi i64 [ %indvars.iv.next.i169.epil, %scalar.ph462.epil ], [ %indvars.iv.i167.epil.init, %scalar.ph462.epil.preheader ] ; 3 uses
  %epil.iter505 = phi i64 [ %epil.iter505.next, %scalar.ph462.epil ], [ 0, %scalar.ph462.epil.preheader ]
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i167.epil
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !53
  %gep.i168.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i166, i64 %indvars.iv.i167.epil
  store i64 %i.uu, ptr %gep.i168.epil, align 8, !tbaa !53
  %indvars.iv.next.i169.epil = add nuw nsw i64 %indvars.iv.i167.epil, 1
  %epil.iter505.next = add i64 %epil.iter505, 1   ; 2 uses
  %epil.iter505.cmp.not = icmp eq i64 %epil.iter505.next, %xtraiter504
  br i1 %epil.iter505.cmp.not, label %middle.block471, label %scalar.ph462.epil, !llvm.loop !190

middle.block471:                                  ; preds = %vector.body466, %middle.block471.loopexit.unr-lcssa, %scalar.ph462.epil
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, %i.ty ; 2 uses
  %i.uv = icmp samesign ult i64 %indvars.iv.next27.i, %i.tz
  %indvar.next = add i64 %indvar, 1
  br i1 %i.uv, label %.preheader.i, label %Abc_TtStretch6.exit, !llvm.loop !8

Abc_TtStretch6.exit:                              ; preds = %middle.block471, %Abc_TtMux.exit, %bb.m
  %i.uw = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.ux = call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.uw, ptr noundef %i.ah) ; 4 uses
  %i.uy = load i32, ptr %i.e, align 4, !tbaa !33
  %i.uz = icmp slt i32 %i.ux, %i.uy
  br i1 %i.uz, label %bb.u, label %bb.n

bb.n:                                             ; preds = %Abc_TtStretch6.exit
  %i.va = load i32, ptr %i.j, align 4
  %i.vb = add i32 %i.va, 15
  %i.vc = load i32, ptr %i.h, align 4
  %i.vd = and i32 %i.vb, 15                       ; 2 uses
  %i.ve = and i32 %i.vc, -16
  %i.vf = or disjoint i32 %i.ve, %i.vd            ; 2 uses
  store i32 %i.vf, ptr %i.h, align 4
  %i.vg = load i32, ptr %i.j, align 4
  %i.vh = and i32 %i.vg, 240
  %i.vi = and i32 %i.vf, -241
  %i.vj = or disjoint i32 %i.vi, %i.vh
  store i32 %i.vj, ptr %i.h, align 4
  %i.vk = call i32 @Gem_GroupsDerive(ptr noundef %i.ah, i32 noundef %i.vd, ptr noundef %i.ak, ptr noundef %i.an)
  %i.vl = load i32, ptr %i.h, align 4
  %i.vm = shl i32 %i.vk, 16
  %i.vn = and i32 %i.vl, 255
  %i.vo = or disjoint i32 %i.vn, %i.vm
  %i.vp = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %1, ptr %i.vp, align 4, !tbaa !27
  %i.vq = shl i32 %3, 12
  %i.vr = shl i32 %2, 8
  %i.vs = or i32 %i.vq, %i.vr
  %i.vt = and i32 %i.vs, 65280
  %i.vu = or disjoint i32 %i.vo, %i.vt
  store i32 %i.vu, ptr %i.h, align 4
  %i.vv = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.vw = sext i32 %i.ux to i64
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.vv, i64 %i.vw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.vy = load i32, ptr %i.vx, align 4            ; 5 uses
  %i.vz = lshr i32 %i.vy, 16
  store i32 %i.vz, ptr %i.a, align 4, !tbaa !24
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !25
  %.not.i171 = icmp eq i32 %i.wb, 0
  br i1 %.not.i171, label %Gem_PrintNode.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !27
  %i.we = and i32 %i.vy, 15
  %i.wf = lshr i32 %i.vy, 4
  %i.wg = and i32 %i.wf, 15
  %i.wh = lshr i32 %i.vy, 8
  %i.wi = and i32 %i.wh, 15
  %i.wj = lshr i32 %i.vy, 12
  %i.wk = and i32 %i.wj, 15
  %i.wl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ux, ptr noundef nonnull @.str.12, i32 noundef %i.wd, i32 noundef %i.we, i32 noundef %i.wg, i32 noundef %i.wi, i32 noundef %i.wk) ; 0 uses
  %i.wm = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.wn = load i32, ptr %0, align 8, !tbaa !30
  call void @Extra_PrintBinary2(ptr noundef %i.wm, ptr noundef nonnull %i.a, i32 noundef %i.wn) #22
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %Gem_PrintNode.exit

Gem_PrintNode.exit:                               ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.wo = call i32 @Gem_FuncCheckMajority(ptr noundef nonnull %0, i32 noundef %i.ux) ; 0 uses
  %i.wp = load i32, ptr %i.e, align 4, !tbaa !33
  %i.wq = add nsw i32 %i.wp, 1                    ; 5 uses
  store i32 %i.wq, ptr %i.e, align 4, !tbaa !33
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !32
  %i.wt = icmp eq i32 %i.wq, %i.ws
  br i1 %i.wt, label %bb.p, label %bb.u

bb.p:                                             ; preds = %Gem_PrintNode.exit
  %i.wu = shl nsw i32 %i.wq, 1                    ; 4 uses
  %i.wv = icmp eq i32 %i.wq, 2147483647
  br i1 %i.wv, label %bb.q, label %bb.r
end_hunk_1
