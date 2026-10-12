Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMeshDetail?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !132
  %.not148.i = icmp eq i16 %i.zf, -1
  br i1 %.not148.i, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.zg = load ptr, ptr %i.eo, align 8, !tbaa !136
  %i.zh = load i32, ptr %2, align 8, !tbaa !130
  %i.zi = mul nsw i32 %i.zh, %i.yy
  %i.zj = add nsw i32 %i.zi, %i.yv
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.zg, i64 %i.zk
  %i.zm = load i32, ptr %i.zl, align 4
  %i.zn = and i32 %i.zm, 16777215
  %i.zo = add nuw nsw i32 %i.zn, %i.yr            ; 2 uses
  %i.zp = load ptr, ptr %i.ep, align 8, !tbaa !137
  %i.zq = zext nneg i32 %i.zo to i64
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.zq
  %i.zs = load i16, ptr %i.zr, align 4, !tbaa !140
  store i16 %i.zs, ptr %i.ze, align 2, !tbaa !132
  %i.zt = add nsw i64 %i.yk, 3                    ; 5 uses
  %i.zu = load i64, ptr %i.aj, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i156.i = icmp sgt i64 %i.zt, %i.zu
  br i1 %.not.i.i.i156.i, label %bb.bv, label %_ZL5push3R12rcTempVectorIiEiii.exit169.i

bb.bv:                                            ; preds = %bb.bu
  %i.zv = icmp sgt i64 %i.zu, 4611686018427387902
  %i.zw = shl nsw i64 %i.zu, 1
  %..i.i.i.i160.i = call i64 @llvm.smax.i64(i64 %i.zw, i64 %i.zt)
  %.0.i.i.i.i161.i = select i1 %i.zv, i64 9223372036854775807, i64 %..i.i.i.i160.i, !prof !141 ; 2 uses
  %i.zx = shl i64 %.0.i.i.i.i161.i, 2
  %i.zy = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.zx, i32 noundef 1) #7 ; 10 uses
  %i.zz = ptrtoaddr ptr %i.zy to i64
  %.not.i.i.i.i162.i = icmp eq ptr %i.zy, null
  %.pre.i.i164.i = load ptr, ptr %i.ak, align 8, !tbaa !66 ; 8 uses
  %.pre.i.i164.i1073 = ptrtoaddr ptr %.pre.i.i164.i to i64
  br i1 %.not.i.i.i.i162.i, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aaa = load i64, ptr %7, align 8, !tbaa !67   ; 7 uses
  %i.aab = icmp sgt i64 %i.aaa, 0
  br i1 %i.aab, label %.lr.ph.i.i.i.i.i166.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i

.lr.ph.i.i.i.i.i166.i.preheader:                  ; preds = %bb.bw
  %min.iters.check1076 = icmp ult i64 %i.aaa, 8
  %i.aac = sub i64 %.pre.i.i164.i1073, %i.zz
  %diff.check1074 = icmp ugt i64 %i.aac, -32
  %or.cond1103.a = select i1 %min.iters.check1076, i1 true, i1 %diff.check1074
  br i1 %or.cond1103.a, label %.lr.ph.i.i.i.i.i166.i.preheader1127, label %vector.ph1077

vector.ph1077:                                    ; preds = %.lr.ph.i.i.i.i.i166.i.preheader
  %n.vec1078 = and i64 %i.aaa, 9223372036854775800 ; 3 uses
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %vector.ph1077
  %index1080 = phi i64 [ 0, %vector.ph1077 ], [ %index.next1083, %vector.body1079 ] ; 3 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %index1080 ; 2 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %index1080 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %wide.load1081 = load <4 x i32>, ptr %i.aae, align 4, !tbaa !68
  %wide.load1082 = load <4 x i32>, ptr %i.aaf, align 4, !tbaa !68
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  store <4 x i32> %wide.load1081, ptr %i.aad, align 4, !tbaa !68
  store <4 x i32> %wide.load1082, ptr %i.aag, align 4, !tbaa !68
  %index.next1083 = add nuw i64 %index1080, 8     ; 2 uses
  %i.aah = icmp eq i64 %index.next1083, %n.vec1078
  br i1 %i.aah, label %middle.block1084, label %vector.body1079, !llvm.loop !86

middle.block1084:                                 ; preds = %vector.body1079
  %cmp.n1085 = icmp eq i64 %i.aaa, %n.vec1078
  br i1 %cmp.n1085, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, label %.lr.ph.i.i.i.i.i166.i.preheader1127

.lr.ph.i.i.i.i.i166.i.preheader1127:              ; preds = %.lr.ph.i.i.i.i.i166.i.preheader, %middle.block1084
  %.07.i.i.i.i.i167.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i166.i.preheader ], [ %n.vec1078, %middle.block1084 ] ; 3 uses
  %xtraiter1178 = and i64 %i.aaa, 3               ; 2 uses
  %lcmp.mod1179.not = icmp eq i64 %xtraiter1178, 0
  br i1 %lcmp.mod1179.not, label %.lr.ph.i.i.i.i.i166.i.prol.loopexit, label %.lr.ph.i.i.i.i.i166.i.prol

.lr.ph.i.i.i.i.i166.i.prol:                       ; preds = %.lr.ph.i.i.i.i.i166.i.preheader1127, %.lr.ph.i.i.i.i.i166.i.prol
  %.07.i.i.i.i.i167.i.prol = phi i64 [ %i.aal, %.lr.ph.i.i.i.i.i166.i.prol ], [ %.07.i.i.i.i.i167.i.ph, %.lr.ph.i.i.i.i.i166.i.preheader1127 ] ; 3 uses
  %prol.iter1180 = phi i64 [ %prol.iter1180.next, %.lr.ph.i.i.i.i.i166.i.prol ], [ 0, %.lr.ph.i.i.i.i.i166.i.preheader1127 ]
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %.07.i.i.i.i.i167.i.prol
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %.07.i.i.i.i.i167.i.prol
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !68
  store i32 %i.aak, ptr %i.aai, align 4, !tbaa !68
  %i.aal = add nuw nsw i64 %.07.i.i.i.i.i167.i.prol, 1 ; 2 uses
  %prol.iter1180.next = add i64 %prol.iter1180, 1 ; 2 uses
  %prol.iter1180.cmp.not = icmp eq i64 %prol.iter1180.next, %xtraiter1178
  br i1 %prol.iter1180.cmp.not, label %.lr.ph.i.i.i.i.i166.i.prol.loopexit, label %.lr.ph.i.i.i.i.i166.i.prol, !llvm.loop !87

.lr.ph.i.i.i.i.i166.i.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i166.i.prol, %.lr.ph.i.i.i.i.i166.i.preheader1127
  %.07.i.i.i.i.i167.i.unr = phi i64 [ %.07.i.i.i.i.i167.i.ph, %.lr.ph.i.i.i.i.i166.i.preheader1127 ], [ %i.aal, %.lr.ph.i.i.i.i.i166.i.prol ]
  %i.aam = sub nsw i64 %.07.i.i.i.i.i167.i.ph, %i.aaa
  %i.aan = icmp ugt i64 %i.aam, -4
  br i1 %i.aan, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, label %.lr.ph.i.i.i.i.i166.i

.lr.ph.i.i.i.i.i166.i:                            ; preds = %.lr.ph.i.i.i.i.i166.i.prol.loopexit, %.lr.ph.i.i.i.i.i166.i
  %.07.i.i.i.i.i167.i = phi i64 [ %i.abd, %.lr.ph.i.i.i.i.i166.i ], [ %.07.i.i.i.i.i167.i.unr, %.lr.ph.i.i.i.i.i166.i.prol.loopexit ] ; 6 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %.07.i.i.i.i.i167.i
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %.07.i.i.i.i.i167.i
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !68
  store i32 %i.aaq, ptr %i.aao, align 4, !tbaa !68
  %i.aar = add nuw nsw i64 %.07.i.i.i.i.i167.i, 1 ; 2 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.aar
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %i.aar
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !68
  store i32 %i.aau, ptr %i.aas, align 4, !tbaa !68
  %i.aav = add nuw nsw i64 %.07.i.i.i.i.i167.i, 2 ; 2 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.aav
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %i.aav
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !68
  store i32 %i.aay, ptr %i.aaw, align 4, !tbaa !68
  %i.aaz = add nuw nsw i64 %.07.i.i.i.i.i167.i, 3 ; 2 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.aaz
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %i.aaz
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !68
  store i32 %i.abc, ptr %i.aba, align 4, !tbaa !68
  %i.abd = add nuw nsw i64 %.07.i.i.i.i.i167.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i168.i.3 = icmp eq i64 %i.abd, %i.aaa
  br i1 %exitcond.not.i.i.i.i.i168.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, label %.lr.ph.i.i.i.i.i166.i, !llvm.loop !88

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i: ; preds = %.lr.ph.i.i.i.i.i166.i.prol.loopexit, %.lr.ph.i.i.i.i.i166.i, %middle.block1084, %bb.bw, %bb.bv
  call void @_Z6rcFreePv(ptr noundef %.pre.i.i164.i) #7
  store ptr %i.zy, ptr %i.ak, align 8, !tbaa !66
  store i64 %.0.i.i.i.i161.i, ptr %i.aj, align 8, !tbaa !124
  br label %_ZL5push3R12rcTempVectorIiEiii.exit169.i

_ZL5push3R12rcTempVectorIiEiii.exit169.i:         ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, %bb.bu
  %.pre.i159239.i = phi ptr [ %i.zy, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i ], [ %.pre.i159.i, %bb.bu ] ; 3 uses
  store i64 %i.zt, ptr %7, align 8, !tbaa !67
  %i.abe = getelementptr [4 x i8], ptr %.pre.i159239.i, i64 %i.yk ; 3 uses
  store i32 %i.yv, ptr %i.abe, align 4, !tbaa !68
  %i.abf = getelementptr i8, ptr %i.abe, i64 4
  store i32 %i.yy, ptr %i.abf, align 4, !tbaa !68
  %i.abg = getelementptr i8, ptr %i.abe, i64 8
  store i32 %i.zo, ptr %i.abg, align 4, !tbaa !68
  br label %bb.bx

bb.bx:                                            ; preds = %_ZL5push3R12rcTempVectorIiEiii.exit169.i, %bb.bt, %bb.bs, %bb.br
  %i.abh = phi i64 [ %i.zt, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %i.yj, %bb.br ], [ %i.yj, %bb.bs ], [ %i.yj, %bb.bt ] ; 3 uses
  %.pre.i159238.i = phi ptr [ %.pre.i159239.i, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %.pre.i159.i, %bb.br ], [ %.pre.i159.i, %bb.bs ], [ %.pre.i159.i, %bb.bt ] ; 2 uses
  %i.abi = phi i64 [ %i.zt, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %i.yk, %bb.br ], [ %i.yk, %bb.bs ], [ %i.yk, %bb.bt ]
  %i.abj = phi ptr [ %.pre.i159239.i, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %i.yl, %bb.br ], [ %i.yl, %bb.bs ], [ %i.yl, %bb.bt ] ; 2 uses
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next228.i, 4
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.br

_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit: ; preds = %.loopexit.i, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %.not496 = icmp eq i32 %.0254.lcssa, 0          ; 3 uses
  br i1 %.not496, label %_ZL13polyMinExtentPKfi.exit.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit
  %wide.trip.count.i = zext nneg i32 %.0254.lcssa to i64 ; 5 uses
  %xtraiter1181.a = and i64 %wide.trip.count.i, 1
  %i.abk = icmp eq i32 %.0254.lcssa, 1
  br i1 %i.abk, label %.lr.ph.i334.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter1184 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i334

.lr.ph.us.preheader.i.i.unr-lcssa:                ; preds = %.lr.ph.i334
  %lcmp.mod1182.not.a = icmp eq i64 %xtraiter1181.a, 0
  br i1 %lcmp.mod1182.not.a, label %.lr.ph.us.preheader.i.i, label %.lr.ph.i334.epil.preheader

.lr.ph.i334.epil.preheader:                       ; preds = %.lr.ph.us.preheader.i.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i335.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i336.1, %.lr.ph.us.preheader.i.i.unr-lcssa ]
  %lcmp.mod1183 = trunc i32 %.0254.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod1183)
  %i.abl = mul nuw nsw i64 %indvars.iv.i335.epil.init, 3 ; 2 uses
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.abl ; 2 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.abl ; 2 uses
  %i.abo = load <2 x float>, ptr %i.abn, align 4, !tbaa !62
  store <2 x float> %i.abo, ptr %i.abm, align 4, !tbaa !62
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !62
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store float %i.abq, ptr %i.abr, align 4, !tbaa !62
  br label %.lr.ph.us.preheader.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %.lr.ph.us.preheader.i.i.unr-lcssa, %.lr.ph.i334.epil.preheader
  store i64 0, ptr %6, align 8, !tbaa !67
  %i.abs = load float, ptr %i.er, align 4, !tbaa !143 ; 5 uses
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph.us.preheader.i.i
  %indvars.iv42.i.i = phi i64 [ 0, %.lr.ph.us.preheader.i.i ], [ %indvars.iv.next43.i.i, %._crit_edge.us.i.i ] ; 3 uses
  %.036.us.i.i = phi float [ f0x7F7FFFFF, %.lr.ph.us.preheader.i.i ], [ %i.adk, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next43.i.i = add nuw nsw i64 %indvars.iv42.i.i, 1 ; 3 uses
  %.not.i.i338 = icmp eq i64 %indvars.iv.next43.i.i, %wide.trip.count.i ; 2 uses
  %i.abt = trunc nuw nsw i64 %indvars.iv.next43.i.i to i32
  %iv.rem.i.i = select i1 %.not.i.i338, i32 0, i32 %i.abt ; 2 uses
  %.idx.i.i339 = mul nuw nsw i64 %indvars.iv42.i.i, 12
  %i.abu = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i339 ; 2 uses
  %i.abv = mul nuw nsw i32 %iv.rem.i.i, 3
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.abw ; 2 uses
  %i.aby = getelementptr i8, ptr %i.abu, i64 8
  %i.abz = getelementptr i8, ptr %i.abx, i64 8
  %i.aca = zext nneg i32 %iv.rem.i.i to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %.lr.ph.us.i.i
  %indvars.iv.i.i340 = phi i64 [ 0, %.lr.ph.us.i.i ], [ %indvars.iv.next.i.i341, %bb.ca ] ; 4 uses
  %.02533.us.i.i = phi float [ 0.000000e+00, %.lr.ph.us.i.i ], [ %.1.us.i.i, %bb.ca ] ; 3 uses
  %i.acb = icmp eq i64 %indvars.iv.i.i340, %indvars.iv42.i.i
  %i.acc = icmp eq i64 %indvars.iv.i.i340, %i.aca
  %or.cond.us.i.i = select i1 %i.acb, i1 true, i1 %i.acc
  br i1 %or.cond.us.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.idx47.i.i = mul nuw nsw i64 %indvars.iv.i.i340, 12
  %i.acd = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx47.i.i ; 2 uses
  %.val.us.i.i = load float, ptr %i.acd, align 4, !tbaa !62 ; 2 uses
  %i.ace = getelementptr i8, ptr %i.acd, i64 8
  %.val28.us.i.i = load float, ptr %i.ace, align 4, !tbaa !62 ; 2 uses
  %.val29.us.i.i = load float, ptr %i.abu, align 4, !tbaa !62 ; 2 uses
  %.val30.us.i.i = load float, ptr %i.aby, align 4, !tbaa !62 ; 2 uses
  %.val31.us.i.i = load float, ptr %i.abx, align 4, !tbaa !62
  %.val32.us.i.i = load float, ptr %i.abz, align 4, !tbaa !62
  %i.acf = insertelement <2 x float> poison, float %.val.us.i.i, i64 0
  %i.acg = insertelement <2 x float> %i.acf, float %.val31.us.i.i, i64 1
  %i.ach = insertelement <2 x float> poison, float %.val29.us.i.i, i64 0
  %i.aci = shufflevector <2 x float> %i.ach, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acj = fsub <2 x float> %i.acg, %i.aci        ; 3 uses
  %i.ack = insertelement <2 x float> poison, float %.val28.us.i.i, i64 0
  %i.acl = insertelement <2 x float> %i.ack, float %.val32.us.i.i, i64 1
  %i.acm = insertelement <2 x float> poison, float %.val30.us.i.i, i64 0
  %i.acn = shufflevector <2 x float> %i.acm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aco = fsub <2 x float> %i.acl, %i.acn        ; 3 uses
  %i.acp = shufflevector <2 x float> %i.aco, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acq = fmul <2 x float> %i.acp, %i.aco
  %i.acr = shufflevector <2 x float> %i.acj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acr, <2 x float> %i.acj, <2 x float> %i.acq) ; 2 uses
  %i.act = extractelement <2 x float> %i.acs, i64 1 ; 2 uses
  %i.acu = fcmp ogt float %i.act, 0.000000e+00
  %i.acv = extractelement <2 x float> %i.acs, i64 0 ; 2 uses
  %i.acw = fdiv float %i.acv, %i.act
  %.0.i.us.i.i = select i1 %i.acu, float %i.acw, float %i.acv ; 3 uses
  %i.acx = fcmp olt float %.0.i.us.i.i, 0.000000e+00
  %i.acy = fcmp ogt float %.0.i.us.i.i, 1.000000e+00
  %spec.store.select.i.us.i.i = select i1 %i.acy, float 1.000000e+00, float %.0.i.us.i.i
  %.1.i.us.i.i = select i1 %i.acx, float 0.000000e+00, float %spec.store.select.i.us.i.i ; 2 uses
  %i.acz = extractelement <2 x float> %i.acj, i64 1
  %i.ada = call float @llvm.fmuladd.f32(float %.1.i.us.i.i, float %i.acz, float %.val29.us.i.i)
  %i.adb = fsub float %i.ada, %.val.us.i.i        ; 2 uses
  %i.adc = extractelement <2 x float> %i.aco, i64 1
  %i.add = call float @llvm.fmuladd.f32(float %.1.i.us.i.i, float %i.adc, float %.val30.us.i.i)
  %i.ade = fsub float %i.add, %.val28.us.i.i      ; 2 uses
  %i.adf = fmul float %i.ade, %i.ade
  %i.adg = call noundef float @llvm.fmuladd.f32(float %i.adb, float %i.adb, float %i.adf) ; 2 uses
  %i.adh = fcmp ogt float %.02533.us.i.i, %i.adg
  %i.adi = select i1 %i.adh, float %.02533.us.i.i, float %i.adg
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.1.us.i.i = phi float [ %.02533.us.i.i, %bb.by ], [ %i.adi, %bb.bz ] ; 3 uses
  %indvars.iv.next.i.i341 = add nuw nsw i64 %indvars.iv.i.i340, 1 ; 2 uses
  %exitcond.not.i.i342 = icmp eq i64 %indvars.iv.next.i.i341, %wide.trip.count.i
  br i1 %exitcond.not.i.i342, label %._crit_edge.us.i.i, label %bb.by

._crit_edge.us.i.i:                               ; preds = %bb.ca
  %i.adj = fcmp olt float %.036.us.i.i, %.1.us.i.i
  %i.adk = select i1 %i.adj, float %.036.us.i.i, float %.1.us.i.i ; 2 uses
  br i1 %.not.i.i338, label %_ZL13polyMinExtentPKfi.exit.i, label %.lr.ph.us.i.i

_ZL13polyMinExtentPKfi.exit.i:                    ; preds = %._crit_edge.us.i.i
  %i.adl = fdiv float 1.000000e+00, %i.abs        ; 5 uses
  %i.adm = call noundef float @_Z6rcSqrtf(float noundef %i.adk) #7 ; 4 uses
  br i1 %i.es, label %bb.cb, label %._crit_edge.i347

_ZL13polyMinExtentPKfi.exit.thread.i:             ; preds = %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit
  store i64 0, ptr %6, align 8, !tbaa !67
  %i.adn = load float, ptr %i.er, align 4, !tbaa !143 ; 2 uses
  %i.ado = fdiv float 1.000000e+00, %i.adn
  %i.adp = call noundef float @_Z6rcSqrtf(float noundef f0x7F7FFFFF) #7
  br label %._crit_edge.i347

.lr.ph.i334:                                      ; preds = %.lr.ph.i334, %.lr.ph.preheader.i.new
  %indvars.iv.i335 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i336.1, %.lr.ph.i334 ] ; 3 uses
  %niter1185 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter1185.next.1, %.lr.ph.i334 ]
  %i.adq = mul nuw nsw i64 %indvars.iv.i335, 3    ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.adq ; 2 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.adq ; 2 uses
  %i.adt = load <2 x float>, ptr %i.ads, align 4, !tbaa !62
  store <2 x float> %i.adt, ptr %i.adr, align 8, !tbaa !62
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !62
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  store float %i.adv, ptr %i.adw, align 8, !tbaa !62
  %i.adx = mul nuw i64 %indvars.iv.i335, 3
  %i.ady = add nuw i64 %i.adx, 3                  ; 2 uses
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ady ; 2 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ady ; 2 uses
  %i.aeb = load <2 x float>, ptr %i.aea, align 4, !tbaa !62
  store <2 x float> %i.aeb, ptr %i.adz, align 4, !tbaa !62
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !62
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  store float %i.aed, ptr %i.aee, align 4, !tbaa !62
  %indvars.iv.next.i336.1 = add nuw nsw i64 %indvars.iv.i335, 2 ; 2 uses
  %niter1185.next.1 = add i64 %niter1185, 2       ; 2 uses
  %niter1185.ncmp.1 = icmp eq i64 %niter1185.next.1, %unroll_iter1184
  br i1 %niter1185.ncmp.1, label %.lr.ph.us.preheader.i.i.unr-lcssa, label %.lr.ph.i334

bb.cb:                                            ; preds = %_ZL13polyMinExtentPKfi.exit.i
  %i.aef = add nsw i32 %.0254.lcssa, -1
  %i.aeg = add nsw i32 %i.go, -1
  %i.aeh = add nsw i32 %i.gs, -1
  %i.aei = insertelement <2 x float> poison, float %i.adl, i64 0
  %i.aej = shufflevector <2 x float> %i.aei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aek = insertelement <2 x i32> poison, i32 %i.gk, i64 0
  %i.ael = insertelement <2 x i32> %i.aek, i32 %i.gh, i64 1
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i346, %bb.cb
  %.4 = phi i32 [ %.0254.lcssa, %bb.cb ], [ %.5, %.loopexit.i346 ] ; 7 uses
  %indvars.iv589.i = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next590.i, %.loopexit.i346 ] ; 3 uses
  %.0238484.i = phi i32 [ 0, %bb.cb ], [ %.3241.i, %.loopexit.i346 ] ; 2 uses
  %.0247483.i = phi i32 [ %i.aef, %bb.cb ], [ %i.anu, %.loopexit.i346 ] ; 2 uses
  %i.aem = mul nsw i32 %.0247483.i, 3
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aen ; 5 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv589.i, 12
  %i.aep = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i ; 5 uses
  %i.aeq = load float, ptr %i.aeo, align 4, !tbaa !62 ; 5 uses
  %i.aer = load float, ptr %i.aep, align 4, !tbaa !62 ; 5 uses
  %i.aes = fsub float %i.aeq, %i.aer
  %i.aet = call float @llvm.fabs.f32(float %i.aes)
  %i.aeu = fcmp olt float %i.aet, f0x358637BD
  br i1 %i.aeu, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !62
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aep, i64 8
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !62
  %i.aez = fcmp ogt float %i.aew, %i.aey
  br i1 %i.aez, label %bb.cf, label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  %i.afa = fcmp ogt float %i.aeq, %i.aer
  br i1 %i.afa, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.afb = phi float [ %i.aeq, %bb.ce ], [ %i.aeq, %bb.cd ], [ %i.aer, %bb.cf ]
  %i.afc = phi float [ %i.aer, %bb.ce ], [ %i.aer, %bb.cd ], [ %i.aeq, %bb.cf ]
  %.0435.i = phi ptr [ %i.aeo, %bb.ce ], [ %i.aeo, %bb.cd ], [ %i.aep, %bb.cf ] ; 2 uses
  %.0434.i = phi ptr [ %i.aep, %bb.ce ], [ %i.aep, %bb.cd ], [ %i.aeo, %bb.cf ] ; 2 uses
  %.0245.i = phi i1 [ false, %bb.ce ], [ false, %bb.cd ], [ true, %bb.cf ]
  %i.afd = getelementptr inbounds nuw i8, ptr %.0434.i, i64 4
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !62
  %i.aff = getelementptr inbounds nuw i8, ptr %.0435.i, i64 4
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !62 ; 2 uses
  %i.afh = fsub float %i.afe, %i.afg
  %i.afi = getelementptr inbounds nuw i8, ptr %.0434.i, i64 8
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !62
  %i.afk = getelementptr inbounds nuw i8, ptr %.0435.i, i64 8
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !62
  %i.afm = insertelement <2 x float> poison, float %i.afj, i64 0
  %i.afn = insertelement <2 x float> %i.afm, float %i.afc, i64 1
  %i.afo = insertelement <2 x float> poison, float %i.afl, i64 0
  %i.afp = insertelement <2 x float> %i.afo, float %i.afb, i64 1 ; 2 uses
  %i.afq = fsub <2 x float> %i.afn, %i.afp        ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.afq, %i.afq
  %i.afr = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.afs = extractelement <2 x float> %i.afq, i64 1 ; 2 uses
  %i.aft = call float @llvm.fmuladd.f32(float %i.afs, float %i.afs, float %i.afr)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.aft)
  %i.afu = fdiv float %sqrt.i, %3
  %i.afv = call float @llvm.floor.f32(float %i.afu)
  %i.afw = fptosi float %i.afv to i32
  %i.afx = call i32 @llvm.smin.i32(i32 %i.afw, i32 30)
  %spec.store.select.i = add nuw nsw i32 %i.afx, 1 ; 2 uses
  %i.afy = add nsw i32 %spec.store.select.i, %.4  ; 2 uses
  %i.afz = icmp sgt i32 %i.afy, 126
  %i.aga = sub nsw i32 126, %.4
  %spec.select.i = select i1 %i.afz, i32 %i.aga, i32 %spec.store.select.i ; 3 uses
  %.not260452.i = icmp slt i32 %spec.select.i, 0
  br i1 %.not260452.i, label %._crit_edge456.i, label %.lr.ph455.i

.lr.ph455.i:                                      ; preds = %bb.cg
  %i.agb = uitofp nneg i32 %spec.select.i to float
  %i.agc = load float, ptr %i.et, align 8, !tbaa !144 ; 2 uses
  %smin.i = call i32 @llvm.smin.i32(i32 %i.afy, i32 126)
  %reass.sub = sub i32 %smin.i, %.4
  %i.agd = add i32 %reass.sub, 1
  %wide.trip.count554.i = zext i32 %i.agd to i64
  br label %bb.ch

._crit_edge456.i:                                 ; preds = %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  store i32 %spec.select.i, ptr %i.ey, align 4, !tbaa !68
  br label %bb.cu

bb.ch:                                            ; preds = %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, %.lr.ph455.i
end_hunk_0
begin_hunk_1_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
  %i.brf = load i32, ptr %i.bre, align 4, !tbaa !68
  %i.brg = sitofp i32 %i.brf to float
  %i.brh = load float, ptr %i.et, align 8, !tbaa !144
  %i.bri = fmul float %i.brh, %i.brg              ; 2 uses
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bqz, i64 8
  %i.brk = load i32, ptr %i.brj, align 4, !tbaa !68
  %i.brl = mul i32 %i.brd, 45891
  %i.brm = and i32 %i.brl, 65535
  %i.brn = uitofp nneg i32 %i.brm to float
  %i.bro = insertelement <2 x i32> poison, i32 %i.brc, i64 0
  %i.brp = insertelement <2 x i32> %i.bro, i32 %i.brk, i64 1
  %i.brq = sitofp <2 x i32> %i.brp to <2 x float>
  %i.brr = mul i32 %i.brd, 14401
  %i.brs = and i32 %i.brr, 65535
  %i.brt = uitofp nneg i32 %i.brs to float
  %i.bru = insertelement <2 x float> poison, float %i.brn, i64 0
  %i.brv = insertelement <2 x float> %i.bru, float %i.brt, i64 1
  %i.brw = fdiv nnan <2 x float> %i.brv, splat (float 6.553500e+04)
  %i.brx = call nnan <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brw, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00))
  %i.bry = fmul <2 x float> %i.bgr, %i.brx
  %i.brz = fmul <2 x float> %i.bry, splat (float 1.000000e-01)
  %i.bsa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brq, <2 x float> %i.fj, <2 x float> %i.brz) ; 2 uses
  br i1 %i.bqr, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.bqu, label %.lr.ph.i320.i, label %_ZL13distToTriMeshPKfS0_iPKii.exit.i

.lr.ph.i320.i:                                    ; preds = %bb.fp, %_ZL9distPtTriPKfS0_S0_S0_.exit.i.i
  %indvars.iv.i322.i = phi i64 [ %indvars.iv.next.i326.i, %_ZL9distPtTriPKfS0_S0_S0_.exit.i.i ], [ 0, %bb.fp ] ; 2 uses
  %.02124.i.i = phi float [ %.1.i325.i, %_ZL9distPtTriPKfS0_S0_S0_.exit.i.i ], [ f0x7F7FFFFF, %bb.fp ] ; 2 uses
  %.idx.i323.i = shl nuw nsw i64 %indvars.iv.i322.i, 4
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bqs, i64 %.idx.i323.i ; 3 uses
  %i.bsc = load i32, ptr %i.bsb, align 4, !tbaa !68
  %i.bsd = mul nsw i32 %i.bsc, 3
  %i.bse = sext i32 %i.bsd to i64
  %i.bsf = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bse ; 3 uses
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsb, i64 4
  %i.bsh = load i32, ptr %i.bsg, align 4, !tbaa !68
  %i.bsi = mul nsw i32 %i.bsh, 3
  %i.bsj = sext i32 %i.bsi to i64
  %i.bsk = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bsj ; 3 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsb, i64 8
  %i.bsm = load i32, ptr %i.bsl, align 4, !tbaa !68
  %i.bsn = mul nsw i32 %i.bsm, 3
  %i.bso = sext i32 %i.bsn to i64
  %i.bsp = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bso ; 3 uses
  %i.bsq = load float, ptr %i.bsp, align 4, !tbaa !62
  %i.bsr = load float, ptr %i.bsf, align 4, !tbaa !62
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bsp, i64 8
  %i.bst = load float, ptr %i.bss, align 4, !tbaa !62
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bsf, i64 8
  %i.bsv = load float, ptr %i.bsu, align 4, !tbaa !62 ; 2 uses
  %i.bsw = load float, ptr %i.bsk, align 4, !tbaa !62
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsk, i64 8
  %i.bsy = load float, ptr %i.bsx, align 4, !tbaa !62
  %i.bsz = insertelement <2 x float> poison, float %i.bsw, i64 0
  %i.bta = insertelement <2 x float> %i.bsz, float %i.bsq, i64 1
  %i.btb = insertelement <2 x float> poison, float %i.bsr, i64 0 ; 2 uses
  %i.btc = shufflevector <2 x float> %i.btb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btd = fsub <2 x float> %i.bta, %i.btc        ; 5 uses
  %i.bte = insertelement <2 x float> poison, float %i.bsy, i64 0
  %i.btf = insertelement <2 x float> %i.bte, float %i.bst, i64 1
  %i.btg = insertelement <2 x float> poison, float %i.bsv, i64 0
  %i.bth = shufflevector <2 x float> %i.btg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bti = fsub <2 x float> %i.btf, %i.bth        ; 5 uses
  %shift1116 = shufflevector <2 x float> %i.bti, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1117 = fmul <2 x float> %shift1116, %i.bti
  %i.btj = extractelement <2 x float> %foldExtExtBinop1117, i64 0
  %i.btk = extractelement <2 x float> %i.btd, i64 0
  %i.btl = extractelement <2 x float> %i.btd, i64 1
  %i.btm = call noundef float @llvm.fmuladd.f32(float %i.btl, float %i.btk, float %i.btj) ; 3 uses
  %i.btn = fmul <2 x float> %i.bti, %i.bti
  %i.bto = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.btd, <2 x float> %i.btd, <2 x float> %i.btn) ; 3 uses
  %i.btp = insertelement <2 x float> %i.btb, float %i.bsv, i64 1
  %i.btq = fsub <2 x float> %i.bsa, %i.btp        ; 2 uses
  %i.btr = shufflevector <2 x float> %i.btq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bts = fmul <2 x float> %i.bti, %i.btr
  %i.btt = shufflevector <2 x float> %i.btq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.btd, <2 x float> %i.btt, <2 x float> %i.bts) ; 2 uses
  %i.btv = fneg float %i.btm
  %i.btw = fmul float %i.btm, %i.btv
  %i.btx = extractelement <2 x float> %i.bto, i64 0
  %i.bty = extractelement <2 x float> %i.bto, i64 1
  %i.btz = call float @llvm.fmuladd.f32(float %i.bty, float %i.btx, float %i.btw)
  %i.bua = fdiv float 1.000000e+00, %i.btz
  %i.bub = shufflevector <2 x float> %i.btu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.buc = insertelement <2 x float> poison, float %i.btm, i64 0
  %i.bud = shufflevector <2 x float> %i.buc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bue = fneg <2 x float> %i.btu
  %i.buf = fmul <2 x float> %i.bud, %i.bue
  %i.bug = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bto, <2 x float> %i.bub, <2 x float> %i.buf)
  %i.buh = insertelement <2 x float> poison, float %i.bua, i64 0
  %i.bui = shufflevector <2 x float> %i.buh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.buj = fmul <2 x float> %i.bug, %i.bui        ; 3 uses
  %i.buk = fcmp ult <2 x float> %i.buj, splat (float f0xB8D1B717)
  %i.bul = bitcast <2 x i1> %i.buk to i2
  %or.cond.not54.i.i.i = icmp ne i2 %i.bul, 0
  %i.bum = extractelement <2 x float> %i.buj, i64 0 ; 2 uses
  %i.bun = extractelement <2 x float> %i.buj, i64 1 ; 2 uses
  %i.buo = fadd float %i.bum, %i.bun
  %i.bup = fcmp ugt float %i.buo, 1.000100e+00
  %or.cond34.i.i.i = or i1 %or.cond.not54.i.i.i, %i.bup
  br i1 %or.cond34.i.i.i, label %_ZL9distPtTriPKfS0_S0_S0_.exit.i.i, label %bb.fq

bb.fq:                                            ; preds = %.lr.ph.i320.i
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bsk, i64 4
  %i.bur = load float, ptr %i.buq, align 4, !tbaa !62
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bsf, i64 4
  %i.but = load float, ptr %i.bus, align 4, !tbaa !62 ; 3 uses
  %i.buu = fsub float %i.bur, %i.but
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bsp, i64 4
  %i.buw = load float, ptr %i.buv, align 4, !tbaa !62
  %i.bux = fsub float %i.buw, %i.but
  %i.buy = call float @llvm.fmuladd.f32(float %i.bux, float %i.bum, float %i.but)
  %i.buz = call float @llvm.fmuladd.f32(float %i.buu, float %i.bun, float %i.buy)
  %i.bva = fsub float %i.buz, %i.bri
  %i.bvb = call float @llvm.fabs.f32(float %i.bva)
  br label %_ZL9distPtTriPKfS0_S0_S0_.exit.i.i

_ZL9distPtTriPKfS0_S0_S0_.exit.i.i:               ; preds = %bb.fq, %.lr.ph.i320.i
  %.0.i.i324.i = phi float [ %i.bvb, %bb.fq ], [ f0x7F7FFFFF, %.lr.ph.i320.i ] ; 2 uses
  %i.bvc = fcmp olt float %.0.i.i324.i, %.02124.i.i
  %.1.i325.i = select i1 %i.bvc, float %.0.i.i324.i, float %.02124.i.i ; 2 uses
  %indvars.iv.next.i326.i = add nuw nsw i64 %indvars.iv.i322.i, 1 ; 2 uses
  %exitcond.not.i327.i = icmp eq i64 %indvars.iv.next.i326.i, %wide.trip.count.i321.i
  br i1 %exitcond.not.i327.i, label %_ZL13distToTriMeshPKfS0_iPKii.exit.i, label %.lr.ph.i320.i

_ZL13distToTriMeshPKfS0_iPKii.exit.i:             ; preds = %_ZL9distPtTriPKfS0_S0_S0_.exit.i.i, %bb.fp
  %.021.lcssa.i.i = phi float [ f0x7F7FFFFF, %bb.fp ], [ %.1.i325.i, %_ZL9distPtTriPKfS0_S0_S0_.exit.i.i ] ; 2 uses
  %i.bvd = fcmp oeq float %.021.lcssa.i.i, f0x7F7FFFFF
  %..021.i.i = select i1 %i.bvd, float -1.000000e+00, float %.021.lcssa.i.i ; 3 uses
  %i.bve = fcmp uge float %..021.i.i, 0.000000e+00
  %i.bvf = fcmp ogt float %..021.i.i, %.0218513.i
  %or.cond.i332 = select i1 %i.bve, i1 %i.bvf, i1 false
  br i1 %or.cond.i332, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_ZL13distToTriMeshPKfS0_iPKii.exit.i
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %_ZL13distToTriMeshPKfS0_iPKii.exit.i, %bb.fo, %.lr.ph516.i
  %.sroa.6.2.i = phi float [ %.sroa.6.0511.i, %.lr.ph516.i ], [ %.sroa.6.0511.i, %bb.fo ], [ %i.bri, %bb.fr ], [ %.sroa.6.0511.i, %_ZL13distToTriMeshPKfS0_iPKii.exit.i ] ; 2 uses
  %.4222.i = phi float [ %.0218513.i, %.lr.ph516.i ], [ %.0218513.i, %bb.fo ], [ %..021.i.i, %bb.fr ], [ %.0218513.i, %_ZL13distToTriMeshPKfS0_iPKii.exit.i ] ; 2 uses
  %.4.i321 = phi i32 [ %.0217514.i, %.lr.ph516.i ], [ %.0217514.i, %bb.fo ], [ %i.brd, %bb.fr ], [ %.0217514.i, %_ZL13distToTriMeshPKfS0_iPKii.exit.i ] ; 3 uses
  %i.bvg = phi <2 x float> [ %i.bqy, %.lr.ph516.i ], [ %i.bqy, %bb.fo ], [ %i.bsa, %bb.fr ], [ %i.bqy, %_ZL13distToTriMeshPKfS0_iPKii.exit.i ] ; 3 uses
  %indvars.iv.next602.i = add nuw nsw i64 %indvars.iv601.i, 1 ; 2 uses
  %exitcond605.not.i = icmp eq i64 %indvars.iv.next602.i, %wide.trip.count604.i
  br i1 %exitcond605.not.i, label %._crit_edge517.i, label %.lr.ph516.i

bb.ft:                                            ; preds = %._crit_edge517.i
  %i.bvh = shl nsw i32 %.4.i321, 2
  %i.bvi = sext i32 %i.bvh to i64
  %i.bvj = getelementptr [4 x i8], ptr %.sroa.32.11, i64 %i.bvi
  %i.bvk = getelementptr i8, ptr %i.bvj, i64 12
  store i32 1, ptr %i.bvk, align 4, !tbaa !68
  %.idx868.a = mul nsw i64 %indvars.iv650, 12
  %i.bvl = getelementptr inbounds i8, ptr %i.g, i64 %.idx868.a ; 3 uses
  %i.bvm = extractelement <2 x float> %i.bvg, i64 0
  store float %i.bvm, ptr %i.bvl, align 4, !tbaa !62
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvl, i64 4
  store float %.sroa.6.2.i, ptr %i.bvn, align 4, !tbaa !62
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvl, i64 8
  %i.bvp = extractelement <2 x float> %i.bvg, i64 1
  store float %i.bvp, ptr %i.bvo, align 4, !tbaa !62
  %indvars.iv.next651 = add nsw i64 %indvars.iv650, 1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next651 to i32 ; 4 uses
  store i64 0, ptr %6, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bvq = mul nsw i64 %indvars.iv.next651, 10    ; 2 uses
  %i.bvr = mul nsw i32 %indvars, 10               ; 2 uses
  %i.bvs = mul nsw i64 %indvars.iv.next651, 40    ; 2 uses
  %or.cond490 = icmp sgt i64 %indvars.iv650, -1
  %.not.i.i.i.i324 = icmp slt i64 %.sroa.11.3, %i.bvs
  %or.cond491 = select i1 %or.cond490, i1 %.not.i.i.i.i324, i1 false
  br i1 %or.cond491, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i.i328, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i.i328: ; preds = %bb.ft
  %i.bvt = shl nsw i64 %.sroa.11.3, 1
  %..i.i.i.i.i325 = call i64 @llvm.smax.i64(i64 %i.bvt, i64 %i.bvs) ; 2 uses
  %i.bvu = shl nuw nsw i64 %..i.i.i.i.i325, 2
  %i.bvv = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bvu, i32 noundef 1) #7
  call void @_Z6rcFreePv(ptr noundef %.sroa.14471.6) #7
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i.i: ; preds = %bb.ft, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i.i328
  %.sroa.11.4 = phi i64 [ %..i.i.i.i.i325, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i.i328 ], [ %.sroa.11.3, %bb.ft ] ; 2 uses
  %.sroa.14471.7 = phi ptr [ %i.bvv, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i.i328 ], [ %.sroa.14471.6, %bb.ft ] ; 8 uses
  br i1 %i.apr, label %.lr.ph.i331.preheader.i, label %.preheader134.thread.i.i

.lr.ph.i331.preheader.i:                          ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i.i
  %.pre619.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !68
  %i.bvw = trunc nsw i64 %i.bvq to i32
  br label %.lr.ph.i331.i

.preheader134.thread.i.i:                         ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i.i
  store i32 0, ptr %i.b, align 4
  br label %._crit_edge.i328.i

.preheader134.i.i:                                ; preds = %_ZL7addEdgeP9rcContextPiRiiiiii.exit.i.i
  store i32 %8, ptr %i.b, align 4
  %i.bvx = icmp sgt i32 %8, 0
  br i1 %i.bvx, label %.lr.ph140.i.i, label %._crit_edge.i328.i

.lr.ph.i331.i:                                    ; preds = %_ZL7addEdgeP9rcContextPiRiiiiii.exit.i.i, %.lr.ph.i331.preheader.i
  %i.bvy = phi i32 [ %i.bwb, %_ZL7addEdgeP9rcContextPiRiiiiii.exit.i.i ], [ %.pre619.i, %.lr.ph.i331.preheader.i ] ; 3 uses
  %indvars.iv.i333.i = phi i64 [ %indvars.iv.next.i335.i, %_ZL7addEdgeP9rcContextPiRiiiiii.exit.i.i ], [ 0, %.lr.ph.i331.preheader.i ] ; 2 uses
  %i.bvz = phi i32 [ %8, %_ZL7addEdgeP9rcContextPiRiiiiii.exit.i.i ], [ 0, %.lr.ph.i331.preheader.i ] ; 9 uses
  %i.bwa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i333.i
  %i.bwb = load i32, ptr %i.bwa, align 4, !tbaa !68 ; 4 uses
  %i.bwc = sext i32 %i.bvz to i64
  %.not.i.i334.i = icmp sgt i64 %i.bvq, %i.bwc
  br i1 %.not.i.i334.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %.lr.ph.i331.i
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %i.bvz, i32 noundef %i.bvw) #7
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit.i.i

bb.fv:                                            ; preds = %.lr.ph.i331.i
  %i.bwd = icmp sgt i32 %i.bvz, 0
  br i1 %i.bwd, label %.lr.ph.preheader.i.i.i.i, label %_ZL8findEdgePKiiii.exit.thread.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.fv
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.bvz to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fz, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.fz ] ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i.i, 4
  %i.bwe = getelementptr inbounds nuw i8, ptr %.sroa.14471.7, i64 %.idx.i.i.i.i ; 3 uses
  %i.bwf = load i32, ptr %i.bwe, align 4, !tbaa !68 ; 2 uses
  %i.bwg = icmp eq i32 %i.bwf, %i.bvy
  br i1 %i.bwg, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.lr.ph.i.i.i.i
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwe, i64 4
  %i.bwi = load i32, ptr %i.bwh, align 4, !tbaa !68
  %i.bwj = icmp eq i32 %i.bwi, %i.bwb
  br i1 %i.bwj, label %_ZL7addEdgeP9rcContextPiRiiiiii.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.lr.ph.i.i.i.i
  %i.bwk = icmp eq i32 %i.bwf, %i.bwb
  br i1 %i.bwk, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwe, i64 4
  %i.bwm = load i32, ptr %i.bwl, align 4, !tbaa !68
  %i.bwn = icmp eq i32 %i.bwm, %i.bvy
  br i1 %i.bwn, label %_ZL7addEdgeP9rcContextPiRiiiiii.exit.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZL8findEdgePKiiii.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

_ZL8findEdgePKiiii.exit.thread.i.i.i:             ; preds = %bb.fz, %bb.fv
  %i.bwo = shl nsw i32 %i.bvz, 2
  %i.bwp = sext i32 %i.bwo to i64
  %i.bwq = getelementptr inbounds [4 x i8], ptr %.sroa.14471.7, i64 %i.bwp ; 4 uses
  store i32 %i.bvy, ptr %i.bwq, align 4, !tbaa !68
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 4
  store i32 %i.bwb, ptr %i.bwr, align 4, !tbaa !68
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwq, i64 8
  store i32 -2, ptr %i.bws, align 4, !tbaa !68
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bwq, i64 12
  store i32 -1, ptr %i.bwt, align 4, !tbaa !68
  %i.bwu = add nsw i32 %i.bvz, 1
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit.i.i

_ZL7addEdgeP9rcContextPiRiiiiii.exit.i.i:         ; preds = %bb.fy, %bb.fw, %_ZL8findEdgePKiiii.exit.thread.i.i.i, %bb.fu
  %8 = phi i32 [ %i.bwu, %_ZL8findEdgePKiiii.exit.thread.i.i.i ], [ %i.bvz, %bb.fu ], [ %i.bvz, %bb.fw ], [ %i.bvz, %bb.fy ] ; 4 uses
  %indvars.iv.next.i335.i = add nuw nsw i64 %indvars.iv.i333.i, 1 ; 2 uses
  %exitcond.not.i336.i = icmp eq i64 %indvars.iv.next.i335.i, %wide.trip.count.i332.i
  br i1 %exitcond.not.i336.i, label %.preheader134.i.i, label %.lr.ph.i331.i

.lr.ph140.i.i:                                    ; preds = %.preheader134.i.i, %bb.gd
  %indvars.iv153.i.i = phi i64 [ %indvars.iv.next154.i.i, %bb.gd ], [ 0, %.preheader134.i.i ] ; 4 uses
  %.idx497 = shl nuw nsw i64 %indvars.iv153.i.i, 4
  %i.bwv = getelementptr inbounds nuw i8, ptr %.sroa.14471.7, i64 %.idx497 ; 2 uses
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 8
  %i.bwx = load i32, ptr %i.bww, align 4, !tbaa !68
  %i.bwy = icmp eq i32 %i.bwx, -1
  br i1 %i.bwy, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %.lr.ph140.i.i
  %i.bwz = trunc nuw nsw i64 %indvars.iv153.i.i to i32
  call fastcc void @_ZL13completeFacetP9rcContextPKfiPiRiiS4_i(ptr noundef %0, ptr noundef nonnull readonly %i.g, i32 noundef %indvars, ptr noundef %.sroa.14471.7, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.bvr, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.bwz)
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %.lr.ph140.i.i
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwv, i64 12
  %i.bxb = load i32, ptr %i.bxa, align 4, !tbaa !68
  %i.bxc = icmp eq i32 %i.bxb, -1
  br i1 %i.bxc, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.bxd = trunc nuw nsw i64 %indvars.iv153.i.i to i32
  call fastcc void @_ZL13completeFacetP9rcContextPKfiPiRiiS4_i(ptr noundef %0, ptr noundef nonnull readonly %i.g, i32 noundef %indvars, ptr noundef %.sroa.14471.7, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.bvr, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.bxd)
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %indvars.iv.next154.i.i = add nuw nsw i64 %indvars.iv153.i.i, 1 ; 2 uses
  %i.bxe = load i32, ptr %i.b, align 4, !tbaa !68 ; 2 uses
  %i.bxf = sext i32 %i.bxe to i64
  %i.bxg = icmp slt i64 %indvars.iv.next154.i.i, %i.bxf
  br i1 %i.bxg, label %.lr.ph140.i.i, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.gd
  %.pre164.i.i.a = load i32, ptr %i.a, align 4, !tbaa !68
  br label %._crit_edge.i328.i

._crit_edge.i328.i:                               ; preds = %._crit_edge.loopexit.i.i, %.preheader134.i.i, %.preheader134.thread.i.i
  %i.bxh = phi i32 [ 0, %.preheader134.i.i ], [ %.pre164.i.i.a, %._crit_edge.loopexit.i.i ], [ 0, %.preheader134.thread.i.i ] ; 2 uses
  %.lcssa.i.i = phi i32 [ %8, %.preheader134.i.i ], [ %i.bxe, %._crit_edge.loopexit.i.i ], [ 0, %.preheader134.thread.i.i ] ; 2 uses
  %i.bxi = shl nsw i32 %i.bxh, 2                  ; 2 uses
  %i.bxj = sext i32 %i.bxi to i64                 ; 6 uses
  %i.bxk = load i64, ptr %6, align 8, !tbaa !67   ; 3 uses
  %i.bxl = icmp sgt i64 %i.bxk, %i.bxj
  br i1 %i.bxl, label %.sink.split.i.i112.i.i, label %bb.ge

bb.ge:                                            ; preds = %._crit_edge.i328.i
  %i.bxm = icmp slt i64 %i.bxk, %i.bxj
  br i1 %i.bxm, label %bb.gf, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit121.i.i

bb.gf:                                            ; preds = %bb.ge
  %i.bxn = load i64, ptr %i.ag, align 8, !tbaa !124 ; 2 uses
  %.not.i.i111.i.i = icmp slt i64 %i.bxn, %i.bxj
  br i1 %.not.i.i111.i.i, label %bb.gg, label %.sink.split.i.i112.i.i

bb.gg:                                            ; preds = %bb.gf
  %i.bxo = shl nsw i64 %i.bxn, 1
  %..i.i.i113.i.i = call i64 @llvm.smax.i64(i64 %i.bxo, i64 %i.bxj) ; 2 uses
  %i.bxp = shl nsw i64 %..i.i.i113.i.i, 2
  %i.bxq = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bxp, i32 noundef 1) #7 ; 9 uses
  %i.bxr = ptrtoaddr ptr %i.bxq to i64
  %.not.i.i.i114.i.i = icmp eq ptr %i.bxq, null
  %.pre.i116.i.i = load ptr, ptr %i.ah, align 8, !tbaa !66 ; 8 uses
  %.pre.i116.i.i998 = ptrtoaddr ptr %.pre.i116.i.i to i64
  br i1 %.not.i.i.i114.i.i, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i117.i.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.bxs = load i64, ptr %6, align 8, !tbaa !67   ; 7 uses
  %i.bxt = icmp sgt i64 %i.bxs, 0
  br i1 %i.bxt, label %.lr.ph.i.i.i.i118.i.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i117.i.i

.lr.ph.i.i.i.i118.i.i.preheader:                  ; preds = %bb.gh
  %min.iters.check1001 = icmp ult i64 %i.bxs, 8
  %i.bxu = sub i64 %.pre.i116.i.i998, %i.bxr
  %diff.check999 = icmp ugt i64 %i.bxu, -32
  %or.cond1108 = select i1 %min.iters.check1001, i1 true, i1 %diff.check999
  br i1 %or.cond1108, label %.lr.ph.i.i.i.i118.i.i.preheader1129, label %vector.ph1002

vector.ph1002:                                    ; preds = %.lr.ph.i.i.i.i118.i.i.preheader
  %n.vec1003 = and i64 %i.bxs, 9223372036854775800 ; 3 uses
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph1002
  %index1005 = phi i64 [ 0, %vector.ph1002 ], [ %index.next1008, %vector.body1004 ] ; 3 uses
  %i.bxv = getelementptr inbounds nuw [4 x i8], ptr %i.bxq, i64 %index1005 ; 2 uses
  %i.bxw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i116.i.i, i64 %index1005 ; 2 uses
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxw, i64 16
  %wide.load1006 = load <4 x i32>, ptr %i.bxw, align 4, !tbaa !68
  %wide.load1007 = load <4 x i32>, ptr %i.bxx, align 4, !tbaa !68
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxv, i64 16
  store <4 x i32> %wide.load1006, ptr %i.bxv, align 4, !tbaa !68
  store <4 x i32> %wide.load1007, ptr %i.bxy, align 4, !tbaa !68
  %index.next1008 = add nuw i64 %index1005, 8     ; 2 uses
  %i.bxz = icmp eq i64 %index.next1008, %n.vec1003
  br i1 %i.bxz, label %middle.block1009, label %vector.body1004, !llvm.loop !102

middle.block1009:                                 ; preds = %vector.body1004
  %cmp.n1010 = icmp eq i64 %i.bxs, %n.vec1003
  br i1 %cmp.n1010, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i117.i.i, label %.lr.ph.i.i.i.i118.i.i.preheader1129

.lr.ph.i.i.i.i118.i.i.preheader1129:              ; preds = %.lr.ph.i.i.i.i118.i.i.preheader, %middle.block1009
  %.07.i.i.i.i119.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i118.i.i.preheader ], [ %n.vec1003, %middle.block1009 ] ; 3 uses
  %xtraiter1198 = and i64 %i.bxs, 3               ; 2 uses
  %lcmp.mod1199.not = icmp eq i64 %xtraiter1198, 0
  br i1 %lcmp.mod1199.not, label %.lr.ph.i.i.i.i118.i.i.prol.loopexit, label %.lr.ph.i.i.i.i118.i.i.prol

.lr.ph.i.i.i.i118.i.i.prol:                       ; preds = %.lr.ph.i.i.i.i118.i.i.preheader1129, %.lr.ph.i.i.i.i118.i.i.prol
  %.07.i.i.i.i119.i.i.prol = phi i64 [ %i.byd, %.lr.ph.i.i.i.i118.i.i.prol ], [ %.07.i.i.i.i119.i.i.ph, %.lr.ph.i.i.i.i118.i.i.preheader1129 ] ; 3 uses
  %prol.iter1200 = phi i64 [ %prol.iter1200.next, %.lr.ph.i.i.i.i118.i.i.prol ], [ 0, %.lr.ph.i.i.i.i118.i.i.preheader1129 ]
  %i.bya = getelementptr inbounds nuw [4 x i8], ptr %i.bxq, i64 %.07.i.i.i.i119.i.i.prol
  %i.byb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i116.i.i, i64 %.07.i.i.i.i119.i.i.prol
  %i.byc = load i32, ptr %i.byb, align 4, !tbaa !68
  store i32 %i.byc, ptr %i.bya, align 4, !tbaa !68
  %i.byd = add nuw nsw i64 %.07.i.i.i.i119.i.i.prol, 1 ; 2 uses
  %prol.iter1200.next = add i64 %prol.iter1200, 1 ; 2 uses
  %prol.iter1200.cmp.not = icmp eq i64 %prol.iter1200.next, %xtraiter1198
  br i1 %prol.iter1200.cmp.not, label %.lr.ph.i.i.i.i118.i.i.prol.loopexit, label %.lr.ph.i.i.i.i118.i.i.prol, !llvm.loop !103

.lr.ph.i.i.i.i118.i.i.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i118.i.i.prol, %.lr.ph.i.i.i.i118.i.i.preheader1129
  %.07.i.i.i.i119.i.i.unr = phi i64 [ %.07.i.i.i.i119.i.i.ph, %.lr.ph.i.i.i.i118.i.i.preheader1129 ], [ %i.byd, %.lr.ph.i.i.i.i118.i.i.prol ]
  %i.bye = sub nsw i64 %.07.i.i.i.i119.i.i.ph, %i.bxs
  %i.byf = icmp ugt i64 %i.bye, -4
  br i1 %i.byf, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i117.i.i, label %.lr.ph.i.i.i.i118.i.i

.lr.ph.i.i.i.i118.i.i:                            ; preds = %.lr.ph.i.i.i.i118.i.i.prol.loopexit, %.lr.ph.i.i.i.i118.i.i
  %.07.i.i.i.i119.i.i = phi i64 [ %i.byv, %.lr.ph.i.i.i.i118.i.i ], [ %.07.i.i.i.i119.i.i.unr, %.lr.ph.i.i.i.i118.i.i.prol.loopexit ] ; 6 uses
  %i.byg = getelementptr inbounds nuw [4 x i8], ptr %i.bxq, i64 %.07.i.i.i.i119.i.i
  %i.byh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i116.i.i, i64 %.07.i.i.i.i119.i.i
  %i.byi = load i32, ptr %i.byh, align 4, !tbaa !68
  store i32 %i.byi, ptr %i.byg, align 4, !tbaa !68
  %i.byj = add nuw nsw i64 %.07.i.i.i.i119.i.i, 1 ; 2 uses
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.bxq, i64 %i.byj
  %i.byl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i116.i.i, i64 %i.byj
  %i.bym = load i32, ptr %i.byl, align 4, !tbaa !68
  store i32 %i.bym, ptr %i.byk, align 4, !tbaa !68
  %i.byn = add nuw nsw i64 %.07.i.i.i.i119.i.i, 2 ; 2 uses
  %i.byo = getelementptr inbounds nuw [4 x i8], ptr %i.bxq, i64 %i.byn
  %i.byp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i116.i.i, i64 %i.byn
  %i.byq = load i32, ptr %i.byp, align 4, !tbaa !68
  store i32 %i.byq, ptr %i.byo, align 4, !tbaa !68
  %i.byr = add nuw nsw i64 %.07.i.i.i.i119.i.i, 3 ; 2 uses
  %i.bys = getelementptr inbounds nuw [4 x i8], ptr %i.bxq, i64 %i.byr
  %i.byt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i116.i.i, i64 %i.byr
  %i.byu = load i32, ptr %i.byt, align 4, !tbaa !68
  store i32 %i.byu, ptr %i.bys, align 4, !tbaa !68
  %i.byv = add nuw nsw i64 %.07.i.i.i.i119.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i120.i.i.3 = icmp eq i64 %i.byv, %i.bxs
  br i1 %exitcond.not.i.i.i.i120.i.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i117.i.i, label %.lr.ph.i.i.i.i118.i.i, !llvm.loop !104

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i117.i.i: ; preds = %.lr.ph.i.i.i.i118.i.i.prol.loopexit, %.lr.ph.i.i.i.i118.i.i, %middle.block1009, %bb.gh, %bb.gg
  call void @_Z6rcFreePv(ptr noundef %.pre.i116.i.i) #7
  store ptr %i.bxq, ptr %i.ah, align 8, !tbaa !66
  store i64 %..i.i.i113.i.i, ptr %i.ag, align 8, !tbaa !124
  br label %.sink.split.i.i112.i.i

.sink.split.i.i112.i.i:                           ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i117.i.i, %bb.gf, %._crit_edge.i328.i
  store i64 %i.bxj, ptr %6, align 8, !tbaa !67
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit121.i.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit121.i.i: ; preds = %.sink.split.i.i112.i.i, %bb.ge
  %i.byw = phi i64 [ %i.bxk, %bb.ge ], [ %i.bxj, %.sink.split.i.i112.i.i ] ; 2 uses
  %i.byx = icmp sgt i32 %i.bxh, 0
  br i1 %i.byx, label %.lr.ph143.i.i, label %.preheader133.i.i

.lr.ph143.i.i:                                    ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit121.i.i
  %i.byy = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.byz = zext nneg i32 %i.bxi to i64
  %i.bza = shl nuw nsw i64 %i.byz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.byy, i8 -1, i64 %i.bza, i1 false), !tbaa !68
  br label %.preheader133.i.i

.preheader133.i.i:                                ; preds = %.lr.ph143.i.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit121.i.i
  %i.bzb = icmp sgt i32 %.lcssa.i.i, 0
  br i1 %i.bzb, label %.lr.ph145.i.i, label %.preheader.i.i

.lr.ph145.i.i:                                    ; preds = %.preheader133.i.i
  %wide.trip.count162.i.i = zext nneg i32 %.lcssa.i.i to i64
  %i.bzc = load ptr, ptr %i.ah, align 8           ; 2 uses
  br label %bb.gi

.preheader.i.i:                                   ; preds = %bb.gu, %.preheader133.i.i
  %i.bzd = icmp sgt i64 %i.byw, 3
  br i1 %i.bzd, label %.lr.ph147.i.i, label %_ZL12delaunayHullP9rcContextiPKfiPKiR12rcTempVectorIiES7_.exit.i

.lr.ph147.i.i:                                    ; preds = %.preheader.i.i
  %.pre165.i.i = load ptr, ptr %i.ah, align 8, !tbaa !66
  br label %bb.gv

bb.gi:                                            ; preds = %bb.gu, %.lr.ph145.i.i
  %indvars.iv159.i.i = phi i64 [ 0, %.lr.ph145.i.i ], [ %indvars.iv.next160.i.i, %bb.gu ] ; 2 uses
  %.idx.i330.i = shl nuw nsw i64 %indvars.iv159.i.i, 4
  %i.bze = getelementptr inbounds nuw i8, ptr %.sroa.14471.7, i64 %.idx.i330.i ; 12 uses
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 12
  %i.bzg = load i32, ptr %i.bzf, align 4, !tbaa !68 ; 2 uses
  %i.bzh = icmp sgt i32 %i.bzg, -1
  br i1 %i.bzh, label %bb.gj, label %bb.go

bb.gj:                                            ; preds = %bb.gi
  %i.bzi = shl nuw nsw i32 %i.bzg, 2
  %i.bzj = zext nneg i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %i.bzc, i64 %i.bzj ; 4 uses
  %i.bzl = load i32, ptr %i.bzk, align 4, !tbaa !68 ; 2 uses
  %i.bzm = icmp eq i32 %i.bzl, -1
  br i1 %i.bzm, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.bzn = load i32, ptr %i.bze, align 4, !tbaa !68
  store i32 %i.bzn, ptr %i.bzk, align 4, !tbaa !68
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bze, i64 4
  %i.bzp = load i32, ptr %i.bzo, align 4, !tbaa !68
  br label %.sink.split.i.i

bb.gl:                                            ; preds = %bb.gj
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bze, i64 4
  %i.bzr = load i32, ptr %i.bzq, align 4, !tbaa !68 ; 2 uses
  %i.bzs = icmp eq i32 %i.bzl, %i.bzr
  br i1 %i.bzs, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.bzt = load i32, ptr %i.bze, align 4, !tbaa !68
  br label %.sink.split.i.i

bb.gn:                                            ; preds = %bb.gl
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzk, i64 4
  %i.bzv = load i32, ptr %i.bzu, align 4, !tbaa !68
  %i.bzw = load i32, ptr %i.bze, align 4, !tbaa !68
  %i.bzx = icmp eq i32 %i.bzv, %i.bzw
  br i1 %i.bzx, label %.sink.split.i.i, label %bb.go

.sink.split.i.i:                                  ; preds = %bb.gn, %bb.gm, %bb.gk
  %.sink192.i.i = phi i64 [ 4, %bb.gk ], [ 8, %bb.gm ], [ 8, %bb.gn ]
  %.sink.i.i = phi i32 [ %i.bzp, %bb.gk ], [ %i.bzt, %bb.gm ], [ %i.bzr, %bb.gn ]
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzk, i64 %.sink192.i.i
  store i32 %.sink.i.i, ptr %i.bzy, align 4, !tbaa !68
  br label %bb.go

bb.go:                                            ; preds = %.sink.split.i.i, %bb.gn, %bb.gi
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bze, i64 8
  %i.caa = load i32, ptr %i.bzz, align 4, !tbaa !68 ; 2 uses
  %i.cab = icmp sgt i32 %i.caa, -1
end_hunk_1
begin_hunk_2_@_ZL13completeFacetP9rcContextPKfiPiRiiS4_i:bb.a
  %i.ex = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.es, <2 x float> %i.ew) ; 2 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0 ; 2 uses
  %i.fb = extractelement <2 x float> %i.ez, i64 1 ; 2 uses
  %i.fc = fmul float %i.fa, %i.fb
  %i.fd = fcmp olt float %i.fc, 0.000000e+00
  br i1 %i.fd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fe = fsub float %.val.i, %i.ae
  %i.ff = fsub float %.val34.i, %i.ag
  %i.fg = fneg float %i.fe
  %i.fh = fmul float %i.ax, %i.fg
  %i.fi = tail call noundef float @llvm.fmuladd.f32(float %i.as, float %i.ff, float %i.fh) ; 2 uses
  %i.fj = fadd float %i.fa, %i.fi
  %i.fk = fsub float %i.fj, %i.fb
  %i.fl = fmul float %i.fi, %i.fk
  %i.fm = fcmp uge float %i.fl, 0.000000e+00
  br i1 %i.fm, label %bb.q, label %_ZL12circumCirclePKfS0_S0_PfRf.exit

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i112, label %.lr.ph.i

.lr.ph.i112:                                      ; preds = %bb.q
  %i.fn = fsub float %i.ah, %i.ad
  %i.fo = fsub float %i.aj, %i.af
  %i.fp = insertelement <2 x float> poison, float %i.af, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.aj, i64 1
  %i.fr = insertelement <2 x float> %i.ap, float %i.ah, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph.i112
  %indvars.iv.i114 = phi i64 [ 0, %.lr.ph.i112 ], [ %indvars.iv.next.i126, %bb.u ] ; 2 uses
  %.idx.i115 = shl nuw nsw i64 %indvars.iv.i114, 4
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i115 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !68 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !68 ; 3 uses
  %i.fw = icmp eq i32 %i.ft, %.0103
  %i.fx = zext i32 %i.ft to i64
  %i.fy = icmp eq i64 %indvars.iv, %i.fx
  %or.cond.i116 = or i1 %i.fw, %i.fy
  %i.fz = icmp eq i32 %i.fv, %.0103
  %i.ga = zext i32 %i.fv to i64
  %i.gb = icmp eq i64 %indvars.iv, %i.ga
  %i.gc = or i1 %i.fz, %i.gb
  %or.cond33.i117 = select i1 %or.cond.i116, i1 true, i1 %i.gc
  br i1 %or.cond33.i117, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gd = mul nsw i32 %i.ft, 3
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ge ; 2 uses
  %i.gg = mul nsw i32 %i.fv, 3
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gh ; 2 uses
  %.val.i118 = load float, ptr %i.gf, align 4, !tbaa !62 ; 3 uses
  %i.gj = getelementptr i8, ptr %i.gf, i64 8
  %.val34.i119 = load float, ptr %i.gj, align 4, !tbaa !62 ; 3 uses
  %.val35.i120 = load float, ptr %i.gi, align 4, !tbaa !62
  %i.gk = getelementptr i8, ptr %i.gi, i64 8
  %.val36.i121 = load float, ptr %i.gk, align 4, !tbaa !62
  %i.gl = fsub float %.val35.i120, %.val.i118
  %i.gm = fsub float %.val36.i121, %.val34.i119
  %i.gn = insertelement <2 x float> poison, float %.val.i118, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = fsub <2 x float> %i.fr, %i.go
  %i.gq = insertelement <2 x float> poison, float %.val34.i119, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fsub <2 x float> %i.fq, %i.gr
  %i.gt = fneg <2 x float> %i.gp
  %i.gu = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x float> %i.gv, %i.gt
  %i.gx = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.gs, <2 x float> %i.gw) ; 2 uses
  %i.ha = extractelement <2 x float> %i.gz, i64 0 ; 2 uses
  %i.hb = extractelement <2 x float> %i.gz, i64 1 ; 2 uses
  %i.hc = fmul float %i.ha, %i.hb
  %i.hd = fcmp olt float %i.hc, 0.000000e+00
  br i1 %i.hd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.he = fsub float %.val.i118, %i.ad
  %i.hf = fsub float %.val34.i119, %i.af
  %i.hg = fneg float %i.he
  %i.hh = fmul float %i.fo, %i.hg
  %i.hi = tail call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.hf, float %i.hh) ; 2 uses
  %i.hj = fadd float %i.ha, %i.hi
  %i.hk = fsub float %i.hj, %i.hb
  %i.hl = fmul float %i.hi, %i.hk
  %i.hm = fcmp uge float %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.u, label %_ZL12circumCirclePKfS0_S0_PfRf.exit

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i114, 1 ; 2 uses
  %exitcond.not.i127 = icmp eq i64 %indvars.iv.next.i126, %wide.trip.count.i
  br i1 %exitcond.not.i127, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.u, %bb.n
  %i.hn = fcmp ogt float %i.ay, f0x358637BD
  %i.ho = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.hp = insertelement <2 x float> %i.ho, float %i.ae, i64 1 ; 2 uses
  br i1 %i.hn, label %bb.v, label %_ZL12circumCirclePKfS0_S0_PfRf.exit

bb.v:                                             ; preds = %.thread
  %i.hq = fmul float %i.au, %i.au
  %i.hr = fmul float %i.ax, %i.ax
  %i.hs = fsub <2 x float> %i.ao, %i.ar
  %i.ht = fsub float 0.000000e+00, %i.au
  %i.hu = fmul nnan float %i.ay, 2.000000e+00
  %i.hv = fsub float 0.000000e+00, %i.as
  %i.hw = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.hq)
  %i.hx = tail call noundef float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.hr)
  %i.hy = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = insertelement <2 x float> %i.ar, float %i.hv, i64 0
  %i.ib = fmul <2 x float> %i.hz, %i.ia
  %i.ic = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hs, <2 x float> zeroinitializer, <2 x float> %i.ib)
  %i.id = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = insertelement <2 x float> %i.ar, float %i.ht, i64 1
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.if, <2 x float> %i.ic)
  %i.ih = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fdiv <2 x float> %i.ig, %i.ii           ; 3 uses
  %i.ik = extractelement <2 x float> %i.ij, i64 1
  %i.il = fsub float 0.000000e+00, %i.ik          ; 2 uses
  %i.im = extractelement <2 x float> %i.ij, i64 0
  %i.in = fsub float 0.000000e+00, %i.im          ; 2 uses
  %i.io = fmul float %i.in, %i.in
  %i.ip = tail call noundef float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.io)
  %sqrt.i.i129 = tail call noundef float @llvm.sqrt.f32(float %i.ip)
  %i.iq = fadd <2 x float> %i.hp, %i.ij
  br label %_ZL12circumCirclePKfS0_S0_PfRf.exit

_ZL12circumCirclePKfS0_S0_PfRf.exit:              ; preds = %bb.p, %bb.t, %bb.v, %.thread, %bb.m, %bb.l, %bb.i, %bb.j, %bb.g, %bb.f
  %.1 = phi float [ %.0183207, %bb.f ], [ %.0183207, %bb.g ], [ %.0183207, %bb.j ], [ %.0183207, %bb.t ], [ 0.000000e+00, %bb.l ], [ %sqrt.i.i129, %bb.v ], [ 0.000000e+00, %.thread ], [ %sqrt.i.i, %bb.i ], [ %sqrt.i.i109, %bb.m ], [ %.0183207, %bb.p ]
  %.3 = phi i32 [ %.0102208, %bb.f ], [ %.0102208, %bb.g ], [ %.0102208, %bb.j ], [ %.0102208, %bb.t ], [ %i.bb, %bb.l ], [ %i.bb, %bb.v ], [ %i.bb, %.thread ], [ %i.bb, %bb.i ], [ %i.bb, %bb.m ], [ %.0102208, %bb.p ] ; 17 uses
  %i.ir = phi <2 x float> [ %i.z, %bb.f ], [ %i.z, %bb.g ], [ %i.z, %bb.j ], [ %i.z, %bb.t ], [ %i.cp, %bb.l ], [ %i.iq, %bb.v ], [ %i.hp, %.thread ], [ %i.cc, %bb.i ], [ %i.do, %bb.m ], [ %i.z, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f

bb.w:                                             ; preds = %._crit_edge
  %i.is = load i32, ptr %6, align 4, !tbaa !68    ; 2 uses
  %i.it = load i32, ptr %i.c, align 4, !tbaa !68  ; 2 uses
  %i.iu = icmp ne i32 %i.it, %.0104
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !68 ; 2 uses
  %i.ix = icmp ne i32 %i.iw, %.0103
  %or.cond14.i.not199 = select i1 %i.iu, i1 true, i1 %i.ix
  %brmerge = or i1 %i.f, %or.cond14.i.not199
  br i1 %brmerge, label %._crit_edge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %i.is, ptr %i.d, align 4, !tbaa !68
  br label %_ZL14updateLeftFacePiiii.exit

._crit_edge.i:                                    ; preds = %bb.w
  %i.iy = icmp eq i32 %i.iw, %.0104
  %i.iz = icmp eq i32 %i.it, %.0103
  %or.cond.i131 = and i1 %i.iz, %i.iy
  br i1 %or.cond.i131, label %bb.y, label %_ZL14updateLeftFacePiiii.exit

bb.y:                                             ; preds = %._crit_edge.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !68
  %i.jc = icmp eq i32 %i.jb, -1
  br i1 %i.jc, label %bb.z, label %_ZL14updateLeftFacePiiii.exit

bb.z:                                             ; preds = %bb.y
  store i32 %i.is, ptr %i.ja, align 4, !tbaa !68
  br label %_ZL14updateLeftFacePiiii.exit

_ZL14updateLeftFacePiiii.exit:                    ; preds = %bb.x, %._crit_edge.i, %bb.y, %bb.z
  %i.jd = load i32, ptr %4, align 4, !tbaa !68    ; 6 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph.preheader.i, label %_ZL8findEdgePKiiii.exit.thread.thread

.lr.ph.preheader.i:                               ; preds = %_ZL14updateLeftFacePiiii.exit
  %wide.trip.count.i133 = zext nneg i32 %i.jd to i64 ; 2 uses
  br label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %bb.ad, %.lr.ph.preheader.i
  %indvars.iv.i135 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i137, %bb.ad ] ; 3 uses
  %.idx.i136 = shl nuw nsw i64 %indvars.iv.i135, 4
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i136 ; 3 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !68 ; 2 uses
  %i.jh = icmp eq i32 %i.jg, %.3
  br i1 %i.jh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i134
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !68
  %i.jk = icmp eq i32 %i.jj, %.0104
  br i1 %i.jk, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i134
  %i.jl = icmp eq i32 %i.jg, %.0104
  br i1 %i.jl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !68
  %i.jo = icmp eq i32 %i.jn, %.3
  br i1 %i.jo, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next.i137 = add nuw nsw i64 %indvars.iv.i135, 1 ; 2 uses
  %exitcond.not.i138 = icmp eq i64 %indvars.iv.next.i137, %wide.trip.count.i133
  br i1 %exitcond.not.i138, label %_ZL8findEdgePKiiii.exit.thread, label %.lr.ph.i134

_ZL8findEdgePKiiii.exit.thread:                   ; preds = %bb.ad
  %8 = load i32, ptr %6, align 4, !tbaa !68
  %.not.i = icmp slt i32 %i.jd, %5
  br i1 %.not.i, label %.lr.ph.i.i, label %bb.ae

_ZL8findEdgePKiiii.exit.thread.thread:            ; preds = %_ZL14updateLeftFacePiiii.exit
  %i.jp = load i32, ptr %6, align 4, !tbaa !68
  %.not.i187 = icmp slt i32 %i.jd, %5
  br i1 %.not.i187, label %_ZL8findEdgePKiiii.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %_ZL8findEdgePKiiii.exit.thread.thread, %_ZL8findEdgePKiiii.exit.thread
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %i.jd, i32 noundef %5) #7
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split

.lr.ph.i.i:                                       ; preds = %_ZL8findEdgePKiiii.exit.thread, %bb.ai
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ai ], [ 0, %_ZL8findEdgePKiiii.exit.thread ] ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i.i ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !68 ; 2 uses
  %i.js = icmp eq i32 %i.jr, %.3
  br i1 %i.js, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !68
  %i.jv = icmp eq i32 %i.ju, %.0104
  br i1 %i.jv, label %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i.i
  %i.jw = icmp eq i32 %i.jr, %.0104
  br i1 %i.jw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !68
  %i.jz = icmp eq i32 %i.jy, %.3
  br i1 %i.jz, label %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i133
  br i1 %exitcond.not.i.i, label %_ZL8findEdgePKiiii.exit.thread.i, label %.lr.ph.i.i

_ZL8findEdgePKiiii.exit.thread.i:                 ; preds = %bb.ai, %_ZL8findEdgePKiiii.exit.thread.thread
  %9 = phi i32 [ %i.jp, %_ZL8findEdgePKiiii.exit.thread.thread ], [ %8, %bb.ai ]
  %i.ka = shl nsw i32 %i.jd, 2
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.kb ; 4 uses
  store i32 %.3, ptr %i.kc, align 4, !tbaa !68
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  store i32 %.0104, ptr %i.kd, align 4, !tbaa !68
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i32 %9, ptr %i.ke, align 4, !tbaa !68
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  store i32 -1, ptr %i.kf, align 4, !tbaa !68
  %i.kg = load i32, ptr %4, align 4, !tbaa !68
  %i.kh = add nsw i32 %i.kg, 1                    ; 2 uses
  store i32 %i.kh, ptr %4, align 4, !tbaa !68
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit

bb.aj:                                            ; preds = %bb.ac, %bb.aa
  %10 = trunc i64 %indvars.iv.i135 to i32
  %i.ki = shl nsw i32 %10, 2
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %3, i64 %i.kj ; 4 uses
  %11 = load i32, ptr %6, align 4, !tbaa !68      ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !68 ; 2 uses
  %i.km = icmp eq i32 %i.kl, %.3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !68 ; 2 uses
  %i.kp = icmp eq i32 %i.ko, %.0104
  %or.cond14.i139 = select i1 %i.km, i1 %i.kp, i1 false
  br i1 %or.cond14.i139, label %bb.ak, label %._crit_edge.i140

bb.ak:                                            ; preds = %bb.aj
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !68
  %i.ks = icmp eq i32 %i.kr, -1
  br i1 %i.ks, label %bb.al, label %._crit_edge.i140

bb.al:                                            ; preds = %bb.ak
  store i32 %11, ptr %i.kq, align 4, !tbaa !68
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split

._crit_edge.i140:                                 ; preds = %bb.ak, %bb.aj
  %i.kt = phi i32 [ %i.ko, %bb.aj ], [ %.0104, %bb.ak ]
  %i.ku = icmp eq i32 %i.kt, %.3
  %i.kv = icmp eq i32 %i.kl, %.0104
  %or.cond.i141 = and i1 %i.kv, %i.ku
  br i1 %or.cond.i141, label %bb.am, label %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split

bb.am:                                            ; preds = %._crit_edge.i140
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kk, i64 12 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !68
  %i.ky = icmp eq i32 %i.kx, -1
  br i1 %i.ky, label %bb.an, label %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split

bb.an:                                            ; preds = %bb.am
  store i32 %11, ptr %i.kw, align 4, !tbaa !68
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split

_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split: ; preds = %bb.af, %bb.ah, %bb.ae, %bb.al, %._crit_edge.i140, %bb.am, %bb.an
  %.pr = load i32, ptr %4, align 4, !tbaa !68
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit

_ZL7addEdgeP9rcContextPiRiiiiii.exit:             ; preds = %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split, %_ZL8findEdgePKiiii.exit.thread.i
  %i.kz = phi i32 [ %.pr, %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split ], [ %i.kh, %_ZL8findEdgePKiiii.exit.thread.i ] ; 6 uses
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph.preheader.i144, label %_ZL8findEdgePKiiii.exit153.thread.thread

.lr.ph.preheader.i144:                            ; preds = %_ZL7addEdgeP9rcContextPiRiiiiii.exit
  %wide.trip.count.i145 = zext nneg i32 %i.kz to i64 ; 2 uses
  br label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %bb.ar, %.lr.ph.preheader.i144
  %indvars.iv.i147 = phi i64 [ 0, %.lr.ph.preheader.i144 ], [ %indvars.iv.next.i149, %bb.ar ] ; 3 uses
  %.idx.i148 = shl nuw nsw i64 %indvars.iv.i147, 4
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i148 ; 3 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !68 ; 2 uses
  %i.ld = icmp eq i32 %i.lc, %.0103
  br i1 %i.ld, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i146
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !68
  %i.lg = icmp eq i32 %i.lf, %.3
  br i1 %i.lg, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i146
  %i.lh = icmp eq i32 %i.lc, %.3
  br i1 %i.lh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !68
  %i.lk = icmp eq i32 %i.lj, %.0103
  br i1 %i.lk, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %indvars.iv.next.i149 = add nuw nsw i64 %indvars.iv.i147, 1 ; 2 uses
  %exitcond.not.i150 = icmp eq i64 %indvars.iv.next.i149, %wide.trip.count.i145
  br i1 %exitcond.not.i150, label %_ZL8findEdgePKiiii.exit153.thread, label %.lr.ph.i146

_ZL8findEdgePKiiii.exit153.thread:                ; preds = %bb.ar
  %12 = load i32, ptr %6, align 4, !tbaa !68
  %.not.i154 = icmp slt i32 %i.kz, %5
  br i1 %.not.i154, label %.lr.ph.i.i159, label %bb.as

_ZL8findEdgePKiiii.exit153.thread.thread:         ; preds = %_ZL7addEdgeP9rcContextPiRiiiiii.exit
  %i.ll = load i32, ptr %6, align 4, !tbaa !68
  %.not.i154189 = icmp slt i32 %i.kz, %5
  br i1 %.not.i154189, label %_ZL8findEdgePKiiii.exit.thread.i156, label %bb.as

bb.as:                                            ; preds = %_ZL8findEdgePKiiii.exit153.thread.thread, %_ZL8findEdgePKiiii.exit153.thread
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %i.kz, i32 noundef %5) #7
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit165

.lr.ph.i.i159:                                    ; preds = %_ZL8findEdgePKiiii.exit153.thread, %bb.aw
  %indvars.iv.i.i160 = phi i64 [ %indvars.iv.next.i.i162, %bb.aw ], [ 0, %_ZL8findEdgePKiiii.exit153.thread ] ; 2 uses
  %.idx.i.i161 = shl nuw nsw i64 %indvars.iv.i.i160, 4
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i.i161 ; 3 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !68 ; 2 uses
  %i.lo = icmp eq i32 %i.ln, %.0103
  br i1 %i.lo, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.i159
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !68
  %i.lr = icmp eq i32 %i.lq, %.3
  br i1 %i.lr, label %_ZL7addEdgeP9rcContextPiRiiiiii.exit165, label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.i159
  %i.ls = icmp eq i32 %i.ln, %.3
  br i1 %i.ls, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !68
  %i.lv = icmp eq i32 %i.lu, %.0103
  br i1 %i.lv, label %_ZL7addEdgeP9rcContextPiRiiiiii.exit165, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %indvars.iv.next.i.i162 = add nuw nsw i64 %indvars.iv.i.i160, 1 ; 2 uses
  %exitcond.not.i.i163 = icmp eq i64 %indvars.iv.next.i.i162, %wide.trip.count.i145
  br i1 %exitcond.not.i.i163, label %_ZL8findEdgePKiiii.exit.thread.i156, label %.lr.ph.i.i159

_ZL8findEdgePKiiii.exit.thread.i156:              ; preds = %bb.aw, %_ZL8findEdgePKiiii.exit153.thread.thread
  %13 = phi i32 [ %i.ll, %_ZL8findEdgePKiiii.exit153.thread.thread ], [ %12, %bb.aw ]
  %i.lw = shl nsw i32 %i.kz, 2
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [4 x i8], ptr %3, i64 %i.lx ; 4 uses
  store i32 %.0103, ptr %i.ly, align 4, !tbaa !68
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i32 %.3, ptr %i.lz, align 4, !tbaa !68
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store i32 %13, ptr %i.ma, align 4, !tbaa !68
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  store i32 -1, ptr %i.mb, align 4, !tbaa !68
  %i.mc = load i32, ptr %4, align 4, !tbaa !68
  %i.md = add nsw i32 %i.mc, 1
  store i32 %i.md, ptr %4, align 4, !tbaa !68
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit165

bb.ax:                                            ; preds = %bb.aq, %bb.ao
  %14 = trunc i64 %indvars.iv.i147 to i32
  %i.me = shl nsw i32 %14, 2
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.mf ; 4 uses
  %15 = load i32, ptr %6, align 4, !tbaa !68      ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !68 ; 2 uses
  %i.mi = icmp eq i32 %i.mh, %.0103
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !68 ; 2 uses
  %i.ml = icmp eq i32 %i.mk, %.3
  %or.cond14.i166 = select i1 %i.mi, i1 %i.ml, i1 false
  br i1 %or.cond14.i166, label %bb.ay, label %._crit_edge.i167

bb.ay:                                            ; preds = %bb.ax
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !68
  %i.mo = icmp eq i32 %i.mn, -1
  br i1 %i.mo, label %bb.az, label %._crit_edge.i167

bb.az:                                            ; preds = %bb.ay
  store i32 %15, ptr %i.mm, align 4, !tbaa !68
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit165

._crit_edge.i167:                                 ; preds = %bb.ay, %bb.ax
  %i.mp = phi i32 [ %i.mk, %bb.ax ], [ %.3, %bb.ay ]
  %i.mq = icmp eq i32 %i.mp, %.0103
  %i.mr = icmp eq i32 %i.mh, %.3
  %or.cond.i168 = and i1 %i.mr, %i.mq
  br i1 %or.cond.i168, label %bb.ba, label %_ZL7addEdgeP9rcContextPiRiiiiii.exit165

bb.ba:                                            ; preds = %._crit_edge.i167
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mg, i64 12 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !68
  %i.mu = icmp eq i32 %i.mt, -1
  br i1 %i.mu, label %bb.bb, label %_ZL7addEdgeP9rcContextPiRiiiiii.exit165

bb.bb:                                            ; preds = %bb.ba
  store i32 %15, ptr %i.ms, align 4, !tbaa !68
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit165

_ZL7addEdgeP9rcContextPiRiiiiii.exit165:          ; preds = %bb.av, %bb.at, %bb.bb, %bb.ba, %._crit_edge.i167, %bb.az, %_ZL8findEdgePKiiii.exit.thread.i156, %bb.as
  %i.mv = load i32, ptr %6, align 4, !tbaa !68
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %6, align 4, !tbaa !68
  br label %_ZL14updateLeftFacePiiii.exit173

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %i.mx = load i32, ptr %i.c, align 4, !tbaa !68  ; 2 uses
  %i.my = icmp ne i32 %i.mx, %.0104
  %i.mz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !68 ; 2 uses
  %i.nb = icmp ne i32 %i.na, %.0103
  %or.cond14.i170.not196 = select i1 %i.my, i1 true, i1 %i.nb
  %brmerge192 = or i1 %i.f, %or.cond14.i170.not196
  br i1 %brmerge192, label %._crit_edge.i171, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.thread
  store i32 -2, ptr %i.d, align 4, !tbaa !68
  br label %_ZL14updateLeftFacePiiii.exit173

._crit_edge.i171:                                 ; preds = %._crit_edge.thread
  %i.nc = icmp eq i32 %i.na, %.0104
  %i.nd = icmp eq i32 %i.mx, %.0103
  %or.cond.i172 = and i1 %i.nd, %i.nc
  br i1 %or.cond.i172, label %bb.bd, label %_ZL14updateLeftFacePiiii.exit173

bb.bd:                                            ; preds = %._crit_edge.i171
  %i.ne = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !68
  %i.ng = icmp eq i32 %i.nf, -1
  br i1 %i.ng, label %bb.be, label %_ZL14updateLeftFacePiiii.exit173

bb.be:                                            ; preds = %bb.bd
  store i32 -2, ptr %i.ne, align 4, !tbaa !68
  br label %_ZL14updateLeftFacePiiii.exit173

_ZL14updateLeftFacePiiii.exit173:                 ; preds = %_ZL7addEdgeP9rcContextPiRiiiiii.exit165, %bb.bc, %._crit_edge.i171, %bb.bd, %bb.be, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcTimerLabel", file: !22, line: 39, baseType: !28, size: 32, elements: !58, identifier: "_ZTS12rcTimerLabel")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "rcContext", file: !22, line: 114, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS9rcContext")
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"bool", !11, i64 0}
!16 = !{!"_ZTS9rcContext", !15, i64 8, !15, i64 9}
!17 = !{!16, !15, i64 9}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"vtable pointer", !10, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !DIFile(filename: "Recast/Include/Recast.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "a4a30d1b276324b9005ba15d2d361d90")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !0)
!25 = !{null, !23, !24}
!26 = !DISubroutineType(types: !25)
!27 = !DISubprogram(name: "doStartTimer", linkageName: "_ZN9rcContext12doStartTimerE12rcTimerLabel", scope: !1, file: !22, line: 176, type: !26, scopeLine: 176, containingType: !1, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIEnumerator(name: "RC_TIMER_TOTAL", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "RC_TIMER_TEMP", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "RC_TIMER_RASTERIZE_TRIANGLES", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "RC_TIMER_BUILD_COMPACTHEIGHTFIELD", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_TRACE", value: 5, isUnsigned: true)
!35 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_SIMPLIFY", value: 6, isUnsigned: true)
!36 = !DIEnumerator(name: "RC_TIMER_FILTER_BORDER", value: 7, isUnsigned: true)
!37 = !DIEnumerator(name: "RC_TIMER_FILTER_WALKABLE", value: 8, isUnsigned: true)
!38 = !DIEnumerator(name: "RC_TIMER_MEDIAN_AREA", value: 9, isUnsigned: true)
!39 = !DIEnumerator(name: "RC_TIMER_FILTER_LOW_OBSTACLES", value: 10, isUnsigned: true)
!40 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESH", value: 11, isUnsigned: true)
!41 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESH", value: 12, isUnsigned: true)
!42 = !DIEnumerator(name: "RC_TIMER_ERODE_AREA", value: 13, isUnsigned: true)
!43 = !DIEnumerator(name: "RC_TIMER_MARK_BOX_AREA", value: 14, isUnsigned: true)
!44 = !DIEnumerator(name: "RC_TIMER_MARK_CYLINDER_AREA", value: 15, isUnsigned: true)
!45 = !DIEnumerator(name: "RC_TIMER_MARK_CONVEXPOLY_AREA", value: 16, isUnsigned: true)
!46 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD", value: 17, isUnsigned: true)
!47 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_DIST", value: 18, isUnsigned: true)
!48 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_BLUR", value: 19, isUnsigned: true)
!49 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS", value: 20, isUnsigned: true)
!50 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_WATERSHED", value: 21, isUnsigned: true)
!51 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_EXPAND", value: 22, isUnsigned: true)
!52 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FLOOD", value: 23, isUnsigned: true)
!53 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FILTER", value: 24, isUnsigned: true)
!54 = !DIEnumerator(name: "RC_TIMER_BUILD_LAYERS", value: 25, isUnsigned: true)
!55 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESHDETAIL", value: 26, isUnsigned: true)
!56 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESHDETAIL", value: 27, isUnsigned: true)
!57 = !DIEnumerator(name: "RC_MAX_TIMERS", value: 28, isUnsigned: true)
!58 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!59 = !{!"any pointer", !11, i64 0}
!60 = !{!"p1 omnipotent char", !59, i64 0}
!61 = !{!"float", !11, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"long", !11, i64 0}
!64 = !{!"p1 int", !59, i64 0}
!65 = !{!"_ZTS12rcVectorBaseIiL11rcAllocHint1EE", !63, i64 0, !63, i64 8, !64, i64 16}
!66 = !{!65, !64, i64 16}
!67 = !{!65, !63, i64 0}
!68 = !{!12, !12, i64 0}
!69 = !{!"p1 float", !59, i64 0}
!70 = !{!"_ZTS16rcPolyMeshDetail", !64, i64 0, !69, i64 8, !60, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!71 = !{!70, !12, i64 24}
!72 = !{!70, !12, i64 28}
!73 = !{!70, !12, i64 32}
!74 = !{!70, !64, i64 0}
!75 = !{!70, !69, i64 8}
!76 = !{!70, !60, i64 16}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!11, !11, i64 0}
!81 = !DISubprogram(name: "doStopTimer", linkageName: "_ZN9rcContext11doStopTimerE12rcTimerLabel", scope: !1, file: !22, line: 180, type: !26, scopeLine: 180, containingType: !1, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!82 = distinct !{!82, !135}
!83 = distinct !{!83, !77, !78}
!84 = distinct !{!84, !79}
!85 = distinct !{!85, !77}
!86 = distinct !{!86, !77, !78}
!87 = distinct !{!87, !79}
!88 = distinct !{!88, !77}
!89 = distinct !{!89, !145}
!90 = distinct !{!90, !77, !78}
!91 = distinct !{!91, !79}
!92 = distinct !{!92, !77}
!93 = distinct !{!93, !77, !78}
!94 = distinct !{!94, !79}
!95 = distinct !{!95, !77}
!96 = distinct !{!96, !77, !78}
!97 = distinct !{!97, !79}
!98 = distinct !{!98, !77}
!99 = distinct !{!99, !77, !78}
!100 = distinct !{!100, !79}
!101 = distinct !{!101, !77}
!102 = distinct !{!102, !77, !78}
!103 = distinct !{!103, !79}
!104 = distinct !{!104, !77}
!105 = distinct !{!105, !77, !78}
!106 = distinct !{!106, !79}
!107 = distinct !{!107, !77}
!108 = distinct !{!108, !79}
!109 = distinct !{!109, !79}
!110 = distinct !{!110, !77, !78}
!111 = distinct !{!111, i1 false, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !77, !78}
!115 = distinct !{!115, !78, !77}
!116 = distinct !{!116, !77}
!117 = !{!"p1 short", !59, i64 0}
end_hunk_2
