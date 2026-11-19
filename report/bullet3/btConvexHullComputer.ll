Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHullComputer?download=true
inline.NumInlined: 665
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN20btConvexHullInternal9shiftFaceEPNS_4FaceEf20btAlignedObjectArrayIPNS_6VertexEE:bb.a
bb.dj:                                            ; preds = %bb.di
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axo, i64 8
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !79 ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axv, i64 8
  store ptr %i.axx, ptr %i.axy, align 8, !tbaa !79
  store ptr %i.axv, ptr %i.axx, align 8, !tbaa !40
  br label %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit563

_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit563: ; preds = %bb.di, %bb.dj
  %.sink34.i562 = phi ptr [ %i.axv, %bb.dj ], [ null, %bb.di ]
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axl, i64 16
  store ptr %.sink34.i562, ptr %i.axz, align 8, !tbaa !70
  %i.aya = load ptr, ptr %i.go, align 8, !tbaa !30
  store ptr %i.aya, ptr %i.axj, align 8, !tbaa !40
  store ptr %i.axj, ptr %i.axo, align 8, !tbaa !40
  store ptr %i.axo, ptr %i.go, align 8, !tbaa !30
  %i.ayb = load i32, ptr %i.gp, align 8, !tbaa !58
  %i.ayc = add nsw i32 %i.ayb, -1
  store i32 %i.ayc, ptr %i.gp, align 8, !tbaa !58
  %i.ayd = load i32, ptr %i.gk, align 4, !tbaa !101 ; 7 uses
  %i.aye = load i32, ptr %i.gl, align 8, !tbaa !102
  %i.ayf = icmp eq i32 %i.ayd, %i.aye
  br i1 %i.ayf, label %bb.dk, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit580

bb.dk:                                            ; preds = %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit563
  %.not.i.i564 = icmp eq i32 %i.ayd, 0
  %i.ayg = shl nsw i32 %i.ayd, 1
  %i.ayh = select i1 %.not.i.i564, i32 1, i32 %i.ayg ; 4 uses
  %i.ayi = icmp slt i32 %i.ayd, %i.ayh
  br i1 %i.ayi, label %bb.dl, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit580

bb.dl:                                            ; preds = %bb.dk
  %.not.i.i.i565 = icmp eq i32 %i.ayh, 0
  br i1 %.not.i.i.i565, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i567, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ayj = sext i32 %i.ayh to i64
  %i.ayk = shl nsw i64 %i.ayj, 3
  %i.ayl = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ayk, i32 noundef 16)
  %.pre.i566 = load i32, ptr %i.gk, align 4, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i567

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i567: ; preds = %bb.dm, %bb.dl
  %i.aym = phi i32 [ %.pre.i566, %bb.dm ], [ %i.ayd, %bb.dl ] ; 5 uses
  %.0.i.i.i568 = phi ptr [ %i.ayl, %bb.dm ], [ null, %bb.dl ] ; 8 uses
  %i.ayn = icmp sgt i32 %i.aym, 0
  %i.ayo = load ptr, ptr %i.gm, align 8, !tbaa !74 ; 9 uses
  br i1 %i.ayn, label %.lr.ph.i.i.i575, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i569

.lr.ph.i.i.i575:                                  ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i567
  %i.ayp = ptrtoaddr ptr %i.ayo to i64
  %.0.i.i.i5681317 = ptrtoaddr ptr %.0.i.i.i568 to i64
  %wide.trip.count.i.i.i576 = zext nneg i32 %i.aym to i64 ; 5 uses
  %min.iters.check1319 = icmp ult i32 %i.aym, 4
  %i.ayq = sub i64 %i.ayp, %.0.i.i.i5681317
  %diff.check1321 = icmp ugt i64 %i.ayq, -32
  %or.cond1403 = select i1 %min.iters.check1319, i1 true, i1 %diff.check1321
  br i1 %or.cond1403, label %scalar.ph1318.preheader, label %vector.ph1322

vector.ph1322:                                    ; preds = %.lr.ph.i.i.i575
  %n.vec1323 = and i64 %wide.trip.count.i.i.i576, 2147483644 ; 3 uses
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1322
  %index1325 = phi i64 [ 0, %vector.ph1322 ], [ %index.next1328, %vector.body1324 ] ; 3 uses
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i568, i64 %index1325 ; 2 uses
  %i.ays = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %index1325 ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 16
  %wide.load1326 = load <2 x ptr>, ptr %i.ays, align 8, !tbaa !69
  %wide.load1327 = load <2 x ptr>, ptr %i.ayt, align 8, !tbaa !69
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayr, i64 16
  store <2 x ptr> %wide.load1326, ptr %i.ayr, align 8, !tbaa !69
  store <2 x ptr> %wide.load1327, ptr %i.ayu, align 8, !tbaa !69
  %index.next1328 = add nuw i64 %index1325, 4     ; 2 uses
  %i.ayv = icmp eq i64 %index.next1328, %n.vec1323
  br i1 %i.ayv, label %middle.block1329, label %vector.body1324, !llvm.loop !227

middle.block1329:                                 ; preds = %vector.body1324
  %cmp.n1330 = icmp eq i64 %n.vec1323, %wide.trip.count.i.i.i576
  br i1 %cmp.n1330, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i571, label %scalar.ph1318.preheader

scalar.ph1318.preheader:                          ; preds = %.lr.ph.i.i.i575, %middle.block1329
  %indvars.iv.i.i.i577.ph = phi i64 [ 0, %.lr.ph.i.i.i575 ], [ %n.vec1323, %middle.block1329 ] ; 3 uses
  %xtraiter1458 = and i64 %wide.trip.count.i.i.i576, 3 ; 2 uses
  %lcmp.mod1459.not = icmp eq i64 %xtraiter1458, 0
  br i1 %lcmp.mod1459.not, label %scalar.ph1318.prol.loopexit, label %scalar.ph1318.prol

scalar.ph1318.prol:                               ; preds = %scalar.ph1318.preheader, %scalar.ph1318.prol
  %indvars.iv.i.i.i577.prol = phi i64 [ %indvars.iv.next.i.i.i578.prol, %scalar.ph1318.prol ], [ %indvars.iv.i.i.i577.ph, %scalar.ph1318.preheader ] ; 3 uses
  %prol.iter1460 = phi i64 [ %prol.iter1460.next, %scalar.ph1318.prol ], [ 0, %scalar.ph1318.preheader ]
  %i.ayw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i568, i64 %indvars.iv.i.i.i577.prol
  %i.ayx = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %indvars.iv.i.i.i577.prol
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !69
  store ptr %i.ayy, ptr %i.ayw, align 8, !tbaa !69
  %indvars.iv.next.i.i.i578.prol = add nuw nsw i64 %indvars.iv.i.i.i577.prol, 1 ; 2 uses
  %prol.iter1460.next = add i64 %prol.iter1460, 1 ; 2 uses
  %prol.iter1460.cmp.not = icmp eq i64 %prol.iter1460.next, %xtraiter1458
  br i1 %prol.iter1460.cmp.not, label %scalar.ph1318.prol.loopexit, label %scalar.ph1318.prol, !llvm.loop !228

scalar.ph1318.prol.loopexit:                      ; preds = %scalar.ph1318.prol, %scalar.ph1318.preheader
  %indvars.iv.i.i.i577.unr = phi i64 [ %indvars.iv.i.i.i577.ph, %scalar.ph1318.preheader ], [ %indvars.iv.next.i.i.i578.prol, %scalar.ph1318.prol ]
  %i.ayz = sub nsw i64 %indvars.iv.i.i.i577.ph, %wide.trip.count.i.i.i576
  %i.aza = icmp ugt i64 %i.ayz, -4
  br i1 %i.aza, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i571, label %scalar.ph1318

scalar.ph1318:                                    ; preds = %scalar.ph1318.prol.loopexit, %scalar.ph1318
  %indvars.iv.i.i.i577 = phi i64 [ %indvars.iv.next.i.i.i578.3, %scalar.ph1318 ], [ %indvars.iv.i.i.i577.unr, %scalar.ph1318.prol.loopexit ] ; 6 uses
  %i.azb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i568, i64 %indvars.iv.i.i.i577
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %indvars.iv.i.i.i577
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !69
  store ptr %i.azd, ptr %i.azb, align 8, !tbaa !69
  %indvars.iv.next.i.i.i578 = add nuw nsw i64 %indvars.iv.i.i.i577, 1 ; 2 uses
  %i.aze = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i568, i64 %indvars.iv.next.i.i.i578
  %i.azf = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %indvars.iv.next.i.i.i578
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !69
  store ptr %i.azg, ptr %i.aze, align 8, !tbaa !69
  %indvars.iv.next.i.i.i578.1 = add nuw nsw i64 %indvars.iv.i.i.i577, 2 ; 2 uses
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i568, i64 %indvars.iv.next.i.i.i578.1
  %i.azi = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %indvars.iv.next.i.i.i578.1
  %i.azj = load ptr, ptr %i.azi, align 8, !tbaa !69
  store ptr %i.azj, ptr %i.azh, align 8, !tbaa !69
  %indvars.iv.next.i.i.i578.2 = add nuw nsw i64 %indvars.iv.i.i.i577, 3 ; 2 uses
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i568, i64 %indvars.iv.next.i.i.i578.2
  %i.azl = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %indvars.iv.next.i.i.i578.2
  %i.azm = load ptr, ptr %i.azl, align 8, !tbaa !69
  store ptr %i.azm, ptr %i.azk, align 8, !tbaa !69
  %indvars.iv.next.i.i.i578.3 = add nuw nsw i64 %indvars.iv.i.i.i577, 4 ; 2 uses
  %exitcond.not.i.i.i579.3 = icmp eq i64 %indvars.iv.next.i.i.i578.3, %wide.trip.count.i.i.i576
  br i1 %exitcond.not.i.i.i579.3, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i571, label %scalar.ph1318, !llvm.loop !229

_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i569: ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i567
  %.not.i5.i.i570 = icmp eq ptr %i.ayo, null
  br i1 %.not.i5.i.i570, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i572, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i571

_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i571: ; preds = %scalar.ph1318.prol.loopexit, %scalar.ph1318, %middle.block1329, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i569
  %i.azn = load i8, ptr %i.gn, align 8, !tbaa !105, !range !22, !noundef !23
  %i.azo = trunc nuw i8 %i.azn to i1
  br i1 %i.azo, label %bb.dn, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i572

bb.dn:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i571
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ayo)
  %.pre2.pre.pre.i574 = load i32, ptr %i.gk, align 4, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i572

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i572: ; preds = %bb.dn, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i571, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i569
  %.pre2.i573 = phi i32 [ %i.aym, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i569 ], [ %.pre2.pre.pre.i574, %bb.dn ], [ %i.aym, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i571 ]
  store i8 1, ptr %i.gn, align 8, !tbaa !105
  store ptr %.0.i.i.i568, ptr %i.gm, align 8, !tbaa !74
  store i32 %i.ayh, ptr %i.gl, align 8, !tbaa !102
  %.pre = load ptr, ptr %i.axd, align 8, !tbaa !43
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit580

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit580: ; preds = %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit563, %bb.dk, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i572
  %i.azp = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i572 ], [ %i.axi, %bb.dk ], [ %i.axi, %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit563 ] ; 2 uses
  %i.azq = phi i32 [ %.pre2.i573, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i572 ], [ %i.ayd, %bb.dk ], [ %i.ayd, %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit563 ] ; 2 uses
  %i.azr = load ptr, ptr %i.gm, align 8, !tbaa !74
  %i.azs = sext i32 %i.azq to i64
  %i.azt = getelementptr inbounds [8 x i8], ptr %i.azr, i64 %i.azs
  store ptr %i.axl, ptr %i.azt, align 8, !tbaa !69
  %i.azu = add nsw i32 %i.azq, 1
  store i32 %i.azu, ptr %i.gk, align 4, !tbaa !101
  %i.azv = load ptr, ptr %.0249, align 8, !tbaa !40 ; 2 uses
  %.not280 = icmp eq ptr %i.azv, %i.azp
  br i1 %.not280, label %._crit_edge941, label %.lr.ph940, !llvm.loop !230

._crit_edge941:                                   ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit580, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !69
  call void @_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.do

bb.do:                                            ; preds = %bb.df, %._crit_edge941, %bb.de
  %i.azw = load ptr, ptr %i.gm, align 8, !tbaa !74 ; 4 uses
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !69
  %i.azy = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.azx, ptr %i.azy, align 8, !tbaa !111
  %i.azz = load i32, ptr %i.gk, align 4, !tbaa !101 ; 3 uses
  %i.baa = icmp sgt i32 %i.azz, 0
  br i1 %i.baa, label %.preheader, label %._crit_edge955

.loopexit911:                                     ; preds = %._crit_edge950.thread
  %i.bab = load i32, ptr %i.gk, align 4, !tbaa !101 ; 3 uses
  %i.bac = icmp slt i32 %.lcssa1164, %i.bab
  br i1 %i.bac, label %.preheader, label %._crit_edge955, !llvm.loop !231

.preheader:                                       ; preds = %bb.do, %.loopexit911
  %i.bad = phi ptr [ %i.bha, %.loopexit911 ], [ %i.azw, %bb.do ]
  %i.bae = phi ptr [ %i.bhb, %.loopexit911 ], [ %i.azw, %bb.do ]
  %i.baf = phi i32 [ %i.bab, %.loopexit911 ], [ %i.azz, %bb.do ]
  %.0202954 = phi i32 [ %.lcssa1164, %.loopexit911 ], [ 0, %bb.do ]
  br label %bb.dp

bb.dp:                                            ; preds = %.preheader, %._crit_edge950.thread
  %i.bag = phi ptr [ %i.bad, %.preheader ], [ %i.bha, %._crit_edge950.thread ]
  %i.bah = phi ptr [ %i.bae, %.preheader ], [ %i.bhb, %._crit_edge950.thread ] ; 2 uses
  %.1203953 = phi i32 [ %.0202954, %.preheader ], [ %.lcssa1164, %._crit_edge950.thread ] ; 2 uses
  %i.bai = sext i32 %.1203953 to i64
  %i.baj = getelementptr [8 x i8], ptr %i.bah, i64 %i.bai ; 2 uses
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !69 ; 4 uses
  %i.bal = add nsw i32 %.1203953, 2               ; 2 uses
  %i.bam = getelementptr i8, ptr %i.baj, i64 8
  %i.ban = load ptr, ptr %i.bam, align 8, !tbaa !69 ; 2 uses
  %.not281946 = icmp eq ptr %i.ban, null
  br i1 %.not281946, label %._crit_edge950.thread, label %.lr.ph949

.lr.ph949:                                        ; preds = %bb.dp
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bak, i64 32 ; 2 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bak, i64 24
  br label %bb.dq

.loopexit:                                        ; preds = %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621, %_ZN20btConvexHullInternal6Vertex18receiveNearbyFacesEPS0_.exit..loopexit_crit_edge
  %i.baq = phi ptr [ %.pre1015, %_ZN20btConvexHullInternal6Vertex18receiveNearbyFacesEPS0_.exit..loopexit_crit_edge ], [ %i.bej, %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621 ] ; 6 uses
  %.1.lcssa = phi i8 [ %.0947, %_ZN20btConvexHullInternal6Vertex18receiveNearbyFacesEPS0_.exit..loopexit_crit_edge ], [ 1, %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621 ] ; 2 uses
  %14 = add nsw i32 %17, 1                        ; 3 uses
  %15 = sext i32 %17 to i64
  %i.bar = getelementptr inbounds [8 x i8], ptr %i.baq, i64 %15
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !69 ; 2 uses
  %.not281 = icmp eq ptr %i.bas, null
  br i1 %.not281, label %._crit_edge950, label %bb.dq, !llvm.loop !232

bb.dq:                                            ; preds = %.lr.ph949, %.loopexit
  %16 = phi ptr [ %i.ban, %.lr.ph949 ], [ %i.bas, %.loopexit ] ; 3 uses
  %17 = phi i32 [ %i.bal, %.lr.ph949 ], [ %14, %.loopexit ] ; 2 uses
  %.0947 = phi i8 [ 0, %.lr.ph949 ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %i.bat = load ptr, ptr %i.bao, align 8, !tbaa !120 ; 2 uses
  %.not.i581 = icmp eq ptr %i.bat, null
  %i.bau = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !122 ; 3 uses
  br i1 %.not.i581, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bat, i64 16
  store ptr %i.bav, ptr %i.baw, align 8, !tbaa !121
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  store ptr %i.bav, ptr %i.bap, align 8, !tbaa !122
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.bax = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.bay = load ptr, ptr %i.bax, align 8, !tbaa !120 ; 2 uses
  %.not13.i = icmp eq ptr %i.bay, null
  br i1 %.not13.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store ptr %i.bay, ptr %i.bao, align 8, !tbaa !120
  %.015.pre.i = load ptr, ptr %i.bau, align 8, !tbaa !123
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.015.i = phi ptr [ %.015.pre.i, %bb.du ], [ %i.bav, %bb.dt ] ; 2 uses
  %.not1416.i = icmp eq ptr %.015.i, null
  br i1 %.not1416.i, label %_ZN20btConvexHullInternal6Vertex18receiveNearbyFacesEPS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dv, %.lr.ph.i
  %.017.i = phi ptr [ %.0.i582, %.lr.ph.i ], [ %.015.i, %bb.dv ] ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  store ptr %i.bak, ptr %i.baz, align 8, !tbaa !119
  %i.bba = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %.0.i582 = load ptr, ptr %i.bba, align 8, !tbaa !123 ; 2 uses
  %.not14.i = icmp eq ptr %.0.i582, null
  br i1 %.not14.i, label %_ZN20btConvexHullInternal6Vertex18receiveNearbyFacesEPS0_.exit, label %.lr.ph.i, !llvm.loop !233

_ZN20btConvexHullInternal6Vertex18receiveNearbyFacesEPS0_.exit: ; preds = %.lr.ph.i, %bb.dv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bau, i8 0, i64 16, i1 false)
  %i.bbb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !70 ; 2 uses
  %.not282942 = icmp eq ptr %i.bbc, null
  br i1 %.not282942, label %_ZN20btConvexHullInternal6Vertex18receiveNearbyFacesEPS0_.exit..loopexit_crit_edge, label %.lr.ph944.preheader

_ZN20btConvexHullInternal6Vertex18receiveNearbyFacesEPS0_.exit..loopexit_crit_edge: ; preds = %_ZN20btConvexHullInternal6Vertex18receiveNearbyFacesEPS0_.exit
  %.pre1015 = load ptr, ptr %i.gm, align 8, !tbaa !74
  br label %.loopexit

.lr.ph944.preheader:                              ; preds = %_ZN20btConvexHullInternal6Vertex18receiveNearbyFacesEPS0_.exit
  %.pre1012.pre = load i32, ptr %i.gk, align 4, !tbaa !101
  %.pre1013.pre = load i32, ptr %i.gl, align 8, !tbaa !102
  %i.bbd = trunc nuw i8 %.0947 to i1
  br label %.lr.ph944

.lr.ph944:                                        ; preds = %.lr.ph944.preheader, %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621
  %.pre1013 = phi i32 [ %.pre10131032, %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621 ], [ %.pre1013.pre, %.lr.ph944.preheader ] ; 9 uses
  %.pre1012 = phi i32 [ %i.ben, %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621 ], [ %.pre1012.pre, %.lr.ph944.preheader ] ; 3 uses
  %i.bbe = phi ptr [ %i.bfh, %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621 ], [ %i.bbc, %.lr.ph944.preheader ] ; 3 uses
  %.1943 = phi i1 [ true, %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621 ], [ %i.bbd, %.lr.ph944.preheader ]
  br i1 %.1943, label %bb.eb, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph944
  %i.bbf = icmp eq i32 %.pre1012, %.pre1013
  br i1 %i.bbf, label %bb.dx, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit599

bb.dx:                                            ; preds = %bb.dw
  %.not.i.i583 = icmp eq i32 %.pre1013, 0
  %i.bbg = shl nsw i32 %.pre1013, 1
  %i.bbh = select i1 %.not.i.i583, i32 1, i32 %i.bbg ; 5 uses
  %i.bbi = icmp slt i32 %.pre1013, %i.bbh
  br i1 %i.bbi, label %bb.dy, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit599

bb.dy:                                            ; preds = %bb.dx
  %.not.i.i.i584 = icmp eq i32 %i.bbh, 0
  br i1 %.not.i.i.i584, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i586, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.bbj = sext i32 %i.bbh to i64
  %i.bbk = shl nsw i64 %i.bbj, 3
  %i.bbl = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bbk, i32 noundef 16)
  %.pre.i585 = load i32, ptr %i.gk, align 4, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i586

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i586: ; preds = %bb.dz, %bb.dy
  %i.bbm = phi i32 [ %.pre.i585, %bb.dz ], [ %.pre1013, %bb.dy ] ; 5 uses
  %.0.i.i.i587 = phi ptr [ %i.bbl, %bb.dz ], [ null, %bb.dy ] ; 8 uses
  %i.bbn = icmp sgt i32 %i.bbm, 0
  %i.bbo = load ptr, ptr %i.gm, align 8, !tbaa !74 ; 9 uses
  br i1 %i.bbn, label %.lr.ph.i.i.i594, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i588

.lr.ph.i.i.i594:                                  ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i586
  %i.bbp = ptrtoaddr ptr %i.bbo to i64
  %.0.i.i.i5871371 = ptrtoaddr ptr %.0.i.i.i587 to i64
  %wide.trip.count.i.i.i595 = zext nneg i32 %i.bbm to i64 ; 5 uses
  %min.iters.check1373 = icmp ult i32 %i.bbm, 4
  %i.bbq = sub i64 %i.bbp, %.0.i.i.i5871371
  %diff.check1375 = icmp ugt i64 %i.bbq, -32
  %or.cond1404 = select i1 %min.iters.check1373, i1 true, i1 %diff.check1375
  br i1 %or.cond1404, label %scalar.ph1372.preheader, label %vector.ph1376

vector.ph1376:                                    ; preds = %.lr.ph.i.i.i594
  %n.vec1377 = and i64 %wide.trip.count.i.i.i595, 2147483644 ; 3 uses
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1382, %vector.body1378 ] ; 3 uses
  %i.bbr = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i587, i64 %index1379 ; 2 uses
  %i.bbs = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %index1379 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 16
  %wide.load1380 = load <2 x ptr>, ptr %i.bbs, align 8, !tbaa !69
  %wide.load1381 = load <2 x ptr>, ptr %i.bbt, align 8, !tbaa !69
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16
  store <2 x ptr> %wide.load1380, ptr %i.bbr, align 8, !tbaa !69
  store <2 x ptr> %wide.load1381, ptr %i.bbu, align 8, !tbaa !69
  %index.next1382 = add nuw i64 %index1379, 4     ; 2 uses
  %i.bbv = icmp eq i64 %index.next1382, %n.vec1377
  br i1 %i.bbv, label %middle.block1383, label %vector.body1378, !llvm.loop !234

middle.block1383:                                 ; preds = %vector.body1378
  %cmp.n1384 = icmp eq i64 %n.vec1377, %wide.trip.count.i.i.i595
  br i1 %cmp.n1384, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i590, label %scalar.ph1372.preheader

scalar.ph1372.preheader:                          ; preds = %.lr.ph.i.i.i594, %middle.block1383
  %indvars.iv.i.i.i596.ph = phi i64 [ 0, %.lr.ph.i.i.i594 ], [ %n.vec1377, %middle.block1383 ] ; 3 uses
  %xtraiter1461 = and i64 %wide.trip.count.i.i.i595, 3 ; 2 uses
  %lcmp.mod1462.not = icmp eq i64 %xtraiter1461, 0
  br i1 %lcmp.mod1462.not, label %scalar.ph1372.prol.loopexit, label %scalar.ph1372.prol

scalar.ph1372.prol:                               ; preds = %scalar.ph1372.preheader, %scalar.ph1372.prol
  %indvars.iv.i.i.i596.prol = phi i64 [ %indvars.iv.next.i.i.i597.prol, %scalar.ph1372.prol ], [ %indvars.iv.i.i.i596.ph, %scalar.ph1372.preheader ] ; 3 uses
  %prol.iter1463 = phi i64 [ %prol.iter1463.next, %scalar.ph1372.prol ], [ 0, %scalar.ph1372.preheader ]
  %i.bbw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i587, i64 %indvars.iv.i.i.i596.prol
  %i.bbx = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %indvars.iv.i.i.i596.prol
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !69
  store ptr %i.bby, ptr %i.bbw, align 8, !tbaa !69
  %indvars.iv.next.i.i.i597.prol = add nuw nsw i64 %indvars.iv.i.i.i596.prol, 1 ; 2 uses
  %prol.iter1463.next = add i64 %prol.iter1463, 1 ; 2 uses
  %prol.iter1463.cmp.not = icmp eq i64 %prol.iter1463.next, %xtraiter1461
  br i1 %prol.iter1463.cmp.not, label %scalar.ph1372.prol.loopexit, label %scalar.ph1372.prol, !llvm.loop !235

scalar.ph1372.prol.loopexit:                      ; preds = %scalar.ph1372.prol, %scalar.ph1372.preheader
  %indvars.iv.i.i.i596.unr = phi i64 [ %indvars.iv.i.i.i596.ph, %scalar.ph1372.preheader ], [ %indvars.iv.next.i.i.i597.prol, %scalar.ph1372.prol ]
  %i.bbz = sub nsw i64 %indvars.iv.i.i.i596.ph, %wide.trip.count.i.i.i595
  %i.bca = icmp ugt i64 %i.bbz, -4
  br i1 %i.bca, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i590, label %scalar.ph1372

scalar.ph1372:                                    ; preds = %scalar.ph1372.prol.loopexit, %scalar.ph1372
  %indvars.iv.i.i.i596 = phi i64 [ %indvars.iv.next.i.i.i597.3, %scalar.ph1372 ], [ %indvars.iv.i.i.i596.unr, %scalar.ph1372.prol.loopexit ] ; 6 uses
  %i.bcb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i587, i64 %indvars.iv.i.i.i596
  %i.bcc = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %indvars.iv.i.i.i596
  %i.bcd = load ptr, ptr %i.bcc, align 8, !tbaa !69
  store ptr %i.bcd, ptr %i.bcb, align 8, !tbaa !69
  %indvars.iv.next.i.i.i597 = add nuw nsw i64 %indvars.iv.i.i.i596, 1 ; 2 uses
  %i.bce = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i587, i64 %indvars.iv.next.i.i.i597
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %indvars.iv.next.i.i.i597
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !69
  store ptr %i.bcg, ptr %i.bce, align 8, !tbaa !69
  %indvars.iv.next.i.i.i597.1 = add nuw nsw i64 %indvars.iv.i.i.i596, 2 ; 2 uses
  %i.bch = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i587, i64 %indvars.iv.next.i.i.i597.1
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %indvars.iv.next.i.i.i597.1
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !69
  store ptr %i.bcj, ptr %i.bch, align 8, !tbaa !69
  %indvars.iv.next.i.i.i597.2 = add nuw nsw i64 %indvars.iv.i.i.i596, 3 ; 2 uses
  %i.bck = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i587, i64 %indvars.iv.next.i.i.i597.2
  %i.bcl = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %indvars.iv.next.i.i.i597.2
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !69
  store ptr %i.bcm, ptr %i.bck, align 8, !tbaa !69
  %indvars.iv.next.i.i.i597.3 = add nuw nsw i64 %indvars.iv.i.i.i596, 4 ; 2 uses
  %exitcond.not.i.i.i598.3 = icmp eq i64 %indvars.iv.next.i.i.i597.3, %wide.trip.count.i.i.i595
  br i1 %exitcond.not.i.i.i598.3, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i590, label %scalar.ph1372, !llvm.loop !236

_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i588: ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i586
  %.not.i5.i.i589 = icmp eq ptr %i.bbo, null
  br i1 %.not.i5.i.i589, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i591, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i590

_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i590: ; preds = %scalar.ph1372.prol.loopexit, %scalar.ph1372, %middle.block1383, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i588
  %i.bcn = load i8, ptr %i.gn, align 8, !tbaa !105, !range !22, !noundef !23
  %i.bco = trunc nuw i8 %i.bcn to i1
  br i1 %i.bco, label %bb.ea, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i591

bb.ea:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i590
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bbo)
  %.pre2.pre.pre.i593 = load i32, ptr %i.gk, align 4, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i591

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i591: ; preds = %bb.ea, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i590, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i588
  %.pre2.i592 = phi i32 [ %i.bbm, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i588 ], [ %.pre2.pre.pre.i593, %bb.ea ], [ %i.bbm, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i590 ]
  store i8 1, ptr %i.gn, align 8, !tbaa !105
  store ptr %.0.i.i.i587, ptr %i.gm, align 8, !tbaa !74
  store i32 %i.bbh, ptr %i.gl, align 8, !tbaa !102
  %.pre1011.pre = load ptr, ptr %i.bbb, align 8, !tbaa !70
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit599

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit599: ; preds = %bb.dw, %bb.dx, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i591
  %.pre1011 = phi ptr [ %.pre1011.pre, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i591 ], [ %i.bbe, %bb.dx ], [ %i.bbe, %bb.dw ]
  %.pre10131031 = phi i32 [ %i.bbh, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i591 ], [ %.pre1013, %bb.dx ], [ %.pre1013, %bb.dw ]
  %i.bcp = phi i32 [ %.pre2.i592, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i591 ], [ %.pre1013, %bb.dx ], [ %.pre1012, %bb.dw ] ; 2 uses
  %i.bcq = load ptr, ptr %i.gm, align 8, !tbaa !74
  %i.bcr = sext i32 %i.bcp to i64
  %i.bcs = getelementptr inbounds [8 x i8], ptr %i.bcq, i64 %i.bcr
  store ptr %i.bak, ptr %i.bcs, align 8, !tbaa !69
  %i.bct = add nsw i32 %i.bcp, 1                  ; 2 uses
  store i32 %i.bct, ptr %i.gk, align 4, !tbaa !101
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit599, %.lr.ph944
  %.pre10131033 = phi i32 [ %.pre10131031, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit599 ], [ %.pre1013, %.lr.ph944 ] ; 8 uses
  %i.bcu = phi i32 [ %i.bct, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit599 ], [ %.pre1012, %.lr.ph944 ] ; 2 uses
  %i.bcv = phi ptr [ %.pre1011, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit599 ], [ %i.bbe, %.lr.ph944 ] ; 3 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 24
  %i.bcx = icmp eq i32 %i.bcu, %.pre10131033
  br i1 %i.bcx, label %bb.ec, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit616

bb.ec:                                            ; preds = %bb.eb
  %.not.i.i600 = icmp eq i32 %.pre10131033, 0
  %i.bcy = shl nsw i32 %.pre10131033, 1
  %i.bcz = select i1 %.not.i.i600, i32 1, i32 %i.bcy ; 5 uses
  %i.bda = icmp slt i32 %.pre10131033, %i.bcz
  br i1 %i.bda, label %bb.ed, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit616

bb.ed:                                            ; preds = %bb.ec
  %.not.i.i.i601 = icmp eq i32 %i.bcz, 0
  br i1 %.not.i.i.i601, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i603, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.bdb = sext i32 %i.bcz to i64
  %i.bdc = shl nsw i64 %i.bdb, 3
  %i.bdd = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bdc, i32 noundef 16)
  %.pre.i602 = load i32, ptr %i.gk, align 4, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i603

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i603: ; preds = %bb.ee, %bb.ed
  %i.bde = phi i32 [ %.pre.i602, %bb.ee ], [ %.pre10131033, %bb.ed ] ; 5 uses
  %.0.i.i.i604 = phi ptr [ %i.bdd, %bb.ee ], [ null, %bb.ed ] ; 8 uses
  %i.bdf = icmp sgt i32 %i.bde, 0
  %i.bdg = load ptr, ptr %i.gm, align 8, !tbaa !74 ; 9 uses
  br i1 %i.bdf, label %.lr.ph.i.i.i611, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i605

.lr.ph.i.i.i611:                                  ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i603
  %i.bdh = ptrtoaddr ptr %i.bdg to i64
  %.0.i.i.i6041353 = ptrtoaddr ptr %.0.i.i.i604 to i64
  %wide.trip.count.i.i.i612 = zext nneg i32 %i.bde to i64 ; 5 uses
  %min.iters.check1355 = icmp ult i32 %i.bde, 4
  %i.bdi = sub i64 %i.bdh, %.0.i.i.i6041353
  %diff.check1357 = icmp ugt i64 %i.bdi, -32
  %or.cond1405 = select i1 %min.iters.check1355, i1 true, i1 %diff.check1357
  br i1 %or.cond1405, label %scalar.ph1354.preheader, label %vector.ph1358

vector.ph1358:                                    ; preds = %.lr.ph.i.i.i611
  %n.vec1359 = and i64 %wide.trip.count.i.i.i612, 2147483644 ; 3 uses
  br label %vector.body1360

vector.body1360:                                  ; preds = %vector.body1360, %vector.ph1358
  %index1361 = phi i64 [ 0, %vector.ph1358 ], [ %index.next1364, %vector.body1360 ] ; 3 uses
  %i.bdj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i604, i64 %index1361 ; 2 uses
  %i.bdk = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %index1361 ; 2 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 16
  %wide.load1362 = load <2 x ptr>, ptr %i.bdk, align 8, !tbaa !69
  %wide.load1363 = load <2 x ptr>, ptr %i.bdl, align 8, !tbaa !69
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdj, i64 16
  store <2 x ptr> %wide.load1362, ptr %i.bdj, align 8, !tbaa !69
  store <2 x ptr> %wide.load1363, ptr %i.bdm, align 8, !tbaa !69
  %index.next1364 = add nuw i64 %index1361, 4     ; 2 uses
  %i.bdn = icmp eq i64 %index.next1364, %n.vec1359
  br i1 %i.bdn, label %middle.block1365, label %vector.body1360, !llvm.loop !237

middle.block1365:                                 ; preds = %vector.body1360
  %cmp.n1366 = icmp eq i64 %n.vec1359, %wide.trip.count.i.i.i612
  br i1 %cmp.n1366, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i607, label %scalar.ph1354.preheader

scalar.ph1354.preheader:                          ; preds = %.lr.ph.i.i.i611, %middle.block1365
  %indvars.iv.i.i.i613.ph = phi i64 [ 0, %.lr.ph.i.i.i611 ], [ %n.vec1359, %middle.block1365 ] ; 3 uses
  %xtraiter1464 = and i64 %wide.trip.count.i.i.i612, 3 ; 2 uses
  %lcmp.mod1465.not = icmp eq i64 %xtraiter1464, 0
  br i1 %lcmp.mod1465.not, label %scalar.ph1354.prol.loopexit, label %scalar.ph1354.prol

scalar.ph1354.prol:                               ; preds = %scalar.ph1354.preheader, %scalar.ph1354.prol
  %indvars.iv.i.i.i613.prol = phi i64 [ %indvars.iv.next.i.i.i614.prol, %scalar.ph1354.prol ], [ %indvars.iv.i.i.i613.ph, %scalar.ph1354.preheader ] ; 3 uses
  %prol.iter1466 = phi i64 [ %prol.iter1466.next, %scalar.ph1354.prol ], [ 0, %scalar.ph1354.preheader ]
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i604, i64 %indvars.iv.i.i.i613.prol
  %i.bdp = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %indvars.iv.i.i.i613.prol
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !69
  store ptr %i.bdq, ptr %i.bdo, align 8, !tbaa !69
  %indvars.iv.next.i.i.i614.prol = add nuw nsw i64 %indvars.iv.i.i.i613.prol, 1 ; 2 uses
  %prol.iter1466.next = add i64 %prol.iter1466, 1 ; 2 uses
  %prol.iter1466.cmp.not = icmp eq i64 %prol.iter1466.next, %xtraiter1464
  br i1 %prol.iter1466.cmp.not, label %scalar.ph1354.prol.loopexit, label %scalar.ph1354.prol, !llvm.loop !238

scalar.ph1354.prol.loopexit:                      ; preds = %scalar.ph1354.prol, %scalar.ph1354.preheader
  %indvars.iv.i.i.i613.unr = phi i64 [ %indvars.iv.i.i.i613.ph, %scalar.ph1354.preheader ], [ %indvars.iv.next.i.i.i614.prol, %scalar.ph1354.prol ]
  %i.bdr = sub nsw i64 %indvars.iv.i.i.i613.ph, %wide.trip.count.i.i.i612
  %i.bds = icmp ugt i64 %i.bdr, -4
  br i1 %i.bds, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i607, label %scalar.ph1354

scalar.ph1354:                                    ; preds = %scalar.ph1354.prol.loopexit, %scalar.ph1354
  %indvars.iv.i.i.i613 = phi i64 [ %indvars.iv.next.i.i.i614.3, %scalar.ph1354 ], [ %indvars.iv.i.i.i613.unr, %scalar.ph1354.prol.loopexit ] ; 6 uses
  %i.bdt = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i604, i64 %indvars.iv.i.i.i613
  %i.bdu = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %indvars.iv.i.i.i613
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !69
  store ptr %i.bdv, ptr %i.bdt, align 8, !tbaa !69
  %indvars.iv.next.i.i.i614 = add nuw nsw i64 %indvars.iv.i.i.i613, 1 ; 2 uses
  %i.bdw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i604, i64 %indvars.iv.next.i.i.i614
  %i.bdx = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %indvars.iv.next.i.i.i614
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !69
  store ptr %i.bdy, ptr %i.bdw, align 8, !tbaa !69
  %indvars.iv.next.i.i.i614.1 = add nuw nsw i64 %indvars.iv.i.i.i613, 2 ; 2 uses
  %i.bdz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i604, i64 %indvars.iv.next.i.i.i614.1
  %i.bea = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %indvars.iv.next.i.i.i614.1
  %i.beb = load ptr, ptr %i.bea, align 8, !tbaa !69
  store ptr %i.beb, ptr %i.bdz, align 8, !tbaa !69
  %indvars.iv.next.i.i.i614.2 = add nuw nsw i64 %indvars.iv.i.i.i613, 3 ; 2 uses
  %i.bec = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i604, i64 %indvars.iv.next.i.i.i614.2
  %i.bed = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %indvars.iv.next.i.i.i614.2
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !69
  store ptr %i.bee, ptr %i.bec, align 8, !tbaa !69
  %indvars.iv.next.i.i.i614.3 = add nuw nsw i64 %indvars.iv.i.i.i613, 4 ; 2 uses
  %exitcond.not.i.i.i615.3 = icmp eq i64 %indvars.iv.next.i.i.i614.3, %wide.trip.count.i.i.i612
  br i1 %exitcond.not.i.i.i615.3, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i607, label %scalar.ph1354, !llvm.loop !239

_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i605: ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i603
  %.not.i5.i.i606 = icmp eq ptr %i.bdg, null
  br i1 %.not.i5.i.i606, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i608, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i607

_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i607: ; preds = %scalar.ph1354.prol.loopexit, %scalar.ph1354, %middle.block1365, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i605
  %i.bef = load i8, ptr %i.gn, align 8, !tbaa !105, !range !22, !noundef !23
  %i.beg = trunc nuw i8 %i.bef to i1
  br i1 %i.beg, label %bb.ef, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i608

bb.ef:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i607
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bdg)
  %.pre2.pre.pre.i610 = load i32, ptr %i.gk, align 4, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i608

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i608: ; preds = %bb.ef, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i607, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i605
  %.pre2.i609 = phi i32 [ %i.bde, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i605 ], [ %.pre2.pre.pre.i610, %bb.ef ], [ %i.bde, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i607 ]
  store i8 1, ptr %i.gn, align 8, !tbaa !105
  store ptr %.0.i.i.i604, ptr %i.gm, align 8, !tbaa !74
  store i32 %i.bcz, ptr %i.gl, align 8, !tbaa !102
  %.pre1014 = load ptr, ptr %i.bbb, align 8, !tbaa !70
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit616

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit616: ; preds = %bb.eb, %bb.ec, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i608
  %.pre10131032 = phi i32 [ %i.bcz, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i608 ], [ %.pre10131033, %bb.ec ], [ %.pre10131033, %bb.eb ]
  %i.beh = phi ptr [ %.pre1014, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i608 ], [ %i.bcv, %bb.ec ], [ %i.bcv, %bb.eb ] ; 7 uses
  %i.bei = phi i32 [ %.pre2.i609, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i608 ], [ %.pre10131033, %bb.ec ], [ %i.bcu, %bb.eb ] ; 2 uses
  %i.bej = load ptr, ptr %i.gm, align 8, !tbaa !74 ; 2 uses
  %i.bek = sext i32 %i.bei to i64
  %i.bel = getelementptr inbounds [8 x i8], ptr %i.bej, i64 %i.bek
  %i.bem = load ptr, ptr %i.bcw, align 8, !tbaa !69
  store ptr %i.bem, ptr %i.bel, align 8, !tbaa !69
  %i.ben = add nsw i32 %i.bei, 1                  ; 2 uses
  store i32 %i.ben, ptr %i.gk, align 4, !tbaa !101
  %i.beo = load ptr, ptr %i.beh, align 8, !tbaa !40 ; 4 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beh, i64 16
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !43 ; 6 uses
  %.not.i617 = icmp eq ptr %i.beo, %i.beh
  br i1 %.not.i617, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit616
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beh, i64 8
  %i.bes = load ptr, ptr %i.ber, align 8, !tbaa !79 ; 2 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %i.beo, i64 8
  store ptr %i.bes, ptr %i.bet, align 8, !tbaa !79
  store ptr %i.beo, ptr %i.bes, align 8, !tbaa !40
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit616
  %.sink.i618 = phi ptr [ %i.beo, %bb.eg ], [ null, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit616 ]
  %i.beu = getelementptr inbounds nuw i8, ptr %i.beq, i64 24
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !56
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 16
  store ptr %.sink.i618, ptr %i.bew, align 8, !tbaa !70
  %i.bex = load ptr, ptr %i.beq, align 8, !tbaa !40 ; 4 uses
  %.not27.i619 = icmp eq ptr %i.bex, %i.beq
  br i1 %.not27.i619, label %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.bey = getelementptr inbounds nuw i8, ptr %i.beq, i64 8
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !79 ; 2 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bex, i64 8
  store ptr %i.bez, ptr %i.bfa, align 8, !tbaa !79
  store ptr %i.bex, ptr %i.bez, align 8, !tbaa !40
  br label %_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621

_ZN20btConvexHullInternal14removeEdgePairEPNS_4EdgeE.exit621: ; preds = %bb.eh, %bb.ei
  %.sink34.i620 = phi ptr [ %i.bex, %bb.ei ], [ null, %bb.eh ]
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.beh, i64 24
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !56
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 16
  store ptr %.sink34.i620, ptr %i.bfd, align 8, !tbaa !70
  %i.bfe = load ptr, ptr %i.go, align 8, !tbaa !30
  store ptr %i.bfe, ptr %i.beh, align 8, !tbaa !40
  store ptr %i.beh, ptr %i.beq, align 8, !tbaa !40
  store ptr %i.beq, ptr %i.go, align 8, !tbaa !30
  %i.bff = load i32, ptr %i.gp, align 8, !tbaa !58
  %i.bfg = add nsw i32 %i.bff, -1
  store i32 %i.bfg, ptr %i.gp, align 8, !tbaa !58
  %i.bfh = load ptr, ptr %i.bbb, align 8, !tbaa !70 ; 2 uses
  %.not282 = icmp eq ptr %i.bfh, null
  br i1 %.not282, label %.loopexit, label %.lr.ph944, !llvm.loop !240

._crit_edge950:                                   ; preds = %.loopexit
  %i.bfi = trunc nuw i8 %.1.lcssa to i1
  br i1 %i.bfi, label %bb.ej, label %._crit_edge950.thread

bb.ej:                                            ; preds = %._crit_edge950
  %i.bfj = load i32, ptr %i.gk, align 4, !tbaa !101 ; 7 uses
  %i.bfk = load i32, ptr %i.gl, align 8, !tbaa !102
  %i.bfl = icmp eq i32 %i.bfj, %i.bfk
  br i1 %i.bfl, label %bb.ek, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit638

bb.ek:                                            ; preds = %bb.ej
  %.not.i.i622 = icmp eq i32 %i.bfj, 0
  %i.bfm = shl nsw i32 %i.bfj, 1
  %i.bfn = select i1 %.not.i.i622, i32 1, i32 %i.bfm ; 4 uses
  %i.bfo = icmp slt i32 %i.bfj, %i.bfn
  br i1 %i.bfo, label %bb.el, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit638

bb.el:                                            ; preds = %bb.ek
  %.not.i.i.i623 = icmp eq i32 %i.bfn, 0
  br i1 %.not.i.i.i623, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i625, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.bfp = sext i32 %i.bfn to i64
  %i.bfq = shl nsw i64 %i.bfp, 3
  %i.bfr = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bfq, i32 noundef 16)
  %.pre.i624 = load i32, ptr %i.gk, align 4, !tbaa !101
  %.pre1016 = load ptr, ptr %i.gm, align 8, !tbaa !74
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i625

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i625: ; preds = %bb.em, %bb.el
  %i.bfs = phi ptr [ %.pre1016, %bb.em ], [ %i.baq, %bb.el ] ; 9 uses
  %i.bft = phi i32 [ %.pre.i624, %bb.em ], [ %i.bfj, %bb.el ] ; 5 uses
  %.0.i.i.i626 = phi ptr [ %i.bfr, %bb.em ], [ null, %bb.el ] ; 9 uses
  %i.bfu = icmp sgt i32 %i.bft, 0
  br i1 %i.bfu, label %.lr.ph.i.i.i633, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i627

.lr.ph.i.i.i633:                                  ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i625
  %i.bfv = ptrtoaddr ptr %i.bfs to i64
  %.0.i.i.i6261335 = ptrtoaddr ptr %.0.i.i.i626 to i64
  %wide.trip.count.i.i.i634 = zext nneg i32 %i.bft to i64 ; 5 uses
  %min.iters.check1337 = icmp ult i32 %i.bft, 4
  %i.bfw = sub i64 %i.bfv, %.0.i.i.i6261335
  %diff.check1339 = icmp ugt i64 %i.bfw, -32
  %or.cond1406 = select i1 %min.iters.check1337, i1 true, i1 %diff.check1339
  br i1 %or.cond1406, label %scalar.ph1336.preheader, label %vector.ph1340

vector.ph1340:                                    ; preds = %.lr.ph.i.i.i633
  %n.vec1341 = and i64 %wide.trip.count.i.i.i634, 2147483644 ; 3 uses
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1340
  %index1343 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1346, %vector.body1342 ] ; 3 uses
  %i.bfx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i626, i64 %index1343 ; 2 uses
  %i.bfy = getelementptr inbounds nuw [8 x i8], ptr %i.bfs, i64 %index1343 ; 2 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfy, i64 16
  %wide.load1344 = load <2 x ptr>, ptr %i.bfy, align 8, !tbaa !69
  %wide.load1345 = load <2 x ptr>, ptr %i.bfz, align 8, !tbaa !69
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfx, i64 16
  store <2 x ptr> %wide.load1344, ptr %i.bfx, align 8, !tbaa !69
  store <2 x ptr> %wide.load1345, ptr %i.bga, align 8, !tbaa !69
  %index.next1346 = add nuw i64 %index1343, 4     ; 2 uses
  %i.bgb = icmp eq i64 %index.next1346, %n.vec1341
  br i1 %i.bgb, label %middle.block1347, label %vector.body1342, !llvm.loop !241

middle.block1347:                                 ; preds = %vector.body1342
  %cmp.n1348 = icmp eq i64 %n.vec1341, %wide.trip.count.i.i.i634
  br i1 %cmp.n1348, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i629, label %scalar.ph1336.preheader

scalar.ph1336.preheader:                          ; preds = %.lr.ph.i.i.i633, %middle.block1347
  %indvars.iv.i.i.i635.ph = phi i64 [ 0, %.lr.ph.i.i.i633 ], [ %n.vec1341, %middle.block1347 ] ; 3 uses
  %xtraiter1467 = and i64 %wide.trip.count.i.i.i634, 3 ; 2 uses
  %lcmp.mod1468.not = icmp eq i64 %xtraiter1467, 0
  br i1 %lcmp.mod1468.not, label %scalar.ph1336.prol.loopexit, label %scalar.ph1336.prol

scalar.ph1336.prol:                               ; preds = %scalar.ph1336.preheader, %scalar.ph1336.prol
  %indvars.iv.i.i.i635.prol = phi i64 [ %indvars.iv.next.i.i.i636.prol, %scalar.ph1336.prol ], [ %indvars.iv.i.i.i635.ph, %scalar.ph1336.preheader ] ; 3 uses
  %prol.iter1469 = phi i64 [ %prol.iter1469.next, %scalar.ph1336.prol ], [ 0, %scalar.ph1336.preheader ]
  %i.bgc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i626, i64 %indvars.iv.i.i.i635.prol
  %i.bgd = getelementptr inbounds nuw [8 x i8], ptr %i.bfs, i64 %indvars.iv.i.i.i635.prol
  %i.bge = load ptr, ptr %i.bgd, align 8, !tbaa !69
  store ptr %i.bge, ptr %i.bgc, align 8, !tbaa !69
  %indvars.iv.next.i.i.i636.prol = add nuw nsw i64 %indvars.iv.i.i.i635.prol, 1 ; 2 uses
  %prol.iter1469.next = add i64 %prol.iter1469, 1 ; 2 uses
  %prol.iter1469.cmp.not = icmp eq i64 %prol.iter1469.next, %xtraiter1467
  br i1 %prol.iter1469.cmp.not, label %scalar.ph1336.prol.loopexit, label %scalar.ph1336.prol, !llvm.loop !242

scalar.ph1336.prol.loopexit:                      ; preds = %scalar.ph1336.prol, %scalar.ph1336.preheader
  %indvars.iv.i.i.i635.unr = phi i64 [ %indvars.iv.i.i.i635.ph, %scalar.ph1336.preheader ], [ %indvars.iv.next.i.i.i636.prol, %scalar.ph1336.prol ]
  %i.bgf = sub nsw i64 %indvars.iv.i.i.i635.ph, %wide.trip.count.i.i.i634
  %i.bgg = icmp ugt i64 %i.bgf, -4
  br i1 %i.bgg, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i629, label %scalar.ph1336

scalar.ph1336:                                    ; preds = %scalar.ph1336.prol.loopexit, %scalar.ph1336
  %indvars.iv.i.i.i635 = phi i64 [ %indvars.iv.next.i.i.i636.3, %scalar.ph1336 ], [ %indvars.iv.i.i.i635.unr, %scalar.ph1336.prol.loopexit ] ; 6 uses
  %i.bgh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i626, i64 %indvars.iv.i.i.i635
  %i.bgi = getelementptr inbounds nuw [8 x i8], ptr %i.bfs, i64 %indvars.iv.i.i.i635
  %i.bgj = load ptr, ptr %i.bgi, align 8, !tbaa !69
  store ptr %i.bgj, ptr %i.bgh, align 8, !tbaa !69
  %indvars.iv.next.i.i.i636 = add nuw nsw i64 %indvars.iv.i.i.i635, 1 ; 2 uses
  %i.bgk = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i626, i64 %indvars.iv.next.i.i.i636
  %i.bgl = getelementptr inbounds nuw [8 x i8], ptr %i.bfs, i64 %indvars.iv.next.i.i.i636
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !69
  store ptr %i.bgm, ptr %i.bgk, align 8, !tbaa !69
  %indvars.iv.next.i.i.i636.1 = add nuw nsw i64 %indvars.iv.i.i.i635, 2 ; 2 uses
  %i.bgn = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i626, i64 %indvars.iv.next.i.i.i636.1
  %i.bgo = getelementptr inbounds nuw [8 x i8], ptr %i.bfs, i64 %indvars.iv.next.i.i.i636.1
  %i.bgp = load ptr, ptr %i.bgo, align 8, !tbaa !69
  store ptr %i.bgp, ptr %i.bgn, align 8, !tbaa !69
  %indvars.iv.next.i.i.i636.2 = add nuw nsw i64 %indvars.iv.i.i.i635, 3 ; 2 uses
  %i.bgq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i626, i64 %indvars.iv.next.i.i.i636.2
  %i.bgr = getelementptr inbounds nuw [8 x i8], ptr %i.bfs, i64 %indvars.iv.next.i.i.i636.2
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !69
  store ptr %i.bgs, ptr %i.bgq, align 8, !tbaa !69
  %indvars.iv.next.i.i.i636.3 = add nuw nsw i64 %indvars.iv.i.i.i635, 4 ; 2 uses
  %exitcond.not.i.i.i637.3 = icmp eq i64 %indvars.iv.next.i.i.i636.3, %wide.trip.count.i.i.i634
  br i1 %exitcond.not.i.i.i637.3, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i629, label %scalar.ph1336, !llvm.loop !243

_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i627: ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE8allocateEi.exit.i.i625
  %.not.i5.i.i628 = icmp eq ptr %i.bfs, null
  br i1 %.not.i5.i.i628, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i630, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i629

_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i629: ; preds = %scalar.ph1336.prol.loopexit, %scalar.ph1336, %middle.block1347, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i627
  %i.bgt = load i8, ptr %i.gn, align 8, !tbaa !105, !range !22, !noundef !23
  %i.bgu = trunc nuw i8 %i.bgt to i1
  br i1 %i.bgu, label %bb.en, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i630

bb.en:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i629
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bfs)
  %.pre2.pre.pre.i632 = load i32, ptr %i.gk, align 4, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i630

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i630: ; preds = %bb.en, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i629, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i627
  %.pre2.i631 = phi i32 [ %i.bft, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i627 ], [ %.pre2.pre.pre.i632, %bb.en ], [ %i.bft, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i629 ]
  store i8 1, ptr %i.gn, align 8, !tbaa !105
  store ptr %.0.i.i.i626, ptr %i.gm, align 8, !tbaa !74
  store i32 %i.bfn, ptr %i.gl, align 8, !tbaa !102
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit638

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit638: ; preds = %bb.ej, %bb.ek, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i630
  %i.bgv = phi ptr [ %.0.i.i.i626, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i630 ], [ %i.baq, %bb.ek ], [ %i.baq, %bb.ej ] ; 3 uses
  %i.bgw = phi i32 [ %.pre2.i631, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i630 ], [ %i.bfj, %bb.ek ], [ %i.bfj, %bb.ej ] ; 2 uses
  %i.bgx = sext i32 %i.bgw to i64
  %i.bgy = getelementptr inbounds [8 x i8], ptr %i.bgv, i64 %i.bgx
  store ptr null, ptr %i.bgy, align 8, !tbaa !69
  %i.bgz = add nsw i32 %i.bgw, 1
  store i32 %i.bgz, ptr %i.gk, align 4, !tbaa !101
  br label %._crit_edge950.thread

._crit_edge950.thread:                            ; preds = %bb.dp, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit638, %._crit_edge950
  %.lcssa1164 = phi i32 [ %14, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit638 ], [ %14, %._crit_edge950 ], [ %i.bal, %bb.dp ] ; 4 uses
  %i.bha = phi ptr [ %i.bgv, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit638 ], [ %i.baq, %._crit_edge950 ], [ %i.bag, %bb.dp ] ; 3 uses
  %i.bhb = phi ptr [ %i.bgv, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE9push_backERKS2_.exit638 ], [ %i.baq, %._crit_edge950 ], [ %i.bah, %bb.dp ] ; 2 uses
  %i.bhc = icmp slt i32 %.lcssa1164, %i.baf
  br i1 %i.bhc, label %bb.dp, label %.loopexit911, !llvm.loop !244

._crit_edge955:                                   ; preds = %.loopexit911, %bb.do
  %i.bhd = phi ptr [ %i.azw, %bb.do ], [ %i.bha, %.loopexit911 ] ; 3 uses
  %.lcssa917 = phi i32 [ %i.azz, %bb.do ], [ %i.bab, %.loopexit911 ] ; 2 uses
  %i.bhe = icmp slt i32 %.lcssa917, 0
  br i1 %i.bhe, label %bb.eo, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE6resizeEiRKS2_.exit

bb.eo:                                            ; preds = %._crit_edge955
  %i.bhf = load i32, ptr %i.gl, align 8, !tbaa !102
  %i.bhg = icmp slt i32 %i.bhf, 0
  br i1 %i.bhg, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i642, label %.lr.ph.i639

_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i642: ; preds = %bb.eo
  %.not.i5.i.i643 = icmp eq ptr %i.bhd, null
  br i1 %.not.i5.i.i643, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i645, label %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i644

_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i644: ; preds = %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i642
  %i.bhh = load i8, ptr %i.gn, align 8, !tbaa !105, !range !22, !noundef !23
  %i.bhi = trunc nuw i8 %i.bhh to i1
  br i1 %i.bhi, label %bb.ep, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i645

bb.ep:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i644
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bhd)
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i645

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i645: ; preds = %bb.ep, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.thread.i.i644, %_ZNK20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i642
  store i8 1, ptr %i.gn, align 8, !tbaa !105
  store ptr null, ptr %i.gm, align 8, !tbaa !74
  store i32 0, ptr %i.gl, align 8, !tbaa !102
  br label %.lr.ph.i639

.lr.ph.i639:                                      ; preds = %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i645, %bb.eo
  %i.bhj = phi ptr [ null, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE10deallocateEv.exit.i.i645 ], [ %i.bhd, %bb.eo ]
  %i.bhk = sext i32 %.lcssa917 to i64             ; 2 uses
  %i.bhl = shl nsw i64 %i.bhk, 3
  %scevgep = getelementptr i8, ptr %i.bhj, i64 %i.bhl
  %i.bhm = mul nsw i64 %i.bhk, -8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.bhm, i1 false), !tbaa !69
  br label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE6resizeEiRKS2_.exit

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE6resizeEiRKS2_.exit: ; preds = %.lr.ph.i639, %._crit_edge955
  store i32 0, ptr %i.gk, align 4, !tbaa !101
  %.sroa.0744.sroa.0.0.insert.ext = zext i32 %i.ec to i64
  %.sroa.0744.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0744.sroa.0.0.insert.ext
  store i64 %.sroa.0744.sroa.0.0.insert.insert, ptr %i.do, align 8, !tbaa !80
  store i64 %.sroa.3.8.insert.insert.i, ptr %i.dx, align 8, !tbaa !80
  br label %.thread792

.thread792:                                       ; preds = %bb.j, %bb.m, %bb.r, %.lr.ph, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE6resizeEiRKS2_.exit, %.loopexit916
  %.9 = phi i1 [ true, %.lr.ph ], [ true, %bb.m ], [ false, %.loopexit916 ], [ true, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE6resizeEiRKS2_.exit ], [ true, %bb.r ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN20btConvexHullInternal7Point326isZeroEv.exit.thread, %.thread792
  %.10 = phi i1 [ %.9, %.thread792 ], [ false, %_ZN20btConvexHullInternal7Point326isZeroEv.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.er

bb.er:                                            ; preds = %bb.g, %bb.eq
  %.11 = phi i1 [ %.10, %bb.eq ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret i1 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !22
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK20btConvexHullInternal6Vertex3dotERKNS_7Point64E(ptr dead_on_unwind noalias writable sret(%"class.btConvexHullInternal::Rational128") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !112
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !75
  %i.f = sext i32 %i.e to i64
  %i.g = load i64, ptr %2, align 8, !tbaa !83
  %i.h = mul nsw i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.j = load i32, ptr %i.i, align 4, !tbaa !76
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !84
  %i.n = mul nsw i64 %i.m, %i.k
  %i.o = add nsw i64 %i.n, %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load i32, ptr %i.p, align 8, !tbaa !77
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !85
  %i.u = mul nsw i64 %i.t, %i.r
  %i.v = add nsw i64 %i.o, %i.u                   ; 4 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.x, align 8, !tbaa !20
  store i64 %i.v, ptr %0, align 8, !tbaa !13
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.410.0..sroa_idx.i, align 8, !tbaa !13
  br label %_ZN20btConvexHullInternal11Rational128C2El.exit

bb.d:                                             ; preds = %bb.b
  %i.y = icmp slt i64 %i.v, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.z, align 8, !tbaa !20
  %i.aa = sub nsw i64 0, %i.v
  store i64 %i.aa, ptr %0, align 8, !tbaa !13
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.48.0..sroa_idx.i, align 8, !tbaa !13
  br label %_ZN20btConvexHullInternal11Rational128C2El.exit

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.z, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %0, i8 0, i64 16, i1 false)
  br label %_ZN20btConvexHullInternal11Rational128C2El.exit

_ZN20btConvexHullInternal11Rational128C2El.exit:  ; preds = %bb.c, %bb.e, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.ab, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !13
  br label %_ZN20btConvexHullInternal11Rational128C2ERKNS_6Int128ES3_.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !12 ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  %.sroa.0.0.copyload.i = load i64, ptr %i.ac, align 8, !tbaa !13 ; 3 uses
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = sub nsw i64 0, %.sroa.0.0.copyload.i
  %i.ai = xor i64 %i.af, -1
  %i.aj = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.ak = zext i1 %i.aj to i64
  %i.al = add nuw i64 %i.ak, %i.ai
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i = phi i64 [ %i.al, %bb.h ], [ %i.af, %bb.g ]
  %.sroa.0.0.i = phi i64 [ %i.ah, %bb.h ], [ %.sroa.0.0.copyload.i, %bb.g ] ; 2 uses
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.ad, i1 true) ; 3 uses
  %i.am = xor i64 %i.af, %i.ad
  %spec.select11.i = icmp slt i64 %i.am, 0
  %i.an = and i64 %.sroa.0.0.i, 4294967295        ; 2 uses
  %i.ao = and i64 %spec.select.i, 4294967295      ; 2 uses
  %i.ap = mul nuw i64 %i.an, %i.ao
  %i.aq = lshr i64 %spec.select.i, 32             ; 2 uses
  %i.ar = mul nuw nsw i64 %i.an, %i.aq            ; 2 uses
  %i.as = lshr i64 %.sroa.0.0.i, 32               ; 2 uses
  %i.at = mul nuw i64 %i.as, %i.ao                ; 2 uses
  %i.au = mul nuw nsw i64 %i.as, %i.aq
  %i.av = and i64 %i.ar, 4294967295
  %i.aw = and i64 %i.at, 4294967295
  %i.ax = add nuw nsw i64 %i.av, %i.aw            ; 2 uses
  %i.ay = lshr i64 %i.ar, 32
  %i.az = lshr i64 %i.at, 32
  %i.ba = lshr i64 %i.ax, 32
  %i.bb = shl i64 %i.ax, 32                       ; 2 uses
  %i.bc = add i64 %i.bb, %i.ap                    ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = zext i1 %i.bd to i64
end_hunk_0
