Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20230
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZNK4llvm17ARMTargetLowering17LowerBUILD_VECTORENS_7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE:bb.a
  br label %.critedge577

bb.bg:                                            ; preds = %bb.be, %.critedge575
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.as, %bb.af
  %i.mj = load i16, ptr %37, align 8, !tbaa !465  ; 3 uses
  %.not.i.i646 = icmp eq i16 %i.mj, 0
  br i1 %.not.i.i646, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i647

.split.i647:                                      ; preds = %bb.bh
  %i.mk = add i16 %i.mj, -163
  %spec.select.i.i.i = icmp ult i16 %i.mk, 53
  br i1 %spec.select.i.i.i, label %bb.bi, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.bh
  %i.ml = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  br i1 %i.ml, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i647
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i647
  %i.mm = zext i16 %i.mj to i64
  %i.mn = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.mm
  %i.mo = getelementptr i8, ptr %i.mn, i64 -2
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !62
  %i.mq = zext i16 %i.mp to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.bj:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.mr = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.bj
  %i.ms = phi i32 [ %i.mq, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.mr, %bb.bj ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %.not937.not = icmp eq i32 %i.ms, 0
  br i1 %.not937.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.mu = lshr i32 %i.ms, 1                       ; 2 uses
  %.sroa.17.0..sroa_idx788 = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %i.ms to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #38
  %i.mv = load ptr, ptr %i.mt, align 8, !tbaa !696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %i.mv, i64 16, i1 false), !tbaa.struct !736
  %i.mw = load ptr, ptr %52, align 8, !tbaa !602
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !355 ; 4 uses
  %i.mz = add i32 %i.my, -53
  %spec.select.i.i648.peel = icmp ult i32 %i.mz, 2
  br i1 %spec.select.i.i648.peel, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph
  switch i32 %i.my, label %bb.bl [
    i32 38, label %bb.bm
    i32 13, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.na = icmp eq i32 %i.my, 12
  %i.nb = icmp eq i32 %i.my, 37
  %spec.select.i.i.i.i.i.i.i.i649.peel = or i1 %i.na, %i.nb
  %spec.select578.peel = zext i1 %spec.select.i.i.i.i.i.i.i.i649.peel to i8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bk
  %.1554.peel = phi i8 [ 1, %bb.bk ], [ %spec.select578.peel, %bb.bl ], [ 1, %bb.bk ] ; 2 uses
  %i.nc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %51, ptr noundef nonnull align 8 dereferenceable(12) %52)
  %.fca.0.extract.i650.peel = extractvalue { ptr, i8 } %i.nc, 0
  %i.nd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i650.peel, i64 16 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !324
  %i.nf = add i32 %i.ne, 1                        ; 2 uses
  store i32 %i.nf, ptr %i.nd, align 4, !tbaa !324
  %i.ng = icmp ugt i32 %i.nf, %i.mu
  br i1 %i.ng, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.0772.0.copyload782.peel = load ptr, ptr %52, align 8, !tbaa !374
  %.sroa.17.0.copyload789.peel = load i32, ptr %.sroa.17.0..sroa_idx788, align 8, !tbaa !324
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %.lr.ph
  %.sroa.0772.1.peel = phi ptr [ null, %.lr.ph ], [ %.sroa.0772.0.copyload782.peel, %bb.bn ], [ null, %bb.bm ] ; 2 uses
  %.sroa.17.1.peel = phi i32 [ 0, %.lr.ph ], [ %.sroa.17.0.copyload789.peel, %bb.bn ], [ 0, %bb.bm ] ; 2 uses
  %.2555.peel = phi i8 [ 1, %.lr.ph ], [ %.1554.peel, %bb.bn ], [ %.1554.peel, %bb.bm ] ; 2 uses
  %.2552.peel = phi i1 [ false, %.lr.ph ], [ true, %bb.bn ], [ false, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  %exitcond.peel.not = icmp eq i32 %i.ms, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %bb.bt, %bb.bo
  %.sroa.0772.1.lcssa = phi ptr [ %.sroa.0772.1.peel, %bb.bo ], [ %.sroa.0772.1, %bb.bt ] ; 2 uses
  %.sroa.17.1.lcssa = phi i32 [ %.sroa.17.1.peel, %bb.bo ], [ %.sroa.17.1, %bb.bt ]
  %.2555.lcssa = phi i8 [ %.2555.peel, %bb.bo ], [ %.2555, %bb.bt ]
  %.2552.lcssa = phi i1 [ %.2552.peel, %bb.bo ], [ %.2552, %bb.bt ]
  %.2548.lcssa = phi i1 [ true, %bb.bo ], [ %.2548, %bb.bt ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %51, i64 16
  %.pre971 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !853 ; 3 uses
  %i.nh = trunc nuw i8 %.2555.lcssa to i1         ; 2 uses
  %.not568.not = icmp eq i32 %.pre971, 1          ; 3 uses
  %.not569 = icmp eq ptr %.sroa.0772.1.lcssa, null
  br i1 %.not569, label %bb.bu, label %bb.bx

.peel.next:                                       ; preds = %bb.bo, %bb.bt
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bt ], [ 1, %bb.bo ] ; 2 uses
  %.0546903 = phi i1 [ %.2548, %bb.bt ], [ true, %bb.bo ]
  %.0550902 = phi i1 [ %.2552, %bb.bt ], [ %.2552.peel, %bb.bo ] ; 2 uses
  %.0553901 = phi i8 [ %.2555, %bb.bt ], [ %.2555.peel, %bb.bo ] ; 4 uses
  %.sroa.17.0899 = phi i32 [ %.sroa.17.1, %bb.bt ], [ %.sroa.17.1.peel, %bb.bo ] ; 2 uses
  %.sroa.0772.0898 = phi ptr [ %.sroa.0772.1, %bb.bt ], [ %.sroa.0772.1.peel, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #38
  %i.ni = load ptr, ptr %i.mt, align 8, !tbaa !696
  %i.nj = getelementptr inbounds nuw [40 x i8], ptr %i.ni, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %i.nj, i64 16, i1 false), !tbaa.struct !736
  %i.nk = load ptr, ptr %52, align 8, !tbaa !602
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !355 ; 4 uses
  %i.nn = add i32 %i.nm, -53
  %spec.select.i.i648 = icmp ult i32 %i.nn, 2
  br i1 %spec.select.i.i648, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %.peel.next
  switch i32 %i.nm, label %bb.bq [
    i32 38, label %bb.br
    i32 13, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.no = icmp eq i32 %i.nm, 12
  %i.np = icmp eq i32 %i.nm, 37
  %spec.select.i.i.i.i.i.i.i.i649 = or i1 %i.no, %i.np
  %spec.select578 = select i1 %spec.select.i.i.i.i.i.i.i.i649, i8 %.0553901, i8 0
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bp, %bb.bq
  %.1554 = phi i8 [ %.0553901, %bb.bp ], [ %spec.select578, %bb.bq ], [ %.0553901, %bb.bp ] ; 2 uses
  %i.nq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %51, ptr noundef nonnull align 8 dereferenceable(12) %52)
  %.fca.0.extract.i650 = extractvalue { ptr, i8 } %i.nq, 0
  %i.nr = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i650, i64 16 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !324
  %i.nt = add i32 %i.ns, 1                        ; 2 uses
  store i32 %i.nt, ptr %i.nr, align 4, !tbaa !324
  %i.nu = icmp ugt i32 %i.nt, %i.mu
  br i1 %i.nu, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %.sroa.0772.0.copyload782 = load ptr, ptr %52, align 8, !tbaa !374
  %.sroa.17.0.copyload789 = load i32, ptr %.sroa.17.0..sroa_idx788, align 8, !tbaa !324
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %.peel.next
  %.sroa.0772.1 = phi ptr [ %.sroa.0772.0898, %.peel.next ], [ %.sroa.0772.0.copyload782, %bb.bs ], [ %.sroa.0772.0898, %bb.br ] ; 2 uses
  %.sroa.17.1 = phi i32 [ %.sroa.17.0899, %.peel.next ], [ %.sroa.17.0.copyload789, %bb.bs ], [ %.sroa.17.0899, %bb.br ] ; 2 uses
  %.2555 = phi i8 [ %.0553901, %.peel.next ], [ %.1554, %bb.bs ], [ %.1554, %bb.br ] ; 2 uses
  %.2552 = phi i1 [ %.0550902, %.peel.next ], [ true, %bb.bs ], [ %.0550902, %bb.br ] ; 2 uses
  %.2548 = phi i1 [ %.0546903, %.peel.next ], [ false, %bb.bs ], [ false, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !1350

bb.bu:                                            ; preds = %._crit_edge
  %i.nv = icmp eq i32 %.pre971, 0
  br i1 %i.nv, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nw = load ptr, ptr %51, align 8, !tbaa !854, !noalias !1361 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !855, !noalias !1361 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %51, i64 20
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !856, !noalias !1361 ; 2 uses
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.nw, i64 %i.ob ; 3 uses
  %.not.i.not.i.i = icmp eq i32 %i.oa, 0
  br i1 %.not.i.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.od = add nuw nsw i64 %i.ob, 31
  %i.oe = lshr i64 %i.od, 5                       ; 2 uses
  %i.of = load i32, ptr %i.ny, align 4, !tbaa !324, !noalias !1362 ; 2 uses
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.bw
  %i.oh = icmp eq i64 %i.oe, 1
  br i1 %i.oh, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit, label %.lr.ph1061

.lr.ph.i.i.i:                                     ; preds = %.lr.ph1061
  %i.oi = add nuw nsw i64 %i.ok, 1                ; 2 uses
  %i.oj = icmp eq i64 %i.oi, %i.oe
  br i1 %i.oj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit, label %.lr.ph1061, !llvm.loop !1355

.lr.ph1061:                                       ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.ok = phi i64 [ %i.oi, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !324, !noalias !1362 ; 2 uses
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !1355

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph1061
  %i.oo = mul i64 %i.ok, 768
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %bb.bw
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.bw ], [ %i.oo, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.of, %bb.bw ], [ %i.om, %._crit_edge.i.loopexit.i.i ]
  %i.op = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = getelementptr i8, ptr %i.nw, i64 %.012.lcssa.i.i.i
  %i.os = getelementptr [24 x i8], ptr %i.or, i64 %i.oq
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader, %bb.bv, %._crit_edge.i.i.i
  %storemerge16.i.i.i = phi ptr [ %i.oc, %bb.bv ], [ %i.os, %._crit_edge.i.i.i ], [ %i.oc, %.lr.ph.i.i.i.preheader ], [ %i.oc, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0772.0.copyload783 = load ptr, ptr %storemerge16.i.i.i, align 8, !tbaa !374
  %.sroa.17.0..sroa.0768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i, i64 8
  %.sroa.17.0.copyload790 = load i32, ptr %.sroa.17.0..sroa.0768.0..sroa_idx, align 8, !tbaa !324
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit, %._crit_edge
  %.sroa.0772.2 = phi ptr [ %.sroa.0772.1.lcssa, %._crit_edge ], [ %.sroa.0772.0.copyload783, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit ] ; 10 uses
  %.sroa.17.2 = phi i32 [ %.sroa.17.1.lcssa, %._crit_edge ], [ %.sroa.17.0.copyload790, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit ] ; 4 uses
  %i.ot = icmp eq i32 %.pre971, 0
  br i1 %i.ot, label %.thread, label %bb.by

.thread:                                          ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit, %bb.bu, %bb.bx
  %.sroa.0305.0.copyload = load i16, ptr %37, align 8, !tbaa !58
  %.sroa.2307.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.ou = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %19, i16 %.sroa.0305.0.copyload, ptr %.sroa.2307.0.copyload) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  %.fca.0.extract301 = extractvalue { ptr, i32 } %i.ou, 0
  %.fca.1.extract302 = extractvalue { ptr, i32 } %i.ou, 1
  br label %.loopexit

bb.by:                                            ; preds = %bb.bx
  br i1 %.2548.lcssa, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0772.2, i64 24
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !355
  %i.ox = icmp ne i32 %i.ow, 316
  %.not4.i651 = icmp eq ptr %.sroa.0772.2, null
  %.not.i652 = or i1 %.not4.i651, %i.ox
  br i1 %.not.i652, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0772.2, i64 32
  %i.oz = load i16, ptr %i.oy, align 8
  %i.pa = and i16 %i.oz, 3968
  %or.cond = icmp eq i16 %i.pa, 0
  br i1 %or.cond, label %bb.cd, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread

_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread: ; preds = %bb.bz, %bb.ca
  %i.pb = load i16, ptr %37, align 8, !tbaa !465  ; 2 uses
  %.not.i653 = icmp ne i16 %i.pb, 112
  %i.pc = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.pd = icmp ne ptr %i.pc, null
  %i.pe = select i1 %.not.i653, i1 true, i1 %i.pd
  br i1 %i.pe, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread
  %i.pf = getelementptr inbounds nuw i8, ptr %4, i64 389
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !199, !range !50, !noundef !51
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb, %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread
  store ptr %.sroa.0772.2, ptr %53, align 8, !tbaa !374
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i32 %.sroa.17.2, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !324
  %i.pi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 174, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 %i.pb, ptr %i.pc, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %53) #38 ; 2 uses
  %.fca.0.extract294 = extractvalue { ptr, i32 } %i.pi, 0
  %.fca.1.extract295 = extractvalue { ptr, i32 } %i.pi, 1
  br label %.loopexit

bb.cd:                                            ; preds = %bb.ca, %bb.cb, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  %i.pj = load i16, ptr %37, align 8, !tbaa !465  ; 4 uses
  %.not.i.i.i654 = icmp eq i16 %i.pj, 0
  br i1 %.not.i.i.i654, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i664, label %.split.i.i655

.split.i.i655:                                    ; preds = %bb.cd
  %i.pk = add i16 %i.pj, -19
  %spec.select.i.i.i.i656 = icmp ult i16 %i.pk, 197
  br i1 %spec.select.i.i.i.i656, label %bb.ce, label %bb.cg

_ZNK4llvm3EVT8isVectorEv.exit.i.i664:             ; preds = %bb.cd
  %i.pl = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  br i1 %i.pl, label %bb.cf, label %bb.cg

bb.ce:                                            ; preds = %.split.i.i655
  %i.pm = zext nneg i16 %i.pj to i64
  %i.pn = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 -2
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !58
  %i.pq = insertvalue { i16, ptr } poison, i16 %i.pp, 0
  %i.pr = insertvalue { i16, ptr } %i.pq, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i659

bb.cf:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i664
  %i.ps = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i659

bb.cg:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i664, %.split.i.i655
  %.sroa.31.0.copyload.i.i658 = load ptr, ptr %i.l, align 8, !tbaa !353
  %i.pt = insertvalue { i16, ptr } poison, i16 %i.pj, 0
  %i.pu = insertvalue { i16, ptr } %i.pt, ptr %.sroa.31.0.copyload.i.i658, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i659

_ZNK4llvm3EVT13getScalarTypeEv.exit.i659:         ; preds = %bb.cg, %bb.cf, %bb.ce
  %.fca.1.insert.merged.i.i660 = phi { i16, ptr } [ %i.pu, %bb.cg ], [ %i.pr, %bb.ce ], [ %i.ps, %bb.cf ] ; 2 uses
  %i.pv = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i660, 0 ; 3 uses
  store i16 %i.pv, ptr %18, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.px = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i660, 1
  store ptr %i.px, ptr %i.pw, align 8
  %.not.i.i661 = icmp eq i16 %i.pv, 0
  br i1 %.not.i.i661, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i659
  %i.py = zext i16 %i.pv to i64
  %i.pz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.py
  %i.qa = getelementptr i8, ptr %i.pz, i64 -16
  %.sroa.0.0.copyload.i.i.i662 = load i64, ptr %i.qa, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit665

bb.ci:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i659
  %i.qb = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %18) #39
  %i.qc = extractvalue { i64, i8 } %i.qb, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit665

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit665:     ; preds = %bb.ch, %bb.ci
  %.pn.i.i663 = phi i64 [ %.sroa.0.0.copyload.i.i.i662, %bb.ch ], [ %i.qc, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  %i.qd = trunc i64 %.pn.i.i663 to i32            ; 5 uses
  %i.qe = icmp ult i32 %i.qd, 33
  %or.cond22 = and i1 %.2552.lcssa, %i.qe
  br i1 %or.cond22, label %bb.cj, label %.critedge582

bb.cj:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit665
  br i1 %i.nh, label %bb.cu, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.0772.2, i64 24
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !355
  %i.qh = icmp eq i32 %i.qg, 164
  br i1 %i.qh, label %bb.cl, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread

bb.cl:                                            ; preds = %bb.ck
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0772.2, i64 40
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !696 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 40 ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !602 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 24
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !355
  switch i32 %i.qn, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.cl, %bb.cl
  %i.qo = load ptr, ptr %i.qj, align 8, !tbaa !602
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !737
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 48
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !352
  %i.qt = zext i32 %i.qq to i64
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %i.qs, i64 %i.qt ; 2 uses
  %.sroa.0.0.copyload.i.i666 = load i16, ptr %i.qu, align 8, !tbaa !58 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i667 = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %.sroa.21.0.copyload.i.i668 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i667, align 8, !tbaa !353
  %i.qv = load i16, ptr %37, align 8, !tbaa !465
  %.not.i671 = icmp ne i16 %i.qv, %.sroa.0.0.copyload.i.i666
  %i.qw = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.qx = icmp ne ptr %i.qw, %.sroa.21.0.copyload.i.i668
  %i.qy = select i1 %.not.i671, i1 true, i1 %i.qx
  br i1 %i.qy, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ql, i64 88
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !795
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rc = call noundef i64 @_ZNK4llvm5APInt15getLimitedValueEm(ptr noundef nonnull align 8 dereferenceable(12) %i.rb, i64 noundef -1)
  %i.rd = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %37)
  %i.re = zext i32 %i.rd to i64
  %i.rf = urem i64 %i.rc, %i.re                   ; 2 uses
  %.sroa.0281.0.copyload = load i16, ptr %37, align 8, !tbaa !58 ; 3 uses
  %.sroa.2283.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !353 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.rg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 %.sroa.0281.0.copyload, ptr %.sroa.2283.0.copyload) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  %.fca.0.extract271 = extractvalue { ptr, i32 } %i.rg, 0
  %.fca.1.extract272 = extractvalue { ptr, i32 } %i.rg, 1
end_hunk_0
