Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastRegion?download=true
inline.NumInlined: 580
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Z19rcBuildLayerRegionsP9rcContextR20rcCompactHeightfieldii:bb.a
  %i.aai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.aak = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 128, i32 noundef 1) #8 ; 9 uses
  %i.aal = ptrtoaddr ptr %i.aak to i64
  %.not.i.i.i.i.i244.i = icmp eq ptr %i.aak, null
  %.pre.i.i.i245.i = load ptr, ptr %i.aaj, align 8, !tbaa !86 ; 8 uses
  %.pre.i.i.i245.i800 = ptrtoaddr ptr %.pre.i.i.i245.i to i64
  br i1 %.not.i.i.i.i.i244.i, label %_ZN12rcTempVectorIiEC2El.exit249.i, label %bb.at

bb.at:                                            ; preds = %.epilog-lcssa
  %i.aam = load i64, ptr %6, align 8, !tbaa !105  ; 7 uses
  %i.aan = icmp sgt i64 %i.aam, 0
  br i1 %i.aan, label %.lr.ph.i.i.i.i.i.i246.i.preheader, label %_ZN12rcTempVectorIiEC2El.exit249.i

.lr.ph.i.i.i.i.i.i246.i.preheader:                ; preds = %bb.at
  %min.iters.check803 = icmp ult i64 %i.aam, 8
  %i.aao = sub i64 %.pre.i.i.i245.i800, %i.aal
  %diff.check801 = icmp ugt i64 %i.aao, -32
  %or.cond873 = select i1 %min.iters.check803, i1 true, i1 %diff.check801
  br i1 %or.cond873, label %.lr.ph.i.i.i.i.i.i246.i.preheader879, label %vector.ph804

vector.ph804:                                     ; preds = %.lr.ph.i.i.i.i.i.i246.i.preheader
  %n.vec805 = and i64 %i.aam, 9223372036854775800 ; 3 uses
  br label %vector.body806

vector.body806:                                   ; preds = %vector.body806, %vector.ph804
  %index807 = phi i64 [ 0, %vector.ph804 ], [ %index.next810, %vector.body806 ] ; 3 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %index807 ; 2 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %index807 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %wide.load808 = load <4 x i32>, ptr %i.aaq, align 4, !tbaa !87
  %wide.load809 = load <4 x i32>, ptr %i.aar, align 4, !tbaa !87
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  store <4 x i32> %wide.load808, ptr %i.aap, align 4, !tbaa !87
  store <4 x i32> %wide.load809, ptr %i.aas, align 4, !tbaa !87
  %index.next810 = add nuw i64 %index807, 8       ; 2 uses
  %i.aat = icmp eq i64 %index.next810, %n.vec805
  br i1 %i.aat, label %middle.block811, label %vector.body806, !llvm.loop !285

middle.block811:                                  ; preds = %vector.body806
  %cmp.n812 = icmp eq i64 %i.aam, %n.vec805
  br i1 %cmp.n812, label %_ZN12rcTempVectorIiEC2El.exit249.i, label %.lr.ph.i.i.i.i.i.i246.i.preheader879

.lr.ph.i.i.i.i.i.i246.i.preheader879:             ; preds = %.lr.ph.i.i.i.i.i.i246.i.preheader, %middle.block811
  %.07.i.i.i.i.i.i247.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i246.i.preheader ], [ %n.vec805, %middle.block811 ] ; 3 uses
  %xtraiter906 = and i64 %i.aam, 3                ; 2 uses
  %lcmp.mod907.not = icmp eq i64 %xtraiter906, 0
  br i1 %lcmp.mod907.not, label %.lr.ph.i.i.i.i.i.i246.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i246.i.prol

.lr.ph.i.i.i.i.i.i246.i.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i246.i.preheader879, %.lr.ph.i.i.i.i.i.i246.i.prol
  %.07.i.i.i.i.i.i247.i.prol = phi i64 [ %i.aax, %.lr.ph.i.i.i.i.i.i246.i.prol ], [ %.07.i.i.i.i.i.i247.i.ph, %.lr.ph.i.i.i.i.i.i246.i.preheader879 ] ; 3 uses
  %prol.iter908 = phi i64 [ %prol.iter908.next, %.lr.ph.i.i.i.i.i.i246.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i246.i.preheader879 ]
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %.07.i.i.i.i.i.i247.i.prol
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %.07.i.i.i.i.i.i247.i.prol
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !87
  store i32 %i.aaw, ptr %i.aau, align 4, !tbaa !87
  %i.aax = add nuw nsw i64 %.07.i.i.i.i.i.i247.i.prol, 1 ; 2 uses
  %prol.iter908.next = add i64 %prol.iter908, 1   ; 2 uses
  %prol.iter908.cmp.not = icmp eq i64 %prol.iter908.next, %xtraiter906
  br i1 %prol.iter908.cmp.not, label %.lr.ph.i.i.i.i.i.i246.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i246.i.prol, !llvm.loop !286

.lr.ph.i.i.i.i.i.i246.i.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i246.i.prol, %.lr.ph.i.i.i.i.i.i246.i.preheader879
  %.07.i.i.i.i.i.i247.i.unr = phi i64 [ %.07.i.i.i.i.i.i247.i.ph, %.lr.ph.i.i.i.i.i.i246.i.preheader879 ], [ %i.aax, %.lr.ph.i.i.i.i.i.i246.i.prol ]
  %i.aay = sub nsw i64 %.07.i.i.i.i.i.i247.i.ph, %i.aam
  %i.aaz = icmp ugt i64 %i.aay, -4
  br i1 %i.aaz, label %_ZN12rcTempVectorIiEC2El.exit249.i, label %.lr.ph.i.i.i.i.i.i246.i

.lr.ph.i.i.i.i.i.i246.i:                          ; preds = %.lr.ph.i.i.i.i.i.i246.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i246.i
  %.07.i.i.i.i.i.i247.i = phi i64 [ %i.abp, %.lr.ph.i.i.i.i.i.i246.i ], [ %.07.i.i.i.i.i.i247.i.unr, %.lr.ph.i.i.i.i.i.i246.i.prol.loopexit ] ; 6 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %.07.i.i.i.i.i.i247.i
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %.07.i.i.i.i.i.i247.i
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !87
  store i32 %i.abc, ptr %i.aba, align 4, !tbaa !87
  %i.abd = add nuw nsw i64 %.07.i.i.i.i.i.i247.i, 1 ; 2 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.abd
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %i.abd
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !87
  store i32 %i.abg, ptr %i.abe, align 4, !tbaa !87
  %i.abh = add nuw nsw i64 %.07.i.i.i.i.i.i247.i, 2 ; 2 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.abh
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %i.abh
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !87
  store i32 %i.abk, ptr %i.abi, align 4, !tbaa !87
  %i.abl = add nuw nsw i64 %.07.i.i.i.i.i.i247.i, 3 ; 2 uses
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.abl
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i245.i, i64 %i.abl
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !87
  store i32 %i.abo, ptr %i.abm, align 4, !tbaa !87
  %i.abp = add nuw nsw i64 %.07.i.i.i.i.i.i247.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i248.i.3 = icmp eq i64 %i.abp, %i.aam
  br i1 %exitcond.not.i.i.i.i.i.i248.i.3, label %_ZN12rcTempVectorIiEC2El.exit249.i, label %.lr.ph.i.i.i.i.i.i246.i, !llvm.loop !287

_ZN12rcTempVectorIiEC2El.exit249.i:               ; preds = %.lr.ph.i.i.i.i.i.i246.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i246.i, %middle.block811, %bb.at, %.epilog-lcssa
  call void @_Z6rcFreePv(ptr noundef %.pre.i.i.i245.i) #8
  store ptr %i.aak, ptr %i.aaj, align 8, !tbaa !86
  store i64 32, ptr %i.aai, align 8, !tbaa !106
  store i64 32, ptr %6, align 8, !tbaa !105
  %.not212376.i = icmp eq i16 %.1175.lcssa, 0
  br i1 %.not212376.i, label %.preheader332.i, label %.lr.ph380.i

bb.au:                                            ; preds = %bb.au, %.preheader336.i.new
  %indvars.iv421.i = phi i64 [ 0, %.preheader336.i.new ], [ %indvars.iv.next422.i.7, %bb.au ] ; 9 uses
  %niter905 = phi i64 [ 0, %.preheader336.i.new ], [ %niter905.next.7, %bb.au ]
  %i.abq = getelementptr inbounds nuw [64 x i8], ptr %i.aad, i64 %indvars.iv421.i
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 4
  store i16 0, ptr %i.abr, align 4, !tbaa !103
  %i.abs = getelementptr inbounds nuw [64 x i8], ptr %i.aad, i64 %indvars.iv421.i
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 68
  store i16 0, ptr %i.abt, align 4, !tbaa !103
  %i.abu = getelementptr inbounds nuw [64 x i8], ptr %i.aad, i64 %indvars.iv421.i
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 132
  store i16 0, ptr %i.abv, align 4, !tbaa !103
  %i.abw = getelementptr inbounds nuw [64 x i8], ptr %i.aad, i64 %indvars.iv421.i
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 196
  store i16 0, ptr %i.abx, align 4, !tbaa !103
  %i.aby = getelementptr inbounds nuw [64 x i8], ptr %i.aad, i64 %indvars.iv421.i
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 260
  store i16 0, ptr %i.abz, align 4, !tbaa !103
  %i.aca = getelementptr inbounds nuw [64 x i8], ptr %i.aad, i64 %indvars.iv421.i
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 324
  store i16 0, ptr %i.acb, align 4, !tbaa !103
  %i.acc = getelementptr inbounds nuw [64 x i8], ptr %i.aad, i64 %indvars.iv421.i
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 388
  store i16 0, ptr %i.acd, align 4, !tbaa !103
  %i.ace = getelementptr inbounds nuw [64 x i8], ptr %i.aad, i64 %indvars.iv421.i
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 452
  store i16 0, ptr %i.acf, align 4, !tbaa !103
  %indvars.iv.next422.i.7 = add nuw nsw i64 %indvars.iv421.i, 8 ; 2 uses
  %niter905.next.7 = add i64 %niter905, 8         ; 2 uses
  %niter905.ncmp.7 = icmp eq i64 %niter905.next.7, %unroll_iter904
  br i1 %niter905.ncmp.7, label %.unr-lcssa, label %bb.au

.preheader332.i:                                  ; preds = %bb.bk, %_ZN12rcTempVectorIiEC2El.exit249.i
  %i.acg = load ptr, ptr %i.ph, align 8, !tbaa !98 ; 10 uses
  %min.iters.check845 = icmp ult i16 %.1175.lcssa, 7
  %n.vec847 = and i64 %i.pd, 131064               ; 3 uses
  %cmp.n868 = icmp eq i64 %n.vec847, %i.pd
  br label %bb.bl

.lr.ph380.i:                                      ; preds = %_ZN12rcTempVectorIiEC2El.exit249.i, %bb.bk
  %indvars.iv441.i = phi i64 [ %indvars.iv.next442.i, %bb.bk ], [ 1, %_ZN12rcTempVectorIiEC2El.exit249.i ] ; 4 uses
  %.0191379.i = phi i16 [ %.1192.i, %bb.bk ], [ 1, %_ZN12rcTempVectorIiEC2El.exit249.i ] ; 4 uses
  %i.ach = load ptr, ptr %i.ph, align 8, !tbaa !98
  %i.aci = getelementptr inbounds nuw [64 x i8], ptr %i.ach, i64 %indvars.iv441.i ; 9 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 4 ; 2 uses
  %i.ack = load i16, ptr %i.acj, align 4, !tbaa !103
  %.not219.i = icmp eq i16 %i.ack, 0
  br i1 %.not219.i, label %bb.av, label %bb.bk

bb.av:                                            ; preds = %.lr.ph380.i
  store i16 %.0191379.i, ptr %i.acj, align 4, !tbaa !103
  store i64 0, ptr %6, align 8, !tbaa !105
  %i.acl = load i64, ptr %i.aai, align 8, !tbaa !106 ; 2 uses
  %i.acm = icmp sgt i64 %i.acl, 0
  br i1 %i.acm, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit252.thread.i, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit252.i, !prof !107

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit252.thread.i: ; preds = %bb.av
  %i.acn = load ptr, ptr %i.aaj, align 8, !tbaa !86
  %i.aco = trunc nuw nsw i64 %indvars.iv441.i to i32
  store i32 %i.aco, ptr %i.acn, align 4, !tbaa !87
  br label %.lr.ph374.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit252.i: ; preds = %bb.av
  %i.acp = add nsw i64 %i.acl, 1                  ; 2 uses
  %i.acq = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.acp) ; 2 uses
  %i.acr = load i64, ptr %6, align 8, !tbaa !105  ; 2 uses
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.acq, i64 %i.acr
  %i.act = trunc nuw nsw i64 %indvars.iv441.i to i32
  store i32 %i.act, ptr %i.acs, align 4, !tbaa !87
  %i.acu = add nsw i64 %i.acr, 1
  store i64 %i.acu, ptr %6, align 8, !tbaa !105
  store i64 %i.acp, ptr %i.aai, align 8, !tbaa !106
  %i.acv = load ptr, ptr %i.aaj, align 8, !tbaa !86
  call void @_Z6rcFreePv(ptr noundef %i.acv) #8
  store ptr %i.acq, ptr %i.aaj, align 8, !tbaa !86
  %.pre480.i = load i64, ptr %6, align 8, !tbaa !105 ; 2 uses
  %i.acw = icmp sgt i64 %.pre480.i, 0
  br i1 %i.acw, label %.lr.ph374.i, label %._crit_edge375.i

.lr.ph374.i:                                      ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit252.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit252.thread.i
  %i.acx = phi i64 [ 1, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit252.thread.i ], [ %.pre480.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit252.i ]
  %i.acy = getelementptr inbounds nuw i8, ptr %i.aci, i64 40 ; 5 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.aci, i64 56 ; 5 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.aci, i64 48 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aci, i64 12 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.aci, i64 14 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.aci, i64 10 ; 2 uses
  br label %bb.aw

.loopexit335.loopexit.i:                          ; preds = %.loopexit334.i
  %.pre485.i = load i64, ptr %6, align 8, !tbaa !105
  br label %.loopexit335.i

.loopexit335.i:                                   ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i, %.loopexit335.loopexit.i
  %i.ade = phi i64 [ %.pre485.i, %.loopexit335.loopexit.i ], [ %i.adm, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i ] ; 2 uses
  %i.adf = icmp sgt i64 %i.ade, 0
  br i1 %i.adf, label %bb.aw, label %._crit_edge375.i

bb.aw:                                            ; preds = %.loopexit335.i, %.lr.ph374.i
  %i.adg = phi i64 [ %i.acx, %.lr.ph374.i ], [ %i.ade, %.loopexit335.i ] ; 2 uses
  %i.adh = load ptr, ptr %i.aaj, align 8, !tbaa !86 ; 3 uses
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !87
  %i.adj = sext i32 %i.adi to i64
  %i.adk = load ptr, ptr %i.ph, align 8, !tbaa !98
  %i.adl = getelementptr inbounds [64 x i8], ptr %i.adk, i64 %i.adj ; 3 uses
  %i.adm = add nsw i64 %i.adg, -1                 ; 3 uses
  %.not395.i = icmp eq i64 %i.adm, 0
  br i1 %.not395.i, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aw
  %scevgep.i = getelementptr i8, ptr %i.adh, i64 4
  %i.adn = shl i64 %i.adg, 2
  %7 = add i64 %i.adn, -4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.adh, ptr align 4 %scevgep.i, i64 %7, i1 false), !tbaa !87
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i: ; preds = %.lr.ph.preheader.i, %bb.aw
  store i64 %i.adm, ptr %6, align 8, !tbaa !105
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !105 ; 2 uses
  %i.adq = trunc i64 %i.adp to i32
  %i.adr = icmp sgt i32 %i.adq, 0
  br i1 %i.adr, label %.lr.ph373.i, label %.loopexit335.i

.lr.ph373.i:                                      ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adl, i64 32
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adl, i64 6
  %wide.trip.count439.i = and i64 %i.adp, 2147483647
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit334.i, %.lr.ph373.i
  %indvars.iv436.i = phi i64 [ 0, %.lr.ph373.i ], [ %indvars.iv.next437.i, %.loopexit334.i ] ; 2 uses
  %i.adu = load ptr, ptr %i.ads, align 8, !tbaa !86
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.adu, i64 %indvars.iv436.i
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !87 ; 4 uses
  %i.adx = sext i32 %i.adw to i64
  %i.ady = load ptr, ptr %i.ph, align 8, !tbaa !98
  %i.adz = getelementptr inbounds [64 x i8], ptr %i.ady, i64 %i.adx ; 9 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 4 ; 2 uses
  %i.aeb = load i16, ptr %i.aea, align 4, !tbaa !103
  %.not220.i = icmp eq i16 %i.aeb, 0
  br i1 %.not220.i, label %bb.ay, label %.loopexit334.i

bb.ay:                                            ; preds = %bb.ax
  %i.aec = load i8, ptr %i.adt, align 2, !tbaa !108
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adz, i64 6
  %i.aee = load i8, ptr %i.aed, align 2, !tbaa !108
  %.not221.i = icmp eq i8 %i.aec, %i.aee
  br i1 %.not221.i, label %.preheader333.i, label %.loopexit334.i

.preheader333.i:                                  ; preds = %bb.ay
  %i.aef = load i64, ptr %i.acy, align 8, !tbaa !105 ; 2 uses
  %i.aeg = icmp sgt i64 %i.aef, 0
  br i1 %i.aeg, label %.lr.ph369.i, label %.critedge.i

.lr.ph369.i:                                      ; preds = %.preheader333.i
  %i.aeh = load ptr, ptr %i.acz, align 8, !tbaa !86
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %indvars.iv.next430.i = add nuw nsw i64 %indvars.iv429.i, 1 ; 2 uses
  %exitcond432.not.i = icmp eq i64 %indvars.iv.next430.i, %i.aef
  br i1 %exitcond432.not.i, label %.critedge.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph369.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph369.i ], [ %indvars.iv.next430.i, %bb.az ] ; 2 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %indvars.iv429.i
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !87
  %i.aek = icmp eq i32 %i.aej, %i.adw
  br i1 %i.aek, label %.loopexit334.i, label %bb.az

.critedge.i:                                      ; preds = %bb.az, %.preheader333.i
  %i.ael = load i64, ptr %6, align 8, !tbaa !105  ; 3 uses
  %i.aem = load i64, ptr %i.aai, align 8, !tbaa !106 ; 4 uses
  %i.aen = icmp slt i64 %i.ael, %i.aem
  br i1 %i.aen, label %bb.bb, label %bb.bc, !prof !107

bb.bb:                                            ; preds = %.critedge.i
  %i.aeo = load ptr, ptr %i.aaj, align 8, !tbaa !86
  %i.aep = add nsw i64 %i.ael, 1
  store i64 %i.aep, ptr %6, align 8, !tbaa !105
  %i.aeq = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.ael
  store i32 %i.adw, ptr %i.aeq, align 4, !tbaa !87
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit258.i

bb.bc:                                            ; preds = %.critedge.i
  %i.aer = add nsw i64 %i.aem, 1
  %i.aes = icmp sgt i64 %i.aem, 4611686018427387902
  %i.aet = shl nsw i64 %i.aem, 1
  %..i.i256.i = call i64 @llvm.smax.i64(i64 %i.aet, i64 %i.aer)
  %.0.i.i257.i = select i1 %i.aes, i64 9223372036854775807, i64 %..i.i256.i, !prof !109 ; 2 uses
  %i.aeu = shl i64 %.0.i.i257.i, 2
  %i.aev = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.aeu, i32 noundef 1) #8 ; 10 uses
  %.not.i288.i = icmp ne ptr %i.aev, null
  %.pre481.i = load i64, ptr %6, align 8, !tbaa !105 ; 9 uses
  %.pre482.i = load ptr, ptr %i.aaj, align 8, !tbaa !86 ; 8 uses
  %i.aew = icmp sgt i64 %.pre481.i, 0
  %or.cond532.i = select i1 %.not.i288.i, i1 %i.aew, i1 false
  br i1 %or.cond532.i, label %.lr.ph.i.i289.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit292.i

.lr.ph.i.i289.i.preheader:                        ; preds = %bb.bc
  %.pre482.i830 = ptrtoaddr ptr %.pre482.i to i64
  %i.aex = ptrtoaddr ptr %i.aev to i64
  %min.iters.check833 = icmp ult i64 %.pre481.i, 8
  %i.aey = sub i64 %.pre482.i830, %i.aex
  %diff.check831 = icmp ugt i64 %i.aey, -32
  %or.cond874 = select i1 %min.iters.check833, i1 true, i1 %diff.check831
  br i1 %or.cond874, label %.lr.ph.i.i289.i.preheader878, label %vector.ph834

vector.ph834:                                     ; preds = %.lr.ph.i.i289.i.preheader
  %n.vec835 = and i64 %.pre481.i, 9223372036854775800 ; 3 uses
  br label %vector.body836

vector.body836:                                   ; preds = %vector.body836, %vector.ph834
  %index837 = phi i64 [ 0, %vector.ph834 ], [ %index.next840, %vector.body836 ] ; 3 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %index837 ; 2 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %.pre482.i, i64 %index837 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  %wide.load838 = load <4 x i32>, ptr %i.afa, align 4, !tbaa !87
  %wide.load839 = load <4 x i32>, ptr %i.afb, align 4, !tbaa !87
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  store <4 x i32> %wide.load838, ptr %i.aez, align 4, !tbaa !87
  store <4 x i32> %wide.load839, ptr %i.afc, align 4, !tbaa !87
  %index.next840 = add nuw i64 %index837, 8       ; 2 uses
  %i.afd = icmp eq i64 %index.next840, %n.vec835
  br i1 %i.afd, label %middle.block841, label %vector.body836, !llvm.loop !288

middle.block841:                                  ; preds = %vector.body836
  %cmp.n842 = icmp eq i64 %.pre481.i, %n.vec835
  br i1 %cmp.n842, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit292.i, label %.lr.ph.i.i289.i.preheader878

.lr.ph.i.i289.i.preheader878:                     ; preds = %.lr.ph.i.i289.i.preheader, %middle.block841
  %.07.i.i290.i.ph = phi i64 [ 0, %.lr.ph.i.i289.i.preheader ], [ %n.vec835, %middle.block841 ] ; 3 uses
  %xtraiter909 = and i64 %.pre481.i, 3            ; 2 uses
  %lcmp.mod910.not = icmp eq i64 %xtraiter909, 0
  br i1 %lcmp.mod910.not, label %.lr.ph.i.i289.i.prol.loopexit, label %.lr.ph.i.i289.i.prol

.lr.ph.i.i289.i.prol:                             ; preds = %.lr.ph.i.i289.i.preheader878, %.lr.ph.i.i289.i.prol
  %.07.i.i290.i.prol = phi i64 [ %i.afh, %.lr.ph.i.i289.i.prol ], [ %.07.i.i290.i.ph, %.lr.ph.i.i289.i.preheader878 ] ; 3 uses
  %prol.iter911 = phi i64 [ %prol.iter911.next, %.lr.ph.i.i289.i.prol ], [ 0, %.lr.ph.i.i289.i.preheader878 ]
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %.07.i.i290.i.prol
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.pre482.i, i64 %.07.i.i290.i.prol
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !87
  store i32 %i.afg, ptr %i.afe, align 4, !tbaa !87
  %i.afh = add nuw nsw i64 %.07.i.i290.i.prol, 1  ; 2 uses
  %prol.iter911.next = add i64 %prol.iter911, 1   ; 2 uses
  %prol.iter911.cmp.not = icmp eq i64 %prol.iter911.next, %xtraiter909
  br i1 %prol.iter911.cmp.not, label %.lr.ph.i.i289.i.prol.loopexit, label %.lr.ph.i.i289.i.prol, !llvm.loop !289

.lr.ph.i.i289.i.prol.loopexit:                    ; preds = %.lr.ph.i.i289.i.prol, %.lr.ph.i.i289.i.preheader878
  %.07.i.i290.i.unr = phi i64 [ %.07.i.i290.i.ph, %.lr.ph.i.i289.i.preheader878 ], [ %i.afh, %.lr.ph.i.i289.i.prol ]
  %i.afi = sub nsw i64 %.07.i.i290.i.ph, %.pre481.i
  %i.afj = icmp ugt i64 %i.afi, -4
  br i1 %i.afj, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit292.i, label %.lr.ph.i.i289.i

.lr.ph.i.i289.i:                                  ; preds = %.lr.ph.i.i289.i.prol.loopexit, %.lr.ph.i.i289.i
  %.07.i.i290.i = phi i64 [ %i.afz, %.lr.ph.i.i289.i ], [ %.07.i.i290.i.unr, %.lr.ph.i.i289.i.prol.loopexit ] ; 6 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %.07.i.i290.i
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %.pre482.i, i64 %.07.i.i290.i
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !87
  store i32 %i.afm, ptr %i.afk, align 4, !tbaa !87
  %i.afn = add nuw nsw i64 %.07.i.i290.i, 1       ; 2 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.afn
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.pre482.i, i64 %i.afn
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !87
  store i32 %i.afq, ptr %i.afo, align 4, !tbaa !87
  %i.afr = add nuw nsw i64 %.07.i.i290.i, 2       ; 2 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.afr
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %.pre482.i, i64 %i.afr
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !87
  store i32 %i.afu, ptr %i.afs, align 4, !tbaa !87
  %i.afv = add nuw nsw i64 %.07.i.i290.i, 3       ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.afv
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %.pre482.i, i64 %i.afv
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !87
  store i32 %i.afy, ptr %i.afw, align 4, !tbaa !87
  %i.afz = add nuw nsw i64 %.07.i.i290.i, 4       ; 2 uses
  %exitcond.not.i.i291.i.3 = icmp eq i64 %i.afz, %.pre481.i
  br i1 %exitcond.not.i.i291.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit292.i, label %.lr.ph.i.i289.i, !llvm.loop !290

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit292.i: ; preds = %.lr.ph.i.i289.i.prol.loopexit, %.lr.ph.i.i289.i, %middle.block841, %bb.bc
  %i.aga = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %.pre481.i
  store i32 %i.adw, ptr %i.aga, align 4, !tbaa !87
  %i.agb = add nsw i64 %.pre481.i, 1
  store i64 %i.agb, ptr %6, align 8, !tbaa !105
  store i64 %.0.i.i257.i, ptr %i.aai, align 8, !tbaa !106
  call void @_Z6rcFreePv(ptr noundef %.pre482.i) #8
  store ptr %i.aev, ptr %i.aaj, align 8, !tbaa !86
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit258.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit258.i: ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit292.i, %bb.bb
  store i16 %.0191379.i, ptr %i.aea, align 4, !tbaa !103
  %i.agc = getelementptr inbounds nuw i8, ptr %i.adz, i64 40 ; 2 uses
  %i.agd = load i64, ptr %i.agc, align 8, !tbaa !105
  %i.age = icmp sgt i64 %i.agd, 0
  br i1 %i.age, label %.lr.ph371.i, label %._crit_edge.i256

.lr.ph371.i:                                      ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit258.i
  %i.agf = getelementptr inbounds nuw i8, ptr %i.adz, i64 56
  br label %bb.bd

._crit_edge.i256:                                 ; preds = %_ZL20addUniqueFloorRegionR8rcRegioni.exit265.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit258.i
  %i.agg = load i16, ptr %i.adb, align 4, !tbaa !104
  %i.agh = getelementptr inbounds nuw i8, ptr %i.adz, i64 12
  %i.agi = load i16, ptr %i.agh, align 4, !tbaa !104
  %i.agj = call noundef i16 @llvm.umin.i16(i16 %i.agg, i16 %i.agi)
  store i16 %i.agj, ptr %i.adb, align 4, !tbaa !104
  %i.agk = load i16, ptr %i.adc, align 2, !tbaa !309
  %i.agl = getelementptr inbounds nuw i8, ptr %i.adz, i64 14
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !309
  %i.agn = call noundef i16 @llvm.umax.i16(i16 %i.agk, i16 %i.agm)
  store i16 %i.agn, ptr %i.adc, align 2, !tbaa !309
  %i.ago = load i32, ptr %i.adz, align 8, !tbaa !102
  %i.agp = load i32, ptr %i.aci, align 8, !tbaa !102
end_hunk_0
