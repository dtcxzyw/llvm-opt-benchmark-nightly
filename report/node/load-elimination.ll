inline.NumInlined: 1968
inline.NumDeleted: 802
begin_hunk_0_@_ZNK2v88internal8compiler15LoadElimination16AbstractElements6EqualsEPKS3_:bb.a
  %.sroa.5.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.5.0.copyload.4 = load ptr, ptr %.sroa.5.0..sroa_idx.4, align 8
  %.sroa.4.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.4.0.copyload.4 = load ptr, ptr %.sroa.4.0..sroa_idx.4, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.0.0.copyload.5 = load ptr, ptr %i.an, align 8
  %.sroa.5.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.5.0.copyload.5 = load ptr, ptr %.sroa.5.0..sroa_idx.5, align 8
  %.sroa.4.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.4.0.copyload.5 = load ptr, ptr %.sroa.4.0..sroa_idx.5, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.0.0.copyload.6 = load ptr, ptr %i.ao, align 8
  %.sroa.5.0..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.5.0.copyload.6 = load ptr, ptr %.sroa.5.0..sroa_idx.6, align 8
  %.sroa.4.0..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.4.0.copyload.6 = load ptr, ptr %.sroa.4.0..sroa_idx.6, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.0.0.copyload.7 = load ptr, ptr %i.ap, align 8
  %.sroa.5.0..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.5.0.copyload.7 = load ptr, ptr %.sroa.5.0..sroa_idx.7, align 8
  %.sroa.4.0..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.4.0.copyload.7 = load ptr, ptr %.sroa.4.0..sroa_idx.7, align 8
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75.preheader, %.loopexit
  %.05285 = phi i64 [ %i.bq, %.loopexit ], [ 0, %.preheader75.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.05285 ; 3 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.aq, align 8 ; 9 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.59.0.copyload = load ptr, ptr %.sroa.59.0..sroa_idx, align 8 ; 8 uses
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.610.0.copyload = load ptr, ptr %.sroa.610.0..sroa_idx, align 8 ; 8 uses
  %i.ar = icmp eq ptr %.sroa.07.0.copyload, null
  br i1 %i.ar, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader75
  %i.as = icmp eq ptr %.sroa.07.0.copyload, %.sroa.0.0.copyload
  br i1 %i.as, label %bb.j, label %.preheader.1

bb.j:                                             ; preds = %.preheader.preheader
  %i.at = icmp eq ptr %.sroa.59.0.copyload, %.sroa.4.0.copyload
  %i.au = icmp eq ptr %.sroa.610.0.copyload, %.sroa.5.0.copyload
  %or.cond55 = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond55, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.j
  %i.av = icmp eq ptr %.sroa.07.0.copyload, %.sroa.0.0.copyload.1
  br i1 %i.av, label %bb.k, label %.preheader.2

bb.k:                                             ; preds = %.preheader.1
  %i.aw = icmp eq ptr %.sroa.59.0.copyload, %.sroa.4.0.copyload.1
  %i.ax = icmp eq ptr %.sroa.610.0.copyload, %.sroa.5.0.copyload.1
  %or.cond55.1 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond55.1, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %bb.k, %.preheader.1
  %i.ay = icmp eq ptr %.sroa.07.0.copyload, %.sroa.0.0.copyload.2
  br i1 %i.ay, label %bb.l, label %.preheader.3

bb.l:                                             ; preds = %.preheader.2
  %i.az = icmp eq ptr %.sroa.59.0.copyload, %.sroa.4.0.copyload.2
  %i.ba = icmp eq ptr %.sroa.610.0.copyload, %.sroa.5.0.copyload.2
  %or.cond55.2 = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond55.2, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %bb.l, %.preheader.2
  %i.bb = icmp eq ptr %.sroa.07.0.copyload, %.sroa.0.0.copyload.3
  br i1 %i.bb, label %bb.m, label %.preheader.4

bb.m:                                             ; preds = %.preheader.3
  %i.bc = icmp eq ptr %.sroa.59.0.copyload, %.sroa.4.0.copyload.3
  %i.bd = icmp eq ptr %.sroa.610.0.copyload, %.sroa.5.0.copyload.3
  %or.cond55.3 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond55.3, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %bb.m, %.preheader.3
  %i.be = icmp eq ptr %.sroa.07.0.copyload, %.sroa.0.0.copyload.4
  br i1 %i.be, label %bb.n, label %.preheader.5

bb.n:                                             ; preds = %.preheader.4
  %i.bf = icmp eq ptr %.sroa.59.0.copyload, %.sroa.4.0.copyload.4
  %i.bg = icmp eq ptr %.sroa.610.0.copyload, %.sroa.5.0.copyload.4
  %or.cond55.4 = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond55.4, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %bb.n, %.preheader.4
  %i.bh = icmp eq ptr %.sroa.07.0.copyload, %.sroa.0.0.copyload.5
  br i1 %i.bh, label %bb.o, label %.preheader.6

bb.o:                                             ; preds = %.preheader.5
  %i.bi = icmp eq ptr %.sroa.59.0.copyload, %.sroa.4.0.copyload.5
  %i.bj = icmp eq ptr %.sroa.610.0.copyload, %.sroa.5.0.copyload.5
  %or.cond55.5 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond55.5, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %bb.o, %.preheader.5
  %i.bk = icmp eq ptr %.sroa.07.0.copyload, %.sroa.0.0.copyload.6
  br i1 %i.bk, label %bb.p, label %.preheader.7

bb.p:                                             ; preds = %.preheader.6
  %i.bl = icmp eq ptr %.sroa.59.0.copyload, %.sroa.4.0.copyload.6
  %i.bm = icmp eq ptr %.sroa.610.0.copyload, %.sroa.5.0.copyload.6
  %or.cond55.6 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond55.6, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %bb.p, %.preheader.6
  %i.bn = icmp eq ptr %.sroa.07.0.copyload, %.sroa.0.0.copyload.7
  br i1 %i.bn, label %bb.q, label %.thread64

bb.q:                                             ; preds = %.preheader.7
  %i.bo = icmp eq ptr %.sroa.59.0.copyload, %.sroa.4.0.copyload.7
  %i.bp = icmp eq ptr %.sroa.610.0.copyload, %.sroa.5.0.copyload.7
  %or.cond55.7 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond55.7, label %.loopexit, label %.thread64

.loopexit:                                        ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %.preheader75
  %i.bq = add nuw nsw i64 %.05285, 1              ; 2 uses
  %exitcond88 = icmp eq i64 %i.bq, 8
  br i1 %exitcond88, label %.thread64, label %.preheader75, !llvm.loop !22

.thread64:                                        ; preds = %.preheader77.7, %bb.i, %.loopexit, %.preheader.7, %bb.q, %bb.a
  %.8 = phi i1 [ false, %.preheader.7 ], [ true, %bb.a ], [ true, %.loopexit ], [ false, %bb.q ], [ false, %bb.i ], [ false, %.preheader77.7 ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler15LoadElimination16AbstractElements5MergeEPKS3_PNS0_4ZoneE(ptr noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(264) %0, ptr noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2v88internal8compiler15LoadElimination16AbstractElements6EqualsEPKS3_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1)
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, 264
  br i1 %i.g, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination16AbstractElementsEJRPS1_EEEPT_DpOT0_.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 264) #22
  %.pre.i.i = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination16AbstractElementsEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination16AbstractElementsEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %.pre.i.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 11 uses
  %i.j = add i64 %i.h, 264
  store i64 %i.j, ptr %i.d, align 8
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 5 uses
  store i64 0, ptr %i.k, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.i, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.ptr.1.i.i, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.ptr.2.i.i, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.ptr.3.i.i, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.ptr.4.i.i, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.ptr.5.i.i, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.ptr.6.i.i, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.ptr.7.i.i, i8 0, i64 25, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.031.ptr34.1 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.031.ptr34.2 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.031.ptr34.3 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.5.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.031.ptr34.4 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.5.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.4.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.031.ptr34.5 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.5.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.4.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.031.ptr34.6 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.5.0..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.4.0..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.031.ptr34.7 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.5.0..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.4.0..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %1, i64 232
  br label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 7
  store i64 %i.m, ptr %i.k, align 8
  br label %bb.n

bb.e:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination16AbstractElementsEJRPS1_EEEPT_DpOT0_.exit, %.loopexit
  %.029.idx35 = phi i64 [ 0, %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination16AbstractElementsEJRPS1_EEEPT_DpOT0_.exit ], [ %.029.add, %.loopexit ] ; 2 uses
  %.029.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.029.idx35 ; 3 uses
  %3 = load <2 x ptr>, ptr %.029.ptr, align 8     ; 3 uses
  %4 = extractelement <2 x ptr> %3, i64 1         ; 8 uses
  %5 = extractelement <2 x ptr> %3, i64 0         ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.029.ptr, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.029.ptr, i64 24
  %i.n = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.0.0.extract.trunc = trunc i64 %i.n to i8
  %i.o = icmp eq ptr %5, null
  br i1 %i.o, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %i.p = icmp eq ptr %5, %.sroa.0.0.copyload
  br i1 %i.p, label %bb.f, label %.preheader.1

bb.f:                                             ; preds = %.preheader.preheader
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.q = icmp eq ptr %4, %.sroa.4.0.copyload
  %i.r = icmp eq ptr %.sroa.7.0.copyload, %.sroa.5.0.copyload
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %.critedge, label %.preheader.1

.critedge:                                        ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.s = load i64, ptr %i.k, align 8              ; 2 uses
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.s ; 3 uses
  store <2 x ptr> %3, ptr %i.u, align 8
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx12, align 8
  %.sroa.8.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i8 %.sroa.8.sroa.0.0.extract.trunc, ptr %.sroa.8.0..sroa_idx14, align 8
  br label %.loopexit

.preheader.1:                                     ; preds = %bb.f, %.preheader.preheader
  %.sroa.0.0.copyload.1 = load ptr, ptr %.031.ptr34.1, align 8
  %i.v = icmp eq ptr %5, %.sroa.0.0.copyload.1
  br i1 %i.v, label %bb.g, label %.preheader.2

bb.g:                                             ; preds = %.preheader.1
  %.sroa.5.0.copyload.1 = load ptr, ptr %.sroa.5.0..sroa_idx.1, align 8
  %.sroa.4.0.copyload.1 = load ptr, ptr %.sroa.4.0..sroa_idx.1, align 8
  %i.w = icmp eq ptr %4, %.sroa.4.0.copyload.1
  %i.x = icmp eq ptr %.sroa.7.0.copyload, %.sroa.5.0.copyload.1
  %or.cond.1 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.1, label %.critedge, label %.preheader.2

.preheader.2:                                     ; preds = %bb.g, %.preheader.1
  %.sroa.0.0.copyload.2 = load ptr, ptr %.031.ptr34.2, align 8
  %i.y = icmp eq ptr %5, %.sroa.0.0.copyload.2
  br i1 %i.y, label %bb.h, label %.preheader.3

bb.h:                                             ; preds = %.preheader.2
  %.sroa.5.0.copyload.2 = load ptr, ptr %.sroa.5.0..sroa_idx.2, align 8
  %.sroa.4.0.copyload.2 = load ptr, ptr %.sroa.4.0..sroa_idx.2, align 8
  %i.z = icmp eq ptr %4, %.sroa.4.0.copyload.2
  %i.aa = icmp eq ptr %.sroa.7.0.copyload, %.sroa.5.0.copyload.2
  %or.cond.2 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.2, label %.critedge, label %.preheader.3

.preheader.3:                                     ; preds = %bb.h, %.preheader.2
  %.sroa.0.0.copyload.3 = load ptr, ptr %.031.ptr34.3, align 8
  %i.ab = icmp eq ptr %5, %.sroa.0.0.copyload.3
  br i1 %i.ab, label %bb.i, label %.preheader.4

bb.i:                                             ; preds = %.preheader.3
  %.sroa.5.0.copyload.3 = load ptr, ptr %.sroa.5.0..sroa_idx.3, align 8
  %.sroa.4.0.copyload.3 = load ptr, ptr %.sroa.4.0..sroa_idx.3, align 8
  %i.ac = icmp eq ptr %4, %.sroa.4.0.copyload.3
  %i.ad = icmp eq ptr %.sroa.7.0.copyload, %.sroa.5.0.copyload.3
  %or.cond.3 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.3, label %.critedge, label %.preheader.4

.preheader.4:                                     ; preds = %bb.i, %.preheader.3
  %.sroa.0.0.copyload.4 = load ptr, ptr %.031.ptr34.4, align 8
  %i.ae = icmp eq ptr %5, %.sroa.0.0.copyload.4
  br i1 %i.ae, label %bb.j, label %.preheader.5

bb.j:                                             ; preds = %.preheader.4
  %.sroa.5.0.copyload.4 = load ptr, ptr %.sroa.5.0..sroa_idx.4, align 8
  %.sroa.4.0.copyload.4 = load ptr, ptr %.sroa.4.0..sroa_idx.4, align 8
  %i.af = icmp eq ptr %4, %.sroa.4.0.copyload.4
  %i.ag = icmp eq ptr %.sroa.7.0.copyload, %.sroa.5.0.copyload.4
  %or.cond.4 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond.4, label %.critedge, label %.preheader.5

.preheader.5:                                     ; preds = %bb.j, %.preheader.4
  %.sroa.0.0.copyload.5 = load ptr, ptr %.031.ptr34.5, align 8
  %i.ah = icmp eq ptr %5, %.sroa.0.0.copyload.5
  br i1 %i.ah, label %bb.k, label %.preheader.6

bb.k:                                             ; preds = %.preheader.5
  %.sroa.5.0.copyload.5 = load ptr, ptr %.sroa.5.0..sroa_idx.5, align 8
  %.sroa.4.0.copyload.5 = load ptr, ptr %.sroa.4.0..sroa_idx.5, align 8
  %i.ai = icmp eq ptr %4, %.sroa.4.0.copyload.5
  %i.aj = icmp eq ptr %.sroa.7.0.copyload, %.sroa.5.0.copyload.5
  %or.cond.5 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.5, label %.critedge, label %.preheader.6

.preheader.6:                                     ; preds = %bb.k, %.preheader.5
  %.sroa.0.0.copyload.6 = load ptr, ptr %.031.ptr34.6, align 8
  %i.ak = icmp eq ptr %5, %.sroa.0.0.copyload.6
  br i1 %i.ak, label %bb.l, label %.preheader.7

bb.l:                                             ; preds = %.preheader.6
  %.sroa.5.0.copyload.6 = load ptr, ptr %.sroa.5.0..sroa_idx.6, align 8
  %.sroa.4.0.copyload.6 = load ptr, ptr %.sroa.4.0..sroa_idx.6, align 8
  %i.al = icmp eq ptr %4, %.sroa.4.0.copyload.6
  %i.am = icmp eq ptr %.sroa.7.0.copyload, %.sroa.5.0.copyload.6
  %or.cond.6 = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond.6, label %.critedge, label %.preheader.7

.preheader.7:                                     ; preds = %bb.l, %.preheader.6
  %.sroa.0.0.copyload.7 = load ptr, ptr %.031.ptr34.7, align 8
  %i.an = icmp eq ptr %5, %.sroa.0.0.copyload.7
  br i1 %i.an, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.preheader.7
  %.sroa.5.0.copyload.7 = load ptr, ptr %.sroa.5.0..sroa_idx.7, align 8
  %.sroa.4.0.copyload.7 = load ptr, ptr %.sroa.4.0..sroa_idx.7, align 8
  %i.ao = icmp eq ptr %4, %.sroa.4.0.copyload.7
  %i.ap = icmp eq ptr %.sroa.7.0.copyload, %.sroa.5.0.copyload.7
  %or.cond.7 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.7, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %.preheader.7, %bb.m, %.critedge, %bb.e
  %.029.add = add nuw nsw i64 %.029.idx35, 32     ; 2 uses
  %.not = icmp eq i64 %.029.add, 256
  br i1 %.not, label %bb.d, label %bb.e

bb.n:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.i, %bb.d ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler15LoadElimination16AbstractElements5PrintEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not15 = icmp eq ptr %i.a, null
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 16777215
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 16777215
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 16777215
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.d, ptr noundef %i.g, i32 noundef %i.l, ptr noundef %i.o, i32 noundef %i.t, ptr noundef %i.w) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.ptr17.1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %.0.ptr17.1, align 8       ; 3 uses
  %.not15.1 = icmp eq ptr %i.x, null
  br i1 %.not15.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 16777215
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 16777215
  %i.aj = load ptr, ptr %i.af, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 16777215
  %i.ar = load ptr, ptr %i.an, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.aa, ptr noundef %i.ad, i32 noundef %i.ai, ptr noundef %i.al, i32 noundef %i.aq, ptr noundef %i.at) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.ptr17.2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load ptr, ptr %.0.ptr17.2, align 8      ; 3 uses
  %.not15.2 = icmp eq ptr %i.au, null
  br i1 %.not15.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 16777215
  %i.ay = load ptr, ptr %i.au, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, 16777215
  %i.bg = load ptr, ptr %i.bc, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %i.bm, 16777215
  %i.bo = load ptr, ptr %i.bk, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.ax, ptr noundef %i.ba, i32 noundef %i.bf, ptr noundef %i.bi, i32 noundef %i.bn, ptr noundef %i.bq) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.ptr17.3 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.br = load ptr, ptr %.0.ptr17.3, align 8      ; 3 uses
  %.not15.3 = icmp eq ptr %i.br, null
  br i1 %.not15.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.bt, 16777215
  %i.bv = load ptr, ptr %i.br, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = and i32 %i.cb, 16777215
  %i.cd = load ptr, ptr %i.bz, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = and i32 %i.cj, 16777215
  %i.cl = load ptr, ptr %i.ch, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.bu, ptr noundef %i.bx, i32 noundef %i.cc, ptr noundef %i.cf, i32 noundef %i.ck, ptr noundef %i.cn) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.ptr17.4 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.co = load ptr, ptr %.0.ptr17.4, align 8      ; 3 uses
  %.not15.4 = icmp eq ptr %i.co, null
  br i1 %.not15.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = and i32 %i.cq, 16777215
  %i.cs = load ptr, ptr %i.co, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = and i32 %i.cy, 16777215
  %i.da = load ptr, ptr %i.cw, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = and i32 %i.dg, 16777215
  %i.di = load ptr, ptr %i.de, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.cr, ptr noundef %i.cu, i32 noundef %i.cz, ptr noundef %i.dc, i32 noundef %i.dh, ptr noundef %i.dk) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.ptr17.5 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dl = load ptr, ptr %.0.ptr17.5, align 8      ; 3 uses
  %.not15.5 = icmp eq ptr %i.dl, null
  br i1 %.not15.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = and i32 %i.dn, 16777215
  %i.dp = load ptr, ptr %i.dl, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = and i32 %i.dv, 16777215
  %i.dx = load ptr, ptr %i.dt, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %i.ed = load i32, ptr %i.ec, align 4
end_hunk_0
