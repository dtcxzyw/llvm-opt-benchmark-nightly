Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCollisionWorldImporter?download=true
inline.NumInlined: 1114
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN24btCollisionWorldImporter19createMeshInterfaceER27btStridingMeshInterfaceData:bb.a
.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aj
  %lcmp.mod469.not = icmp eq i64 %xtraiter468, 0
  br i1 %lcmp.mod469.not, label %.loopexit, label %.epil.preheader467

.epil.preheader467:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph226
  %indvars.iv253.epil.init = phi i64 [ 0, %.lr.ph226 ], [ %indvars.iv.next254.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod470 = trunc i32 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod470)
  %i.sr = getelementptr inbounds nuw [32 x i8], ptr %i.rr, i64 %indvars.iv253.epil.init ; 4 uses
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !167
  %i.st = getelementptr inbounds nuw [32 x i8], ptr %i.pv, i64 %indvars.iv253.epil.init ; 4 uses
  store double %i.ss, ptr %i.st, align 8, !tbaa !167
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.sv = load double, ptr %i.su, align 8, !tbaa !167
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store double %i.sv, ptr %i.sw, align 8, !tbaa !167
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !167
  %i.sz = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  store double %i.sy, ptr %i.sz, align 8, !tbaa !167
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sr, i64 24
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !167
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  store double %i.tb, ptr %i.tc, align 8, !tbaa !167
  br label %.loopexit

.loopexit.loopexit435.unr-lcssa:                  ; preds = %bb.ad
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %.loopexit, label %.epil.preheader458

.epil.preheader458:                               ; preds = %.loopexit.loopexit435.unr-lcssa, %.lr.ph224
  %indvars.iv248.epil.init = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next249.1, %.loopexit.loopexit435.unr-lcssa ] ; 2 uses
  %lcmp.mod461 = trunc i32 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod461)
  %i.td = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %indvars.iv248.epil.init ; 4 uses
  %i.te = load float, ptr %i.td, align 4, !tbaa !169
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %indvars.iv248.epil.init ; 4 uses
  store float %i.te, ptr %i.tf, align 4, !tbaa !169
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.th = load float, ptr %i.tg, align 4, !tbaa !169
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  store float %i.th, ptr %i.ti, align 4, !tbaa !169
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !169
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  store float %i.tk, ptr %i.tl, align 4, !tbaa !169
  %i.tm = getelementptr inbounds nuw i8, ptr %i.td, i64 12
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !169
  %i.to = getelementptr inbounds nuw i8, ptr %i.tf, i64 12
  store float %i.tn, ptr %i.to, align 4, !tbaa !169
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader458, %.loopexit.loopexit435.unr-lcssa, %.epil.preheader467, %.loopexit.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit
  %.sroa.37.0 = phi i32 [ 1, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit ], [ 0, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit ], [ 1, %.epil.preheader467 ], [ 1, %.loopexit.loopexit.unr-lcssa ], [ 0, %.loopexit.loopexit435.unr-lcssa ], [ 0, %.epil.preheader458 ]
  %.sroa.29.0 = phi i32 [ 32, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit ], [ 16, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit ], [ 32, %.epil.preheader467 ], [ 32, %.loopexit.loopexit.unr-lcssa ], [ 16, %.loopexit.loopexit435.unr-lcssa ], [ 16, %.epil.preheader458 ]
  %.sroa.26.0 = phi ptr [ %i.pv, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit ], [ %i.mz, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit ], [ %i.pv, %.epil.preheader467 ], [ %i.pv, %.loopexit.loopexit.unr-lcssa ], [ %i.mz, %.loopexit.loopexit435.unr-lcssa ], [ %i.mz, %.epil.preheader458 ] ; 2 uses
  %i.tp = icmp ne ptr %.sroa.12207.2, null
  %i.tq = icmp ne ptr %.sroa.26.0, null
  %or.cond = and i1 %i.tp, %i.tq
  br i1 %or.cond, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %.loopexit
  %i.tr = load i32, ptr %i.ab, align 4, !tbaa !267 ; 7 uses
  %i.ts = load i32, ptr %i.ac, align 8, !tbaa !268
  %i.tt = icmp eq i32 %i.tr, %i.ts
  br i1 %i.tt, label %bb.al, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

bb.al:                                            ; preds = %bb.ak
  %.not.i.i.i172 = icmp eq i32 %i.tr, 0
  %i.tu = shl nsw i32 %i.tr, 1
  %i.tv = select i1 %.not.i.i.i172, i32 1, i32 %i.tu ; 4 uses
  %i.tw = icmp slt i32 %i.tr, %i.tv
  br i1 %i.tw, label %bb.am, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i.i = icmp eq i32 %i.tv, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.tx = sext i32 %i.tv to i64
  %i.ty = mul nsw i64 %i.tx, 48
  %i.tz = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ty, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.ab, align 4, !tbaa !267
  br label %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i: ; preds = %bb.an, %bb.am
  %i.ua = phi i32 [ %.pre.i.i, %bb.an ], [ %i.tr, %bb.am ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.tz, %bb.an ], [ null, %bb.am ] ; 4 uses
  %i.ub = icmp sgt i32 %i.ua, 0
  br i1 %i.ub, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ua to i64 ; 2 uses
  %xtraiter474 = and i64 %wide.trip.count.i.i.i.i, 1
  %i.uc = icmp eq i32 %i.ua, 1
  br i1 %i.uc, label %.epil.preheader473, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter477 = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.ao ] ; 4 uses
  %niter478 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter478.next.1, %bb.ao ]
  %i.ud = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ue = load ptr, ptr %i.ad, align 8, !tbaa !269
  %i.uf = getelementptr inbounds nuw [48 x i8], ptr %i.ue, i64 %indvars.iv.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ud, ptr noundef nonnull align 8 dereferenceable(48) %i.uf, i64 48, i1 false), !tbaa.struct !471
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ug = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.uh = load ptr, ptr %i.ad, align 8, !tbaa !269
  %i.ui = getelementptr inbounds nuw [48 x i8], ptr %i.uh, i64 %indvars.iv.next.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ug, ptr noundef nonnull align 8 dereferenceable(48) %i.ui, i64 48, i1 false), !tbaa.struct !471
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter478.next.1 = add i64 %niter478, 2         ; 2 uses
  %niter478.ncmp.1 = icmp eq i64 %niter478.next.1, %unroll_iter477
  br i1 %niter478.ncmp.1, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !459

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod475.not = icmp eq i64 %xtraiter474, 0
  br i1 %lcmp.mod475.not, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i, label %.epil.preheader473

.epil.preheader473:                               ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod476 = trunc i32 %i.ua to i1
  tail call void @llvm.assume(i1 %lcmp.mod476)
  %i.uj = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.uk = load ptr, ptr %i.ad, align 8, !tbaa !269
  %i.ul = getelementptr inbounds nuw [48 x i8], ptr %i.uk, i64 %indvars.iv.i.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.uj, ptr noundef nonnull align 8 dereferenceable(48) %i.ul, i64 48, i1 false), !tbaa.struct !471
  br label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader473, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %i.um = load ptr, ptr %i.ad, align 8, !tbaa !269 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.um, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i
  %i.un = load i8, ptr %i.ae, align 8, !tbaa !270, !range !142, !noundef !150
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %i.uo, label %bb.aq, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.um)
  br label %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i
  store i8 1, ptr %i.ae, align 8, !tbaa !270
  store ptr %.0.i.i.i.i, ptr %i.ad, align 8, !tbaa !269
  store i32 %i.tv, ptr %i.ac, align 8, !tbaa !268
  %.pre2.i.i = load i32, ptr %i.ab, align 4, !tbaa !267
  br label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit: ; preds = %bb.ak, %bb.al, %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i
  %i.up = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i ], [ %i.tr, %bb.al ], [ %i.tr, %bb.ak ]
  %i.uq = load ptr, ptr %i.ad, align 8, !tbaa !269 ; 2 uses
  %i.ur = sext i32 %i.up to i64
  %i.us = getelementptr inbounds [48 x i8], ptr %i.uq, i64 %i.ur ; 8 uses
  store i32 %i.ai, ptr %i.us, align 8, !tbaa !166
  %.sroa.12207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store ptr %.sroa.12207.2, ptr %.sroa.12207.0..sroa_idx, align 8, !tbaa !159
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  store i32 %.sroa.17.2, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !166
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 20
  store i32 %i.ak, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !166
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  store ptr %.sroa.26.0, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !159
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 32
  store i32 %.sroa.29.0, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !166
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 36
  store i32 %.sroa.31.2, ptr %.sroa.31.0..sroa_idx, align 4, !tbaa !470
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 40
  store i32 %.sroa.37.0, ptr %.sroa.37.0..sroa_idx, align 8, !tbaa !470
  %i.ut = load i32, ptr %i.ab, align 4, !tbaa !267 ; 2 uses
  %i.uu = add nsw i32 %i.ut, 1
  store i32 %i.uu, ptr %i.ab, align 4, !tbaa !267
  %i.uv = sext i32 %i.ut to i64
  %i.uw = getelementptr inbounds [48 x i8], ptr %i.uq, i64 %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 36
  store i32 %.sroa.31.2, ptr %i.ux, align 4, !tbaa !473
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit, %.loopexit
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %i.uy = load i32, ptr %i.e, align 8, !tbaa !208
  %i.uz = sext i32 %i.uy to i64
  %i.va = icmp slt i64 %indvars.iv.next259, %i.uz
  br i1 %i.va, label %bb.b, label %._crit_edge, !llvm.loop !460
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN24btCollisionWorldImporter31createStridingMeshInterfaceDataEP27btStridingMeshInterfaceData(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1336) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !271
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !208  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.e, ptr %i.f, align 8, !tbaa !208
  %i.g = sext i32 %i.e to i64
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 56) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #28 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !209
  %i.m = icmp sgt i32 %i.e, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph.a

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !100  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !101
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit

bb.b:                                             ; preds = %._crit_edge
  %.not.i.i = icmp eq i32 %i.o, 0
  %i.s = shl nsw i32 %i.o, 1
  %i.t = select i1 %.not.i.i, i32 1, i32 %i.s     ; 4 uses
  %i.u = icmp slt i32 %i.o, %i.t
  br i1 %i.u, label %bb.c, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = sext i32 %i.t to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.w, i32 noundef 16)
  %.pre.i = load i32, ptr %i.n, align 4, !tbaa !100
  br label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.y = phi i32 [ %.pre.i, %bb.d ], [ %i.o, %bb.c ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.x, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !99 ; 9 uses
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %.0.i.i.i76 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.y to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 8
  %i.ad = sub i64 %i.ac, %.0.i.i.i76
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x ptr>, ptr %i.af, align 8, !tbaa !207
  %wide.load77 = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !207
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x ptr> %wide.load, ptr %i.ae, align 8, !tbaa !207
  store <2 x ptr> %wide.load77, ptr %i.ah, align 8, !tbaa !207
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !474

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.prol
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !207
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !207
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !475

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !207
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !207
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !207
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !207
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.1
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !207
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !207
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.2
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !207
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !207
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !476

_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !98, !range !142, !noundef !150
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.e, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ab)
  %.pre2.pre.pre.i = load i32, ptr %i.n, align 4, !tbaa !100
  br label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.y, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.e ], [ %i.y, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.bd, align 8, !tbaa !98
  store ptr %.0.i.i.i, ptr %i.aa, align 8, !tbaa !99
  store i32 %i.t, ptr %i.p, align 8, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit: ; preds = %._crit_edge, %bb.b, %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i
  %i.be = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i ], [ %i.o, %bb.b ], [ %i.o, %._crit_edge ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !99
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  store ptr %i.a, ptr %i.bi, align 8, !tbaa !207
  %i.bj = add nsw i32 %i.be, 1
  store i32 %i.bj, ptr %i.n, align 4, !tbaa !100
  ret ptr %i.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.bk = load ptr, ptr %1, align 8, !tbaa !209
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.bk, i64 %indvars.iv ; 10 uses
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %indvars.iv ; 15 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 52 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !263 ; 3 uses
  %i.bs = load <2 x i32>, ptr %i.bn, align 8, !tbaa !166
  store <2 x i32> %i.bs, ptr %i.bo, align 8, !tbaa !166
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !215
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.a
  %i.bu = sext i32 %i.br to i64
  %i.bv = icmp slt i32 %i.br, 0
  %i.bw = shl nsw i64 %i.bu, 4
  %i.bx = select i1 %i.bv, i64 -1, i64 %i.bw
  %i.by = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bx) #28 ; 2 uses
  store ptr %i.by, ptr %i.bm, align 8, !tbaa !215
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !215
  %i.ca = load i32, ptr %i.bq, align 4, !tbaa !263 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 4 %i.bz, i64 %i.cc, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.a
  store ptr null, ptr %i.bm, align 8, !tbaa !215
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cd = phi i32 [ %i.br, %bb.g ], [ %i.ca, %bb.f ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !216
  %.not56 = icmp eq ptr %i.cf, null
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = sext i32 %i.cd to i64
  %i.ch = icmp slt i32 %i.cd, 0
  %i.ci = shl nsw i64 %i.cg, 5
  %i.cj = select i1 %i.ch, i64 -1, i64 %i.ci
  %i.ck = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #28 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !216
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !216
  %i.cn = load i32, ptr %i.bq, align 4, !tbaa !263
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.cm, i64 %i.cp, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr null, ptr %i.cq, align 8, !tbaa !216
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cr = load i32, ptr %i.bo, align 8, !tbaa !262 ; 3 uses
  %i.cs = mul nsw i32 %i.cr, 3                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !217
  %.not57.not = icmp eq ptr %i.cu, null           ; 2 uses
  br i1 %.not57.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = sext i32 %i.cs to i64
  %i.cw = icmp slt i32 %i.cr, 0
  %i.cx = shl nsw i64 %i.cv, 2                    ; 2 uses
  %i.cy = select i1 %i.cw, i64 -1, i64 %i.cx
  %i.cz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cy) #28 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !217
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !217
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.db, i64 %i.cx, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr null, ptr %i.dc, align 8, !tbaa !217
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !218
  %.not58 = icmp eq ptr %i.de, null
  br i1 %.not58, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr null, ptr %i.df, align 8, !tbaa !218
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !219
  %.not59 = icmp eq ptr %i.dh, null
  br i1 %.not59, label %bb.p, label %.critedge

.thread:                                          ; preds = %bb.n
  %i.di = load i32, ptr %i.bo, align 8, !tbaa !262 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i32 %i.di, 0
  %i.dl = shl nsw i64 %i.dj, 3
  %i.dm = select i1 %i.dk, i64 -1, i64 %i.dl
  %i.dn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #28 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !218
  %i.dp = load ptr, ptr %i.dd, align 8, !tbaa !218
  %i.dq = load i32, ptr %i.bo, align 8, !tbaa !262
  %i.dr = sext i32 %i.dq to i64
  %i.ds = shl nsw i64 %i.dr, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dn, ptr align 2 %i.dp, i64 %i.ds, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !219
  %.not5966 = icmp eq ptr %i.du, null
  br i1 %.not5966, label %.thread68, label %.critedge

.thread68:                                        ; preds = %.thread
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr null, ptr %i.dv, align 8, !tbaa !219
  br label %bb.s

.critedge:                                        ; preds = %.thread, %bb.o
  %i.dw = phi ptr [ %i.dt, %.thread ], [ %i.dg, %bb.o ]
  %i.dx = sext i32 %i.cs to i64
  %i.dy = icmp slt i32 %i.cr, 0
  %i.dz = shl nsw i64 %i.dx, 2                    ; 2 uses
  %i.ea = select i1 %i.dy, i64 -1, i64 %i.dz
  %i.eb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ea) #28 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !219
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.eb, ptr align 2 %i.ed, i64 %i.dz, i1 false)
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr null, ptr %i.ee, align 8, !tbaa !219
  br i1 %.not57.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !220
  %.not60 = icmp eq ptr %i.eg, null
  br i1 %.not60, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = load i32, ptr %i.bo, align 8, !tbaa !262 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i32 %i.eh, 0
  %i.ek = shl nsw i64 %i.ei, 2
  %i.el = select i1 %i.ej, i64 -1, i64 %i.ek
  %i.em = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #28 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.em, ptr %i.en, align 8, !tbaa !220
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !220
  %i.ep = load i32, ptr %i.bo, align 8, !tbaa !262
  %i.eq = sext i32 %i.ep to i64
  %i.er = shl nsw i64 %i.eq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %i.eo, i64 %i.er, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %.thread68, %.critedge, %bb.q, %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr null, ptr %i.es, align 8, !tbaa !220
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.a, !llvm.loop !477
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN24btCollisionWorldImporter24getCollisionObjectByNameEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.btHashString, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !160
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.d, ptr %i.a, align 8, !tbaa !161
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !147
  %i.g = load i64, ptr %i.a, align 8, !tbaa !161
  store i64 %i.g, ptr %i.b, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !148
  store i8 %i.i, ptr %i.h, align 1, !tbaa !148
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !162
  %i.l = load ptr, ptr %2, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.n = load ptr, ptr %2, align 8, !tbaa !147    ; 5 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !148   ; 2 uses
  %.not11.i = icmp eq i8 %i.o, 0
  br i1 %.not11.i, label %_ZN12btHashStringC2EPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.e ]
  %i.p = phi i8 [ %i.u, %.lr.ph.i ], [ %i.o, %bb.e ]
  %.0912.i = phi i32 [ %i.s, %.lr.ph.i ], [ -2128831035, %bb.e ]
  %i.q = sext i8 %i.p to i32
  %i.r = xor i32 %.0912.i, %i.q
  %i.s = mul i32 %i.r, 16777619                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !148   ; 2 uses
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %_ZN12btHashStringC2EPKc.exit, label %.lr.ph.i, !llvm.loop !1

_ZN12btHashStringC2EPKc.exit:                     ; preds = %.lr.ph.i, %bb.e
  %.09.lcssa.i = phi i32 [ -2128831035, %bb.e ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.09.lcssa.i, ptr %i.v, align 8, !tbaa !164
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.x = load i32, ptr %i.w, align 8, !tbaa !85
  %i.y = add nsw i32 %i.x, -1
  %i.z = and i32 %i.y, %.09.lcssa.i               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !128
  %.not.i.i = icmp ult i32 %i.z, %i.ab
  br i1 %.not.i.i, label %bb.f, label %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit

bb.f:                                             ; preds = %_ZN12btHashStringC2EPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !127
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %.013.i.i = load i32, ptr %i.af, align 4, !tbaa !166 ; 3 uses
  %.not1114.i.i = icmp eq i32 %.013.i.i, -1
  br i1 %.not1114.i.i, label %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135 ; 2 uses
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !162
  %.fr21.i.i = freeze i64 %i.ai                   ; 3 uses
  %i.aj = icmp eq i64 %.fr21.i.i, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %i.aj, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i
  %.015.us.i.i = phi i32 [ %.0.us.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i ], [ %.013.i.i, %.lr.ph.i.i ]
  %i.am = sext i32 %.015.us.i.i to i64            ; 3 uses
  %i.an = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !162
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZNK9btHashMapI12btHashStringP17btCollisionObjectE9findIndexERKS0_.exit.i, label %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i

_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %.0.us.i.i = load i32, ptr %i.ar, align 4, !tbaa !166 ; 2 uses
  %.not11.us.i.i = icmp eq i32 %.0.us.i.i, -1
  br i1 %.not11.us.i.i, label %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !7

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i
  %.015.i.i = phi i32 [ %.0.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i ], [ %.013.i.i, %.lr.ph.i.i ]
  %i.as = sext i32 %.015.i.i to i64               ; 3 uses
  %i.at = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !162
  %i.aw = icmp eq i64 %.fr21.i.i, %i.av
  br i1 %i.aw, label %_ZNK12btHashString6equalsERKS_.exit.i.i, label %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i

_ZNK12btHashString6equalsERKS_.exit.i.i:          ; preds = %.lr.ph.split.i.i
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !147
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.n, ptr %i.ax, i64 %.fr21.i.i)
  %i.ay = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ay, label %_ZNK9btHashMapI12btHashStringP17btCollisionObjectE9findIndexERKS0_.exit.i, label %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i

_ZNK12btHashString6equalsERKS_.exit.thread12.i.i: ; preds = %_ZNK12btHashString6equalsERKS_.exit.i.i, %.lr.ph.split.i.i
  %i.az = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.as
  %.0.i.i = load i32, ptr %i.az, align 4, !tbaa !166 ; 2 uses
  %.not11.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not11.i.i, label %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit, label %.lr.ph.split.i.i, !llvm.loop !7

_ZNK9btHashMapI12btHashStringP17btCollisionObjectE9findIndexERKS0_.exit.i: ; preds = %_ZNK12btHashString6equalsERKS_.exit.i.i, %.lr.ph.split.us.i.i
  %.pre-phi.i = phi i64 [ %i.am, %.lr.ph.split.us.i.i ], [ %i.as, %_ZNK12btHashString6equalsERKS_.exit.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !83
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.pre-phi.i
  br label %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit

_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit: ; preds = %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i, %_ZNK9btHashMapI12btHashStringP17btCollisionObjectE9findIndexERKS0_.exit.i, %bb.f, %_ZN12btHashStringC2EPKc.exit
  %.0.i = phi ptr [ %i.bc, %_ZNK9btHashMapI12btHashStringP17btCollisionObjectE9findIndexERKS0_.exit.i ], [ null, %_ZN12btHashStringC2EPKc.exit ], [ null, %bb.f ], [ null, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i ], [ null, %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i ] ; 2 uses
  %i.bd = icmp eq ptr %i.n, %i.b
  br i1 %i.bd, label %_ZN12btHashStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit
  %i.be = load i64, ptr %i.b, align 8, !tbaa !148
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.bf) #24
  br label %_ZN12btHashStringD2Ev.exit

_ZN12btHashStringD2Ev.exit:                       ; preds = %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN12btHashStringD2Ev.exit
  %i.bg = load ptr, ptr %.0.i, align 8, !tbaa !171 ; 2 uses
  %.not9 = icmp eq ptr %i.bg, null
  br i1 %.not9, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZN12btHashStringD2Ev.exit
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ %i.bg, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN24btCollisionWorldImporter21createCollisionObjectERK11btTransformP16btCollisionShapePKc(ptr noundef nonnull align 8 dereferenceable(1336) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %class.btHashPtr, align 8           ; 4 uses
  %5 = alloca %struct.btHashString, align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.d = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 376, i32 noundef 16) ; 12 uses
  invoke void @_ZN17btCollisionObjectC1Ev(ptr noundef nonnull align 8 dereferenceable(372) %i.d)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 352 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !179
end_hunk_0
