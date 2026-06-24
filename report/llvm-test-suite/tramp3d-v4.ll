inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_Z11makeRBlocksILi3EE3LocIXT_EERK8IntervalIXT_EEi:_ZNSt6vectorIiSaIiEED2Ev.exit43.2
_ZNSt6vectorIiSaIiEED2Ev.exit52:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit50, %bb.j
  %.not.i.i.i51.1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i51.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit52.1, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52
  %i.ca = ptrtoint ptr %i.k to i64
  %i.cb = ptrtoint ptr %i.j to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.cc) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52.1

_ZNSt6vectorIiSaIiEED2Ev.exit52.1:                ; preds = %bb.k, %_ZNSt6vectorIiSaIiEED2Ev.exit52
  %.not.i.i.i51.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i51.2, label %_ZNSt6vectorIiSaIiEED2Ev.exit52.2, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52.1
  %i.cd = ptrtoint ptr %i.g to i64
  %i.ce = ptrtoint ptr %i.f to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.cf) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52.2

_ZNSt6vectorIiSaIiEED2Ev.exit52.2:                ; preds = %bb.l, %_ZNSt6vectorIiSaIiEED2Ev.exit52.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_Z9makeRGridILi3EE4GridIXT_EERK8IntervalIXT_EERK3LocIXT_EE(ptr dead_on_unwind noalias writable sret(%class.Grid.114) align 8 %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %class.Grid, align 8                ; 7 uses
  %4 = alloca %class.Range, align 4               ; 6 uses
  %5 = alloca %class.IndirectionList, align 8     ; 7 uses
  %6 = alloca %class.Grid, align 8                ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread
  %indvars.iv53 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next54, %.thread ] ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv53 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 5 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv53
  %i.l = load i32, ptr %i.k, align 4, !tbaa !236  ; 7 uses
  %i.m = sext i32 %i.l to i64
  %i.n = srem i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, 0
  %i.p = icmp slt i32 %i.i, 1                     ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.q = load i32, ptr %i.g, align 4, !tbaa !4
  %i.r = sdiv i32 %i.i, %i.l                      ; 2 uses
  store i32 %i.q, ptr %4, align 4, !tbaa !4
  %i.s = sdiv i32 %i.i, %i.r
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.d, align 4, !tbaa !4
  store i32 %i.r, ptr %i.e, align 4, !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN12DomainTraitsI4GridILi1EEE9setDomainI5RangeILi1EEEEvR15IndirectionListIiERKT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv53 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN12DataBlockPtrIiLb0EEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  %i.x = load i64, ptr %i.f, align 8, !tbaa !133
  store i64 %i.x, ptr %i.v, align 8, !tbaa !133
  call void @_ZN12DataBlockPtrIiLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %.thread

bb.e:                                             ; preds = %bb.b
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.y = add i32 %i.l, 1                          ; 5 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  store i64 0, ptr %5, align 8, !tbaa !1675
  %i.aa = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #45 ; 10 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN15IndirectionListIiEC2Ei.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = shl i32 %i.y, 2
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #45 ; 3 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.z, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  br label %_ZN15IndirectionListIiEC2Ei.exit

_ZN15IndirectionListIiEC2Ei.exit:                 ; preds = %bb.f, %bb.g
  %.021.i.i.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.af, %bb.g ]
  %.020.i.i.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.ae, %bb.g ]
  %.019.i.i.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.ad, %bb.g ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.019.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !1676
  store ptr %.020.i.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !1678
  store ptr %.021.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !1679
  store i8 1, ptr %i.ag, align 8, !tbaa !1680
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.al = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #45
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !1681
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i8 1, ptr %i.am, align 8, !tbaa !1686
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr null, ptr %i.an, align 8, !tbaa !1687
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i64 -1, ptr %i.ao, align 8, !tbaa !1688
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !1689
  store i32 1, ptr %i.aa, align 8, !tbaa !837
  store i64 %i.z, ptr %i.b, align 8, !tbaa !133
  %i.ap = load i32, ptr %i.g, align 4, !tbaa !4
  store i32 %i.ap, ptr %.019.i.i.i.i.i.i, align 4, !tbaa !4
  %.not49 = icmp slt i32 %i.l, 1
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15IndirectionListIiEC2Ei.exit
  %i.aq = udiv i32 %i.i, %i.l                     ; 4 uses
  %i.ar = zext nneg i32 %i.l to i64
  %i.as = mul nuw nsw i32 %i.aq, %i.l
  %i.at = zext nneg i32 %i.as to i64
  %.neg = sub nsw i64 %i.ar, %i.j
  %i.au = add nsw i64 %.neg, %i.at                ; 3 uses
  %wide.trip.count = zext i32 %i.y to i64
  %load_initial = load i32, ptr %.019.i.i.i.i.i.i, align 4 ; 2 uses
  %i.av = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.aw = icmp eq i32 %i.y, 2
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.av, -2
  br label %bb.h

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i64 %i.av to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %i.ax = getelementptr [4 x i8], ptr %.019.i.i.i.i.i.i, i64 %indvars.iv.epil.init
  %i.ay = add nsw i32 %store_forwarded.epil.init, %i.aq
  %i.az = icmp slt i64 %i.au, %indvars.iv.epil.init
  %i.ba = zext i1 %i.az to i32
  %i.bb = add nsw i32 %i.ay, %i.ba
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN15IndirectionListIiEC2Ei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN13CombineDomainI4GridILi1EE15IndirectionListIiELi0EE7combineERS1_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv53 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN12DataBlockPtrIiLb0EEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %6) ; 0 uses
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !133
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !133
  call void @_ZN12DataBlockPtrIiLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @_ZN12DataBlockPtrIiLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %.thread

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.new ], [ %i.bq, %bb.h ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.bg = getelementptr [4 x i8], ptr %.019.i.i.i.i.i.i, i64 %indvars.iv
  %i.bh = add nsw i32 %store_forwarded, %i.aq
  %i.bi = icmp slt i64 %i.au, %indvars.iv
  %i.bj = zext i1 %i.bi to i32
  %i.bk = add nsw i32 %i.bh, %i.bj                ; 2 uses
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !4
  %i.bl = getelementptr [4 x i8], ptr %.019.i.i.i.i.i.i, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %i.bn = add nsw i32 %i.bk, %i.aq
  %i.bo = icmp sle i64 %i.au, %indvars.iv
  %i.bp = zext i1 %i.bo to i32
  %i.bq = add nsw i32 %i.bn, %i.bp                ; 3 uses
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1690

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %._crit_edge
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, 3
  br i1 %exitcond56.not, label %bb.i, label %bb.b, !llvm.loop !1691

bb.i:                                             ; preds = %.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !859  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !837
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !837
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 152) #48
  br label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i

_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1064 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i1.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !837
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !837
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEEE13deleteStorageEv(ptr noundef nonnull align 8 dereferenceable(33) %i.g)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 40) #48
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i: ; preds = %bb.e, %bb.d, %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !711  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !712
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #48
  br label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.i: ; preds = %bb.f, %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !713  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !714
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #48
  br label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEED2Ev.exit

_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEED2Ev.exit: ; preds = %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE10initializeI10GridLayoutILi3EEEEvRK9CenteringILi3EERKT_RKS5_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(53) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.FieldEngine, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2I10GridLayoutILi3EEEERK9CenteringILi3EERKT_RKS5_i(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(53) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1)
  %i.a = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEaSERKSC_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %4) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !859  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 4, !tbaa !837
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 4, !tbaa !837
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 152) #48
  br label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i

_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1064 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !837
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !tbaa !837
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEEE13deleteStorageEv(ptr noundef nonnull align 8 dereferenceable(33) %i.h)
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #48
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i: ; preds = %bb.e, %bb.d, %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !711  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !712
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #48
  br label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.i: ; preds = %bb.f, %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !713  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !714
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #48
  br label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEED2Ev.exit

_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEED2Ev.exit: ; preds = %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Pooma9positionsI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEENS_15PositionsTraitsIT_E6Type_tERK5FieldISE_T0_T1_E(ptr dead_on_unwind noalias writable sret(%class.Field.178) align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %class.NoMesh, align 8              ; 5 uses
  %3 = alloca %class.GridLayout, align 8          ; 5 uses
  %4 = alloca %class.GridLayout, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1064, !noalias !1692
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1695, !noalias !1692
  %i.f = load i64, ptr %i.a, align 8, !tbaa !1063, !noalias !1692
  %i.g = getelementptr inbounds [96 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @_ZN10GridLayoutILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %3, ptr noundef nonnull align 8 dereferenceable(53) %i.h)
  %i.i = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #45 ; 26 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !835  ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  store i32 %i.n, ptr %i.j, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.p, ptr %i.q, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  store i32 %i.t, ptr %i.r, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.v, ptr %i.w, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4    ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 52
end_hunk_0
begin_hunk_1_@_ZNK9ReductionI28RemoteMultiPatchEvaluatorTagE8evaluateId11FnMinAssign5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEEEvRT_RKT0_RKT1_:bb.a
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.067.0, i64 %indvars.iv119
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = load i32, ptr @_ZN5Pooma11myContext_gE, align 4, !tbaa !4
  %i.ew = icmp eq i32 %i.eu, %i.ev
  br i1 %i.ew, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #47
  %i.ex = add nsw i32 %.035106, 1
  %i.ey = sext i32 %.035106 to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ey ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47, !noalias !6653
  call void @llvm.experimental.noalias.scope.decl(metadata !6660)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47, !noalias !6663
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %7, ptr noundef nonnull align 8 dereferenceable(144) %3), !noalias !6663
  %i.fa = load <4 x i32>, ptr %.sroa.060.1105, align 4, !tbaa !4, !noalias !6663
  store <4 x i32> %i.fa, ptr %8, align 16, !tbaa !4, !alias.scope !6660, !noalias !6653
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.060.1105, i64 16
  %i.fc = load <2 x i32>, ptr %i.fb, align 4, !tbaa !4, !noalias !6663
  store <2 x i32> %i.fc, ptr %i.ec, align 16, !tbaa !4, !alias.scope !6660, !noalias !6653
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.060.1105, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !2811, !noalias !6663
  store ptr %i.fe, ptr %i.ed, align 8, !tbaa !2811, !alias.scope !6660, !noalias !6653
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.060.1105, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !2814, !noalias !6663
  store i32 %i.fg, ptr %i.ee, align 16, !tbaa !2814, !alias.scope !6660, !noalias !6653
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47, !noalias !6663
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEEC2Id14MultiPatchViewI7GridTagS6_I5BrickELi3EEEERKS_IS5_T_T0_ERK5INodeILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %15, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(36) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47, !noalias !6653
  %i.fh = load ptr, ptr %i.eg, align 8, !tbaa !2829
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !2832
  %i.fk = load i64, ptr %i.ef, align 8, !tbaa !2835
  %i.fl = getelementptr inbounds [48 x i8], ptr %i.fj, i64 %i.fk
  call void @_ZN11LeafFunctorI6EngineILi3Ed6RemoteI9BrickViewEE10EngineViewI10RemoteViewEE5applyERKS4_RKS7_(ptr dead_on_unwind nonnull writable sret(%class.Engine.366) align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef nonnull align 1 dereferenceable(1) %13)
  %i.fm = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #45 ; 15 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 0, ptr %i.fn, align 8, !tbaa !2607
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.fo, align 8, !tbaa !2854
  %i.fp = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !2856
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV15ReductionKernelId11FnMinAssign6EngineILi3Ed9BrickViewE15InlineKernelTagE, i64 16), ptr %i.fm, align 8, !tbaa !73
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store ptr %i.ez, ptr %i.fr, align 8, !tbaa !4643
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 48 ; 3 uses
  %i.ft = load <4 x i32>, ptr %14, align 16, !tbaa !4
  store <4 x i32> %i.ft, ptr %i.fs, align 8, !tbaa !4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fv = load <2 x i32>, ptr %i.eh, align 16, !tbaa !4
  store <2 x i32> %i.fv, ptr %i.fu, align 8, !tbaa !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.fw, ptr noundef nonnull align 8 dereferenceable(29) %i.ei, i64 29, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 104
  %i.fy = load i64, ptr %i.ej, align 8, !tbaa !2631 ; 2 uses
  store i64 %i.fy, ptr %i.fx, align 8, !tbaa !2631
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 112
  %i.ga = load ptr, ptr %i.ek, align 16, !tbaa !2615, !nonnull !59, !noundef !59 ; 5 uses
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !2615
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !837
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !837
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1687 ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i2.i.i.i.i, label %_ZNK9ReductionI23SinglePatchEvaluatorTagE8evaluateId11FnMinAssign6EngineILi3Ed9BrickViewEEEvRT_RKT0_RKT1_RN5Pooma17CountingSemaphoreE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13ObserverEvent, i64 16), ptr %6, align 8, !tbaa !73
  store i32 0, ptr %i.el, align 8, !tbaa !2254
  %i.gf = load i64, ptr @_ZN6Unique6next_sE, align 8, !tbaa !12 ; 2 uses
  %i.gg = add nsw i64 %i.gf, 1
  store i64 %i.gg, ptr @_ZN6Unique6next_sE, align 8, !tbaa !12
  store i64 %i.gf, ptr %i.em, align 8, !tbaa !2256
  %i.gh = load ptr, ptr %i.ge, align 8, !tbaa !73
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %6) #47, !inline_history !6664
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br label %_ZNK9ReductionI23SinglePatchEvaluatorTagE8evaluateId11FnMinAssign6EngineILi3Ed9BrickViewEEEvRT_RKT0_RKT1_RN5Pooma17CountingSemaphoreE.exit

_ZNK9ReductionI23SinglePatchEvaluatorTagE8evaluateId11FnMinAssign6EngineILi3Ed9BrickViewEEEvRT_RKT0_RKT1_RN5Pooma17CountingSemaphoreE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !2626
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.fy
  store ptr %i.gn, ptr %i.gk, align 8, !tbaa !3054
  %i.go = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  store ptr %12, ptr %i.go, align 8, !tbaa !2610
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  call void @_ZN18ReductionEvaluatorI15InlineKernelTagE8evaluateId11FnMinAssign6EngineILi3Ed9BrickViewE8IntervalILi3EEEEvRT_RKT0_RKT1_RKT2_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull align 1 dereferenceable(1) %i.gp, ptr noundef nonnull align 8 dereferenceable(80) %i.fs, ptr noundef nonnull align 8 dereferenceable(80) %i.fs)
  %i.gq = load ptr, ptr %i.fm, align 8, !tbaa !73
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(28) %i.fm) #47, !inline_history !6665
  call void @_ZN12DataBlockPtrIdLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #47
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %15) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #47
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47, !noalias !6666
  call void @llvm.experimental.noalias.scope.decl(metadata !6673)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47, !noalias !6676
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %4, ptr noundef nonnull align 8 dereferenceable(144) %3), !noalias !6676
  %i.gt = load <4 x i32>, ptr %.sroa.060.1105, align 4, !tbaa !4, !noalias !6676
  store <4 x i32> %i.gt, ptr %5, align 16, !tbaa !4, !alias.scope !6673, !noalias !6666
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.060.1105, i64 16
  %i.gv = load <2 x i32>, ptr %i.gu, align 4, !tbaa !4, !noalias !6676
  store <2 x i32> %i.gv, ptr %i.dz, align 16, !tbaa !4, !alias.scope !6673, !noalias !6666
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.060.1105, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !2811, !noalias !6676
  store ptr %i.gx, ptr %i.ea, align 8, !tbaa !2811, !alias.scope !6673, !noalias !6666
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.060.1105, i64 32
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !2814, !noalias !6676
  store i32 %i.gz, ptr %i.eb, align 16, !tbaa !2814, !alias.scope !6673, !noalias !6666
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47, !noalias !6676
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEEC2Id14MultiPatchViewI7GridTagS6_I5BrickELi3EEEERKS_IS5_T_T0_ERK5INodeILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(36) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47, !noalias !6666
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI9BrickViewEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %16) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #47
  br label %bb.n

bb.n:                                             ; preds = %_ZNK9ReductionI23SinglePatchEvaluatorTagE8evaluateId11FnMinAssign6EngineILi3Ed9BrickViewEEEvRT_RKT0_RKT1_RN5Pooma17CountingSemaphoreE.exit, %bb.m, %bb.i
  %.136 = phi i32 [ %i.ex, %_ZNK9ReductionI23SinglePatchEvaluatorTagE8evaluateId11FnMinAssign6EngineILi3Ed9BrickViewEEEvRT_RKT0_RKT1_RN5Pooma17CountingSemaphoreE.exit ], [ %.035106, %bb.m ], [ %.035106, %bb.i ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.060.1105, i64 40
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.hb = load ptr, ptr %i.bg, align 8, !tbaa !2893
  %i.hc = load ptr, ptr %i.bf, align 8, !tbaa !2897
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = sdiv exact i64 %i.hf, 40
  %sext138 = shl i64 %i.hg, 32
  %i.hh = ashr exact i64 %sext138, 32
  %i.hi = icmp slt i64 %indvars.iv.next120, %i.hh
  br i1 %i.hi, label %bb.i, label %._crit_edge110, !llvm.loop !6677

._crit_edge110:                                   ; preds = %bb.n, %bb.h
  %i.hj = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.hk = add nsw i32 %i.hj, 1
  store i32 %i.hk, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.hl = icmp sgt i32 %.037.lcssa143, 0
  br i1 %i.hl, label %bb.o, label %_ZN11RemoteProxyIdEC2ERdi.exit

bb.o:                                             ; preds = %._crit_edge110
  %i.hm = load double, ptr %i.dq, align 8, !tbaa !247 ; 3 uses
  store double %i.hm, ptr %1, align 8, !tbaa !247
  %.not115 = icmp eq i32 %.037.lcssa143, 1
  br i1 %.not115, label %_ZN11RemoteProxyIdEC2ERdi.exit, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %bb.o
  %wide.trip.count125 = zext nneg i32 %.037.lcssa143 to i64
  %i.hn = add nsw i64 %wide.trip.count125, -1     ; 2 uses
  %xtraiter = and i64 %i.hn, 3                    ; 3 uses
  %i.ho = add nsw i32 %.037.lcssa143, -2
  %i.hp = icmp ult i32 %i.ho, 3
  br i1 %i.hp, label %.lr.ph113.epil.preheader, label %.lr.ph113.preheader.new

.lr.ph113.preheader.new:                          ; preds = %.lr.ph113.preheader
  %unroll_iter = and i64 %i.hn, -4
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113, %.lr.ph113.preheader.new
  %indvars.iv122 = phi i64 [ 1, %.lr.ph113.preheader.new ], [ %indvars.iv.next123.3, %.lr.ph113 ] ; 5 uses
  %i.hq = phi double [ %i.hm, %.lr.ph113.preheader.new ], [ %i.ij, %.lr.ph113 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph113.preheader.new ], [ %niter.next.3, %.lr.ph113 ]
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv122
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !247 ; 2 uses
  %i.ht = fcmp olt double %i.hs, %i.hq
  %i.hu = select i1 %i.ht, double %i.hs, double %i.hq ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv122
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !247 ; 2 uses
  %i.hy = fcmp olt double %i.hx, %i.hu
  %i.hz = select i1 %i.hy, double %i.hx, double %i.hu ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv122
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !247 ; 2 uses
  %i.id = fcmp olt double %i.ic, %i.hz
  %i.ie = select i1 %i.id, double %i.ic, double %i.hz ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv122
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !247 ; 2 uses
  %i.ii = fcmp olt double %i.ih, %i.ie
  %i.ij = select i1 %i.ii, double %i.ih, double %i.ie ; 3 uses
  %indvars.iv.next123.3 = add nuw nsw i64 %indvars.iv122, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge.unr-lcssa, label %.lr.ph113, !llvm.loop !6678

._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge.unr-lcssa: ; preds = %.lr.ph113
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge, label %.lr.ph113.epil.preheader

.lr.ph113.epil.preheader:                         ; preds = %._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge.unr-lcssa, %.lr.ph113.preheader
  %indvars.iv122.epil.init = phi i64 [ 1, %.lr.ph113.preheader ], [ %indvars.iv.next123.3, %._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge.unr-lcssa ]
  %.epil.init = phi double [ %i.hm, %.lr.ph113.preheader ], [ %i.ij, %._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph113.epil

.lr.ph113.epil:                                   ; preds = %.lr.ph113.epil, %.lr.ph113.epil.preheader
  %indvars.iv122.epil = phi i64 [ %indvars.iv122.epil.init, %.lr.ph113.epil.preheader ], [ %indvars.iv.next123.epil, %.lr.ph113.epil ] ; 2 uses
  %i.ik = phi double [ %.epil.init, %.lr.ph113.epil.preheader ], [ %i.io, %.lr.ph113.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph113.epil.preheader ], [ %epil.iter.next, %.lr.ph113.epil ]
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv122.epil
  %i.im = load double, ptr %i.il, align 8, !tbaa !247 ; 2 uses
  %i.in = fcmp olt double %i.im, %i.ik
  %i.io = select i1 %i.in, double %i.im, double %i.ik ; 2 uses
  %indvars.iv.next123.epil = add nuw nsw i64 %indvars.iv122.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge, label %.lr.ph113.epil, !llvm.loop !6679

._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge: ; preds = %.lr.ph113.epil, %._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge.unr-lcssa
  %.lcssa = phi double [ %i.ij, %._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge.unr-lcssa ], [ %i.io, %.lr.ph113.epil ]
  store double %.lcssa, ptr %1, align 8, !tbaa !247
  br label %_ZN11RemoteProxyIdEC2ERdi.exit

_ZN11RemoteProxyIdEC2ERdi.exit:                   ; preds = %bb.o, %._ZN11RemoteProxyIdEC2ERdi.exit.loopexit_crit_edge, %._crit_edge110
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47
  %.not.i.i.i47 = icmp eq ptr %.sroa.067.0, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN11RemoteProxyIdEC2ERdi.exit
  %i.ip = ptrtoint ptr %.sroa.11.0 to i64
  %i.iq = ptrtoint ptr %.sroa.067.0 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.067.0, i64 noundef %i.ir) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN11RemoteProxyIdEC2ERdi.exit, %bb.p
  %.not.i.i = icmp eq ptr %.sroa.073.08995, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.is = ptrtoint ptr %.sroa.1478.09093 to i64
  %i.it = ptrtoint ptr %.sroa.073.08995 to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 2 uses
  %i.iv = ashr exact i64 %i.iu, 3
  %i.iw = sub nsw i64 0, %i.iv
  %i.ix = getelementptr inbounds [8 x i8], ptr %.sroa.1478.09093, i64 %i.iw
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.iu) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.q, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.iy = load i32, ptr %i.b, align 8, !tbaa !837
  %i.iz = add nsw i32 %i.iy, -1                   ; 2 uses
  store i32 %i.iz, ptr %i.b, align 8, !tbaa !837
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.r, label %_ZN11IntersectorILi3EED2Ev.exit

bb.r:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  call void @_ZN15IntersectorDataILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.b) #47
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 200) #48
  br label %_ZN11IntersectorILi3EED2Ev.exit

_ZN11IntersectorILi3EED2Ev.exit:                  ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15ReductionKernelId11FnMinAssign6EngineILi3Ed9BrickViewE15InlineKernelTagED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV15ReductionKernelId11FnMinAssign6EngineILi3Ed9BrickViewE15InlineKernelTagE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN12DataBlockPtrIdLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15ReductionKernelId11FnMinAssign6EngineILi3Ed9BrickViewE15InlineKernelTagED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV15ReductionKernelId11FnMinAssign6EngineILi3Ed9BrickViewE15InlineKernelTagE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN12DataBlockPtrIdLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #47, !inline_history !6680
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15ReductionKernelId11FnMinAssign6EngineILi3Ed9BrickViewE15InlineKernelTagE3runEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6681, !nonnull !59, !align !2253
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @_ZN18ReductionEvaluatorI15InlineKernelTagE8evaluateId11FnMinAssign6EngineILi3Ed9BrickViewE8IntervalILi3EEEEvRT_RKT0_RKT1_RKT2_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.d)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18ReductionEvaluatorI15InlineKernelTagE8evaluateId11FnMinAssign6EngineILi3Ed9BrickViewE8IntervalILi3EEEEvRT_RKT0_RKT1_RKT2_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 4 dereferenceable(24) %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %4 = alloca %class.ObserverEvent, align 8       ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %class.Engine.366, align 16         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.b = load <4 x i32>, ptr %2, align 8, !tbaa !4
  store <4 x i32> %i.b, ptr %5, align 16, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load <2 x i32>, ptr %i.d, align 8, !tbaa !4
  store <2 x i32> %i.e, ptr %i.c, align 16, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.f, ptr noundef nonnull align 8 dereferenceable(29) %i.g, i64 29, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !2631 ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !2631
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2615, !nonnull !59, !noundef !59 ; 5 uses
  store ptr %i.m, ptr %i.k, align 16, !tbaa !2615
  %i.n = load i32, ptr %i.m, align 4, !tbaa !837
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !837
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1687 ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i2.i.i, label %_ZN6EngineILi3Ed9BrickViewEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13ObserverEvent, i64 16), ptr %4, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !2254
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load i64, ptr @_ZN6Unique6next_sE, align 8, !tbaa !12 ; 2 uses
  %i.u = add nsw i64 %i.t, 1
  store i64 %i.u, ptr @_ZN6Unique6next_sE, align 8, !tbaa !12
  store i64 %i.t, ptr %i.s, align 8, !tbaa !2256
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4) #47, !inline_history !3075
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br label %_ZN6EngineILi3Ed9BrickViewEC2ERKS1_.exit

_ZN6EngineILi3Ed9BrickViewEC2ERKS1_.exit:         ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2626
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.j ; 4 uses
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !3054
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.preheader23.lr.ph, label %._crit_edge

.preheader23.lr.ph:                               ; preds = %_ZN6EngineILi3Ed9BrickViewEC2ERKS1_.exit
  %i.aj = icmp sgt i32 %i.af, 0
  %i.ak = load i32, ptr %i.f, align 8             ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = load i32, ptr %i.an, align 16
  %i.ap = icmp sgt i32 %i.ad, 0
  %or.cond = select i1 %i.aj, i1 %i.ap, i1 false
  br i1 %or.cond, label %.preheader23.us.us.preheader, label %._crit_edge

.preheader23.us.us.preheader:                     ; preds = %.preheader23.lr.ph
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aq = icmp eq i32 %i.ad, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod49 = trunc i32 %i.ad to i1
  br label %.preheader23.us.us

.preheader23.us.us:                               ; preds = %.preheader23.us.us.preheader, %._crit_edge28.split.us.us.us
  %.01931.us.us = phi i32 [ %i.bq, %._crit_edge28.split.us.us.us ], [ 0, %.preheader23.us.us.preheader ] ; 2 uses
  %.02230.us.us = phi double [ %.lcssa, %._crit_edge28.split.us.us.us ], [ f0x7FEFFFFFFFFFFFFF, %.preheader23.us.us.preheader ]
  %i.ar = mul nsw i32 %i.ao, %.01931.us.us
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader23.us.us
  %.01827.us.us.us = phi i32 [ 0, %.preheader23.us.us ], [ %i.bp, %._crit_edge.us.us.us ] ; 2 uses
end_hunk_1
begin_hunk_2_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE:bb.a
  %i.bq = getelementptr [88 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i.i.i17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2615
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2623 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.bu, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i.i19, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.bc, align 8, !tbaa !6436 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not8.i.i.i.i.i.i.i.i.i20, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp eq ptr %i.bp, null
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.bu, ptr %i.bb, align 8, !tbaa !6433
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i21

bb.n:                                             ; preds = %bb.l
  %i.bx = icmp eq ptr %i.bv, null
  br i1 %i.bx, label %bb.o, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i21

bb.o:                                             ; preds = %bb.n
  store ptr %i.bu, ptr %i.bc, align 8, !tbaa !6436
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i21

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i21: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %.promoted14.i.i.i.i.i22 = phi ptr [ %.promoted15.i.i.i.i.i18, %bb.j ], [ %.promoted15.i.i.i.i.i18, %bb.k ], [ %i.bu, %bb.m ], [ %.promoted15.i.i.i.i.i18, %bb.n ], [ %.promoted15.i.i.i.i.i18, %bb.o ] ; 2 uses
  %i.by = phi ptr [ %i.bp, %bb.j ], [ %i.bp, %bb.k ], [ %i.bu, %bb.m ], [ %i.bp, %bb.n ], [ %i.bp, %bb.o ]
  %indvars.iv.next.i.i.i.i.i23 = add nuw nsw i64 %indvars.iv.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i24 = icmp eq i64 %indvars.iv.next.i.i.i.i.i23, %wide.trip.count.i.i.i.i.i13
  br i1 %exitcond.not.i.i.i.i.i24, label %._crit_edge.i.i.i.i.i25, label %bb.j, !llvm.loop !6437

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit28: ; preds = %._crit_edge.i.i.i.i.i25, %.preheader.lr.ph.i.i.i.i.i9, %bb.i, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit
  %i.bz = and i64 %i.b, 4
  %.not46 = icmp eq i64 %i.bz, 0
  br i1 %.not46, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEEEEvRKT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit28
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !9325 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.preheader.lr.ph.i.i.i.i.i29, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEEEEvRKT_.exit

.preheader.lr.ph.i.i.i.i.i29:                     ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !715
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !713
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 12                ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = load ptr, ptr %1, align 8, !nonnull !59, !align !2253 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  br i1 %i.cm, label %.preheader.lr.ph.split.i.i.i.i.i30, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEEEEvRKT_.exit

.preheader.lr.ph.split.i.i.i.i.i30:               ; preds = %.preheader.lr.ph.i.i.i.i.i29
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !9333
  %i.cx = getelementptr inbounds [96 x i8], ptr %i.cw, i64 %i.cs
  %.promoted13.i.i.i.i.i31 = load ptr, ptr %i.cn, align 8, !tbaa !6433
  %i.cy = sext i32 %i.cq to i64
  %wide.trip.count21.i.i.i.i.i32 = zext nneg i32 %i.cb to i64
  %wide.trip.count.i.i.i.i.i33 = and i64 %i.ck, 2147483647
  br label %.preheader.i.i.i.i.i34

.preheader.i.i.i.i.i34:                           ; preds = %._crit_edge.i.i.i.i.i42, %.preheader.lr.ph.split.i.i.i.i.i30
  %indvars.iv18.i.i.i.i.i35 = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i.i.i30 ], [ %indvars.iv.next19.i.i.i.i.i43, %._crit_edge.i.i.i.i.i42 ] ; 2 uses
  %.promoted16.i.i.i.i.i36 = phi ptr [ %.promoted13.i.i.i.i.i31, %.preheader.lr.ph.split.i.i.i.i.i30 ], [ %.promoted14.i.i.i.i.i39, %._crit_edge.i.i.i.i.i42 ] ; 2 uses
  %i.cz = mul nsw i64 %indvars.iv18.i.i.i.i.i35, %i.cy
  %i.da = getelementptr [96 x i8], ptr %i.cx, i64 %i.cz
  br label %bb.q

._crit_edge.i.i.i.i.i42:                          ; preds = %_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i
  %indvars.iv.next19.i.i.i.i.i43 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i35, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i44 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i43, %wide.trip.count21.i.i.i.i.i32
  br i1 %exitcond22.not.i.i.i.i.i44, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEEEEvRKT_.exit, label %.preheader.i.i.i.i.i34, !llvm.loop !9342

bb.q:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i, %.preheader.i.i.i.i.i34
  %indvars.iv.i.i.i.i.i37 = phi i64 [ 0, %.preheader.i.i.i.i.i34 ], [ %indvars.iv.next.i.i.i.i.i40, %_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i ] ; 2 uses
  %.promoted15.i.i.i.i.i38 = phi ptr [ %.promoted16.i.i.i.i.i36, %.preheader.i.i.i.i.i34 ], [ %.promoted14.i.i.i.i.i39, %_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i ] ; 4 uses
  %i.db = phi ptr [ %.promoted16.i.i.i.i.i36, %.preheader.i.i.i.i.i34 ], [ %i.dk, %_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i ] ; 6 uses
  %i.dc = getelementptr [96 x i8], ptr %i.da, i64 %indvars.iv.i.i.i.i.i37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !3244
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !3251 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.db
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !6436 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.dh
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq ptr %i.db, null
  br i1 %i.di, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %i.dg, ptr %i.cn, align 8, !tbaa !6433
  br label %_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.v, label %_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !6436
  br label %_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i

_ZN11LeafFunctorI6EngineILi3Ed7CompFwdIS0_ILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKSA_RKSF_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.promoted14.i.i.i.i.i39 = phi ptr [ %.promoted15.i.i.i.i.i38, %bb.q ], [ %.promoted15.i.i.i.i.i38, %bb.r ], [ %i.dg, %bb.t ], [ %.promoted15.i.i.i.i.i38, %bb.u ], [ %.promoted15.i.i.i.i.i38, %bb.v ] ; 2 uses
  %i.dk = phi ptr [ %i.db, %bb.q ], [ %i.db, %bb.r ], [ %i.dg, %bb.t ], [ %i.db, %bb.u ], [ %i.db, %bb.v ]
  %indvars.iv.next.i.i.i.i.i40 = add nuw nsw i64 %indvars.iv.i.i.i.i.i37, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i41 = icmp eq i64 %indvars.iv.next.i.i.i.i.i40, %wide.trip.count.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i41, label %._crit_edge.i.i.i.i.i42, label %bb.q, !llvm.loop !9343

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEEEEvRKT_.exit: ; preds = %._crit_edge.i.i.i.i.i42, %.preheader.lr.ph.i.i.i.i.i29, %bb.p, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51X14Momentumflux2YILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not35 = icmp sgt i32 %i.e, %i.m
  br i1 %.not35, label %._crit_edge38.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2332 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2332, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge38.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9948 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6419
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2989 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4  ; 5 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6419
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2989 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4  ; 5 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !9332
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9333
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !9331
  %i.ay = getelementptr inbounds [96 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3535 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4  ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !236
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ba, i64 %i.bh ; 6 uses
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 128    ; 3 uses
  %i.bk = zext i32 %i.a to i64                    ; 4 uses
  %i.bl = add i32 %i.g, %i.a
  %i.bm = add i32 %i.i, %i.c
  %i.bn = add i32 %i.k, %i.e
  %i.bo = add i32 %i.g, -1                        ; 5 uses
  %i.bp = mul i32 %i.e, %i.ai
  %i.bq = add i32 %i.a, %i.bp
  %i.br = mul i32 %i.c, %i.ag
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = mul i32 %i.e, %i.at
  %i.bu = add i32 %i.a, %i.bt                     ; 2 uses
  %i.bv = mul i32 %i.c, %i.ar
  %i.bw = add i32 %i.bu, %i.bv
  %i.bx = add i32 %i.c, -1
  %i.by = mul i32 %i.ar, %i.bx
  %i.bz = add i32 %i.bu, %i.by
  %i.ca = mul i32 %i.e, %i.be
  %i.cb = add i32 %i.a, %i.ca
  %i.cc = mul i32 %i.c, %i.bc
  %i.cd = add i32 %i.cb, %i.cc                    ; 2 uses
  %i.ce = add i32 %i.cd, 1
  %scevgep60.a = getelementptr i8, ptr %i.bi, i64 136
  %i.cf = mul i32 %i.e, %i.ai
  %i.cg = add i32 %i.a, %i.cf
  %i.ch = mul i32 %i.c, %i.ag
  %i.ci = add i32 %i.cg, %i.ch
  %i.cj = add i32 %i.g, -1
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 8                ; 3 uses
  %scevgep62.a = getelementptr i8, ptr %i.ae, i64 %i.cm
  %i.cn = mul i32 %i.e, %i.at
  %i.co = add i32 %i.a, %i.cn                     ; 2 uses
  %i.cp = add i32 %i.c, -1
  %i.cq = mul i32 %i.ar, %i.cp
  %i.cr = add i32 %i.co, %i.cq
  %scevgep65.a = getelementptr i8, ptr %i.ap, i64 %i.cm
  %i.cs = mul i32 %i.c, %i.ar
  %i.ct = add i32 %i.co, %i.cs
  %scevgep68.a = getelementptr i8, ptr %i.ap, i64 %i.cm
  %i.cu = shl nsw i64 %i.bh, 3                    ; 3 uses
  %scevgep70 = getelementptr i8, ptr %i.ba, i64 %i.cu
  %i.cv = mul i32 %i.e, %i.be                     ; 2 uses
  %i.cw = add i32 %i.a, %i.cv
  %i.cx = mul i32 %i.c, %i.bc                     ; 2 uses
  %i.cy = add i32 %i.cw, %i.cx
  %i.cz = mul nuw nsw i64 %i.ck, 24
  %i.da = add nsw i64 %i.cz, %i.cu
  %i.db = add nsw i64 %i.da, 8                    ; 2 uses
  %scevgep72 = getelementptr i8, ptr %i.ba, i64 %i.db
  %scevgep74 = getelementptr i8, ptr %i.ba, i64 %i.cu
  %i.dc = add i32 %i.a, %i.cv
  %i.dd = add i32 %i.dc, %i.cx
  %i.de = add i32 %i.dd, 1
  %scevgep76 = getelementptr i8, ptr %i.ba, i64 %i.db
  %i.df = add i32 %i.g, -1                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.df, 4
  %2 = and i32 %i.df, -2
  %i.dg = zext i32 %2 to i64                      ; 2 uses
  %i.dh = add nuw nsw i64 %i.bk, %i.dg
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34 ] ; 7 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.hh, %._crit_edge34 ] ; 4 uses
  %i.di = mul i32 %i.ai, %indvar
  %i.dj = add i32 %i.ci, %i.di
  %i.dk = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dl = add i32 %i.cr, %i.dk
  %i.dm = add i32 %i.ct, %i.dk
  %i.dn = mul i32 %i.be, %indvar                  ; 2 uses
  %i.do = add i32 %i.cy, %i.dn
  %i.dp = add i32 %i.de, %i.dn
  %i.dq = mul i32 %i.ai, %indvar
  %i.dr = add i32 %i.bs, %i.dq
  %i.ds = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dt = add i32 %i.bw, %i.ds
  %i.du = add i32 %i.bz, %i.ds
  %i.dv = mul i32 %i.be, %indvar                  ; 2 uses
  %i.dw = add i32 %i.ce, %i.dv
  %i.dx = add i32 %i.cd, %i.dv
  %i.dy = mul nsw i32 %i.ai, %.02236
  %i.dz = mul nsw i32 %i.at, %.02236              ; 2 uses
  %i.ea = mul nsw i32 %i.be, %.02236
  br label %.preheader

._crit_edge38.split:                              ; preds = %._crit_edge34, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar47 = phi i32 [ 0, %.preheader25 ], [ %indvar.next48, %._crit_edge ] ; 7 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.hi, %._crit_edge ] ; 5 uses
  %i.eb = mul i32 %i.ag, %indvar47
  %i.ec = add i32 %i.dj, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = shl nsw i64 %i.ed, 3                    ; 2 uses
  %scevgep61.a = getelementptr i8, ptr %i.ae, i64 %i.ee ; 5 uses
  %scevgep63.a = getelementptr i8, ptr %scevgep62.a, i64 %i.ee ; 5 uses
  %i.ef = mul i32 %i.ar, %indvar47                ; 2 uses
  %i.eg = add i32 %i.dl, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = shl nsw i64 %i.eh, 3                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.ap, i64 %i.ei
  %scevgep66 = getelementptr i8, ptr %scevgep65.a, i64 %i.ei
  %i.ej = add i32 %i.dm, %i.ef
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 3                    ; 2 uses
  %scevgep67.a = getelementptr i8, ptr %i.ap, i64 %i.el
  %scevgep69.a = getelementptr i8, ptr %scevgep68.a, i64 %i.el
  %i.em = mul i32 %i.bc, %indvar47                ; 2 uses
  %i.en = add i32 %i.do, %i.em
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul nsw i64 %i.eo, 24                   ; 2 uses
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.ep
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.ep
  %i.eq = add i32 %i.dp, %i.em
  %i.er = sext i32 %i.eq to i64
  %i.es = mul nsw i64 %i.er, 24                   ; 2 uses
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.es
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.es
  %i.et = mul nsw i32 %i.ag, %.02133
  %invariant.op = add i32 %i.et, %i.dy            ; 2 uses
  %i.eu = mul nsw i32 %i.ar, %.02133              ; 2 uses
  %i.ev = add nsw i32 %.02133, -1
  %i.ew = mul nsw i32 %i.ar, %i.ev                ; 2 uses
  %i.ex = mul nsw i32 %i.bc, %.02133
  %invariant.op28 = add i32 %i.ex, %i.ea          ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader
  %indvars.iv.ph = phi i64 [ %i.bk, %vector.memcheck ], [ %i.bk, %vector.scevcheck ], [ %i.bk, %.preheader ], [ %i.dh, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.preheader
  %i.ey = mul i32 %i.bc, %indvar47                ; 2 uses
  %i.ez = add i32 %i.dx, %i.ey                    ; 2 uses
  %i.fa = add i32 %i.dw, %i.ey                    ; 2 uses
  %i.fb = mul i32 %i.ar, %indvar47                ; 2 uses
  %i.fc = add i32 %i.du, %i.fb                    ; 2 uses
  %i.fd = add i32 %i.dt, %i.fb                    ; 2 uses
  %i.fe = mul i32 %i.ag, %indvar47
  %i.ff = add i32 %i.dr, %i.fe                    ; 2 uses
  %i.fg = add i32 %i.ff, %i.bo
  %i.fh = icmp slt i32 %i.fg, %i.ff
  %i.fi = add i32 %i.fd, %i.bo
  %i.fj = icmp slt i32 %i.fi, %i.fd
  %i.fk = add i32 %i.fc, %i.bo
  %i.fl = icmp slt i32 %i.fk, %i.fc
  %i.fm = add i32 %i.fa, %i.bo
  %i.fn = icmp slt i32 %i.fm, %i.fa
  %i.fo = add i32 %i.ez, %i.bo
  %i.fp = icmp slt i32 %i.fo, %i.ez
  %i.fq = or i1 %i.fh, %i.fj
  %i.fr = or i1 %i.fq, %i.fl
  %i.fs = or i1 %i.fr, %i.fn
  %i.ft = or i1 %i.fs, %i.fp
  br i1 %i.ft, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.bj, %scevgep63.a
  %bound1 = icmp ult ptr %scevgep61.a, %scevgep60.a
  %found.conflict = and i1 %bound0, %bound1
  %bound078 = icmp ult ptr %scevgep61.a, %scevgep66
  %bound179 = icmp ult ptr %scevgep64, %scevgep63.a
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx = or i1 %found.conflict, %found.conflict80
  %bound081.a = icmp ult ptr %scevgep61.a, %scevgep69.a
  %bound182.a = icmp ult ptr %scevgep67.a, %scevgep63.a
  %found.conflict83.a = and i1 %bound081.a, %bound182.a
  %conflict.rdx84.a = or i1 %conflict.rdx, %found.conflict83.a
  %bound085 = icmp ult ptr %scevgep61.a, %scevgep73
  %bound186 = icmp ult ptr %scevgep71, %scevgep63.a
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84.a, %found.conflict87
  %bound089 = icmp ult ptr %scevgep61.a, %scevgep77
  %bound190 = icmp ult ptr %scevgep75, %scevgep63.a
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fu = load double, ptr %i.bj, align 8, !tbaa !247, !alias.scope !9952, !noalias !9955
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op95 = add i32 1, %invariant.op28
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fv = trunc i64 %index to i32
  %i.fw = add i32 %i.a, %i.fv                     ; 4 uses
  %i.fx = add i32 %invariant.op, %i.fw
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.fy ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fz, align 8, !tbaa !247, !alias.scope !9955, !noalias !9957
  %i.ga = add i32 %i.dz, %i.fw                    ; 2 uses
  %i.gb = add i32 %i.ga, %i.eu
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.gc
  %wide.load93 = load <2 x double>, ptr %i.gd, align 8, !tbaa !247, !alias.scope !9962
  %i.ge = add i32 %i.ga, %i.ew
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.gf
  %wide.load94 = load <2 x double>, ptr %i.gg, align 8, !tbaa !247, !alias.scope !9963
  %i.gh = fmul <2 x double> %wide.load94, splat (double 5.000000e-01)
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load93, <2 x double> splat (double 5.000000e-01), <2 x double> %i.gh)
  %i.gj = add i32 %invariant.op28, %i.fw          ; 2 uses
  %.reass96 = add i32 %i.fw, %invariant.op95      ; 2 uses
  %i.gk = add i32 %i.gj, 1
  %i.gl = add i32 %.reass96, 1
  %i.gm = sext i32 %i.gk to i64
  %i.gn = sext i32 %i.gl to i64
  %i.go = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gm
  %i.gp = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gn
  %i.gq = load double, ptr %i.go, align 8, !tbaa !247, !alias.scope !9964
  %i.gr = load double, ptr %i.gp, align 8, !tbaa !247, !alias.scope !9964
  %i.gs = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gr, i64 1
  %i.gu = sext i32 %i.gj to i64
  %i.gv = sext i32 %.reass96 to i64
  %i.gw = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gu
  %i.gx = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gv
  %i.gy = load double, ptr %i.gw, align 8, !tbaa !247, !alias.scope !9965
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !247, !alias.scope !9965
  %i.ha = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1
  %i.hc = fsub <2 x double> %i.gt, %i.hb
  %i.hd = fneg <2 x double> %i.hc
  %i.he = fdiv <2 x double> %i.hd, %broadcast.splat
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.gi, <2 x double> %i.he)
  store <2 x double> %i.hf, ptr %i.fz, align 8, !tbaa !247, !alias.scope !9955, !noalias !9957
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %i.dg
  br i1 %i.hg, label %scalar.ph.preheader, label %vector.body, !llvm.loop !9966

._crit_edge34:                                    ; preds = %._crit_edge
  %i.hh = add i32 %.02236, 1                      ; 2 uses
  %exitcond42.not = icmp eq i32 %i.hh, %i.bn
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond42.not, label %._crit_edge38.split, label %.preheader25, !llvm.loop !9967

._crit_edge:                                      ; preds = %scalar.ph
  %i.hi = add i32 %.02133, 1                      ; 2 uses
  %exitcond41.not = icmp eq i32 %i.hi, %i.bm
  %indvar.next48 = add i32 %indvar47, 1
  br i1 %exitcond41.not, label %._crit_edge34, label %.preheader, !llvm.loop !9968

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hj = trunc i64 %indvars.iv to i32            ; 3 uses
  %.reass = add i32 %invariant.op, %i.hj
  %i.hk = sext i32 %.reass to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.hk ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !247
  %i.hn = add i32 %i.dz, %i.hj                    ; 2 uses
  %i.ho = add i32 %i.hn, %i.eu
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !247
  %i.hs = add i32 %i.hn, %i.ew
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !247
  %i.hw = fmul double %i.hv, 5.000000e-01
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.hw)
  %.reass29 = add i32 %invariant.op28, %i.hj      ; 2 uses
  %i.hy = add i32 %.reass29, 1
  %i.hz = sext i32 %i.hy to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.hz
  %i.ia = load double, ptr %gep, align 8, !tbaa !247
  %i.ib = sext i32 %.reass29 to i64
  %gep31 = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.ib
  %i.ic = load double, ptr %gep31, align 8, !tbaa !247
  %i.id = fsub double %i.ia, %i.ic
  %i.ie = load double, ptr %i.bj, align 8, !tbaa !247
  %i.if = fneg double %i.id
  %i.ig = fdiv double %i.if, %i.ie
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.hx, double %i.ig)
  store double %i.ih, ptr %i.hl, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bl, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !9969
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEEEC2ERKS8_SL_RKSI_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !6409
  store i32 %i.a, ptr %0, align 8, !tbaa !6409
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !6414
  store i32 %i.f, ptr %i.d, align 8, !tbaa !6414
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !6415
  store i64 %i.i, ptr %i.g, align 8, !tbaa !6415
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !6416 ; 4 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !6416
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !837
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !837
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4
  store i32 %i.q, ptr %i.o, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !4
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !4
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !1065
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !859 ; 4 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !859
  %.not.i.i8.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i8.i.i, label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !837
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !837
  br label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit

_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = load i32, ptr %2, align 8, !tbaa !6409
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !6409
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !6414
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !6414
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !6415
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !6415
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6416 ; 4 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !6416
  %.not.i.i.i.i4 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i4, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i5, label %bb.d

bb.d:                                             ; preds = %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !837
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !837
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i5

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i5: ; preds = %bb.d, %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !4
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !4
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !tbaa.struct !1065
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !859 ; 4 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !859
  %.not.i.i8.i.i6 = icmp eq ptr %i.by, null
  br i1 %.not.i.i8.i.i6, label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit7, label %bb.e

bb.e:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i5
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !837
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !837
  br label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit7

_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit7: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i5, %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cc = load i32, ptr %3, align 8, !tbaa !9325
  store i32 %i.cc, ptr %i.cb, align 8, !tbaa !9325
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(56) %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !9330
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !9330
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !9331
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !9331
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !9332 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESB_E3LocILi1EEEEEN4Adv51X14Momentumflux2ZILi3EEELi3E15EvaluateLocLoopISR_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSU_4sizeEERKT2_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2856
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51X14Momentumflux2ZILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEEEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(432) %i.as, ptr noundef nonnull align 8 dereferenceable(432) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 464
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 476
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 484
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 492
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %i.al, ptr %5, align 8, !tbaa !6328
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %5, ptr %6, align 8, !tbaa !6330
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #47, !inline_history !9996
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #47, !inline_history !9996
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #47
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51X14Momentumflux2ZILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51X14Momentumflux2ZILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6427
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6187 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51X14Momentumflux2ZILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51X14Momentumflux2ZILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51X14Momentumflux2ZILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.729, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !9948
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !9997
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51X14Momentumflux2ZILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51X14Momentumflux2ZILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9997 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not35 = icmp sgt i32 %i.e, %i.m
  br i1 %.not35, label %._crit_edge38.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2332 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2332, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge38.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9948 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6419
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2989 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4  ; 5 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6419
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2989 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4  ; 8 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !9332
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9333
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !9331
  %i.ay = getelementptr inbounds [96 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3535 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4  ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !236
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ba, i64 %i.bh ; 6 uses
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 128    ; 3 uses
  %i.bk = zext i32 %i.a to i64                    ; 4 uses
  %i.bl = add i32 %i.g, %i.a
  %i.bm = add i32 %i.i, %i.c
  %i.bn = add i32 %i.k, %i.e
  %i.bo = add i32 %i.g, -1                        ; 5 uses
  %i.bp = mul i32 %i.e, %i.ai
  %i.bq = add i32 %i.a, %i.bp
  %i.br = mul i32 %i.c, %i.ag
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = mul i32 %i.e, %i.at
  %i.bu = add i32 %i.a, %i.bt
  %i.bv = mul i32 %i.c, %i.ar                     ; 2 uses
  %i.bw = add i32 %i.bu, %i.bv
  %i.bx = add i32 %i.a, %i.bv
  %i.by = add i32 %i.e, -1
  %i.bz = mul i32 %i.at, %i.by
  %i.ca = add i32 %i.bx, %i.bz
  %i.cb = mul i32 %i.e, %i.be
  %i.cc = add i32 %i.a, %i.cb
  %i.cd = mul i32 %i.c, %i.bc
  %i.ce = add i32 %i.cc, %i.cd                    ; 2 uses
  %i.cf = add i32 %i.ce, 1
  %scevgep60.a = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.cg = mul i32 %i.e, %i.ai
  %i.ch = add i32 %i.a, %i.cg
  %i.ci = mul i32 %i.c, %i.ag
  %i.cj = add i32 %i.ch, %i.ci
  %i.ck = add i32 %i.g, -1
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 8                ; 3 uses
  %scevgep62.a = getelementptr i8, ptr %i.ae, i64 %i.cn
  %scevgep64.a = getelementptr i8, ptr %i.bi, i64 136
  %i.co = mul i32 %i.c, %i.ar                     ; 2 uses
  %i.cp = add i32 %i.a, %i.co
  %i.cq = add i32 %i.e, -1
  %i.cr = mul i32 %i.at, %i.cq
  %i.cs = add i32 %i.cp, %i.cr
  %scevgep66.a = getelementptr i8, ptr %i.ap, i64 %i.cn
  %i.ct = mul i32 %i.e, %i.at
  %i.cu = add i32 %i.a, %i.ct
  %i.cv = add i32 %i.cu, %i.co
  %scevgep69.a = getelementptr i8, ptr %i.ap, i64 %i.cn
  %i.cw = shl nsw i64 %i.bh, 3                    ; 3 uses
  %scevgep71 = getelementptr i8, ptr %i.ba, i64 %i.cw
  %i.cx = mul i32 %i.e, %i.be                     ; 2 uses
  %i.cy = add i32 %i.a, %i.cx
  %i.cz = mul i32 %i.c, %i.bc                     ; 2 uses
  %i.da = add i32 %i.cy, %i.cz
  %i.db = mul nuw nsw i64 %i.cl, 24
  %i.dc = add nsw i64 %i.db, %i.cw
  %i.dd = add nsw i64 %i.dc, 8                    ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.ba, i64 %i.dd
  %scevgep75 = getelementptr i8, ptr %i.ba, i64 %i.cw
  %i.de = add i32 %i.a, %i.cx
  %i.df = add i32 %i.de, %i.cz
  %i.dg = add i32 %i.df, 1
  %scevgep77 = getelementptr i8, ptr %i.ba, i64 %i.dd
  %i.dh = add i32 %i.g, -1                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.dh, 4
  %2 = and i32 %i.dh, -2
  %i.di = zext i32 %2 to i64                      ; 2 uses
  %i.dj = add nuw nsw i64 %i.bk, %i.di
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34 ] ; 7 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.hl, %._crit_edge34 ] ; 5 uses
  %i.dk = mul i32 %i.ai, %indvar
  %i.dl = add i32 %i.cj, %i.dk
  %i.dm = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dn = add i32 %i.cs, %i.dm
  %i.do = add i32 %i.cv, %i.dm
  %i.dp = mul i32 %i.be, %indvar                  ; 2 uses
  %i.dq = add i32 %i.da, %i.dp
  %i.dr = add i32 %i.dg, %i.dp
  %i.ds = mul i32 %i.ai, %indvar
  %i.dt = add i32 %i.bs, %i.ds
  %i.du = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dv = add i32 %i.bw, %i.du
  %i.dw = add i32 %i.ca, %i.du
  %i.dx = mul i32 %i.be, %indvar                  ; 2 uses
  %i.dy = add i32 %i.cf, %i.dx
  %i.dz = add i32 %i.ce, %i.dx
  %i.ea = add nsw i32 %.02236, -1
  %i.eb = mul nsw i32 %i.ai, %.02236
  %i.ec = mul nsw i32 %i.at, %.02236              ; 2 uses
  %i.ed = mul nsw i32 %i.at, %i.ea                ; 2 uses
  %i.ee = mul nsw i32 %i.be, %.02236
  br label %.preheader

._crit_edge38.split:                              ; preds = %._crit_edge34, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar47 = phi i32 [ 0, %.preheader25 ], [ %indvar.next48, %._crit_edge ] ; 7 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.hm, %._crit_edge ] ; 4 uses
  %i.ef = mul i32 %i.ag, %indvar47
  %i.eg = add i32 %i.dl, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = shl nsw i64 %i.eh, 3                    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.ae, i64 %i.ei ; 6 uses
  %scevgep63 = getelementptr i8, ptr %scevgep62.a, i64 %i.ei ; 6 uses
  %i.ej = mul i32 %i.ar, %indvar47                ; 2 uses
  %i.ek = add i32 %i.dn, %i.ej
  %i.el = sext i32 %i.ek to i64
  %i.em = shl nsw i64 %i.el, 3                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.ap, i64 %i.em
  %scevgep67 = getelementptr i8, ptr %scevgep66.a, i64 %i.em
  %i.en = add i32 %i.do, %i.ej
  %i.eo = sext i32 %i.en to i64
  %i.ep = shl nsw i64 %i.eo, 3                    ; 2 uses
  %scevgep68.a = getelementptr i8, ptr %i.ap, i64 %i.ep
  %scevgep70.a = getelementptr i8, ptr %scevgep69.a, i64 %i.ep
  %i.eq = mul i32 %i.bc, %indvar47                ; 2 uses
  %i.er = add i32 %i.dq, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = mul nsw i64 %i.es, 24                   ; 2 uses
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.et
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.et
  %i.eu = add i32 %i.dr, %i.eq
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul nsw i64 %i.ev, 24                   ; 2 uses
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.ew
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.ew
  %i.ex = mul nsw i32 %i.ag, %.02133
  %invariant.op = add i32 %i.ex, %i.eb            ; 2 uses
  %i.ey = mul nsw i32 %i.ar, %.02133              ; 2 uses
  %i.ez = mul nsw i32 %i.bc, %.02133
  %invariant.op28 = add i32 %i.ez, %i.ee          ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader
  %indvars.iv.ph = phi i64 [ %i.bk, %vector.memcheck ], [ %i.bk, %vector.scevcheck ], [ %i.bk, %.preheader ], [ %i.dj, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.preheader
  %i.fa = mul i32 %i.bc, %indvar47                ; 2 uses
  %i.fb = add i32 %i.dz, %i.fa                    ; 2 uses
  %i.fc = add i32 %i.dy, %i.fa                    ; 2 uses
  %i.fd = mul i32 %i.ar, %indvar47                ; 2 uses
  %i.fe = add i32 %i.dw, %i.fd                    ; 2 uses
  %i.ff = add i32 %i.dv, %i.fd                    ; 2 uses
  %i.fg = mul i32 %i.ag, %indvar47
  %i.fh = add i32 %i.dt, %i.fg                    ; 2 uses
  %i.fi = add i32 %i.fh, %i.bo
  %i.fj = icmp slt i32 %i.fi, %i.fh
  %i.fk = add i32 %i.ff, %i.bo
  %i.fl = icmp slt i32 %i.fk, %i.ff
  %i.fm = add i32 %i.fe, %i.bo
  %i.fn = icmp slt i32 %i.fm, %i.fe
  %i.fo = add i32 %i.fc, %i.bo
  %i.fp = icmp slt i32 %i.fo, %i.fc
  %i.fq = add i32 %i.fb, %i.bo
  %i.fr = icmp slt i32 %i.fq, %i.fb
  %i.fs = or i1 %i.fj, %i.fl
  %i.ft = or i1 %i.fs, %i.fn
  %i.fu = or i1 %i.ft, %i.fp
  %i.fv = or i1 %i.fu, %i.fr
  br i1 %i.fv, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %.sroa.4.0.copyload, %scevgep63
  %bound1 = icmp ult ptr %scevgep61, %scevgep60.a
  %found.conflict = and i1 %bound0, %bound1
  %bound079 = icmp ult ptr %i.bj, %scevgep63
  %bound180 = icmp ult ptr %scevgep61, %scevgep64.a
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  %bound082.a = icmp ult ptr %scevgep61, %scevgep67
  %bound183.a = icmp ult ptr %scevgep65, %scevgep63
  %found.conflict84.a = and i1 %bound082.a, %bound183.a
  %conflict.rdx85.a = or i1 %conflict.rdx, %found.conflict84.a
  %bound086.a = icmp ult ptr %scevgep61, %scevgep70.a
  %bound187.a = icmp ult ptr %scevgep68.a, %scevgep63
  %found.conflict88.a = and i1 %bound086.a, %bound187.a
  %conflict.rdx89.a = or i1 %conflict.rdx85.a, %found.conflict88.a
  %bound090 = icmp ult ptr %scevgep61, %scevgep74
  %bound191 = icmp ult ptr %scevgep72, %scevgep63
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx89.a, %found.conflict92
  %bound094 = icmp ult ptr %scevgep61, %scevgep78
  %bound195 = icmp ult ptr %scevgep76, %scevgep63
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx93, %found.conflict96
  br i1 %conflict.rdx97, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fw = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !9999, !alias.scope !10001, !noalias !10004
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = load double, ptr %i.bj, align 8, !tbaa !247, !alias.scope !10006, !noalias !10004
  %broadcast.splatinsert100 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat101 = shufflevector <2 x double> %broadcast.splatinsert100, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op102 = add i32 1, %invariant.op28
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fy = trunc i64 %index to i32
  %i.fz = add i32 %i.a, %i.fy                     ; 4 uses
  %i.ga = add i32 %invariant.op, %i.fz
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.gb ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gc, align 8, !tbaa !247, !alias.scope !10004, !noalias !10008
  %i.gd = fadd <2 x double> %wide.load, %broadcast.splat
  %i.ge = add i32 %i.ey, %i.fz                    ; 2 uses
  %i.gf = add i32 %i.ge, %i.ec
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.gg
  %wide.load98 = load <2 x double>, ptr %i.gh, align 8, !tbaa !247, !alias.scope !10013
  %i.gi = add i32 %i.ge, %i.ed
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.gj
  %wide.load99 = load <2 x double>, ptr %i.gk, align 8, !tbaa !247, !alias.scope !10014
  %i.gl = fmul <2 x double> %wide.load99, splat (double 5.000000e-01)
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load98, <2 x double> splat (double 5.000000e-01), <2 x double> %i.gl)
  %i.gn = add i32 %invariant.op28, %i.fz          ; 2 uses
  %.reass103 = add i32 %i.fz, %invariant.op102    ; 2 uses
  %i.go = add i32 %i.gn, 1
  %i.gp = add i32 %.reass103, 1
  %i.gq = sext i32 %i.go to i64
  %i.gr = sext i32 %i.gp to i64
  %i.gs = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gq
  %i.gt = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gr
  %i.gu = load double, ptr %i.gs, align 8, !tbaa !247, !alias.scope !10015
  %i.gv = load double, ptr %i.gt, align 8, !tbaa !247, !alias.scope !10015
  %i.gw = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.gx = insertelement <2 x double> %i.gw, double %i.gv, i64 1
  %i.gy = sext i32 %i.gn to i64
  %i.gz = sext i32 %.reass103 to i64
  %i.ha = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gy
  %i.hb = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gz
  %i.hc = load double, ptr %i.ha, align 8, !tbaa !247, !alias.scope !10016
  %i.hd = load double, ptr %i.hb, align 8, !tbaa !247, !alias.scope !10016
  %i.he = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hf = insertelement <2 x double> %i.he, double %i.hd, i64 1
  %i.hg = fsub <2 x double> %i.gx, %i.hf
  %i.hh = fneg <2 x double> %i.hg
  %i.hi = fdiv <2 x double> %i.hh, %broadcast.splat101
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.gm, <2 x double> %i.hi)
  store <2 x double> %i.hj, ptr %i.gc, align 8, !tbaa !247, !alias.scope !10004, !noalias !10008
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %i.di
  br i1 %i.hk, label %scalar.ph.preheader, label %vector.body, !llvm.loop !10017

._crit_edge34:                                    ; preds = %._crit_edge
  %i.hl = add i32 %.02236, 1                      ; 2 uses
  %exitcond42.not = icmp eq i32 %i.hl, %i.bn
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond42.not, label %._crit_edge38.split, label %.preheader25, !llvm.loop !10018

._crit_edge:                                      ; preds = %scalar.ph
  %i.hm = add i32 %.02133, 1                      ; 2 uses
  %exitcond41.not = icmp eq i32 %i.hm, %i.bm
  %indvar.next48 = add i32 %indvar47, 1
  br i1 %exitcond41.not, label %._crit_edge34, label %.preheader, !llvm.loop !10019

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hn = trunc i64 %indvars.iv to i32            ; 3 uses
  %.reass = add i32 %invariant.op, %i.hn
  %i.ho = sext i32 %.reass to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ho ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !247
  %i.hr = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !9999
  %i.hs = fadd double %i.hq, %i.hr
  %i.ht = add i32 %i.ey, %i.hn                    ; 2 uses
  %i.hu = add i32 %i.ht, %i.ec
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !247
  %i.hy = add i32 %i.ht, %i.ed
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !247
  %i.ic = fmul double %i.ib, 5.000000e-01
  %i.id = tail call double @llvm.fmuladd.f64(double %i.hx, double 5.000000e-01, double %i.ic)
  %.reass29 = add i32 %invariant.op28, %i.hn      ; 2 uses
  %i.ie = add i32 %.reass29, 1
  %i.if = sext i32 %i.ie to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.if
  %i.ig = load double, ptr %gep, align 8, !tbaa !247
  %i.ih = sext i32 %.reass29 to i64
  %gep31 = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.ih
  %i.ii = load double, ptr %gep31, align 8, !tbaa !247
  %i.ij = fsub double %i.ig, %i.ii
  %i.ik = load double, ptr %i.bj, align 8, !tbaa !247
  %i.il = fneg double %i.ij
  %i.im = fdiv double %i.il, %i.ik
  %i.in = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.id, double %i.im)
  store double %i.in, ptr %i.hp, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bl, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !10020
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN4Adv51X7DensupdILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.647, align 8  ; 20 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6187
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 2, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6187
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 2, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6187
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 2, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 1, ptr %i.v, align 4, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -1, ptr %i.t, align 8, !tbaa !12
  store i64 -2, ptr %i.f, align 8, !tbaa !12
  %i.w = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_14UpdateNotifierEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN4Adv51X7DensupdILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 4 dereferenceable(28) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_19EngineWriteNotifierEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %i.y = load i32, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !6187 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ae) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !6187 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.am) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i:          ; preds = %bb.c, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i3.i, label %_ZN14ScalarCodeInfoILi3ELi2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.aw
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.au) #48
  br label %_ZN14ScalarCodeInfoILi3ELi2EED2Ev.exit

_ZN14ScalarCodeInfoILi3ELi2EED2Ev.exit:           ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN4Adv51X7DensupdILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 4 dereferenceable(28) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.Interval.108, align 4        ; 3 uses
  %6 = alloca %class.INode, align 8               ; 11 uses
  %7 = alloca %class.Interval.108, align 4        ; 3 uses
  %8 = alloca %class.INode, align 8               ; 11 uses
  %9 = alloca %class.Field.563, align 8           ; 5 uses
  %10 = alloca %class.Field.563, align 8          ; 5 uses
  %11 = alloca %class.SimpleIntersector, align 8  ; 8 uses
  %12 = alloca %class.Interval.108, align 4       ; 9 uses
  %13 = alloca %struct.MultiArg2.648, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #47
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #45 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !6195
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr null, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.d, ptr %i.g, align 8, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.j = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.j, ptr %i.i, align 8, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load <2 x i32>, ptr %i.l, align 4, !tbaa !4
  store <2 x i32> %i.m, ptr %i.k, align 8, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1065
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.p = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #45 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 160 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESB_E3LocILi1EEEEEN4Adv51Y14Momentumflux2XILi3EEELi3E15EvaluateLocLoopISR_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSU_4sizeEERKT2_:bb.a
  store i32 0, ptr %i.an, align 8, !tbaa !2607
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ao, align 8, !tbaa !2854
  %i.ap = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !2856
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2XILi3EEELi3EEE, i64 16), ptr %i.ak, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEEEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(432) %i.ar, ptr noundef nonnull align 8 dereferenceable(432) %8)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 468
  store i32 %i.c, ptr %i.as, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 472
  store i32 %i.f, ptr %i.at, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 476
  store i32 %i.n, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 480
  store i32 %i.q, ptr %i.av, align 8, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 484
  store i32 %i.aa, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 488
  store i32 %i.ad, ptr %i.ax, align 8, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 496 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 536
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %i.ak, ptr %5, align 8, !tbaa !6328
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %5, ptr %6, align 8, !tbaa !6330
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #47, !inline_history !11487
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #47, !inline_history !11487
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bh) #47
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bi) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2XILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2XILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6427
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6187 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2XILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2XILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2XILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.793, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !9948
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11488
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 468
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51Y14Momentumflux2XILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51Y14Momentumflux2XILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not35 = icmp sgt i32 %i.e, %i.m
  br i1 %.not35, label %._crit_edge38.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2332 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2332, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge38.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9948 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6419
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2989 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4  ; 5 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6419
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2989 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4  ; 5 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !9332
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9333
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !9331
  %i.ay = getelementptr inbounds [96 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3535 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4  ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !236
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ba, i64 %i.bh ; 6 uses
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 136    ; 3 uses
  %i.bk = zext i32 %i.a to i64                    ; 4 uses
  %i.bl = add i32 %i.g, %i.a
  %i.bm = add i32 %i.i, %i.c
  %i.bn = add i32 %i.k, %i.e
  %i.bo = add i32 %i.g, -1                        ; 5 uses
  %i.bp = mul i32 %i.e, %i.ai
  %i.bq = add i32 %i.a, %i.bp
  %i.br = mul i32 %i.c, %i.ag
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = mul i32 %i.e, %i.at
  %i.bu = add i32 %i.a, %i.bt
  %i.bv = mul i32 %i.c, %i.ar
  %i.bw = add i32 %i.bu, %i.bv                    ; 2 uses
  %i.bx = add i32 %i.bw, -1
  %i.by = mul i32 %i.e, %i.be
  %i.bz = add i32 %i.a, %i.by                     ; 2 uses
  %i.ca = add i32 %i.c, 1
  %i.cb = mul i32 %i.bc, %i.ca
  %i.cc = add i32 %i.bz, %i.cb
  %i.cd = mul i32 %i.c, %i.bc
  %i.ce = add i32 %i.bz, %i.cd
  %scevgep60.a = getelementptr i8, ptr %i.bi, i64 144
  %i.cf = mul i32 %i.e, %i.ai
  %i.cg = add i32 %i.a, %i.cf
  %i.ch = mul i32 %i.c, %i.ag
  %i.ci = add i32 %i.cg, %i.ch
  %i.cj = add i32 %i.g, -1
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 8                ; 3 uses
  %scevgep62.a = getelementptr i8, ptr %i.ae, i64 %i.cm
  %i.cn = mul i32 %i.e, %i.at
  %i.co = add i32 %i.a, %i.cn
  %i.cp = mul i32 %i.c, %i.ar
  %i.cq = add i32 %i.co, %i.cp                    ; 2 uses
  %i.cr = add i32 %i.cq, -1
  %scevgep65.a = getelementptr i8, ptr %i.ap, i64 %i.cm
  %scevgep68.a = getelementptr i8, ptr %i.ap, i64 %i.cm
  %i.cs = shl nsw i64 %i.bh, 3                    ; 3 uses
  %scevgep70 = getelementptr i8, ptr %i.ba, i64 %i.cs
  %i.ct = mul i32 %i.e, %i.be                     ; 2 uses
  %i.cu = add i32 %i.a, %i.ct
  %i.cv = mul i32 %i.c, %i.bc
  %i.cw = add i32 %i.cu, %i.cv
  %i.cx = mul nuw nsw i64 %i.ck, 24
  %i.cy = add nsw i64 %i.cx, %i.cs
  %i.cz = add nsw i64 %i.cy, 8                    ; 2 uses
  %scevgep72 = getelementptr i8, ptr %i.ba, i64 %i.cz
  %scevgep74 = getelementptr i8, ptr %i.ba, i64 %i.cs
  %i.da = add i32 %i.a, %i.ct
  %i.db = add i32 %i.c, 1
  %i.dc = mul i32 %i.bc, %i.db
  %i.dd = add i32 %i.da, %i.dc
  %scevgep76 = getelementptr i8, ptr %i.ba, i64 %i.cz
  %i.de = add i32 %i.g, -1                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.de, 4
  %2 = and i32 %i.de, -2
  %i.df = zext i32 %2 to i64                      ; 2 uses
  %i.dg = add nuw nsw i64 %i.bk, %i.df
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34 ] ; 7 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.hh, %._crit_edge34 ] ; 4 uses
  %i.dh = mul i32 %i.ai, %indvar
  %i.di = add i32 %i.ci, %i.dh
  %i.dj = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dk = add i32 %i.cr, %i.dj
  %i.dl = add i32 %i.cq, %i.dj
  %i.dm = mul i32 %i.be, %indvar                  ; 2 uses
  %i.dn = add i32 %i.cw, %i.dm
  %i.do = add i32 %i.dd, %i.dm
  %i.dp = mul i32 %i.ai, %indvar
  %i.dq = add i32 %i.bs, %i.dp
  %i.dr = mul i32 %i.at, %indvar                  ; 2 uses
  %i.ds = add i32 %i.bw, %i.dr
  %i.dt = add i32 %i.bx, %i.dr
  %i.du = mul i32 %i.be, %indvar                  ; 2 uses
  %i.dv = add i32 %i.cc, %i.du
  %i.dw = add i32 %i.ce, %i.du
  %i.dx = mul nsw i32 %i.ai, %.02236
  %i.dy = mul nsw i32 %i.at, %.02236
  %i.dz = mul nsw i32 %i.be, %.02236              ; 3 uses
  %invariant.op95 = add i32 1, %i.dz
  br label %.preheader

._crit_edge38.split:                              ; preds = %._crit_edge34, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar47 = phi i32 [ 0, %.preheader25 ], [ %indvar.next48, %._crit_edge ] ; 7 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.eu, %._crit_edge ] ; 4 uses
  %i.ea = mul i32 %i.ag, %indvar47
  %i.eb = add i32 %i.di, %i.ea
  %i.ec = sext i32 %i.eb to i64
  %i.ed = shl nsw i64 %i.ec, 3                    ; 2 uses
  %scevgep61.a = getelementptr i8, ptr %i.ae, i64 %i.ed ; 5 uses
  %scevgep63.a = getelementptr i8, ptr %scevgep62.a, i64 %i.ed ; 5 uses
  %i.ee = mul i32 %i.ar, %indvar47                ; 2 uses
  %i.ef = add i32 %i.dk, %i.ee
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 3                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.ap, i64 %i.eh
  %scevgep66 = getelementptr i8, ptr %scevgep65.a, i64 %i.eh
  %i.ei = add i32 %i.dl, %i.ee
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 3                    ; 2 uses
  %scevgep67.a = getelementptr i8, ptr %i.ap, i64 %i.ek
  %scevgep69.a = getelementptr i8, ptr %scevgep68.a, i64 %i.ek
  %i.el = mul i32 %i.bc, %indvar47                ; 2 uses
  %i.em = add i32 %i.dn, %i.el
  %i.en = sext i32 %i.em to i64
  %i.eo = mul nsw i64 %i.en, 24                   ; 2 uses
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.eo
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.eo
  %i.ep = add i32 %i.do, %i.el
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul nsw i64 %i.eq, 24                   ; 2 uses
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.er
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.er
  %i.es = mul nsw i32 %i.ag, %.02133
  %invariant.op = add i32 %i.es, %i.dx            ; 2 uses
  %i.et = mul nsw i32 %i.ar, %.02133
  %invariant.op28 = add i32 %i.et, %i.dy          ; 2 uses
  %i.eu = add nsw i32 %.02133, 1                  ; 3 uses
  %i.ev = mul nsw i32 %i.bc, %i.eu                ; 3 uses
  %i.ew = mul nsw i32 %i.bc, %.02133              ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader
  %indvars.iv.ph = phi i64 [ %i.bk, %vector.memcheck ], [ %i.bk, %vector.scevcheck ], [ %i.bk, %.preheader ], [ %i.dg, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.preheader
  %i.ex = mul i32 %i.bc, %indvar47                ; 2 uses
  %i.ey = add i32 %i.dw, %i.ex                    ; 2 uses
  %i.ez = add i32 %i.dv, %i.ex                    ; 2 uses
  %i.fa = mul i32 %i.ar, %indvar47                ; 2 uses
  %i.fb = add i32 %i.dt, %i.fa                    ; 2 uses
  %i.fc = add i32 %i.ds, %i.fa                    ; 2 uses
  %i.fd = mul i32 %i.ag, %indvar47
  %i.fe = add i32 %i.dq, %i.fd                    ; 2 uses
  %i.ff = add i32 %i.fe, %i.bo
  %i.fg = icmp slt i32 %i.ff, %i.fe
  %i.fh = add i32 %i.fc, %i.bo
  %i.fi = icmp slt i32 %i.fh, %i.fc
  %i.fj = add i32 %i.fb, %i.bo
  %i.fk = icmp slt i32 %i.fj, %i.fb
  %i.fl = add i32 %i.ez, %i.bo
  %i.fm = icmp slt i32 %i.fl, %i.ez
  %i.fn = add i32 %i.ey, %i.bo
  %i.fo = icmp slt i32 %i.fn, %i.ey
  %i.fp = or i1 %i.fg, %i.fi
  %i.fq = or i1 %i.fp, %i.fk
  %i.fr = or i1 %i.fq, %i.fm
  %i.fs = or i1 %i.fr, %i.fo
  br i1 %i.fs, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.bj, %scevgep63.a
  %bound1 = icmp ult ptr %scevgep61.a, %scevgep60.a
  %found.conflict = and i1 %bound0, %bound1
  %bound078 = icmp ult ptr %scevgep61.a, %scevgep66
  %bound179 = icmp ult ptr %scevgep64, %scevgep63.a
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx = or i1 %found.conflict, %found.conflict80
  %bound081.a = icmp ult ptr %scevgep61.a, %scevgep69.a
  %bound182.a = icmp ult ptr %scevgep67.a, %scevgep63.a
  %found.conflict83.a = and i1 %bound081.a, %bound182.a
  %conflict.rdx84.a = or i1 %conflict.rdx, %found.conflict83.a
  %bound085 = icmp ult ptr %scevgep61.a, %scevgep73
  %bound186 = icmp ult ptr %scevgep71, %scevgep63.a
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84.a, %found.conflict87
  %bound089 = icmp ult ptr %scevgep61.a, %scevgep77
  %bound190 = icmp ult ptr %scevgep75, %scevgep63.a
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ft = load double, ptr %i.bj, align 8, !tbaa !247, !alias.scope !11490, !noalias !11493
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ft, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fu = trunc i64 %index to i32
  %i.fv = add i32 %i.a, %i.fu                     ; 4 uses
  %i.fw = add i32 %invariant.op, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.fx ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fy, align 8, !tbaa !247, !alias.scope !11493, !noalias !11495
  %i.fz = add i32 %invariant.op28, %i.fv          ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ga
  %wide.load93 = load <2 x double>, ptr %i.gb, align 8, !tbaa !247, !alias.scope !11500
  %i.gc = add i32 %i.fz, -1
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.gd
  %wide.load94 = load <2 x double>, ptr %i.ge, align 8, !tbaa !247, !alias.scope !11501
  %i.gf = fmul <2 x double> %wide.load94, splat (double 5.000000e-01)
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load93, <2 x double> splat (double 5.000000e-01), <2 x double> %i.gf)
  %i.gh = add i32 %i.dz, %i.fv                    ; 2 uses
  %.reass96 = add i32 %i.fv, %invariant.op95      ; 2 uses
  %i.gi = add i32 %i.gh, %i.ev
  %i.gj = add i32 %.reass96, %i.ev
  %i.gk = sext i32 %i.gi to i64
  %i.gl = sext i32 %i.gj to i64
  %i.gm = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gk
  %i.gn = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gl
  %i.go = load double, ptr %i.gm, align 8, !tbaa !247, !alias.scope !11502
  %i.gp = load double, ptr %i.gn, align 8, !tbaa !247, !alias.scope !11502
  %i.gq = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.gp, i64 1
  %i.gs = add i32 %i.gh, %i.ew
  %i.gt = add i32 %.reass96, %i.ew
  %i.gu = sext i32 %i.gs to i64
  %i.gv = sext i32 %i.gt to i64
  %i.gw = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gu
  %i.gx = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gv
  %i.gy = load double, ptr %i.gw, align 8, !tbaa !247, !alias.scope !11503
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !247, !alias.scope !11503
  %i.ha = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1
  %i.hc = fsub <2 x double> %i.gr, %i.hb
  %i.hd = fneg <2 x double> %i.hc
  %i.he = fdiv <2 x double> %i.hd, %broadcast.splat
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.gg, <2 x double> %i.he)
  store <2 x double> %i.hf, ptr %i.fy, align 8, !tbaa !247, !alias.scope !11493, !noalias !11495
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %i.df
  br i1 %i.hg, label %scalar.ph.preheader, label %vector.body, !llvm.loop !11504

._crit_edge34:                                    ; preds = %._crit_edge
  %i.hh = add i32 %.02236, 1                      ; 2 uses
  %exitcond42.not = icmp eq i32 %i.hh, %i.bn
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond42.not, label %._crit_edge38.split, label %.preheader25, !llvm.loop !11505

._crit_edge:                                      ; preds = %scalar.ph
  %exitcond41.not = icmp eq i32 %i.eu, %i.bm
  %indvar.next48 = add i32 %indvar47, 1
  br i1 %exitcond41.not, label %._crit_edge34, label %.preheader, !llvm.loop !11506

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hi = trunc i64 %indvars.iv to i32            ; 3 uses
  %.reass = add i32 %invariant.op, %i.hi
  %i.hj = sext i32 %.reass to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.hj ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !247
  %.reass29 = add i32 %invariant.op28, %i.hi      ; 2 uses
  %i.hm = sext i32 %.reass29 to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !247
  %i.hp = add i32 %.reass29, -1
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.hq
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !247
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.ho, double 5.000000e-01, double %i.ht)
  %i.hv = add i32 %i.dz, %i.hi                    ; 2 uses
  %i.hw = add i32 %i.hv, %i.ev
  %i.hx = sext i32 %i.hw to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.hx
  %i.hy = load double, ptr %gep, align 8, !tbaa !247
  %i.hz = add i32 %i.hv, %i.ew
  %i.ia = sext i32 %i.hz to i64
  %gep31 = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.ia
  %i.ib = load double, ptr %gep31, align 8, !tbaa !247
  %i.ic = fsub double %i.hy, %i.ib
  %i.id = load double, ptr %i.bj, align 8, !tbaa !247
  %i.ie = fneg double %i.ic
  %i.if = fdiv double %i.ie, %i.id
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.hu, double %i.if)
  store double %i.ig, ptr %i.hk, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bl, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !11507
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Y14Momentumflux2YILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.641, align 8  ; 20 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6187
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 3, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6187
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 3, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6187
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 3, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %i.v, align 4, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -1, ptr %i.t, align 8, !tbaa !12
  store i64 -2, ptr %i.f, align 8, !tbaa !12
  %i.w = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_14UpdateNotifierEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Y14Momentumflux2YILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 4 dereferenceable(28) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_19EngineWriteNotifierEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %i.y = load i32, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !6187 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ae) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !6187 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.am) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i:          ; preds = %bb.c, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i3.i, label %_ZN14ScalarCodeInfoILi3ELi3EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.aw
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.au) #48
  br label %_ZN14ScalarCodeInfoILi3ELi3EED2Ev.exit

_ZN14ScalarCodeInfoILi3ELi3EED2Ev.exit:           ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Y14Momentumflux2YILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 4 dereferenceable(28) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.SimpleIntersector, align 8   ; 8 uses
  %6 = alloca %class.INode, align 8               ; 11 uses
  %7 = alloca %class.Interval.108, align 4        ; 9 uses
  %8 = alloca %struct.MultiArg3.642, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #45 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !6195
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr null, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.d, ptr %i.g, align 8, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.j = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.j, ptr %i.i, align 8, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load <2 x i32>, ptr %i.l, align 4, !tbaa !4
  store <2 x i32> %i.m, ptr %i.k, align 8, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1065
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.p = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #45 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 160 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !164
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store ptr null, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, i8 0, i64 144, i1 false)
  store ptr %i.r, ptr %i.t, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  store ptr %i.r, ptr %i.u, align 8, !tbaa !165
end_hunk_4
begin_hunk_5_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESB_E3LocILi1EEEEEN4Adv51Y14Momentumflux2ZILi3EEELi3E15EvaluateLocLoopISR_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSU_4sizeEERKT2_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2856
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2ZILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEEEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(432) %i.as, ptr noundef nonnull align 8 dereferenceable(432) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 464
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 476
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 484
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 492
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %i.al, ptr %5, align 8, !tbaa !6328
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %5, ptr %6, align 8, !tbaa !6330
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #47, !inline_history !11581
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #47, !inline_history !11581
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #47
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2ZILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2ZILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6427
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6187 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2ZILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2ZILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Y14Momentumflux2ZILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.799, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !9948
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11582
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51Y14Momentumflux2ZILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51Y14Momentumflux2ZILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11582 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2330 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2330, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge36.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9948 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6419
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2989 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4  ; 5 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6419
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2989 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4  ; 8 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !9332
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9333
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !9331
  %i.ay = getelementptr inbounds [96 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3535 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4  ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !236
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ba, i64 %i.bh ; 6 uses
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 136    ; 3 uses
  %i.bk = zext i32 %i.a to i64                    ; 4 uses
  %i.bl = add i32 %i.g, %i.a
  %i.bm = add i32 %i.i, %i.c
  %i.bn = add i32 %i.k, %i.e
  %i.bo = add i32 %i.g, -1                        ; 5 uses
  %i.bp = mul i32 %i.e, %i.ai
  %i.bq = add i32 %i.a, %i.bp
  %i.br = mul i32 %i.c, %i.ag
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = mul i32 %i.e, %i.at
  %i.bu = add i32 %i.a, %i.bt
  %i.bv = mul i32 %i.c, %i.ar                     ; 2 uses
  %i.bw = add i32 %i.bu, %i.bv
  %i.bx = add i32 %i.a, %i.bv
  %i.by = add i32 %i.e, -1
  %i.bz = mul i32 %i.at, %i.by
  %i.ca = add i32 %i.bx, %i.bz
  %i.cb = mul i32 %i.e, %i.be
  %i.cc = add i32 %i.a, %i.cb                     ; 2 uses
  %i.cd = add i32 %i.c, 1
  %i.ce = mul i32 %i.bc, %i.cd
  %i.cf = add i32 %i.cc, %i.ce
  %i.cg = mul i32 %i.c, %i.bc
  %i.ch = add i32 %i.cc, %i.cg
  %scevgep58.a = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ci = mul i32 %i.e, %i.ai
  %i.cj = add i32 %i.a, %i.ci
  %i.ck = mul i32 %i.c, %i.ag
  %i.cl = add i32 %i.cj, %i.ck
  %i.cm = add i32 %i.g, -1
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, 8                ; 3 uses
  %scevgep60.a = getelementptr i8, ptr %i.ae, i64 %i.cp
  %scevgep62.a = getelementptr i8, ptr %i.bi, i64 144
  %i.cq = mul i32 %i.c, %i.ar                     ; 2 uses
  %i.cr = add i32 %i.a, %i.cq
  %i.cs = add i32 %i.e, -1
  %i.ct = mul i32 %i.at, %i.cs
  %i.cu = add i32 %i.cr, %i.ct
  %scevgep64.a = getelementptr i8, ptr %i.ap, i64 %i.cp
  %i.cv = mul i32 %i.e, %i.at
  %i.cw = add i32 %i.a, %i.cv
  %i.cx = add i32 %i.cw, %i.cq
  %scevgep67.a = getelementptr i8, ptr %i.ap, i64 %i.cp
  %i.cy = shl nsw i64 %i.bh, 3                    ; 3 uses
  %scevgep69 = getelementptr i8, ptr %i.ba, i64 %i.cy
  %i.cz = mul i32 %i.e, %i.be                     ; 2 uses
  %i.da = add i32 %i.a, %i.cz
  %i.db = mul i32 %i.c, %i.bc
  %i.dc = add i32 %i.da, %i.db
  %i.dd = mul nuw nsw i64 %i.cn, 24
  %i.de = add nsw i64 %i.dd, %i.cy
  %i.df = add nsw i64 %i.de, 8                    ; 2 uses
  %scevgep71 = getelementptr i8, ptr %i.ba, i64 %i.df
  %scevgep73 = getelementptr i8, ptr %i.ba, i64 %i.cy
  %i.dg = add i32 %i.a, %i.cz
  %i.dh = add i32 %i.c, 1
  %i.di = mul i32 %i.bc, %i.dh
  %i.dj = add i32 %i.dg, %i.di
  %scevgep75 = getelementptr i8, ptr %i.ba, i64 %i.df
  %i.dk = add i32 %i.g, -1                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.dk, 4
  %2 = and i32 %i.dk, -2
  %i.dl = zext i32 %2 to i64                      ; 2 uses
  %i.dm = add nuw nsw i64 %i.bk, %i.dl
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge32
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge32 ] ; 7 uses
  %.02234 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.hs, %._crit_edge32 ] ; 5 uses
  %i.dn = mul i32 %i.ai, %indvar
  %i.do = add i32 %i.cl, %i.dn
  %i.dp = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dq = add i32 %i.cu, %i.dp
  %i.dr = add i32 %i.cx, %i.dp
  %i.ds = mul i32 %i.be, %indvar                  ; 2 uses
  %i.dt = add i32 %i.dc, %i.ds
  %i.du = add i32 %i.dj, %i.ds
  %i.dv = mul i32 %i.ai, %indvar
  %i.dw = add i32 %i.bs, %i.dv
  %i.dx = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dy = add i32 %i.bw, %i.dx
  %i.dz = add i32 %i.ca, %i.dx
  %i.ea = mul i32 %i.be, %indvar                  ; 2 uses
  %i.eb = add i32 %i.cf, %i.ea
  %i.ec = add i32 %i.ch, %i.ea
  %i.ed = add nsw i32 %.02234, -1
  %i.ee = mul nsw i32 %i.ai, %.02234
  %i.ef = mul nsw i32 %i.at, %.02234              ; 2 uses
  %i.eg = mul nsw i32 %i.at, %i.ed                ; 2 uses
  %i.eh = mul nsw i32 %i.be, %.02234              ; 3 uses
  %invariant.op100 = add i32 1, %i.eh
  br label %.preheader

._crit_edge36.split:                              ; preds = %._crit_edge32, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar45 = phi i32 [ 0, %.preheader25 ], [ %indvar.next46, %._crit_edge ] ; 7 uses
  %.02131 = phi i32 [ %i.c, %.preheader25 ], [ %i.fc, %._crit_edge ] ; 4 uses
  %i.ei = mul i32 %i.ag, %indvar45
  %i.ej = add i32 %i.do, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 3                    ; 2 uses
  %scevgep59 = getelementptr i8, ptr %i.ae, i64 %i.el ; 6 uses
  %scevgep61 = getelementptr i8, ptr %scevgep60.a, i64 %i.el ; 6 uses
  %i.em = mul i32 %i.ar, %indvar45                ; 2 uses
  %i.en = add i32 %i.dq, %i.em
  %i.eo = sext i32 %i.en to i64
  %i.ep = shl nsw i64 %i.eo, 3                    ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.ap, i64 %i.ep
  %scevgep65 = getelementptr i8, ptr %scevgep64.a, i64 %i.ep
  %i.eq = add i32 %i.dr, %i.em
  %i.er = sext i32 %i.eq to i64
  %i.es = shl nsw i64 %i.er, 3                    ; 2 uses
  %scevgep66.a = getelementptr i8, ptr %i.ap, i64 %i.es
  %scevgep68.a = getelementptr i8, ptr %scevgep67.a, i64 %i.es
  %i.et = mul i32 %i.bc, %indvar45                ; 2 uses
  %i.eu = add i32 %i.dt, %i.et
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul nsw i64 %i.ev, 24                   ; 2 uses
  %scevgep70 = getelementptr i8, ptr %scevgep69, i64 %i.ew
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.ew
  %i.ex = add i32 %i.du, %i.et
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul nsw i64 %i.ey, 24                   ; 2 uses
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.ez
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.ez
  %i.fa = mul nsw i32 %i.ag, %.02131
  %invariant.op = add i32 %i.fa, %i.ee            ; 2 uses
  %i.fb = mul nsw i32 %i.ar, %.02131              ; 2 uses
  %i.fc = add nsw i32 %.02131, 1                  ; 3 uses
  %i.fd = mul nsw i32 %i.bc, %i.fc                ; 3 uses
  %i.fe = mul nsw i32 %i.bc, %.02131              ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader
  %indvars.iv.ph = phi i64 [ %i.bk, %vector.memcheck ], [ %i.bk, %vector.scevcheck ], [ %i.bk, %.preheader ], [ %i.dm, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.preheader
  %i.ff = mul i32 %i.bc, %indvar45                ; 2 uses
  %i.fg = add i32 %i.ec, %i.ff                    ; 2 uses
  %i.fh = add i32 %i.eb, %i.ff                    ; 2 uses
  %i.fi = mul i32 %i.ar, %indvar45                ; 2 uses
  %i.fj = add i32 %i.dz, %i.fi                    ; 2 uses
  %i.fk = add i32 %i.dy, %i.fi                    ; 2 uses
  %i.fl = mul i32 %i.ag, %indvar45
  %i.fm = add i32 %i.dw, %i.fl                    ; 2 uses
  %i.fn = add i32 %i.fm, %i.bo
  %i.fo = icmp slt i32 %i.fn, %i.fm
  %i.fp = add i32 %i.fk, %i.bo
  %i.fq = icmp slt i32 %i.fp, %i.fk
  %i.fr = add i32 %i.fj, %i.bo
  %i.fs = icmp slt i32 %i.fr, %i.fj
  %i.ft = add i32 %i.fh, %i.bo
  %i.fu = icmp slt i32 %i.ft, %i.fh
  %i.fv = add i32 %i.fg, %i.bo
  %i.fw = icmp slt i32 %i.fv, %i.fg
  %i.fx = or i1 %i.fo, %i.fq
  %i.fy = or i1 %i.fx, %i.fs
  %i.fz = or i1 %i.fy, %i.fu
  %i.ga = or i1 %i.fz, %i.fw
  br i1 %i.ga, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %.sroa.4.0.copyload, %scevgep61
  %bound1 = icmp ult ptr %scevgep59, %scevgep58.a
  %found.conflict = and i1 %bound0, %bound1
  %bound077 = icmp ult ptr %i.bj, %scevgep61
  %bound178 = icmp ult ptr %scevgep59, %scevgep62.a
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx = or i1 %found.conflict, %found.conflict79
  %bound080.a = icmp ult ptr %scevgep59, %scevgep65
  %bound181.a = icmp ult ptr %scevgep63, %scevgep61
  %found.conflict82.a = and i1 %bound080.a, %bound181.a
  %conflict.rdx83.a = or i1 %conflict.rdx, %found.conflict82.a
  %bound084.a = icmp ult ptr %scevgep59, %scevgep68.a
  %bound185.a = icmp ult ptr %scevgep66.a, %scevgep61
  %found.conflict86.a = and i1 %bound084.a, %bound185.a
  %conflict.rdx87.a = or i1 %conflict.rdx83.a, %found.conflict86.a
  %bound088 = icmp ult ptr %scevgep59, %scevgep72
  %bound189 = icmp ult ptr %scevgep70, %scevgep61
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx87.a, %found.conflict90
  %bound092 = icmp ult ptr %scevgep59, %scevgep76
  %bound193 = icmp ult ptr %scevgep74, %scevgep61
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  br i1 %conflict.rdx95, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gb = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11584, !alias.scope !11586, !noalias !11589
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = load double, ptr %i.bj, align 8, !tbaa !247, !alias.scope !11591, !noalias !11589
  %broadcast.splatinsert98 = insertelement <2 x double> poison, double %i.gc, i64 0
  %broadcast.splat99 = shufflevector <2 x double> %broadcast.splatinsert98, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gd = trunc i64 %index to i32
  %i.ge = add i32 %i.a, %i.gd                     ; 4 uses
  %i.gf = add i32 %invariant.op, %i.ge
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.gg ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gh, align 8, !tbaa !247, !alias.scope !11589, !noalias !11593
  %i.gi = fadd <2 x double> %wide.load, %broadcast.splat
  %i.gj = add i32 %i.fb, %i.ge                    ; 2 uses
  %i.gk = add i32 %i.gj, %i.ef
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.gl
  %wide.load96 = load <2 x double>, ptr %i.gm, align 8, !tbaa !247, !alias.scope !11598
  %i.gn = add i32 %i.gj, %i.eg
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.go
  %wide.load97 = load <2 x double>, ptr %i.gp, align 8, !tbaa !247, !alias.scope !11599
  %i.gq = fmul <2 x double> %wide.load97, splat (double 5.000000e-01)
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load96, <2 x double> splat (double 5.000000e-01), <2 x double> %i.gq)
  %i.gs = add i32 %i.eh, %i.ge                    ; 2 uses
  %.reass101 = add i32 %i.ge, %invariant.op100    ; 2 uses
  %i.gt = add i32 %i.gs, %i.fd
  %i.gu = add i32 %.reass101, %i.fd
  %i.gv = sext i32 %i.gt to i64
  %i.gw = sext i32 %i.gu to i64
  %i.gx = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gv
  %i.gy = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gw
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !247, !alias.scope !11600
  %i.ha = load double, ptr %i.gy, align 8, !tbaa !247, !alias.scope !11600
  %i.hb = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.ha, i64 1
  %i.hd = add i32 %i.gs, %i.fe
  %i.he = add i32 %.reass101, %i.fe
  %i.hf = sext i32 %i.hd to i64
  %i.hg = sext i32 %i.he to i64
  %i.hh = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.hf
  %i.hi = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.hg
  %i.hj = load double, ptr %i.hh, align 8, !tbaa !247, !alias.scope !11601
  %i.hk = load double, ptr %i.hi, align 8, !tbaa !247, !alias.scope !11601
  %i.hl = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.hk, i64 1
  %i.hn = fsub <2 x double> %i.hc, %i.hm
  %i.ho = fneg <2 x double> %i.hn
  %i.hp = fdiv <2 x double> %i.ho, %broadcast.splat99
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.gr, <2 x double> %i.hp)
  store <2 x double> %i.hq, ptr %i.gh, align 8, !tbaa !247, !alias.scope !11589, !noalias !11593
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %i.dl
  br i1 %i.hr, label %scalar.ph.preheader, label %vector.body, !llvm.loop !11602

._crit_edge32:                                    ; preds = %._crit_edge
  %i.hs = add i32 %.02234, 1                      ; 2 uses
  %exitcond40.not = icmp eq i32 %i.hs, %i.bn
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond40.not, label %._crit_edge36.split, label %.preheader25, !llvm.loop !11603

._crit_edge:                                      ; preds = %scalar.ph
  %exitcond39.not = icmp eq i32 %i.fc, %i.bm
  %indvar.next46 = add i32 %indvar45, 1
  br i1 %exitcond39.not, label %._crit_edge32, label %.preheader, !llvm.loop !11604

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ht = trunc i64 %indvars.iv to i32            ; 3 uses
  %.reass = add i32 %invariant.op, %i.ht
  %i.hu = sext i32 %.reass to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.hu ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !247
  %i.hx = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11584
  %i.hy = fadd double %i.hw, %i.hx
  %i.hz = add i32 %i.fb, %i.ht                    ; 2 uses
  %i.ia = add i32 %i.hz, %i.ef
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !247
  %i.ie = add i32 %i.hz, %i.eg
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !247
  %i.ii = fmul double %i.ih, 5.000000e-01
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.id, double 5.000000e-01, double %i.ii)
  %i.ik = add i32 %i.eh, %i.ht                    ; 2 uses
  %i.il = add i32 %i.ik, %i.fd
  %i.im = sext i32 %i.il to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.im
  %i.in = load double, ptr %gep, align 8, !tbaa !247
  %i.io = add i32 %i.ik, %i.fe
  %i.ip = sext i32 %i.io to i64
  %gep29 = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.ip
  %i.iq = load double, ptr %gep29, align 8, !tbaa !247
  %i.ir = fsub double %i.in, %i.iq
  %i.is = load double, ptr %i.bj, align 8, !tbaa !247
  %i.it = fneg double %i.ir
  %i.iu = fdiv double %i.it, %i.is
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.hy, double %i.ij, double %i.iu)
  store double %i.iv, ptr %i.hv, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bl, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !11605
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN4Adv51Y7DensupdILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.647, align 8  ; 20 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6187
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 2, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6187
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 2, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6187
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 2, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.v, align 8, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -1, ptr %i.t, align 8, !tbaa !12
  store i64 -2, ptr %i.f, align 8, !tbaa !12
  %i.w = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_14UpdateNotifierEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN4Adv51Y7DensupdILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 4 dereferenceable(28) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_19EngineWriteNotifierEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %i.y = load i32, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !6187 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ae) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !6187 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.am) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i:          ; preds = %bb.c, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i3.i, label %_ZN14ScalarCodeInfoILi3ELi2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.aw
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.au) #48
  br label %_ZN14ScalarCodeInfoILi3ELi2EED2Ev.exit

_ZN14ScalarCodeInfoILi3ELi2EED2Ev.exit:           ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN4Adv51Y7DensupdILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 4 dereferenceable(28) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.Interval.108, align 4        ; 3 uses
  %6 = alloca %class.INode, align 8               ; 11 uses
  %7 = alloca %class.Interval.108, align 4        ; 3 uses
  %8 = alloca %class.INode, align 8               ; 11 uses
  %9 = alloca %class.Field.563, align 8           ; 5 uses
  %10 = alloca %class.Field.563, align 8          ; 5 uses
  %11 = alloca %class.SimpleIntersector, align 8  ; 8 uses
  %12 = alloca %class.Interval.108, align 4       ; 9 uses
  %13 = alloca %struct.MultiArg2.648, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #47
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #45 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !6195
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr null, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.d, ptr %i.g, align 8, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.j = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.j, ptr %i.i, align 8, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load <2 x i32>, ptr %i.l, align 4, !tbaa !4
  store <2 x i32> %i.m, ptr %i.k, align 8, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1065
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.p = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #45 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 160 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESB_E3LocILi1EEEEEN4Adv51Z14Momentumflux2XILi3EEELi3E15EvaluateLocLoopISR_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSU_4sizeEERKT2_:bb.a
  store i32 0, ptr %i.an, align 8, !tbaa !2607
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ao, align 8, !tbaa !2854
  %i.ap = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !2856
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2XILi3EEELi3EEE, i64 16), ptr %i.ak, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEEEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(432) %i.ar, ptr noundef nonnull align 8 dereferenceable(432) %8)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 468
  store i32 %i.c, ptr %i.as, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 472
  store i32 %i.f, ptr %i.at, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 476
  store i32 %i.n, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 480
  store i32 %i.q, ptr %i.av, align 8, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 484
  store i32 %i.aa, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 488
  store i32 %i.ad, ptr %i.ax, align 8, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 496 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 536
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %i.ak, ptr %5, align 8, !tbaa !6328
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %5, ptr %6, align 8, !tbaa !6330
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #47, !inline_history !12029
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #47, !inline_history !12029
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bh) #47
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bi) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2XILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2XILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6427
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6187 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2XILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2XILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2XILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.833, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !9948
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !12030
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 468
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51Z14Momentumflux2XILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51Z14Momentumflux2XILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not35 = icmp sgt i32 %i.e, %i.m
  br i1 %.not35, label %._crit_edge38.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2332 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2332, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge38.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9948 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6419
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2989 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4  ; 5 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6419
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2989 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4  ; 5 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !9332
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9333
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !9331
  %i.ay = getelementptr inbounds [96 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3535 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4  ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !236
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ba, i64 %i.bh ; 6 uses
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 144    ; 3 uses
  %i.bk = zext i32 %i.a to i64                    ; 4 uses
  %i.bl = add i32 %i.g, %i.a
  %i.bm = add i32 %i.i, %i.c
  %i.bn = add i32 %i.k, %i.e
  %i.bo = add i32 %i.g, -1                        ; 5 uses
  %i.bp = mul i32 %i.e, %i.ai
  %i.bq = add i32 %i.a, %i.bp
  %i.br = mul i32 %i.c, %i.ag
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = mul i32 %i.e, %i.at
  %i.bu = add i32 %i.a, %i.bt
  %i.bv = mul i32 %i.c, %i.ar
  %i.bw = add i32 %i.bu, %i.bv                    ; 2 uses
  %i.bx = add i32 %i.bw, -1
  %i.by = mul i32 %i.c, %i.bc                     ; 2 uses
  %i.bz = add i32 %i.a, %i.by
  %i.ca = add i32 %i.e, 1
  %i.cb = mul i32 %i.be, %i.ca
  %i.cc = add i32 %i.bz, %i.cb
  %i.cd = mul i32 %i.e, %i.be
  %i.ce = add i32 %i.a, %i.cd
  %i.cf = add i32 %i.ce, %i.by
  %scevgep60.a = getelementptr i8, ptr %i.bi, i64 152
  %i.cg = mul i32 %i.e, %i.ai
  %i.ch = add i32 %i.a, %i.cg
  %i.ci = mul i32 %i.c, %i.ag
  %i.cj = add i32 %i.ch, %i.ci
  %i.ck = add i32 %i.g, -1
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 8                ; 3 uses
  %scevgep62.a = getelementptr i8, ptr %i.ae, i64 %i.cn
  %i.co = mul i32 %i.e, %i.at
  %i.cp = add i32 %i.a, %i.co
  %i.cq = mul i32 %i.c, %i.ar
  %i.cr = add i32 %i.cp, %i.cq                    ; 2 uses
  %i.cs = add i32 %i.cr, -1
  %scevgep65.a = getelementptr i8, ptr %i.ap, i64 %i.cn
  %scevgep68.a = getelementptr i8, ptr %i.ap, i64 %i.cn
  %i.ct = shl nsw i64 %i.bh, 3                    ; 3 uses
  %scevgep70 = getelementptr i8, ptr %i.ba, i64 %i.ct
  %i.cu = mul i32 %i.e, %i.be
  %i.cv = add i32 %i.a, %i.cu
  %i.cw = mul i32 %i.c, %i.bc                     ; 2 uses
  %i.cx = add i32 %i.cv, %i.cw
  %i.cy = mul nuw nsw i64 %i.cl, 24
  %i.cz = add nsw i64 %i.cy, %i.ct
  %i.da = add nsw i64 %i.cz, 8                    ; 2 uses
  %scevgep72 = getelementptr i8, ptr %i.ba, i64 %i.da
  %scevgep74 = getelementptr i8, ptr %i.ba, i64 %i.ct
  %i.db = add i32 %i.a, %i.cw
  %i.dc = add i32 %i.e, 1
  %i.dd = mul i32 %i.be, %i.dc
  %i.de = add i32 %i.db, %i.dd
  %scevgep76 = getelementptr i8, ptr %i.ba, i64 %i.da
  %i.df = add i32 %i.g, -1                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.df, 4
  %2 = and i32 %i.df, -2
  %i.dg = zext i32 %2 to i64                      ; 2 uses
  %i.dh = add nuw nsw i64 %i.bk, %i.dg
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34 ] ; 7 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.dy, %._crit_edge34 ] ; 4 uses
  %i.di = mul i32 %i.ai, %indvar
  %i.dj = add i32 %i.cj, %i.di
  %i.dk = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dl = add i32 %i.cs, %i.dk
  %i.dm = add i32 %i.cr, %i.dk
  %i.dn = mul i32 %i.be, %indvar                  ; 2 uses
  %i.do = add i32 %i.cx, %i.dn
  %i.dp = add i32 %i.de, %i.dn
  %i.dq = mul i32 %i.ai, %indvar
  %i.dr = add i32 %i.bs, %i.dq
  %i.ds = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dt = add i32 %i.bw, %i.ds
  %i.du = add i32 %i.bx, %i.ds
  %i.dv = mul i32 %i.be, %indvar                  ; 2 uses
  %i.dw = add i32 %i.cc, %i.dv
  %i.dx = add i32 %i.cf, %i.dv
  %i.dy = add nsw i32 %.02236, 1                  ; 3 uses
  %i.dz = mul nsw i32 %i.ai, %.02236
  %i.ea = mul nsw i32 %i.at, %.02236
  %i.eb = mul nsw i32 %i.be, %i.dy                ; 3 uses
  %i.ec = mul nsw i32 %i.be, %.02236              ; 3 uses
  br label %.preheader

._crit_edge38.split:                              ; preds = %._crit_edge34, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar47 = phi i32 [ 0, %.preheader25 ], [ %indvar.next48, %._crit_edge ] ; 7 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.hi, %._crit_edge ] ; 4 uses
  %i.ed = mul i32 %i.ag, %indvar47
  %i.ee = add i32 %i.dj, %i.ed
  %i.ef = sext i32 %i.ee to i64
  %i.eg = shl nsw i64 %i.ef, 3                    ; 2 uses
  %scevgep61.a = getelementptr i8, ptr %i.ae, i64 %i.eg ; 5 uses
  %scevgep63.a = getelementptr i8, ptr %scevgep62.a, i64 %i.eg ; 5 uses
  %i.eh = mul i32 %i.ar, %indvar47                ; 2 uses
  %i.ei = add i32 %i.dl, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 3                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.ap, i64 %i.ek
  %scevgep66 = getelementptr i8, ptr %scevgep65.a, i64 %i.ek
  %i.el = add i32 %i.dm, %i.eh
  %i.em = sext i32 %i.el to i64
  %i.en = shl nsw i64 %i.em, 3                    ; 2 uses
  %scevgep67.a = getelementptr i8, ptr %i.ap, i64 %i.en
  %scevgep69.a = getelementptr i8, ptr %scevgep68.a, i64 %i.en
  %i.eo = mul i32 %i.bc, %indvar47                ; 2 uses
  %i.ep = add i32 %i.do, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul nsw i64 %i.eq, 24                   ; 2 uses
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.er
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.er
  %i.es = add i32 %i.dp, %i.eo
  %i.et = sext i32 %i.es to i64
  %i.eu = mul nsw i64 %i.et, 24                   ; 2 uses
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.eu
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.eu
  %i.ev = mul nsw i32 %i.ag, %.02133
  %invariant.op = add i32 %i.ev, %i.dz            ; 2 uses
  %i.ew = mul nsw i32 %i.ar, %.02133
  %invariant.op28 = add i32 %i.ew, %i.ea          ; 2 uses
  %i.ex = mul nsw i32 %i.bc, %.02133              ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader
  %indvars.iv.ph = phi i64 [ %i.bk, %vector.memcheck ], [ %i.bk, %vector.scevcheck ], [ %i.bk, %.preheader ], [ %i.dh, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.preheader
  %i.ey = mul i32 %i.bc, %indvar47                ; 2 uses
  %i.ez = add i32 %i.dx, %i.ey                    ; 2 uses
  %i.fa = add i32 %i.dw, %i.ey                    ; 2 uses
  %i.fb = mul i32 %i.ar, %indvar47                ; 2 uses
  %i.fc = add i32 %i.du, %i.fb                    ; 2 uses
  %i.fd = add i32 %i.dt, %i.fb                    ; 2 uses
  %i.fe = mul i32 %i.ag, %indvar47
  %i.ff = add i32 %i.dr, %i.fe                    ; 2 uses
  %i.fg = add i32 %i.ff, %i.bo
  %i.fh = icmp slt i32 %i.fg, %i.ff
  %i.fi = add i32 %i.fd, %i.bo
  %i.fj = icmp slt i32 %i.fi, %i.fd
  %i.fk = add i32 %i.fc, %i.bo
  %i.fl = icmp slt i32 %i.fk, %i.fc
  %i.fm = add i32 %i.fa, %i.bo
  %i.fn = icmp slt i32 %i.fm, %i.fa
  %i.fo = add i32 %i.ez, %i.bo
  %i.fp = icmp slt i32 %i.fo, %i.ez
  %i.fq = or i1 %i.fh, %i.fj
  %i.fr = or i1 %i.fq, %i.fl
  %i.fs = or i1 %i.fr, %i.fn
  %i.ft = or i1 %i.fs, %i.fp
  br i1 %i.ft, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.bj, %scevgep63.a
  %bound1 = icmp ult ptr %scevgep61.a, %scevgep60.a
  %found.conflict = and i1 %bound0, %bound1
  %bound078 = icmp ult ptr %scevgep61.a, %scevgep66
  %bound179 = icmp ult ptr %scevgep64, %scevgep63.a
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx = or i1 %found.conflict, %found.conflict80
  %bound081.a = icmp ult ptr %scevgep61.a, %scevgep69.a
  %bound182.a = icmp ult ptr %scevgep67.a, %scevgep63.a
  %found.conflict83.a = and i1 %bound081.a, %bound182.a
  %conflict.rdx84.a = or i1 %conflict.rdx, %found.conflict83.a
  %bound085 = icmp ult ptr %scevgep61.a, %scevgep73
  %bound186 = icmp ult ptr %scevgep71, %scevgep63.a
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84.a, %found.conflict87
  %bound089 = icmp ult ptr %scevgep61.a, %scevgep77
  %bound190 = icmp ult ptr %scevgep75, %scevgep63.a
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fu = load double, ptr %i.bj, align 8, !tbaa !247, !alias.scope !12032, !noalias !12035
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op95 = add i32 1, %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fv = trunc i64 %index to i32
  %i.fw = add i32 %i.a, %i.fv                     ; 4 uses
  %i.fx = add i32 %invariant.op, %i.fw
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.fy ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fz, align 8, !tbaa !247, !alias.scope !12035, !noalias !12037
  %i.ga = add i32 %invariant.op28, %i.fw          ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.gb
  %wide.load93 = load <2 x double>, ptr %i.gc, align 8, !tbaa !247, !alias.scope !12042
  %i.gd = add i32 %i.ga, -1
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ge
  %wide.load94 = load <2 x double>, ptr %i.gf, align 8, !tbaa !247, !alias.scope !12043
  %i.gg = fmul <2 x double> %wide.load94, splat (double 5.000000e-01)
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load93, <2 x double> splat (double 5.000000e-01), <2 x double> %i.gg)
  %i.gi = add i32 %i.ex, %i.fw                    ; 2 uses
  %.reass96 = add i32 %i.fw, %invariant.op95      ; 2 uses
  %i.gj = add i32 %i.gi, %i.eb
  %i.gk = add i32 %.reass96, %i.eb
  %i.gl = sext i32 %i.gj to i64
  %i.gm = sext i32 %i.gk to i64
  %i.gn = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gl
  %i.go = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gm
  %i.gp = load double, ptr %i.gn, align 8, !tbaa !247, !alias.scope !12044
  %i.gq = load double, ptr %i.go, align 8, !tbaa !247, !alias.scope !12044
  %i.gr = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gs = insertelement <2 x double> %i.gr, double %i.gq, i64 1
  %i.gt = add i32 %i.gi, %i.ec
  %i.gu = add i32 %.reass96, %i.ec
  %i.gv = sext i32 %i.gt to i64
  %i.gw = sext i32 %i.gu to i64
  %i.gx = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gv
  %i.gy = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gw
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !247, !alias.scope !12045
  %i.ha = load double, ptr %i.gy, align 8, !tbaa !247, !alias.scope !12045
  %i.hb = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.ha, i64 1
  %i.hd = fsub <2 x double> %i.gs, %i.hc
  %i.he = fneg <2 x double> %i.hd
  %i.hf = fdiv <2 x double> %i.he, %broadcast.splat
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.gh, <2 x double> %i.hf)
  store <2 x double> %i.hg, ptr %i.fz, align 8, !tbaa !247, !alias.scope !12035, !noalias !12037
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %i.dg
  br i1 %i.hh, label %scalar.ph.preheader, label %vector.body, !llvm.loop !12046

._crit_edge34:                                    ; preds = %._crit_edge
  %exitcond42.not = icmp eq i32 %i.dy, %i.bn
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond42.not, label %._crit_edge38.split, label %.preheader25, !llvm.loop !12047

._crit_edge:                                      ; preds = %scalar.ph
  %i.hi = add i32 %.02133, 1                      ; 2 uses
  %exitcond41.not = icmp eq i32 %i.hi, %i.bm
  %indvar.next48 = add i32 %indvar47, 1
  br i1 %exitcond41.not, label %._crit_edge34, label %.preheader, !llvm.loop !12048

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hj = trunc i64 %indvars.iv to i32            ; 3 uses
  %.reass = add i32 %invariant.op, %i.hj
  %i.hk = sext i32 %.reass to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.hk ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !247
  %.reass29 = add i32 %invariant.op28, %i.hj      ; 2 uses
  %i.hn = sext i32 %.reass29 to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !247
  %i.hq = add i32 %.reass29, -1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !247
  %i.hu = fmul double %i.ht, 5.000000e-01
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hp, double 5.000000e-01, double %i.hu)
  %i.hw = add i32 %i.ex, %i.hj                    ; 2 uses
  %i.hx = add i32 %i.hw, %i.eb
  %i.hy = sext i32 %i.hx to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.hy
  %i.hz = load double, ptr %gep, align 8, !tbaa !247
  %i.ia = add i32 %i.hw, %i.ec
  %i.ib = sext i32 %i.ia to i64
  %gep31 = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.ib
  %i.ic = load double, ptr %gep31, align 8, !tbaa !247
  %i.id = fsub double %i.hz, %i.ic
  %i.ie = load double, ptr %i.bj, align 8, !tbaa !247
  %i.if = fneg double %i.id
  %i.ig = fdiv double %i.if, %i.ie
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.hv, double %i.ig)
  store double %i.ih, ptr %i.hl, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bl, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !12049
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESG_E3LocILi1EEEEEN4Adv51Z14Momentumflux2YILi3EEELi3E15EvaluateLocLoopISW_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.641, align 8  ; 21 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6187
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 3, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6187
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 3, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6187
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 3, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 1, ptr %i.w, align 4, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -1, ptr %i.t, align 8, !tbaa !12
  store i64 -2, ptr %i.f, align 8, !tbaa !12
  %i.x = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESC_E3LocILi1EEEE14UpdateNotifierEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESG_E3LocILi1EEEEEN4Adv51Z14Momentumflux2YILi3EEELi3E15EvaluateLocLoopISW_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSZ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 4 dereferenceable(28) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESC_E3LocILi1EEEE19EngineWriteNotifierEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %i.z = load i32, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !6187 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.af) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !6187 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ap
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.an) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i:          ; preds = %bb.c, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i3.i, label %_ZN14ScalarCodeInfoILi3ELi3EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ax
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.av) #48
  br label %_ZN14ScalarCodeInfoILi3ELi3EED2Ev.exit

_ZN14ScalarCodeInfoILi3ELi3EED2Ev.exit:           ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESG_E3LocILi1EEEEEN4Adv51Z14Momentumflux2YILi3EEELi3E15EvaluateLocLoopISW_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSZ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 4 dereferenceable(28) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.SimpleIntersector, align 8   ; 8 uses
  %6 = alloca %class.INode, align 8               ; 11 uses
  %7 = alloca %class.Interval.108, align 4        ; 9 uses
  %8 = alloca %struct.MultiArg3.723, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #45 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !6195
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr null, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.d, ptr %i.g, align 8, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.j = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.j, ptr %i.i, align 8, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load <2 x i32>, ptr %i.l, align 4, !tbaa !4
  store <2 x i32> %i.m, ptr %i.k, align 8, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1065
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.p = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #45 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 160 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !164
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store ptr null, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, i8 0, i64 144, i1 false)
end_hunk_6
begin_hunk_7_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESB_E3LocILi1EEEEEN4Adv51Z14Momentumflux2YILi3EEELi3E15EvaluateLocLoopISR_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSU_4sizeEERKT2_:bb.a
  store i32 0, ptr %i.an, align 8, !tbaa !2607
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ao, align 8, !tbaa !2854
  %i.ap = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !2856
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2YILi3EEELi3EEE, i64 16), ptr %i.ak, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEEEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(432) %i.ar, ptr noundef nonnull align 8 dereferenceable(432) %8)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 468
  store i32 %i.c, ptr %i.as, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 472
  store i32 %i.f, ptr %i.at, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 476
  store i32 %i.n, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 480
  store i32 %i.q, ptr %i.av, align 8, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 484
  store i32 %i.aa, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 488
  store i32 %i.ad, ptr %i.ax, align 8, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 496 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 536
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %i.ak, ptr %5, align 8, !tbaa !6328
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %5, ptr %6, align 8, !tbaa !6330
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #47, !inline_history !12076
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #47, !inline_history !12076
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bh) #47
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bi) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2YILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2YILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6427
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES7_E3LocILi1EEEE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6187 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2YILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2YILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S1_IS7_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullES8_E3LocILi1EEEEE15EvaluateLocLoopIN4Adv51Z14Momentumflux2YILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.836, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !9948
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !12077
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 468
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51Z14Momentumflux2YILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESA_E3LocILi1EEEEEN4Adv51Z14Momentumflux2YILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2330 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2330, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge36.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9948 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6419
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2989 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4  ; 5 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6419
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2989 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4  ; 5 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !9332
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9333
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !9331
  %i.ay = getelementptr inbounds [96 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3535 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4  ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !236
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ba, i64 %i.bh ; 6 uses
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 144    ; 3 uses
  %i.bk = zext i32 %i.a to i64                    ; 4 uses
  %i.bl = add i32 %i.g, %i.a
  %i.bm = add i32 %i.i, %i.c
  %i.bn = add i32 %i.k, %i.e
  %i.bo = add i32 %i.g, -1                        ; 5 uses
  %i.bp = mul i32 %i.e, %i.ai
  %i.bq = add i32 %i.a, %i.bp
  %i.br = mul i32 %i.c, %i.ag
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = mul i32 %i.e, %i.at
  %i.bu = add i32 %i.a, %i.bt                     ; 2 uses
  %i.bv = mul i32 %i.c, %i.ar
  %i.bw = add i32 %i.bu, %i.bv
  %i.bx = add i32 %i.c, -1
  %i.by = mul i32 %i.ar, %i.bx
  %i.bz = add i32 %i.bu, %i.by
  %i.ca = mul i32 %i.c, %i.bc                     ; 2 uses
  %i.cb = add i32 %i.a, %i.ca
  %i.cc = add i32 %i.e, 1
  %i.cd = mul i32 %i.be, %i.cc
  %i.ce = add i32 %i.cb, %i.cd
  %i.cf = mul i32 %i.e, %i.be
  %i.cg = add i32 %i.a, %i.cf
  %i.ch = add i32 %i.cg, %i.ca
  %scevgep58.a = getelementptr i8, ptr %i.bi, i64 152
  %i.ci = mul i32 %i.e, %i.ai
  %i.cj = add i32 %i.a, %i.ci
  %i.ck = mul i32 %i.c, %i.ag
  %i.cl = add i32 %i.cj, %i.ck
  %i.cm = add i32 %i.g, -1
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, 8                ; 3 uses
  %scevgep60.a = getelementptr i8, ptr %i.ae, i64 %i.cp
  %i.cq = mul i32 %i.e, %i.at
  %i.cr = add i32 %i.a, %i.cq                     ; 2 uses
  %i.cs = add i32 %i.c, -1
  %i.ct = mul i32 %i.ar, %i.cs
  %i.cu = add i32 %i.cr, %i.ct
  %scevgep63.a = getelementptr i8, ptr %i.ap, i64 %i.cp
  %i.cv = mul i32 %i.c, %i.ar
  %i.cw = add i32 %i.cr, %i.cv
  %scevgep66.a = getelementptr i8, ptr %i.ap, i64 %i.cp
  %i.cx = shl nsw i64 %i.bh, 3                    ; 3 uses
  %scevgep68 = getelementptr i8, ptr %i.ba, i64 %i.cx
  %i.cy = mul i32 %i.e, %i.be
  %i.cz = add i32 %i.a, %i.cy
  %i.da = mul i32 %i.c, %i.bc                     ; 2 uses
  %i.db = add i32 %i.cz, %i.da
  %i.dc = mul nuw nsw i64 %i.cn, 24
  %i.dd = add nsw i64 %i.dc, %i.cx
  %i.de = add nsw i64 %i.dd, 8                    ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.ba, i64 %i.de
  %scevgep72 = getelementptr i8, ptr %i.ba, i64 %i.cx
  %i.df = add i32 %i.a, %i.da
  %i.dg = add i32 %i.e, 1
  %i.dh = mul i32 %i.be, %i.dg
  %i.di = add i32 %i.df, %i.dh
  %scevgep74 = getelementptr i8, ptr %i.ba, i64 %i.de
  %i.dj = add i32 %i.g, -1                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.dj, 4
  %2 = and i32 %i.dj, -2
  %i.dk = zext i32 %2 to i64                      ; 2 uses
  %i.dl = add nuw nsw i64 %i.bk, %i.dk
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge32
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge32 ] ; 7 uses
  %.02234 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.ec, %._crit_edge32 ] ; 4 uses
  %i.dm = mul i32 %i.ai, %indvar
  %i.dn = add i32 %i.cl, %i.dm
  %i.do = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dp = add i32 %i.cu, %i.do
  %i.dq = add i32 %i.cw, %i.do
  %i.dr = mul i32 %i.be, %indvar                  ; 2 uses
  %i.ds = add i32 %i.db, %i.dr
  %i.dt = add i32 %i.di, %i.dr
  %i.du = mul i32 %i.ai, %indvar
  %i.dv = add i32 %i.bs, %i.du
  %i.dw = mul i32 %i.at, %indvar                  ; 2 uses
  %i.dx = add i32 %i.bw, %i.dw
  %i.dy = add i32 %i.bz, %i.dw
  %i.dz = mul i32 %i.be, %indvar                  ; 2 uses
  %i.ea = add i32 %i.ce, %i.dz
  %i.eb = add i32 %i.ch, %i.dz
  %i.ec = add i32 %.02234, 1                      ; 3 uses
  %i.ed = mul nsw i32 %i.ai, %.02234
  %i.ee = mul nsw i32 %i.at, %.02234              ; 2 uses
  %i.ef = mul nsw i32 %i.be, %i.ec                ; 3 uses
  %i.eg = mul nsw i32 %i.be, %.02234              ; 3 uses
  br label %.preheader

._crit_edge36.split:                              ; preds = %._crit_edge32, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar45 = phi i32 [ 0, %.preheader25 ], [ %indvar.next46, %._crit_edge ] ; 7 uses
  %.02131 = phi i32 [ %i.c, %.preheader25 ], [ %i.hp, %._crit_edge ] ; 5 uses
  %i.eh = mul i32 %i.ag, %indvar45
  %i.ei = add i32 %i.dn, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 3                    ; 2 uses
  %scevgep59.a = getelementptr i8, ptr %i.ae, i64 %i.ek ; 5 uses
  %scevgep61.a = getelementptr i8, ptr %scevgep60.a, i64 %i.ek ; 5 uses
  %i.el = mul i32 %i.ar, %indvar45                ; 2 uses
  %i.em = add i32 %i.dp, %i.el
  %i.en = sext i32 %i.em to i64
  %i.eo = shl nsw i64 %i.en, 3                    ; 2 uses
  %scevgep62 = getelementptr i8, ptr %i.ap, i64 %i.eo
  %scevgep64 = getelementptr i8, ptr %scevgep63.a, i64 %i.eo
  %i.ep = add i32 %i.dq, %i.el
  %i.eq = sext i32 %i.ep to i64
  %i.er = shl nsw i64 %i.eq, 3                    ; 2 uses
  %scevgep65.a = getelementptr i8, ptr %i.ap, i64 %i.er
  %scevgep67.a = getelementptr i8, ptr %scevgep66.a, i64 %i.er
  %i.es = mul i32 %i.bc, %indvar45                ; 2 uses
  %i.et = add i32 %i.ds, %i.es
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul nsw i64 %i.eu, 24                   ; 2 uses
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.ev
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.ev
  %i.ew = add i32 %i.dt, %i.es
  %i.ex = sext i32 %i.ew to i64
  %i.ey = mul nsw i64 %i.ex, 24                   ; 2 uses
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.ey
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.ey
  %i.ez = mul nsw i32 %i.ag, %.02131
  %invariant.op = add i32 %i.ez, %i.ed            ; 2 uses
  %i.fa = mul nsw i32 %i.ar, %.02131              ; 2 uses
  %i.fb = add nsw i32 %.02131, -1
  %i.fc = mul nsw i32 %i.ar, %i.fb                ; 2 uses
  %i.fd = mul nsw i32 %i.bc, %.02131              ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader
  %indvars.iv.ph = phi i64 [ %i.bk, %vector.memcheck ], [ %i.bk, %vector.scevcheck ], [ %i.bk, %.preheader ], [ %i.dl, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.preheader
  %i.fe = mul i32 %i.bc, %indvar45                ; 2 uses
  %i.ff = add i32 %i.eb, %i.fe                    ; 2 uses
  %i.fg = add i32 %i.ea, %i.fe                    ; 2 uses
  %i.fh = mul i32 %i.ar, %indvar45                ; 2 uses
  %i.fi = add i32 %i.dy, %i.fh                    ; 2 uses
  %i.fj = add i32 %i.dx, %i.fh                    ; 2 uses
  %i.fk = mul i32 %i.ag, %indvar45
  %i.fl = add i32 %i.dv, %i.fk                    ; 2 uses
  %i.fm = add i32 %i.fl, %i.bo
  %i.fn = icmp slt i32 %i.fm, %i.fl
  %i.fo = add i32 %i.fj, %i.bo
  %i.fp = icmp slt i32 %i.fo, %i.fj
  %i.fq = add i32 %i.fi, %i.bo
  %i.fr = icmp slt i32 %i.fq, %i.fi
  %i.fs = add i32 %i.fg, %i.bo
  %i.ft = icmp slt i32 %i.fs, %i.fg
  %i.fu = add i32 %i.ff, %i.bo
  %i.fv = icmp slt i32 %i.fu, %i.ff
  %i.fw = or i1 %i.fn, %i.fp
  %i.fx = or i1 %i.fw, %i.fr
  %i.fy = or i1 %i.fx, %i.ft
  %i.fz = or i1 %i.fy, %i.fv
  br i1 %i.fz, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.bj, %scevgep61.a
  %bound1 = icmp ult ptr %scevgep59.a, %scevgep58.a
  %found.conflict = and i1 %bound0, %bound1
  %bound076 = icmp ult ptr %scevgep59.a, %scevgep64
  %bound177 = icmp ult ptr %scevgep62, %scevgep61.a
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx = or i1 %found.conflict, %found.conflict78
  %bound079.a = icmp ult ptr %scevgep59.a, %scevgep67.a
  %bound180.a = icmp ult ptr %scevgep65.a, %scevgep61.a
  %found.conflict81.a = and i1 %bound079.a, %bound180.a
  %conflict.rdx82.a = or i1 %conflict.rdx, %found.conflict81.a
  %bound083 = icmp ult ptr %scevgep59.a, %scevgep71
  %bound184 = icmp ult ptr %scevgep69, %scevgep61.a
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %conflict.rdx82.a, %found.conflict85
  %bound087 = icmp ult ptr %scevgep59.a, %scevgep75
  %bound188 = icmp ult ptr %scevgep73, %scevgep61.a
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %conflict.rdx86, %found.conflict89
  br i1 %conflict.rdx90, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ga = load double, ptr %i.bj, align 8, !tbaa !247, !alias.scope !12079, !noalias !12082
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ga, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op93 = add i32 1, %i.fd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gb = trunc i64 %index to i32
  %i.gc = add i32 %i.a, %i.gb                     ; 4 uses
  %i.gd = add i32 %invariant.op, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ge ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gf, align 8, !tbaa !247, !alias.scope !12082, !noalias !12084
  %i.gg = add i32 %i.ee, %i.gc                    ; 2 uses
  %i.gh = add i32 %i.gg, %i.fa
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.gi
  %wide.load91 = load <2 x double>, ptr %i.gj, align 8, !tbaa !247, !alias.scope !12089
  %i.gk = add i32 %i.gg, %i.fc
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.gl
  %wide.load92 = load <2 x double>, ptr %i.gm, align 8, !tbaa !247, !alias.scope !12090
  %i.gn = fmul <2 x double> %wide.load92, splat (double 5.000000e-01)
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load91, <2 x double> splat (double 5.000000e-01), <2 x double> %i.gn)
  %i.gp = add i32 %i.fd, %i.gc                    ; 2 uses
  %.reass94 = add i32 %i.gc, %invariant.op93      ; 2 uses
  %i.gq = add i32 %i.gp, %i.ef
  %i.gr = add i32 %.reass94, %i.ef
  %i.gs = sext i32 %i.gq to i64
  %i.gt = sext i32 %i.gr to i64
  %i.gu = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gs
  %i.gv = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.gt
  %i.gw = load double, ptr %i.gu, align 8, !tbaa !247, !alias.scope !12091
  %i.gx = load double, ptr %i.gv, align 8, !tbaa !247, !alias.scope !12091
  %i.gy = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gx, i64 1
  %i.ha = add i32 %i.gp, %i.eg
  %i.hb = add i32 %.reass94, %i.eg
  %i.hc = sext i32 %i.ha to i64
  %i.hd = sext i32 %i.hb to i64
  %i.he = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.hc
  %i.hf = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.hd
  %i.hg = load double, ptr %i.he, align 8, !tbaa !247, !alias.scope !12092
  %i.hh = load double, ptr %i.hf, align 8, !tbaa !247, !alias.scope !12092
  %i.hi = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hj = insertelement <2 x double> %i.hi, double %i.hh, i64 1
  %i.hk = fsub <2 x double> %i.gz, %i.hj
  %i.hl = fneg <2 x double> %i.hk
  %i.hm = fdiv <2 x double> %i.hl, %broadcast.splat
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.go, <2 x double> %i.hm)
  store <2 x double> %i.hn, ptr %i.gf, align 8, !tbaa !247, !alias.scope !12082, !noalias !12084
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ho = icmp eq i64 %index.next, %i.dk
  br i1 %i.ho, label %scalar.ph.preheader, label %vector.body, !llvm.loop !12093

._crit_edge32:                                    ; preds = %._crit_edge
  %exitcond40.not = icmp eq i32 %i.ec, %i.bn
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond40.not, label %._crit_edge36.split, label %.preheader25, !llvm.loop !12094

._crit_edge:                                      ; preds = %scalar.ph
  %i.hp = add i32 %.02131, 1                      ; 2 uses
  %exitcond39.not = icmp eq i32 %i.hp, %i.bm
  %indvar.next46 = add i32 %indvar45, 1
  br i1 %exitcond39.not, label %._crit_edge32, label %.preheader, !llvm.loop !12095

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hq = trunc i64 %indvars.iv to i32            ; 3 uses
  %.reass = add i32 %invariant.op, %i.hq
  %i.hr = sext i32 %.reass to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.hr ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !247
  %i.hu = add i32 %i.ee, %i.hq                    ; 2 uses
  %i.hv = add i32 %i.hu, %i.fa
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !247
  %i.hz = add i32 %i.hu, %i.fc
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !247
  %i.id = fmul double %i.ic, 5.000000e-01
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.hy, double 5.000000e-01, double %i.id)
  %i.if = add i32 %i.fd, %i.hq                    ; 2 uses
  %i.ig = add i32 %i.if, %i.ef
  %i.ih = sext i32 %i.ig to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.ih
  %i.ii = load double, ptr %gep, align 8, !tbaa !247
  %i.ij = add i32 %i.if, %i.eg
  %i.ik = sext i32 %i.ij to i64
  %gep29 = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.ik
  %i.il = load double, ptr %gep29, align 8, !tbaa !247
  %i.im = fsub double %i.ii, %i.il
  %i.in = load double, ptr %i.bj, align 8, !tbaa !247
  %i.io = fneg double %i.im
  %i.ip = fdiv double %i.io, %i.in
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.ie, double %i.ip)
  store double %i.iq, ptr %i.hs, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bl, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !12096
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Z14Momentumflux2ZILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.641, align 8  ; 20 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6187
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 3, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6187
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 3, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6187
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 3, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -1, ptr %i.t, align 8, !tbaa !12
  store i64 -2, ptr %i.f, align 8, !tbaa !12
  %i.w = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_14UpdateNotifierEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Z14Momentumflux2ZILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 4 dereferenceable(28) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_19EngineWriteNotifierEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %i.y = load i32, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !6187 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ae) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !6187 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.am) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i:          ; preds = %bb.c, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i3.i, label %_ZN14ScalarCodeInfoILi3ELi3EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.aw
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.au) #48
  br label %_ZN14ScalarCodeInfoILi3ELi3EED2Ev.exit

_ZN14ScalarCodeInfoILi3ELi3EED2Ev.exit:           ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Z14Momentumflux2ZILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 4 dereferenceable(28) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.SimpleIntersector, align 8   ; 8 uses
  %6 = alloca %class.INode, align 8               ; 11 uses
  %7 = alloca %class.Interval.108, align 4        ; 9 uses
  %8 = alloca %struct.MultiArg3.642, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #45 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !6195
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr null, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.d, ptr %i.g, align 8, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.j = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.j, ptr %i.i, align 8, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load <2 x i32>, ptr %i.l, align 4, !tbaa !4
  store <2 x i32> %i.m, ptr %i.k, align 8, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1065
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.p = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #45 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 160 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !164
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store ptr null, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, i8 0, i64 144, i1 false)
  store ptr %i.r, ptr %i.t, align 8, !tbaa !45
end_hunk_7
