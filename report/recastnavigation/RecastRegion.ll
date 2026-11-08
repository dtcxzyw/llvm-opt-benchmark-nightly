Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastRegion?download=true
inline.NumInlined: 580
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Z19rcBuildLayerRegionsP9rcContextR20rcCompactHeightfieldii:bb.a

bb.y:                                             ; preds = %bb.ag, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.us.i
  %indvars.iv.i258 = phi i64 [ %indvars.iv.next.i259, %bb.ag ], [ 0, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.us.i ] ; 4 uses
  %i.to = load i32, ptr %i.tj, align 4
  %i.tp = and i32 %i.to, 16777215
  %i.tq = trunc i64 %indvars.iv.i258 to i32
  %i.tr = mul i32 %i.tq, 6
  %i.ts = lshr i32 %i.tp, %i.tr
  %i.tt = and i32 %i.ts, 63                       ; 2 uses
  %.not224.us.i = icmp eq i32 %i.tt, 63
  br i1 %.not224.us.i, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetXiE6offset, i64 %indvars.iv.i258
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !86
  %i.tw = add nsw i32 %i.tv, %i.ra
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetYiE6offset, i64 %indvars.iv.i258
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !86
  %i.tz = add nsw i32 %i.ty, %i.qq
  %i.ua = load ptr, ptr %i.ql, align 8, !tbaa !88
  %i.ub = mul nsw i32 %i.tz, %i.pt
  %i.uc = add nsw i32 %i.tw, %i.ub
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4
  %i.ug = and i32 %i.uf, 16777215
  %i.uh = add nuw nsw i32 %i.ug, %i.tt
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ui
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !71 ; 4 uses
  %i.ul = zext i16 %i.uk to i32                   ; 3 uses
  %i.um = add i16 %i.uk, -1
  %or.cond229.us.i = icmp uge i16 %i.um, %.1175.lcssa
  %.not227.us.i = icmp eq i16 %i.uk, %i.re
  %or.cond230.us.i = or i1 %.not227.us.i, %or.cond229.us.i
  br i1 %or.cond230.us.i, label %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.un = load i64, ptr %i.tk, align 8, !tbaa !105 ; 5 uses
  %i.uo = icmp sgt i64 %i.un, 0
  br i1 %i.uo, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.aa
  %i.up = load ptr, ptr %i.tl, align 8, !tbaa !85
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.ac ] ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %indvars.iv.i.us.i
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !86
  %i.us = icmp eq i32 %i.ur, %i.ul
  br i1 %i.us, label %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %i.un
  br i1 %exitcond.not.i.us.i, label %._crit_edge.i.us.i, label %bb.ab

._crit_edge.i.us.i:                               ; preds = %bb.ac, %bb.aa
  %i.ut = load i64, ptr %i.tm, align 8, !tbaa !106 ; 3 uses
  %i.uu = icmp slt i64 %i.un, %i.ut
  br i1 %i.uu, label %bb.ae, label %bb.ad, !prof !107

bb.ad:                                            ; preds = %._crit_edge.i.us.i
  %i.uv = add nsw i64 %i.ut, 1
  %i.uw = shl nsw i64 %i.ut, 1
  %..i.i.i.us.i = call i64 @llvm.smax.i64(i64 %i.uw, i64 %i.uv) ; 2 uses
  %i.ux = shl i64 %..i.i.i.us.i, 2
  %i.uy = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ux, i32 noundef 1) #8 ; 10 uses
  %.not.i273.us.i = icmp ne ptr %i.uy, null
  %.pre.i = load i64, ptr %i.tk, align 8, !tbaa !105 ; 9 uses
  %.pre474.i.a = load ptr, ptr %i.tl, align 8, !tbaa !85 ; 8 uses
  %i.uz = icmp sgt i64 %.pre.i, 0
  %or.cond.i = select i1 %.not.i273.us.i, i1 %i.uz, i1 false
  br i1 %or.cond.i, label %.lr.ph.i.i274.us.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i

.lr.ph.i.i274.us.i.preheader:                     ; preds = %bb.ad
  %.pre474.i788 = ptrtoaddr ptr %.pre474.i.a to i64
  %i.va = ptrtoaddr ptr %i.uy to i64
  %min.iters.check790 = icmp ult i64 %.pre.i, 8
  %i.vb = sub i64 %.pre474.i788, %i.va
  %diff.check792 = icmp ugt i64 %i.vb, -32
  %or.cond901 = select i1 %min.iters.check790, i1 true, i1 %diff.check792
  br i1 %or.cond901, label %.lr.ph.i.i274.us.i.preheader913, label %vector.ph793

vector.ph793:                                     ; preds = %.lr.ph.i.i274.us.i.preheader
  %n.vec794 = and i64 %.pre.i, 9223372036854775800 ; 3 uses
  br label %vector.body795

vector.body795:                                   ; preds = %vector.body795, %vector.ph793
  %index796 = phi i64 [ 0, %vector.ph793 ], [ %index.next799, %vector.body795 ] ; 3 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %index796 ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %index796 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %wide.load797 = load <4 x i32>, ptr %i.vd, align 4, !tbaa !86
  %wide.load798 = load <4 x i32>, ptr %i.ve, align 4, !tbaa !86
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  store <4 x i32> %wide.load797, ptr %i.vc, align 4, !tbaa !86
  store <4 x i32> %wide.load798, ptr %i.vf, align 4, !tbaa !86
  %index.next799 = add nuw i64 %index796, 8       ; 2 uses
  %i.vg = icmp eq i64 %index.next799, %n.vec794
  br i1 %i.vg, label %middle.block800, label %vector.body795, !llvm.loop !276

middle.block800:                                  ; preds = %vector.body795
  %cmp.n801 = icmp eq i64 %.pre.i, %n.vec794
  br i1 %cmp.n801, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i, label %.lr.ph.i.i274.us.i.preheader913

.lr.ph.i.i274.us.i.preheader913:                  ; preds = %.lr.ph.i.i274.us.i.preheader, %middle.block800
  %.07.i.i275.us.i.ph = phi i64 [ 0, %.lr.ph.i.i274.us.i.preheader ], [ %n.vec794, %middle.block800 ] ; 3 uses
  %xtraiter923 = and i64 %.pre.i, 3               ; 2 uses
  %lcmp.mod924.not = icmp eq i64 %xtraiter923, 0
  br i1 %lcmp.mod924.not, label %.lr.ph.i.i274.us.i.prol.loopexit, label %.lr.ph.i.i274.us.i.prol

.lr.ph.i.i274.us.i.prol:                          ; preds = %.lr.ph.i.i274.us.i.preheader913, %.lr.ph.i.i274.us.i.prol
  %.07.i.i275.us.i.prol = phi i64 [ %i.vk, %.lr.ph.i.i274.us.i.prol ], [ %.07.i.i275.us.i.ph, %.lr.ph.i.i274.us.i.preheader913 ] ; 3 uses
  %prol.iter925 = phi i64 [ %prol.iter925.next, %.lr.ph.i.i274.us.i.prol ], [ 0, %.lr.ph.i.i274.us.i.preheader913 ]
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %.07.i.i275.us.i.prol
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %.07.i.i275.us.i.prol
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !86
  store i32 %i.vj, ptr %i.vh, align 4, !tbaa !86
  %i.vk = add nuw nsw i64 %.07.i.i275.us.i.prol, 1 ; 2 uses
  %prol.iter925.next = add i64 %prol.iter925, 1   ; 2 uses
  %prol.iter925.cmp.not = icmp eq i64 %prol.iter925.next, %xtraiter923
  br i1 %prol.iter925.cmp.not, label %.lr.ph.i.i274.us.i.prol.loopexit, label %.lr.ph.i.i274.us.i.prol, !llvm.loop !277

.lr.ph.i.i274.us.i.prol.loopexit:                 ; preds = %.lr.ph.i.i274.us.i.prol, %.lr.ph.i.i274.us.i.preheader913
  %.07.i.i275.us.i.unr = phi i64 [ %.07.i.i275.us.i.ph, %.lr.ph.i.i274.us.i.preheader913 ], [ %i.vk, %.lr.ph.i.i274.us.i.prol ]
  %i.vl = sub nsw i64 %.07.i.i275.us.i.ph, %.pre.i
  %i.vm = icmp ugt i64 %i.vl, -4
  br i1 %i.vm, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i, label %.lr.ph.i.i274.us.i

.lr.ph.i.i274.us.i:                               ; preds = %.lr.ph.i.i274.us.i.prol.loopexit, %.lr.ph.i.i274.us.i
  %.07.i.i275.us.i = phi i64 [ %i.wc, %.lr.ph.i.i274.us.i ], [ %.07.i.i275.us.i.unr, %.lr.ph.i.i274.us.i.prol.loopexit ] ; 6 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %.07.i.i275.us.i
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %.07.i.i275.us.i
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !86
  store i32 %i.vp, ptr %i.vn, align 4, !tbaa !86
  %i.vq = add nuw nsw i64 %.07.i.i275.us.i, 1     ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.vq
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %i.vq
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !86
  store i32 %i.vt, ptr %i.vr, align 4, !tbaa !86
  %i.vu = add nuw nsw i64 %.07.i.i275.us.i, 2     ; 2 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.vu
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %i.vu
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !86
  store i32 %i.vx, ptr %i.vv, align 4, !tbaa !86
  %i.vy = add nuw nsw i64 %.07.i.i275.us.i, 3     ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.vy
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %i.vy
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !86
  store i32 %i.wb, ptr %i.vz, align 4, !tbaa !86
  %i.wc = add nuw nsw i64 %.07.i.i275.us.i, 4     ; 2 uses
  %exitcond.not.i.i276.us.i.3 = icmp eq i64 %i.wc, %.pre.i
  br i1 %exitcond.not.i.i276.us.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i, label %.lr.ph.i.i274.us.i, !llvm.loop !278

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i: ; preds = %.lr.ph.i.i274.us.i.prol.loopexit, %.lr.ph.i.i274.us.i, %middle.block800, %bb.ad
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %.pre.i
  store i32 %i.ul, ptr %i.wd, align 4, !tbaa !86
  %i.we = add nsw i64 %.pre.i, 1
  store i64 %i.we, ptr %i.tk, align 8, !tbaa !105
  store i64 %..i.i.i.us.i, ptr %i.tm, align 8, !tbaa !106
  call void @_Z6rcFreePv(ptr noundef %.pre474.i.a) #8
  store ptr %i.uy, ptr %i.tl, align 8, !tbaa !85
  br label %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i

bb.ae:                                            ; preds = %._crit_edge.i.us.i
  %i.wf = load ptr, ptr %i.tl, align 8, !tbaa !85
  %i.wg = add nsw i64 %i.un, 1
  store i64 %i.wg, ptr %i.tk, align 8, !tbaa !105
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.wf, i64 %i.un
  store i32 %i.ul, ptr %i.wh, align 4, !tbaa !86
  br label %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i

_ZL19addUniqueConnectionR8rcRegioni.exit.us.i:    ; preds = %bb.ab, %bb.ae, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i, %bb.z
  %.not228.us.i = icmp sgt i16 %i.uk, -1
  br i1 %.not228.us.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i
  store i8 1, ptr %i.tn, align 2, !tbaa !312
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i, %bb.y
  %indvars.iv.next.i259 = add nuw nsw i64 %indvars.iv.i258, 1 ; 2 uses
  %exitcond398.not.i = icmp eq i64 %indvars.iv.next.i259, 4
  br i1 %exitcond398.not.i, label %.loopexit338.us.loopexit.i, label %bb.y

.loopexit338.us.loopexit.i:                       ; preds = %bb.ag
  %.sroa.0.2.us.i = add nsw i64 %.sroa.0.0345.us.i, 1
  br label %.loopexit338.us.i

.loopexit338.us.i:                                ; preds = %.loopexit338.us.loopexit.i, %.lr.ph.us.i
  %.sroa.0.1.us.i = phi i64 [ %.sroa.0.0345.us.i, %.lr.ph.us.i ], [ %.sroa.0.2.us.i, %.loopexit338.us.loopexit.i ] ; 4 uses
  %.sroa.13.3.us.i = phi i64 [ %.sroa.13.2346.us.i, %.lr.ph.us.i ], [ %.sroa.13.4.us.i, %.loopexit338.us.loopexit.i ] ; 3 uses
  %.sroa.16.3.us.i = phi ptr [ %.sroa.16.2347.us.i, %.lr.ph.us.i ], [ %.sroa.16.4.us.i, %.loopexit338.us.loopexit.i ] ; 5 uses
  %indvars.iv.next400.i = add nuw nsw i64 %indvars.iv399.i, 1 ; 2 uses
  %i.wi = icmp samesign ult i64 %indvars.iv.next400.i, %i.qz
  br i1 %i.wi, label %.lr.ph.us.i, label %.preheader339.us.i

bb.ah:                                            ; preds = %.lr.ph352.us.i, %_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i
  %indvars.iv404.i = phi i64 [ %indvars.iv402.i, %.lr.ph352.us.i ], [ %indvars.iv.next405.i, %_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i ] ; 2 uses
  %i.wj = load i32, ptr %i.aas, align 4, !tbaa !86 ; 2 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.3.us.i, i64 %indvars.iv404.i
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !86 ; 5 uses
  %.not222.us.i = icmp eq i32 %i.wj, %i.wl
  br i1 %.not222.us.i, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.wm = sext i32 %i.wj to i64
  %i.wn = load ptr, ptr %i.qb, align 8, !tbaa !98 ; 2 uses
  %i.wo = getelementptr inbounds [64 x i8], ptr %i.wn, i64 %i.wm ; 5 uses
  %i.wp = sext i32 %i.wl to i64
  %i.wq = getelementptr inbounds [64 x i8], ptr %i.wn, i64 %i.wp ; 5 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 40 ; 4 uses
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !105 ; 5 uses
  %i.wt = icmp sgt i64 %i.ws, 0
  br i1 %i.wt, label %.lr.ph.i233.us.i, label %._crit_edge.i231.us.i

.lr.ph.i233.us.i:                                 ; preds = %bb.ai
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wo, i64 56
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !85
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph.i233.us.i
  %indvars.iv.i234.us.i = phi i64 [ 0, %.lr.ph.i233.us.i ], [ %indvars.iv.next.i235.us.i, %bb.ak ] ; 2 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %indvars.iv.i234.us.i
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !86
  %i.wy = icmp eq i32 %i.wx, %i.wl
  br i1 %i.wy, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit.us.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next.i235.us.i = add nuw nsw i64 %indvars.iv.i234.us.i, 1 ; 2 uses
  %exitcond.not.i236.us.i = icmp eq i64 %indvars.iv.next.i235.us.i, %i.ws
  br i1 %exitcond.not.i236.us.i, label %._crit_edge.i231.us.i, label %bb.aj

._crit_edge.i231.us.i:                            ; preds = %bb.ak, %bb.ai
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wo, i64 48 ; 2 uses
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !106 ; 3 uses
  %i.xb = icmp slt i64 %i.ws, %i.xa
  br i1 %i.xb, label %bb.am, label %bb.al, !prof !107

bb.al:                                            ; preds = %._crit_edge.i231.us.i
  %i.xc = add nsw i64 %i.xa, 1
  %i.xd = shl nsw i64 %i.xa, 1
  %..i.i.i232.us.i = call i64 @llvm.smax.i64(i64 %i.xd, i64 %i.xc) ; 2 uses
  %i.xe = shl i64 %..i.i.i232.us.i, 2
  %i.xf = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xe, i32 noundef 1) #8 ; 10 uses
  %.not.i278.us.i = icmp ne ptr %i.xf, null
  %.pre475.i.a = load i64, ptr %i.wr, align 8, !tbaa !105 ; 9 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.wo, i64 56 ; 2 uses
  %.pre476.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !85 ; 8 uses
  %i.xg = icmp sgt i64 %.pre475.i.a, 0
  %or.cond530.i.a = select i1 %.not.i278.us.i, i1 %i.xg, i1 false
  br i1 %or.cond530.i.a, label %.lr.ph.i.i279.us.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit282.us.i

.lr.ph.i.i279.us.i.preheader:                     ; preds = %bb.al
  %.pre476.i770 = ptrtoaddr ptr %.pre476.i to i64
  %i.xh = ptrtoaddr ptr %i.xf to i64
  %min.iters.check772 = icmp ult i64 %.pre475.i.a, 8
  %i.xi = sub i64 %.pre476.i770, %i.xh
  %diff.check774 = icmp ugt i64 %i.xi, -32
  %or.cond902 = select i1 %min.iters.check772, i1 true, i1 %diff.check774
  br i1 %or.cond902, label %.lr.ph.i.i279.us.i.preheader912, label %vector.ph775

vector.ph775:                                     ; preds = %.lr.ph.i.i279.us.i.preheader
  %n.vec776 = and i64 %.pre475.i.a, 9223372036854775800 ; 3 uses
  br label %vector.body777

vector.body777:                                   ; preds = %vector.body777, %vector.ph775
  %index778 = phi i64 [ 0, %vector.ph775 ], [ %index.next781, %vector.body777 ] ; 3 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %index778 ; 2 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.pre476.i, i64 %index778 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %wide.load779 = load <4 x i32>, ptr %i.xk, align 4, !tbaa !86
  %wide.load780 = load <4 x i32>, ptr %i.xl, align 4, !tbaa !86
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  store <4 x i32> %wide.load779, ptr %i.xj, align 4, !tbaa !86
  store <4 x i32> %wide.load780, ptr %i.xm, align 4, !tbaa !86
  %index.next781 = add nuw i64 %index778, 8       ; 2 uses
  %i.xn = icmp eq i64 %index.next781, %n.vec776
  br i1 %i.xn, label %middle.block782, label %vector.body777, !llvm.loop !279

middle.block782:                                  ; preds = %vector.body777
  %cmp.n783 = icmp eq i64 %.pre475.i.a, %n.vec776
  br i1 %cmp.n783, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit282.us.i, label %.lr.ph.i.i279.us.i.preheader912

.lr.ph.i.i279.us.i.preheader912:                  ; preds = %.lr.ph.i.i279.us.i.preheader, %middle.block782
  %.07.i.i280.us.i.ph = phi i64 [ 0, %.lr.ph.i.i279.us.i.preheader ], [ %n.vec776, %middle.block782 ] ; 3 uses
  %xtraiter926 = and i64 %.pre475.i.a, 3          ; 2 uses
  %lcmp.mod927.not = icmp eq i64 %xtraiter926, 0
  br i1 %lcmp.mod927.not, label %.lr.ph.i.i279.us.i.prol.loopexit, label %.lr.ph.i.i279.us.i.prol

.lr.ph.i.i279.us.i.prol:                          ; preds = %.lr.ph.i.i279.us.i.preheader912, %.lr.ph.i.i279.us.i.prol
  %.07.i.i280.us.i.prol = phi i64 [ %i.xr, %.lr.ph.i.i279.us.i.prol ], [ %.07.i.i280.us.i.ph, %.lr.ph.i.i279.us.i.preheader912 ] ; 3 uses
  %prol.iter928 = phi i64 [ %prol.iter928.next, %.lr.ph.i.i279.us.i.prol ], [ 0, %.lr.ph.i.i279.us.i.preheader912 ]
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %.07.i.i280.us.i.prol
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %.pre476.i, i64 %.07.i.i280.us.i.prol
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !86
  store i32 %i.xq, ptr %i.xo, align 4, !tbaa !86
  %i.xr = add nuw nsw i64 %.07.i.i280.us.i.prol, 1 ; 2 uses
  %prol.iter928.next = add i64 %prol.iter928, 1   ; 2 uses
  %prol.iter928.cmp.not = icmp eq i64 %prol.iter928.next, %xtraiter926
  br i1 %prol.iter928.cmp.not, label %.lr.ph.i.i279.us.i.prol.loopexit, label %.lr.ph.i.i279.us.i.prol, !llvm.loop !280

.lr.ph.i.i279.us.i.prol.loopexit:                 ; preds = %.lr.ph.i.i279.us.i.prol, %.lr.ph.i.i279.us.i.preheader912
  %.07.i.i280.us.i.unr = phi i64 [ %.07.i.i280.us.i.ph, %.lr.ph.i.i279.us.i.preheader912 ], [ %i.xr, %.lr.ph.i.i279.us.i.prol ]
  %i.xs = sub nsw i64 %.07.i.i280.us.i.ph, %.pre475.i.a
  %i.xt = icmp ugt i64 %i.xs, -4
  br i1 %i.xt, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit282.us.i, label %.lr.ph.i.i279.us.i

.lr.ph.i.i279.us.i:                               ; preds = %.lr.ph.i.i279.us.i.prol.loopexit, %.lr.ph.i.i279.us.i
  %.07.i.i280.us.i = phi i64 [ %i.yj, %.lr.ph.i.i279.us.i ], [ %.07.i.i280.us.i.unr, %.lr.ph.i.i279.us.i.prol.loopexit ] ; 6 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %.07.i.i280.us.i
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %.pre476.i, i64 %.07.i.i280.us.i
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !86
  store i32 %i.xw, ptr %i.xu, align 4, !tbaa !86
  %i.xx = add nuw nsw i64 %.07.i.i280.us.i, 1     ; 2 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.xx
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %.pre476.i, i64 %i.xx
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !86
  store i32 %i.ya, ptr %i.xy, align 4, !tbaa !86
  %i.yb = add nuw nsw i64 %.07.i.i280.us.i, 2     ; 2 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.yb
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.pre476.i, i64 %i.yb
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !86
  store i32 %i.ye, ptr %i.yc, align 4, !tbaa !86
  %i.yf = add nuw nsw i64 %.07.i.i280.us.i, 3     ; 2 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.yf
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %.pre476.i, i64 %i.yf
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !86
  store i32 %i.yi, ptr %i.yg, align 4, !tbaa !86
  %i.yj = add nuw nsw i64 %.07.i.i280.us.i, 4     ; 2 uses
  %exitcond.not.i.i281.us.i.3 = icmp eq i64 %i.yj, %.pre475.i.a
  br i1 %exitcond.not.i.i281.us.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit282.us.i, label %.lr.ph.i.i279.us.i, !llvm.loop !281

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit282.us.i: ; preds = %.lr.ph.i.i279.us.i.prol.loopexit, %.lr.ph.i.i279.us.i, %middle.block782, %bb.al
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.xf, i64 %.pre475.i.a
  store i32 %i.wl, ptr %i.yk, align 4, !tbaa !86
  %i.yl = add nsw i64 %.pre475.i.a, 1
  store i64 %i.yl, ptr %i.wr, align 8, !tbaa !105
  store i64 %..i.i.i232.us.i, ptr %i.wz, align 8, !tbaa !106
  call void @_Z6rcFreePv(ptr noundef %.pre476.i) #8
  store ptr %i.xf, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %_ZL20addUniqueFloorRegionR8rcRegioni.exit.us.i

bb.am:                                            ; preds = %._crit_edge.i231.us.i
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wo, i64 56
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !85
  %i.yo = add nsw i64 %i.ws, 1
  store i64 %i.yo, ptr %i.wr, align 8, !tbaa !105
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.yn, i64 %i.ws
  store i32 %i.wl, ptr %i.yp, align 4, !tbaa !86
  br label %_ZL20addUniqueFloorRegionR8rcRegioni.exit.us.i

_ZL20addUniqueFloorRegionR8rcRegioni.exit.us.i:   ; preds = %bb.aj, %bb.am, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit282.us.i
  %i.yq = load i32, ptr %i.aas, align 4, !tbaa !86 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.wq, i64 40 ; 4 uses
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !105 ; 5 uses
  %i.yt = icmp sgt i64 %i.ys, 0
  br i1 %i.yt, label %.lr.ph.i239.us.i, label %._crit_edge.i237.us.i

.lr.ph.i239.us.i:                                 ; preds = %_ZL20addUniqueFloorRegionR8rcRegioni.exit.us.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.wq, i64 56
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !85
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i239.us.i
  %indvars.iv.i240.us.i = phi i64 [ 0, %.lr.ph.i239.us.i ], [ %indvars.iv.next.i241.us.i, %bb.ao ] ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %indvars.iv.i240.us.i
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !86
  %i.yy = icmp eq i32 %i.yx, %i.yq
  br i1 %i.yy, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %indvars.iv.next.i241.us.i = add nuw nsw i64 %indvars.iv.i240.us.i, 1 ; 2 uses
  %exitcond.not.i242.us.i = icmp eq i64 %indvars.iv.next.i241.us.i, %i.ys
  br i1 %exitcond.not.i242.us.i, label %._crit_edge.i237.us.i, label %bb.an

._crit_edge.i237.us.i:                            ; preds = %bb.ao, %_ZL20addUniqueFloorRegionR8rcRegioni.exit.us.i
  %i.yz = getelementptr inbounds nuw i8, ptr %i.wq, i64 48 ; 2 uses
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !106 ; 3 uses
  %i.zb = icmp slt i64 %i.ys, %i.za
  br i1 %i.zb, label %bb.aq, label %bb.ap, !prof !107

bb.ap:                                            ; preds = %._crit_edge.i237.us.i
  %i.zc = add nsw i64 %i.za, 1
  %i.zd = shl nsw i64 %i.za, 1
  %..i.i.i238.us.i = call i64 @llvm.smax.i64(i64 %i.zd, i64 %i.zc) ; 2 uses
  %i.ze = shl i64 %..i.i.i238.us.i, 2
  %i.zf = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ze, i32 noundef 1) #8 ; 10 uses
  %.not.i283.us.i = icmp ne ptr %i.zf, null
  %.pre477.i.a = load i64, ptr %i.yr, align 8, !tbaa !105 ; 9 uses
  %.phi.trans.insert478.i = getelementptr inbounds nuw i8, ptr %i.wq, i64 56 ; 2 uses
  %.pre479.i.a = load ptr, ptr %.phi.trans.insert478.i, align 8, !tbaa !85 ; 8 uses
  %i.zg = icmp sgt i64 %.pre477.i.a, 0
  %or.cond531.i.a = select i1 %.not.i283.us.i, i1 %i.zg, i1 false
  br i1 %or.cond531.i.a, label %.lr.ph.i.i284.us.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit287.us.i

.lr.ph.i.i284.us.i.preheader:                     ; preds = %bb.ap
  %.pre479.i752 = ptrtoaddr ptr %.pre479.i.a to i64
  %i.zh = ptrtoaddr ptr %i.zf to i64
  %min.iters.check754 = icmp ult i64 %.pre477.i.a, 8
  %i.zi = sub i64 %.pre479.i752, %i.zh
  %diff.check756 = icmp ugt i64 %i.zi, -32
  %or.cond903 = select i1 %min.iters.check754, i1 true, i1 %diff.check756
  br i1 %or.cond903, label %.lr.ph.i.i284.us.i.preheader911, label %vector.ph757

vector.ph757:                                     ; preds = %.lr.ph.i.i284.us.i.preheader
  %n.vec758 = and i64 %.pre477.i.a, 9223372036854775800 ; 3 uses
  br label %vector.body759

vector.body759:                                   ; preds = %vector.body759, %vector.ph757
  %index760 = phi i64 [ 0, %vector.ph757 ], [ %index.next763, %vector.body759 ] ; 3 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %index760 ; 2 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %.pre479.i.a, i64 %index760 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %wide.load761 = load <4 x i32>, ptr %i.zk, align 4, !tbaa !86
  %wide.load762 = load <4 x i32>, ptr %i.zl, align 4, !tbaa !86
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  store <4 x i32> %wide.load761, ptr %i.zj, align 4, !tbaa !86
  store <4 x i32> %wide.load762, ptr %i.zm, align 4, !tbaa !86
  %index.next763 = add nuw i64 %index760, 8       ; 2 uses
  %i.zn = icmp eq i64 %index.next763, %n.vec758
  br i1 %i.zn, label %middle.block764, label %vector.body759, !llvm.loop !282

middle.block764:                                  ; preds = %vector.body759
  %cmp.n765 = icmp eq i64 %.pre477.i.a, %n.vec758
  br i1 %cmp.n765, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit287.us.i, label %.lr.ph.i.i284.us.i.preheader911

.lr.ph.i.i284.us.i.preheader911:                  ; preds = %.lr.ph.i.i284.us.i.preheader, %middle.block764
  %.07.i.i285.us.i.ph = phi i64 [ 0, %.lr.ph.i.i284.us.i.preheader ], [ %n.vec758, %middle.block764 ] ; 3 uses
  %xtraiter929 = and i64 %.pre477.i.a, 3          ; 2 uses
  %lcmp.mod930.not = icmp eq i64 %xtraiter929, 0
  br i1 %lcmp.mod930.not, label %.lr.ph.i.i284.us.i.prol.loopexit, label %.lr.ph.i.i284.us.i.prol

.lr.ph.i.i284.us.i.prol:                          ; preds = %.lr.ph.i.i284.us.i.preheader911, %.lr.ph.i.i284.us.i.prol
  %.07.i.i285.us.i.prol = phi i64 [ %i.zr, %.lr.ph.i.i284.us.i.prol ], [ %.07.i.i285.us.i.ph, %.lr.ph.i.i284.us.i.preheader911 ] ; 3 uses
  %prol.iter931 = phi i64 [ %prol.iter931.next, %.lr.ph.i.i284.us.i.prol ], [ 0, %.lr.ph.i.i284.us.i.preheader911 ]
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %.07.i.i285.us.i.prol
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %.pre479.i.a, i64 %.07.i.i285.us.i.prol
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !86
  store i32 %i.zq, ptr %i.zo, align 4, !tbaa !86
  %i.zr = add nuw nsw i64 %.07.i.i285.us.i.prol, 1 ; 2 uses
  %prol.iter931.next = add i64 %prol.iter931, 1   ; 2 uses
  %prol.iter931.cmp.not = icmp eq i64 %prol.iter931.next, %xtraiter929
  br i1 %prol.iter931.cmp.not, label %.lr.ph.i.i284.us.i.prol.loopexit, label %.lr.ph.i.i284.us.i.prol, !llvm.loop !283

.lr.ph.i.i284.us.i.prol.loopexit:                 ; preds = %.lr.ph.i.i284.us.i.prol, %.lr.ph.i.i284.us.i.preheader911
  %.07.i.i285.us.i.unr = phi i64 [ %.07.i.i285.us.i.ph, %.lr.ph.i.i284.us.i.preheader911 ], [ %i.zr, %.lr.ph.i.i284.us.i.prol ]
  %i.zs = sub nsw i64 %.07.i.i285.us.i.ph, %.pre477.i.a
  %i.zt = icmp ugt i64 %i.zs, -4
  br i1 %i.zt, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit287.us.i, label %.lr.ph.i.i284.us.i

.lr.ph.i.i284.us.i:                               ; preds = %.lr.ph.i.i284.us.i.prol.loopexit, %.lr.ph.i.i284.us.i
  %.07.i.i285.us.i = phi i64 [ %i.aaj, %.lr.ph.i.i284.us.i ], [ %.07.i.i285.us.i.unr, %.lr.ph.i.i284.us.i.prol.loopexit ] ; 6 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %.07.i.i285.us.i
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %.pre479.i.a, i64 %.07.i.i285.us.i
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !86
  store i32 %i.zw, ptr %i.zu, align 4, !tbaa !86
  %i.zx = add nuw nsw i64 %.07.i.i285.us.i, 1     ; 2 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %i.zx
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.pre479.i.a, i64 %i.zx
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !86
  store i32 %i.aaa, ptr %i.zy, align 4, !tbaa !86
  %i.aab = add nuw nsw i64 %.07.i.i285.us.i, 2    ; 2 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %i.aab
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %.pre479.i.a, i64 %i.aab
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !86
  store i32 %i.aae, ptr %i.aac, align 4, !tbaa !86
  %i.aaf = add nuw nsw i64 %.07.i.i285.us.i, 3    ; 2 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %i.aaf
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %.pre479.i.a, i64 %i.aaf
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !86
  store i32 %i.aai, ptr %i.aag, align 4, !tbaa !86
  %i.aaj = add nuw nsw i64 %.07.i.i285.us.i, 4    ; 2 uses
  %exitcond.not.i.i286.us.i.3 = icmp eq i64 %i.aaj, %.pre477.i.a
  br i1 %exitcond.not.i.i286.us.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit287.us.i, label %.lr.ph.i.i284.us.i, !llvm.loop !284

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit287.us.i: ; preds = %.lr.ph.i.i284.us.i.prol.loopexit, %.lr.ph.i.i284.us.i, %middle.block764, %bb.ap
  %i.aak = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %.pre477.i.a
  store i32 %i.yq, ptr %i.aak, align 4, !tbaa !86
  %i.aal = add nsw i64 %.pre477.i.a, 1
  store i64 %i.aal, ptr %i.yr, align 8, !tbaa !105
  store i64 %..i.i.i238.us.i, ptr %i.yz, align 8, !tbaa !106
  call void @_Z6rcFreePv(ptr noundef %.pre479.i.a) #8
  store ptr %i.zf, ptr %.phi.trans.insert478.i, align 8, !tbaa !85
  br label %_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i

bb.aq:                                            ; preds = %._crit_edge.i237.us.i
  %i.aam = getelementptr inbounds nuw i8, ptr %i.wq, i64 56
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !85
  %i.aao = add nsw i64 %i.ys, 1
  store i64 %i.aao, ptr %i.yr, align 8, !tbaa !105
  %i.aap = getelementptr inbounds [4 x i8], ptr %i.aan, i64 %i.ys
  store i32 %i.yq, ptr %i.aap, align 4, !tbaa !86
  br label %_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i

_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i: ; preds = %bb.an, %bb.aq, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit287.us.i, %bb.ah
  %indvars.iv.next405.i = add nuw nsw i64 %indvars.iv404.i, 1 ; 2 uses
  %exitcond407.not.i = icmp eq i64 %indvars.iv.next405.i, %.sroa.0.1.us.i
  br i1 %exitcond407.not.i, label %.loopexit337.us.i, label %bb.ah

._crit_edge.us.i:                                 ; preds = %.loopexit337.us.i, %.preheader339.us.i, %bb.u
  %.sroa.16.2.lcssa.us528.i = phi ptr [ %.sroa.16.3.us.i, %.preheader339.us.i ], [ %.sroa.16.1356.us.i, %bb.u ], [ %.sroa.16.3.us.i, %.loopexit337.us.i ] ; 3 uses
  %.sroa.13.2.lcssa.us527.i = phi i64 [ %.sroa.13.3.us.i, %.preheader339.us.i ], [ %.sroa.13.1355.us.i, %bb.u ], [ %.sroa.13.3.us.i, %.loopexit337.us.i ] ; 2 uses
  %indvars.iv.next413.i = add nuw nsw i64 %indvars.iv412.i, 1 ; 2 uses
  %exitcond415.not.i = icmp eq i64 %indvars.iv.next413.i, %i.qo
  br i1 %exitcond415.not.i, label %._crit_edge359.us.i, label %bb.u

.loopexit337.us.i:                                ; preds = %_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i
  %indvars.iv.next409.i = add nuw nsw i64 %indvars.iv408.i, 1
  %indvars.iv.next403.i = add nuw nsw i64 %indvars.iv402.i, 1
  %exitcond411.not.i = icmp eq i64 %indvars.iv408.i, %i.aar
  br i1 %exitcond411.not.i, label %._crit_edge.us.i, label %.lr.ph352.us.i

.preheader339.us.i:                               ; preds = %.loopexit338.us.i
  %i.aaq = icmp sgt i64 %.sroa.0.1.us.i, 1
  br i1 %i.aaq, label %.lr.ph354.us.preheader.i, label %._crit_edge.us.i

.lr.ph354.us.preheader.i:                         ; preds = %.preheader339.us.i
  %i.aar = add nsw i64 %.sroa.0.1.us.i, -2
  br label %.lr.ph352.us.i

.lr.ph352.us.i:                                   ; preds = %.lr.ph354.us.preheader.i, %.loopexit337.us.i
  %indvars.iv408.i = phi i64 [ 0, %.lr.ph354.us.preheader.i ], [ %indvars.iv.next409.i, %.loopexit337.us.i ] ; 3 uses
  %indvars.iv402.i = phi i64 [ 1, %.lr.ph354.us.preheader.i ], [ %indvars.iv.next403.i, %.loopexit337.us.i ] ; 2 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.3.us.i, i64 %indvars.iv408.i ; 2 uses
  br label %bb.ah

._crit_edge359.us.i:                              ; preds = %._crit_edge.us.i
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 1 ; 2 uses
  %exitcond420.not.i = icmp eq i64 %indvars.iv.next417.i, %wide.trip.count419.i
  br i1 %exitcond420.not.i, label %.preheader336.i, label %.preheader340.us.i

bb.ar:                                            ; preds = %bb.ar, %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i.i
  %.0200343.i = phi i32 [ 0, %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i.i ], [ %i.aaw, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.aat = trunc i32 %.0200343.i to i16
  store i32 0, ptr %5, align 8, !tbaa !102
  store i16 %i.aat, ptr %i.qc, align 4, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.qd, i8 0, i64 5, i1 false)
  store i16 -1, ptr %i.qe, align 4, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %i.qf, i8 0, i64 50, i1 false)
  call void @_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %5)
  %i.aau = load ptr, ptr %i.qg, align 8, !tbaa !85
  call void @_Z6rcFreePv(ptr noundef %i.aau) #8
  %i.aav = load ptr, ptr %i.qh, align 8, !tbaa !85
  call void @_Z6rcFreePv(ptr noundef %i.aav) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.aaw = add nuw nsw i32 %.0200343.i, 1
  %exitcond.not.i254 = icmp eq i32 %.0200343.i, %i.pv
  br i1 %exitcond.not.i254, label %_ZN12rcTempVectorIiEC2El.exit.i, label %bb.ar

.preheader336.i:                                  ; preds = %._crit_edge359.us.i, %.preheader340.lr.ph.i, %_ZN12rcTempVectorIiEC2El.exit.i
  %.sroa.16.0.lcssa.i = phi ptr [ %i.qi, %_ZN12rcTempVectorIiEC2El.exit.i ], [ %i.qi, %.preheader340.lr.ph.i ], [ %.sroa.16.2.lcssa.us528.i, %._crit_edge359.us.i ]
  %i.aax = load ptr, ptr %i.qb, align 8, !tbaa !98 ; 9 uses
  %i.aay = zext i16 %.1175.lcssa to i64
  %xtraiter932 = and i64 %i.px, 7                 ; 3 uses
  %i.aaz = icmp ult i16 %.1175.lcssa, 7
  br i1 %i.aaz, label %.epil.preheader, label %.preheader336.i.new

.preheader336.i.new:                              ; preds = %.preheader336.i
  %unroll_iter935 = and i64 %i.px, 131064
  br label %bb.au

.unr-lcssa:                                       ; preds = %bb.au
  %lcmp.mod933.not = icmp eq i64 %xtraiter932, 0
  br i1 %lcmp.mod933.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader336.i
  %indvars.iv421.i.epil.init = phi i64 [ 0, %.preheader336.i ], [ %indvars.iv.next422.i.7, %.unr-lcssa ]
  %lcmp.mod934 = icmp ne i64 %xtraiter932, 0
  call void @llvm.assume(i1 %lcmp.mod934)
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.epil.preheader
  %indvars.iv421.i.epil = phi i64 [ %indvars.iv421.i.epil.init, %.epil.preheader ], [ %indvars.iv.next422.i.epil, %bb.as ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.as ]
  %i.aba = getelementptr inbounds nuw [64 x i8], ptr %i.aax, i64 %indvars.iv421.i.epil
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  store i16 0, ptr %i.abb, align 4, !tbaa !103
  %indvars.iv.next422.i.epil = add nuw nsw i64 %indvars.iv421.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter932
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.as, !llvm.loop !285

.epilog-lcssa:                                    ; preds = %bb.as, %.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.abc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.abe = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 128, i32 noundef 1) #8 ; 9 uses
  %i.abf = ptrtoaddr ptr %i.abe to i64
  %.not.i.i.i.i.i244.i = icmp eq ptr %i.abe, null
  %.pre.i.i.i245.i = load ptr, ptr %i.abd, align 8, !tbaa !85 ; 8 uses
  %.pre.i.i.i245.i824 = ptrtoaddr ptr %.pre.i.i.i245.i to i64
  br i1 %.not.i.i.i.i.i244.i, label %_ZN12rcTempVectorIiEC2El.exit249.i, label %bb.at

bb.at:                                            ; preds = %.epilog-lcssa
  %i.abg = load i64, ptr %6, align 8, !tbaa !105  ; 7 uses
  %i.abh = icmp sgt i64 %i.abg, 0
  br i1 %i.abh, label %.lr.ph.i.i.i.i.i.i246.i.preheader, label %_ZN12rcTempVectorIiEC2El.exit249.i

.lr.ph.i.i.i.i.i.i246.i.preheader:                ; preds = %bb.at
  %min.iters.check826 = icmp ult i64 %i.abg, 8
  %i.abi = sub i64 %.pre.i.i.i245.i824, %i.abf
  %diff.check828 = icmp ugt i64 %i.abi, -32
  %or.cond904 = select i1 %min.iters.check826, i1 true, i1 %diff.check828
  br i1 %or.cond904, label %.lr.ph.i.i.i.i.i.i246.i.preheader910, label %vector.ph829

vector.ph829:                                     ; preds = %.lr.ph.i.i.i.i.i.i246.i.preheader
  %n.vec830 = and i64 %i.abg, 9223372036854775800 ; 3 uses
  br label %vector.body831

vector.body831:                                   ; preds = %vector.body831, %vector.ph829
  %index832 = phi i64 [ 0, %vector.ph829 ], [ %index.next835, %vector.body831 ] ; 3 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %index832 ; 2 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %index832 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  %wide.load833 = load <4 x i32>, ptr %i.abk, align 4, !tbaa !86
  %wide.load834 = load <4 x i32>, ptr %i.abl, align 4, !tbaa !86
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  store <4 x i32> %wide.load833, ptr %i.abj, align 4, !tbaa !86
  store <4 x i32> %wide.load834, ptr %i.abm, align 4, !tbaa !86
  %index.next835 = add nuw i64 %index832, 8       ; 2 uses
  %i.abn = icmp eq i64 %index.next835, %n.vec830
  br i1 %i.abn, label %middle.block836, label %vector.body831, !llvm.loop !286

middle.block836:                                  ; preds = %vector.body831
  %cmp.n837 = icmp eq i64 %i.abg, %n.vec830
  br i1 %cmp.n837, label %_ZN12rcTempVectorIiEC2El.exit249.i, label %.lr.ph.i.i.i.i.i.i246.i.preheader910

.lr.ph.i.i.i.i.i.i246.i.preheader910:             ; preds = %.lr.ph.i.i.i.i.i.i246.i.preheader, %middle.block836
  %.07.i.i.i.i.i.i247.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i246.i.preheader ], [ %n.vec830, %middle.block836 ] ; 3 uses
  %xtraiter937 = and i64 %i.abg, 3                ; 2 uses
  %lcmp.mod938.not = icmp eq i64 %xtraiter937, 0
  br i1 %lcmp.mod938.not, label %.lr.ph.i.i.i.i.i.i246.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i246.i.prol

.lr.ph.i.i.i.i.i.i246.i.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i246.i.preheader910, %.lr.ph.i.i.i.i.i.i246.i.prol
  %.07.i.i.i.i.i.i247.i.prol = phi i64 [ %i.abr, %.lr.ph.i.i.i.i.i.i246.i.prol ], [ %.07.i.i.i.i.i.i247.i.ph, %.lr.ph.i.i.i.i.i.i246.i.preheader910 ] ; 3 uses
  %prol.iter939 = phi i64 [ %prol.iter939.next, %.lr.ph.i.i.i.i.i.i246.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i246.i.preheader910 ]
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %.07.i.i.i.i.i.i247.i.prol
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %.07.i.i.i.i.i.i247.i.prol
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !86
  store i32 %i.abq, ptr %i.abo, align 4, !tbaa !86
  %i.abr = add nuw nsw i64 %.07.i.i.i.i.i.i247.i.prol, 1 ; 2 uses
  %prol.iter939.next = add i64 %prol.iter939, 1   ; 2 uses
  %prol.iter939.cmp.not = icmp eq i64 %prol.iter939.next, %xtraiter937
  br i1 %prol.iter939.cmp.not, label %.lr.ph.i.i.i.i.i.i246.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i246.i.prol, !llvm.loop !287

.lr.ph.i.i.i.i.i.i246.i.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i246.i.prol, %.lr.ph.i.i.i.i.i.i246.i.preheader910
  %.07.i.i.i.i.i.i247.i.unr = phi i64 [ %.07.i.i.i.i.i.i247.i.ph, %.lr.ph.i.i.i.i.i.i246.i.preheader910 ], [ %i.abr, %.lr.ph.i.i.i.i.i.i246.i.prol ]
  %i.abs = sub nsw i64 %.07.i.i.i.i.i.i247.i.ph, %i.abg
  %i.abt = icmp ugt i64 %i.abs, -4
  br i1 %i.abt, label %_ZN12rcTempVectorIiEC2El.exit249.i, label %.lr.ph.i.i.i.i.i.i246.i

.lr.ph.i.i.i.i.i.i246.i:                          ; preds = %.lr.ph.i.i.i.i.i.i246.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i246.i
  %.07.i.i.i.i.i.i247.i = phi i64 [ %i.acj, %.lr.ph.i.i.i.i.i.i246.i ], [ %.07.i.i.i.i.i.i247.i.unr, %.lr.ph.i.i.i.i.i.i246.i.prol.loopexit ] ; 6 uses
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %.07.i.i.i.i.i.i247.i
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %.07.i.i.i.i.i.i247.i
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !86
  store i32 %i.abw, ptr %i.abu, align 4, !tbaa !86
  %i.abx = add nuw nsw i64 %.07.i.i.i.i.i.i247.i, 1 ; 2 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %i.abx
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %i.abx
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !86
  store i32 %i.aca, ptr %i.aby, align 4, !tbaa !86
  %i.acb = add nuw nsw i64 %.07.i.i.i.i.i.i247.i, 2 ; 2 uses
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %i.acb
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %i.acb
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !86
  store i32 %i.ace, ptr %i.acc, align 4, !tbaa !86
  %i.acf = add nuw nsw i64 %.07.i.i.i.i.i.i247.i, 3 ; 2 uses
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %i.acf
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %i.acf
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !86
  store i32 %i.aci, ptr %i.acg, align 4, !tbaa !86
  %i.acj = add nuw nsw i64 %.07.i.i.i.i.i.i247.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i248.i.3 = icmp eq i64 %i.acj, %i.abg
  br i1 %exitcond.not.i.i.i.i.i.i248.i.3, label %_ZN12rcTempVectorIiEC2El.exit249.i, label %.lr.ph.i.i.i.i.i.i246.i, !llvm.loop !288

_ZN12rcTempVectorIiEC2El.exit249.i:               ; preds = %.lr.ph.i.i.i.i.i.i246.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i246.i, %middle.block836, %bb.at, %.epilog-lcssa
  call void @_Z6rcFreePv(ptr noundef %.pre.i.i.i245.i) #8
  store ptr %i.abe, ptr %i.abd, align 8, !tbaa !85
  store i64 32, ptr %i.abc, align 8, !tbaa !106
  store i64 32, ptr %6, align 8, !tbaa !105
  %.not212376.i = icmp eq i16 %.1175.lcssa, 0
  br i1 %.not212376.i, label %.preheader332.i, label %.lr.ph380.i

bb.au:                                            ; preds = %bb.au, %.preheader336.i.new
  %indvars.iv421.i = phi i64 [ 0, %.preheader336.i.new ], [ %indvars.iv.next422.i.7, %bb.au ] ; 9 uses
  %niter936 = phi i64 [ 0, %.preheader336.i.new ], [ %niter936.next.7, %bb.au ]
  %i.ack = getelementptr inbounds nuw [64 x i8], ptr %i.aax, i64 %indvars.iv421.i
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  store i16 0, ptr %i.acl, align 4, !tbaa !103
  %i.acm = getelementptr inbounds nuw [64 x i8], ptr %i.aax, i64 %indvars.iv421.i
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 68
  store i16 0, ptr %i.acn, align 4, !tbaa !103
  %i.aco = getelementptr inbounds nuw [64 x i8], ptr %i.aax, i64 %indvars.iv421.i
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 132
  store i16 0, ptr %i.acp, align 4, !tbaa !103
  %i.acq = getelementptr inbounds nuw [64 x i8], ptr %i.aax, i64 %indvars.iv421.i
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 196
  store i16 0, ptr %i.acr, align 4, !tbaa !103
  %i.acs = getelementptr inbounds nuw [64 x i8], ptr %i.aax, i64 %indvars.iv421.i
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 260
  store i16 0, ptr %i.act, align 4, !tbaa !103
  %i.acu = getelementptr inbounds nuw [64 x i8], ptr %i.aax, i64 %indvars.iv421.i
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 324
  store i16 0, ptr %i.acv, align 4, !tbaa !103
  %i.acw = getelementptr inbounds nuw [64 x i8], ptr %i.aax, i64 %indvars.iv421.i
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 388
  store i16 0, ptr %i.acx, align 4, !tbaa !103
  %i.acy = getelementptr inbounds nuw [64 x i8], ptr %i.aax, i64 %indvars.iv421.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 452
  store i16 0, ptr %i.acz, align 4, !tbaa !103
  %indvars.iv.next422.i.7 = add nuw nsw i64 %indvars.iv421.i, 8 ; 2 uses
  %niter936.next.7 = add i64 %niter936, 8         ; 2 uses
  %niter936.ncmp.7 = icmp eq i64 %niter936.next.7, %unroll_iter935
  br i1 %niter936.ncmp.7, label %.unr-lcssa, label %bb.au

.preheader332.i:                                  ; preds = %bb.bk, %_ZN12rcTempVectorIiEC2El.exit249.i
  %i.ada = load ptr, ptr %i.qb, align 8, !tbaa !98 ; 19 uses
  %min.iters.check876 = icmp ult i16 %.1175.lcssa, 7
  %n.vec878 = and i64 %i.px, 131064               ; 3 uses
  %cmp.n899 = icmp eq i64 %n.vec878, %i.px
end_hunk_0
