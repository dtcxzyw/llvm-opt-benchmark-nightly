Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StaleProfileMatching?download=true
inline.NumInlined: 3349
inline.NumDeleted: 1846
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm4bolt19transferEdgeWeightsERNS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEENS_15MutableArrayRefImEESK_RKNS7_21BinaryFunctionProfileE:bb.a
.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.thread
  %.sroa.057.0109 = phi ptr [ %i.ck, %.thread ], [ %i.h, %.lr.ph111.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.057.0109, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !719  ; 6 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph111
  %i.t = load i32, ptr %.sroa.061.0114, align 8, !tbaa !694 ; 2 uses
  %i.u = load i32, ptr %.sroa.057.0109, align 8, !tbaa !721 ; 2 uses
  br i1 %i.n, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = mul i32 %i.t, 37
  %.017.i.i = and i32 %i.o, %i.v                  ; 3 uses
  %i.w = zext i32 %.017.i.i to i64                ; 2 uses
  %i.x = lshr i64 %i.w, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !631
  %i.aa = and i32 %.017.i.i, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72, !prof !632

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = add nuw i32 %.018.i.i, 1
  %.0.i.i = and i32 %i.ad, %i.o                   ; 3 uses
  %i.ae = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !631
  %i.ai = and i32 %.0.i.i, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72, !prof !633

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %i.al = phi i64 [ %i.ae, %bb.e ], [ %i.w, %bb.d ]
  %.018.i.i = phi i32 [ %.0.i.i, %bb.e ], [ %.017.i.i, %bb.d ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !631
  %i.ao = icmp eq i32 %i.t, %i.an
  br i1 %i.ao, label %bb.f, label %bb.e, !prof !259

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ap, align 8
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72: ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.1.i77 = phi ptr [ null, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.f ], [ null, %bb.e ] ; 7 uses
  %i.aq = mul i32 %i.u, 37
  %.017.i.i40 = and i32 %i.o, %i.aq               ; 3 uses
  %i.ar = zext i32 %.017.i.i40 to i64             ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !631
  %i.av = and i32 %.017.i.i40, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph.i.i45, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread, !prof !632

bb.g:                                             ; preds = %.lr.ph.i.i45
  %i.ay = add nuw i32 %.018.i.i46, 1
  %.0.i.i47 = and i32 %i.ay, %i.o                 ; 3 uses
  %i.az = zext i32 %.0.i.i47 to i64               ; 2 uses
  %i.ba = lshr i64 %i.az, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !631
  %i.bd = and i32 %.0.i.i47, 31
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i.i45, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread, !prof !633

.lr.ph.i.i45:                                     ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72, %bb.g
  %i.bg = phi i64 [ %i.az, %bb.g ], [ %i.ar, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72 ]
  %.018.i.i46 = phi i32 [ %.0.i.i47, %bb.g ], [ %.017.i.i40, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72 ]
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !631
  %i.bj = icmp eq i32 %i.u, %i.bi
  br i1 %i.bj, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51, label %bb.g, !prof !259

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread: ; preds = %bb.g, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72
  %.not100 = icmp eq ptr %.sroa.0.1.i77, null
  br i1 %.not100, label %.thread, label %.thread.sink.split

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51: ; preds = %.lr.ph.i.i45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.0.0.copyload.i48 = load ptr, ptr %i.bk, align 8 ; 4 uses
  %i.bl = icmp ne ptr %.sroa.0.1.i77, null        ; 2 uses
  %i.bm = icmp ne ptr %.sroa.0.0.copyload.i48, null ; 3 uses
  %or.cond = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i77, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !258 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i77, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !258 ; 2 uses
  %.not99104 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not99104, label %.split92.thread133, label %.lr.ph

.split92.thread133:                               ; preds = %bb.h
  %i.br = load i64, ptr %.sroa.0.1.i77, align 8, !tbaa !204
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, %i.r
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !24
  br label %.split92._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.bv = load i64, ptr %.sroa.0.0.copyload.i48, align 8, !tbaa !204
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.052.0105, i64 8 ; 2 uses
  %.not99 = icmp eq ptr %i.bw, %i.bq
  br i1 %.not99, label %._crit_edge.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.052.0105 = phi ptr [ %i.bo, %.lr.ph ], [ %i.bw, %bb.i ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.052.0105, align 8, !tbaa !247 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !239
  %.not = icmp eq i64 %i.bz, %i.bv
  br i1 %.not, label %.split, label %bb.i

.split:                                           ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.r, ptr %i.ca, align 8, !tbaa !722
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i8 0, ptr %i.cb, align 8, !tbaa !227
  br label %.split92

._crit_edge.thread:                               ; preds = %bb.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51
  br i1 %i.bl, label %.split92, label %bb.k

.split92:                                         ; preds = %.split, %._crit_edge.thread
  %i.cc = load i64, ptr %.sroa.0.1.i77, align 8, !tbaa !204
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !24
  %i.cf = add i64 %i.ce, %i.r
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !24
  br i1 %i.bm, label %.split92._crit_edge, label %.thread

.split92._crit_edge:                              ; preds = %.split92.thread133, %.split92
  %.pre = load i64, ptr %i.q, align 8, !tbaa !719
  br label %.thread.sink.split

bb.k:                                             ; preds = %._crit_edge.thread
  br i1 %i.bm, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.k, %.split92._crit_edge, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread
  %.sroa.0.1.i77.sink = phi ptr [ %.sroa.0.1.i77, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread ], [ %.sroa.0.0.copyload.i48, %.split92._crit_edge ], [ %.sroa.0.0.copyload.i48, %bb.k ]
  %.sink142 = phi ptr [ %1, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread ], [ %3, %.split92._crit_edge ], [ %3, %bb.k ]
  %.sink141 = phi i64 [ %i.r, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread ], [ %.pre, %.split92._crit_edge ], [ %i.r, %bb.k ]
  %i.cg = load i64, ptr %.sroa.0.1.i77.sink, align 8, !tbaa !204
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sink142, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !24
  %i.cj = add i64 %i.ci, %.sink141
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !24
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.c, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread, %.split92, %bb.k, %.lr.ph111
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.057.0109, i64 24 ; 2 uses
  %.not98 = icmp eq ptr %i.ck, %i.j
  br i1 %.not98, label %._crit_edge112, label %.lr.ph111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !210    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210  ; 2 uses
  %.not18 = icmp eq ptr %i.a, %i.c
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.b ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.020 = phi i64 [ %.1, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.sroa.010.019 = phi ptr [ %i.q, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = load i64, ptr %.sroa.010.019, align 8, !tbaa !204 ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.019, i64 16
  store i8 0, ptr %i.k, align 8, !tbaa !202
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.m = icmp ult i64 %i.f, %i.i
  %.val = load i64, ptr %i.l, align 8
  %i.n = load i64, ptr %i.e, align 8
  %5 = select i1 %i.m, i64 %.val, i64 %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.019, i64 8
  store i64 %5, ptr %i.o, align 8, !tbaa !195
  %i.p = add i64 %.020, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.lr.ph._crit_edge
  %.1 = phi i64 [ %i.p, %.lr.ph._crit_edge ], [ %.020, %.lr.ph ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.019, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4llvm4bolt12matchWeightsERNS0_13BinaryContextERKNS_11SmallVectorIPNS0_16BinaryBasicBlockELj0EEERKNS_4yaml4bolt21BinaryFunctionProfileERNS_12FlowFunctionENS0_12HashFunctionERNS_8DenseMapIjPSB_NS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSI_EEEERKNS0_14BinaryFunctionENS_8ArrayRefISt4pairINS0_17YAMLProfileReader19InlineTreeNodeMapTyESt17reference_wrapperISB_EEEE(ptr noundef nonnull align 8 dereferenceable(2268) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(113) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(1360) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.583") align 8 captures(none) %7) local_unnamed_addr #3 {
bb.a:
  %8 = alloca %"struct.std::pair.514", align 8    ; 8 uses
  %9 = alloca %"class.llvm::DenseMap.584", align 8 ; 6 uses
  %10 = alloca %"class.llvm::ArrayRef.582", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZN4llvm4bolt11initMatcherERNS0_13BinaryContextERKNS0_14BinaryFunctionERKNS_11SmallVectorIPNS0_16BinaryBasicBlockELj0EEERNS_12FlowFunctionENS0_12HashFunctionE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.514") align 8 %8, ptr noundef nonnull align 8 dereferenceable(2268) %0, ptr noundef nonnull align 8 dereferenceable(1360) %6, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(56) %3, i8 noundef signext %4)
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !208    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 80                  ; 3 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #22
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #20 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !24
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !205 ; 2 uses
  %.pre44 = load ptr, ptr %3, align 8, !tbaa !208 ; 2 uses
  %.pre45 = ptrtoint ptr %.pre to i64
  %.pre46 = ptrtoint ptr %.pre44 to i64
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = sub i64 %.pre45, %.pre46
  %i.o = sdiv exact i64 %i.n, 80                  ; 3 uses
  %i.p = icmp ugt i64 %i.o, 1152921504606846975
  br i1 %i.p, label %bb.c, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #22
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14: ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.q = icmp eq ptr %.pre, %.pre44
  br i1 %i.q, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14
  %i.r = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.s = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #20 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.r, i1 false), !tbaa !24
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.o
  %i.u = ptrtoint ptr %i.t to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21:          ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14
  %.sroa.1143.06271 = phi i64 [ %i.m, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14 ], [ %i.m, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit ], [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.038.06370 = phi ptr [ %i.k, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14 ], [ %i.k, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14 ], [ %i.u, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit ], [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.032.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14 ], [ %i.s, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !296  ; 2 uses
  store ptr %i.v, ptr %10, align 8, !tbaa !723
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !292
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !725
  call void @_ZN4llvm4bolt11matchBlocksERNS0_13BinaryContextERKNS_4yaml4bolt21BinaryFunctionProfileENS0_12HashFunctionERNS_8DenseMapIjPS5_NS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEERNS0_12StaleMatcherENS_8ArrayRefINS0_16BlendedBlockHashEEENSK_ISt4pairINS0_17YAMLProfileReader19InlineTreeNodeMapTyESt17reference_wrapperIS5_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::DenseMap.584") align 8 %9, ptr noundef nonnull align 8 dereferenceable(2268) %0, ptr noundef nonnull align 8 dereferenceable(113) %2, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef.582") align 8 %10, ptr noundef nonnull byval(%"class.llvm::ArrayRef.583") align 8 %7)
  %i.ad = ptrtoint ptr %.sroa.038.06370 to i64
  %i.ae = ptrtoint ptr %.sroa.032.0 to i64
  call void @_ZN4llvm4bolt19transferEdgeWeightsERNS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEENS_15MutableArrayRefImEESK_RKNS7_21BinaryFunctionProfileE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %.sroa.038.06370, i64 poison, ptr %.sroa.032.0, i64 poison, ptr noundef nonnull align 8 dereferenceable(113) %2)
  %i.af = load ptr, ptr %3, align 8, !tbaa !210   ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !210 ; 2 uses
  %.not18.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not18.i, label %_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21, %bb.d
  %.020.i = phi i64 [ %.1.i, %bb.d ], [ 0, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21 ] ; 2 uses
  %.sroa.010.019.i = phi ptr [ %i.ar, %bb.d ], [ %i.af, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21 ] ; 4 uses
  %i.ah = load i64, ptr %.sroa.010.019.i, align 8, !tbaa !204 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.06370, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !24 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.032.0, i64 %i.ah ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %or.cond.i = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %or.cond.i, label %bb.d, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i, i64 16
  store i8 0, ptr %i.ao, align 8, !tbaa !202
  %11 = icmp ult i64 %i.aj, %i.am
  %.val.i = load i64, ptr %i.al, align 8
  %.val24.i = load i64, ptr %i.ai, align 8
  %12 = select i1 %11, i64 %.val.i, i64 %.val24.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i, i64 8
  store i64 %12, ptr %i.ap, align 8, !tbaa !195
  %i.aq = add i64 %.020.i, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph._crit_edge.i, %.lr.ph.i
  %.1.i = phi i64 [ %i.aq, %.lr.ph._crit_edge.i ], [ %.020.i, %.lr.ph.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i, i64 80 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, %i.ag
  br i1 %.not.i, label %_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_.exit, label %.lr.ph.i

_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_.exit: ; preds = %bb.d, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21
  %.0.lcssa.i = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21 ], [ %.1.i, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !674 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_.exit
  %i.av = load ptr, ptr %9, align 8, !tbaa !665
  %i.aw = zext i32 %i.at to i64                   ; 2 uses
  %i.ax = mul nuw nsw i64 %i.aw, 24
  %i.ay = add nuw nsw i64 %i.aw, 31
  %i.az = lshr i64 %i.ay, 3
  %i.ba = and i64 %i.az, 1073741820
  %i.bb = add nuw nsw i64 %i.ba, %i.ax
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.av, i64 noundef %i.bb, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit

_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit: ; preds = %_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %.not.i.i.i = icmp eq ptr %.sroa.032.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit
  %i.bc = sub i64 %.sroa.11.0, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.0, i64 noundef %i.bc) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit, %bb.f
  %.not.i.i.i22 = icmp eq ptr %.sroa.038.06370, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorImSaImEED2Ev.exit23, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.bd = sub i64 %.sroa.1143.06271, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.06370, i64 noundef %i.bd) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit23

_ZNSt6vectorImSaImEED2Ev.exit23:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.g
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !296 ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i24, label %_ZNSt4pairIN4llvm4bolt12StaleMatcherESt6vectorINS1_16BlendedBlockHashESaIS4_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit23
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !295
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #21
  br label %_ZNSt4pairIN4llvm4bolt12StaleMatcherESt6vectorINS1_16BlendedBlockHashESaIS4_EEED2Ev.exit

_ZNSt4pairIN4llvm4bolt12StaleMatcherESt6vectorINS1_16BlendedBlockHashESaIS4_EEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit23, %bb.h
  call void @_ZN4llvm4bolt12StaleMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(168) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret i64 %.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt27preprocessUnreachableBlocksERNS_12FlowFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.std::queue", align 8        ; 21 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !208    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 80                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  store i64 8, ptr %i.i, align 8, !tbaa !726
  %i.j = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20 ; 2 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !730
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20 ; 9 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !731
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  store ptr %i.k, ptr %i.n, align 8, !tbaa !732
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  store ptr %i.l, ptr %i.o, align 8, !tbaa !733
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !734
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 12 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !732
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  store ptr %i.l, ptr %i.t, align 8, !tbaa !733
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 8 uses
  store ptr %i.p, ptr %i.u, align 8, !tbaa !734
  store ptr %i.l, ptr %i.m, align 8, !tbaa !735
  store ptr %i.l, ptr %i.r, align 8, !tbaa !736
  %.not.i.i = icmp eq ptr %i.c, %i.d              ; 2 uses
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit68.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.v = add nsw i64 %i.h, 63                     ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = and i64 %i.w, 2305843009213693944
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20 ; 6 uses
  %i.z = lshr i64 %i.v, 6                         ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %.idx.i = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.y, i8 0, i64 %.idx.i, i1 false)
  %i.ab = load ptr, ptr %0, align 8, !tbaa !208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge49
  %i.ac = phi i64 [ 0, %.lr.ph ], [ %i.aj, %.critedge49 ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !258
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !258
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph180.preheader, label %.critedge49

.critedge49:                                      ; preds = %bb.b
  %i.aj = add nuw i64 %i.ac, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.h
  br i1 %exitcond.not, label %.lr.ph182.preheader, label %bb.b, !llvm.loop !737

.lr.ph180.preheader:                              ; preds = %bb.b
  store i64 %i.ac, ptr %i.l, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !736
  %i.al = sdiv i64 %i.ac, 64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.al
  %i.an = and i64 %i.ac, -9223372036854775745
  %i.ao = icmp ugt i64 %i.an, -9223372036854775808
  %storemerge.idx.i.i.i.i.i51 = select i1 %i.ao, i64 -8, i64 0
  %storemerge.i.i.i.i.i52 = getelementptr inbounds i8, ptr %i.am, i64 %storemerge.idx.i.i.i.i.i51 ; 2 uses
  %i.ap = and i64 %i.ac, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = load i64, ptr %storemerge.i.i.i.i.i52, align 8, !tbaa !24
  %i.as = or i64 %i.aq, %i.ar
  store i64 %i.as, ptr %storemerge.i.i.i.i.i52, align 8, !tbaa !24
  br label %.lr.ph180

.loopexit171.loopexit:                            ; preds = %bb.aa
  %.pre203 = load ptr, ptr %i.m, align 8, !tbaa !738
  br label %.loopexit171

.loopexit171:                                     ; preds = %.loopexit171.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.at = phi ptr [ %.pre203, %.loopexit171.loopexit ], [ %storemerge.i.i, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ] ; 2 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !738
  %i.av = icmp eq ptr %i.au, %i.at
  br i1 %i.av, label %.lr.ph182.preheader, label %.lr.ph180, !llvm.loop !739

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %.loopexit171
  %i.aw = phi ptr [ %i.at, %.loopexit171 ], [ %i.l, %.lr.ph180.preheader ] ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !740
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.not.i.i53 = icmp eq ptr %i.aw, %i.az
  br i1 %.not.i.i53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph180
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

bb.d:                                             ; preds = %.lr.ph180
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !741
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef 512) #21
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !742
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store ptr %i.bd, ptr %i.n, align 8, !tbaa !732
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !731 ; 3 uses
  store ptr %i.be, ptr %i.o, align 8, !tbaa !733
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  store ptr %i.bf, ptr %i.q, align 8, !tbaa !734
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit:        ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi ptr [ %i.ba, %bb.c ], [ %i.be, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.m, align 8, !tbaa !735
  %i.bg = load ptr, ptr %0, align 8, !tbaa !208
  %i.bh = getelementptr inbounds nuw [80 x i8], ptr %i.bg, i64 %i.ax ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !258 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !258 ; 2 uses
  %.not177 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not177, label %.loopexit171, label %.lr.ph179

.lr.ph179:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit, %bb.aa
  %.sroa.0146.0178 = phi ptr [ %i.fl, %bb.aa ], [ %i.bj, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ] ; 2 uses
  %i.bm = load ptr, ptr %.sroa.0146.0178, align 8, !tbaa !247
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
end_hunk_0
