Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StaleProfileMatching?download=true
inline.NumInlined: 3349
inline.NumDeleted: 1846
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm4bolt19transferEdgeWeightsERNS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEENS_15MutableArrayRefImEESK_RKNS7_21BinaryFunctionProfileE:bb.a
bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = add nuw i32 %.018.i.i, 1
  %.0.i.i = and i32 %i.ad, %i.o                   ; 3 uses
  %i.ae = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !341
  %i.ai = and i32 %.0.i.i, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72, !prof !343

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %i.al = phi i64 [ %i.ae, %bb.e ], [ %i.w, %bb.d ]
  %.018.i.i = phi i32 [ %.0.i.i, %bb.e ], [ %.017.i.i, %bb.d ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !341
  %i.ao = icmp eq i32 %i.t, %i.an
  br i1 %i.ao, label %bb.f, label %bb.e, !prof !243

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
  %i.au = load i32, ptr %i.at, align 4, !tbaa !341
  %i.av = and i32 %.017.i.i40, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph.i.i45, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread, !prof !342

bb.g:                                             ; preds = %.lr.ph.i.i45
  %i.ay = add nuw i32 %.018.i.i46, 1
  %.0.i.i47 = and i32 %i.ay, %i.o                 ; 3 uses
  %i.az = zext i32 %.0.i.i47 to i64               ; 2 uses
  %i.ba = lshr i64 %i.az, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !341
  %i.bd = and i32 %.0.i.i47, 31
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i.i45, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread, !prof !343

.lr.ph.i.i45:                                     ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72, %bb.g
  %i.bg = phi i64 [ %i.az, %bb.g ], [ %i.ar, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72 ]
  %.018.i.i46 = phi i32 [ %.0.i.i47, %bb.g ], [ %.017.i.i40, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit.thread72 ]
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !341
  %i.bj = icmp eq i32 %i.u, %i.bi
  br i1 %i.bj, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51, label %bb.g, !prof !243

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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !242 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i77, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !242 ; 2 uses
  %.not99104 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not99104, label %.split92.thread133, label %.lr.ph

.split92.thread133:                               ; preds = %bb.h
  %i.br = load i64, ptr %.sroa.0.1.i77, align 8, !tbaa !210
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !36
  %i.bu = add i64 %i.bt, %i.r
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !36
  br label %.split92._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.bv = load i64, ptr %.sroa.0.0.copyload.i48, align 8, !tbaa !210
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.052.0105, i64 8 ; 2 uses
  %.not99 = icmp eq ptr %i.bw, %i.bq
  br i1 %.not99, label %._crit_edge.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.052.0105 = phi ptr [ %i.bo, %.lr.ph ], [ %i.bw, %bb.i ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.052.0105, align 8, !tbaa !237 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !235
  %.not = icmp eq i64 %i.bz, %i.bv
  br i1 %.not, label %.split, label %bb.i

.split:                                           ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.r, ptr %i.ca, align 8, !tbaa !356
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i8 0, ptr %i.cb, align 8, !tbaa !229
  br label %.split92

._crit_edge.thread:                               ; preds = %bb.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51
  br i1 %i.bl, label %.split92, label %bb.k

.split92:                                         ; preds = %.split, %._crit_edge.thread
  %i.cc = load i64, ptr %.sroa.0.1.i77, align 8, !tbaa !210
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !36
  %i.cf = add i64 %i.ce, %i.r
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !36
  br i1 %i.bm, label %.split92._crit_edge, label %.thread

.split92._crit_edge:                              ; preds = %.split92.thread133, %.split92
  %.pre = load i64, ptr %i.q, align 8, !tbaa !816
  br label %.thread.sink.split

bb.k:                                             ; preds = %._crit_edge.thread
  br i1 %i.bm, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.k, %.split92._crit_edge, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread
  %.sroa.0.1.i77.sink = phi ptr [ %.sroa.0.1.i77, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread ], [ %.sroa.0.0.copyload.i48, %.split92._crit_edge ], [ %.sroa.0.0.copyload.i48, %bb.k ]
  %.sink142 = phi ptr [ %1, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread ], [ %3, %.split92._crit_edge ], [ %3, %bb.k ]
  %.sink141 = phi i64 [ %i.r, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread ], [ %.pre, %.split92._crit_edge ], [ %i.r, %bb.k ]
  %i.cg = load i64, ptr %.sroa.0.1.i77.sink, align 8, !tbaa !210
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sink142, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !36
  %i.cj = add i64 %i.ci, %.sink141
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !36
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.c, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E6lookupERKj.exit51.thread, %.split92, %bb.k, %.lr.ph111
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.057.0109, i64 24 ; 2 uses
  %.not98 = icmp eq ptr %i.ck, %i.j
  br i1 %.not98, label %._crit_edge112, label %.lr.ph111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !216    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !216  ; 2 uses
  %.not18 = icmp eq ptr %i.a, %i.c
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.b ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.020 = phi i64 [ %.1, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.sroa.010.019 = phi ptr [ %i.q, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = load i64, ptr %.sroa.010.019, align 8, !tbaa !210 ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.019, i64 16
  store i8 0, ptr %i.k, align 8, !tbaa !208
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.m = icmp ult i64 %i.f, %i.i
  %..i = select i1 %i.m, ptr %i.l, ptr %i.e
  %i.n = load i64, ptr %..i, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.019, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !207
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213  ; 4 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !214    ; 2 uses
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
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit:   ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %11 = shl nuw nsw i64 %i.h, 3                   ; 2 uses
  %12 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %12, i8 0, i64 %11, i1 false), !tbaa !36
  %13 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.h
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !213
  %.pre44 = load ptr, ptr %3, align 8, !tbaa !214
  %14 = ptrtoint ptr %13 to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %15 = phi ptr [ %i.c, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.pre44, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit ] ; 2 uses
  %16 = phi ptr [ %i.c, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.pre, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit ] ; 2 uses
  %.sroa.1143.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %14, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit ]
  %.sroa.038.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %12, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit ] ; 5 uses
  %.pre46 = ptrtoint ptr %16 to i64
  %i.j = ptrtoint ptr %15 to i64
  %i.k = sub i64 %.pre46, %i.j
  %i.l = sdiv exact i64 %i.k, 80                  ; 3 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %bb.c, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #22
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14: ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.n = icmp eq ptr %16, %15
  br i1 %i.n, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !36
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  %i.r = ptrtoint ptr %i.q to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21:          ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14 ], [ %i.r, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit ]
  %.sroa.032.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i14 ], [ %i.p, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !273  ; 2 uses
  store ptr %i.s, ptr %10, align 8, !tbaa !819
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !271
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  store i64 %i.z, ptr %i.t, align 8, !tbaa !820
  call void @_ZN4llvm4bolt11matchBlocksERNS0_13BinaryContextERKNS_4yaml4bolt21BinaryFunctionProfileENS0_12HashFunctionERNS_8DenseMapIjPS5_NS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEEERNS0_12StaleMatcherENS_8ArrayRefINS0_16BlendedBlockHashEEENSK_ISt4pairINS0_17YAMLProfileReader19InlineTreeNodeMapTyESt17reference_wrapperIS5_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::DenseMap.584") align 8 %9, ptr noundef nonnull align 8 dereferenceable(2268) %0, ptr noundef nonnull align 8 dereferenceable(113) %2, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef.582") align 8 %10, ptr noundef nonnull byval(%"class.llvm::ArrayRef.583") align 8 %7)
  %i.aa = ptrtoint ptr %.sroa.038.0 to i64
  %i.ab = ptrtoint ptr %.sroa.032.0 to i64
  call void @_ZN4llvm4bolt19transferEdgeWeightsERNS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEENS_15MutableArrayRefImEESK_RKNS7_21BinaryFunctionProfileE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %.sroa.038.0, i64 poison, ptr %.sroa.032.0, i64 poison, ptr noundef nonnull align 8 dereferenceable(113) %2)
  %i.ac = load ptr, ptr %3, align 8, !tbaa !216   ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !216 ; 2 uses
  %.not18.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not18.i, label %_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21, %bb.d
  %.020.i = phi i64 [ %.1.i, %bb.d ], [ 0, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21 ] ; 2 uses
  %.sroa.010.019.i = phi ptr [ %i.ap, %bb.d ], [ %i.ac, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21 ] ; 4 uses
  %i.ae = load i64, ptr %.sroa.010.019.i, align 8, !tbaa !210 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.0, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.032.0, i64 %i.ae
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %or.cond.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.d, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i, i64 16
  store i8 0, ptr %i.al, align 8, !tbaa !208
  %i.am = call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !207
  %i.ao = add i64 %.020.i, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph._crit_edge.i, %.lr.ph.i
  %.1.i = phi i64 [ %i.ao, %.lr.ph._crit_edge.i ], [ %.020.i, %.lr.ph.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i, i64 80 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, %i.ad
  br i1 %.not.i, label %_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_.exit, label %.lr.ph.i

_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_.exit: ; preds = %bb.d, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21
  %.0.lcssa.i = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit21 ], [ %.1.i, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !352 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_.exit
  %i.at = load ptr, ptr %9, align 8, !tbaa !350
  %i.au = zext i32 %i.ar to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit

_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit: ; preds = %_ZN4llvm4bolt15setBlockWeightsERNS_12FlowFunctionENS_8ArrayRefImEES4_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %.not.i.i.i = icmp eq ptr %.sroa.032.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit
  %i.ba = sub i64 %.sroa.11.0, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.0, i64 noundef %i.ba) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit, %bb.f
  %.not.i.i.i22 = icmp eq ptr %.sroa.038.0, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorImSaImEED2Ev.exit23, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.bb = sub i64 %.sroa.1143.0, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.0, i64 noundef %i.bb) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit23

_ZNSt6vectorImSaImEED2Ev.exit23:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.g
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !273 ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i24, label %_ZNSt4pairIN4llvm4bolt12StaleMatcherESt6vectorINS1_16BlendedBlockHashESaIS4_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit23
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !272
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #21
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !214    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 80                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  store i64 8, ptr %i.i, align 8, !tbaa !360
  %i.j = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20 ; 2 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !361
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20 ; 9 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !362
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  store ptr %i.k, ptr %i.n, align 8, !tbaa !363
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  store ptr %i.l, ptr %i.o, align 8, !tbaa !364
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !365
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 12 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !363
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  store ptr %i.l, ptr %i.t, align 8, !tbaa !364
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  store ptr %i.p, ptr %i.u, align 8, !tbaa !365
  store ptr %i.l, ptr %i.m, align 8, !tbaa !827
  store ptr %i.l, ptr %i.r, align 8, !tbaa !366
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
  %i.ab = load ptr, ptr %0, align 8, !tbaa !214
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge49
  %i.ac = phi i64 [ 0, %.lr.ph ], [ %i.aj, %.critedge49 ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !242
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !242
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph180.preheader, label %.critedge49

.critedge49:                                      ; preds = %bb.b
  %i.aj = add nuw i64 %i.ac, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.h
  br i1 %exitcond.not, label %.lr.ph182.preheader, label %bb.b, !llvm.loop !821

.lr.ph180.preheader:                              ; preds = %bb.b
  store i64 %i.ac, ptr %i.l, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !366
  %i.al = sdiv i64 %i.ac, 64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.al
  %i.an = and i64 %i.ac, -9223372036854775745
  %i.ao = icmp ugt i64 %i.an, -9223372036854775808
  %storemerge.idx.i.i.i.i.i51 = select i1 %i.ao, i64 -8, i64 0
  %storemerge.i.i.i.i.i52 = getelementptr inbounds i8, ptr %i.am, i64 %storemerge.idx.i.i.i.i.i51 ; 2 uses
  %i.ap = and i64 %i.ac, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = load i64, ptr %storemerge.i.i.i.i.i52, align 8, !tbaa !36
  %i.as = or i64 %i.aq, %i.ar
  store i64 %i.as, ptr %storemerge.i.i.i.i.i52, align 8, !tbaa !36
  br label %.lr.ph180

.loopexit171.loopexit:                            ; preds = %bb.aa
  %.pre203 = load ptr, ptr %i.m, align 8, !tbaa !367
  br label %.loopexit171

.loopexit171:                                     ; preds = %.loopexit171.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.at = phi ptr [ %.pre203, %.loopexit171.loopexit ], [ %storemerge.i.i, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ] ; 2 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !367
  %i.av = icmp eq ptr %i.au, %i.at
  br i1 %i.av, label %.lr.ph182.preheader, label %.lr.ph180, !llvm.loop !822

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %.loopexit171
  %i.aw = phi ptr [ %i.at, %.loopexit171 ], [ %i.l, %.lr.ph180.preheader ] ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !828
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.not.i.i53 = icmp eq ptr %i.aw, %i.az
  br i1 %.not.i.i53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph180
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

bb.d:                                             ; preds = %.lr.ph180
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !829
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef 512) #21
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !368
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store ptr %i.bd, ptr %i.n, align 8, !tbaa !363
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !362 ; 3 uses
  store ptr %i.be, ptr %i.o, align 8, !tbaa !364
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  store ptr %i.bf, ptr %i.q, align 8, !tbaa !365
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit:        ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi ptr [ %i.ba, %bb.c ], [ %i.be, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.m, align 8, !tbaa !827
  %i.bg = load ptr, ptr %0, align 8, !tbaa !214
  %i.bh = getelementptr inbounds nuw [80 x i8], ptr %i.bg, i64 %i.ax ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !242 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !242 ; 2 uses
  %.not177 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not177, label %.loopexit171, label %.lr.ph179

.lr.ph179:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit, %bb.aa
  %.sroa.0146.0178 = phi ptr [ %i.fj, %bb.aa ], [ %i.bj, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ] ; 2 uses
  %i.bm = load ptr, ptr %.sroa.0146.0178, align 8, !tbaa !237
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !235 ; 5 uses
  %i.bp = sdiv i64 %i.bo, 64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bp
  %i.br = and i64 %i.bo, -9223372036854775745
  %i.bs = icmp ugt i64 %i.br, -9223372036854775808
  %storemerge.idx.i.i.i.i.i54 = select i1 %i.bs, i64 -8, i64 0
  %storemerge.i.i.i.i.i55 = getelementptr inbounds i8, ptr %i.bq, i64 %storemerge.idx.i.i.i.i.i54 ; 3 uses
  %i.bt = and i64 %i.bo, 63
  %i.bu = shl nuw i64 1, %i.bt                    ; 2 uses
  %i.bv = load i64, ptr %storemerge.i.i.i.i.i55, align 8, !tbaa !36 ; 2 uses
  %i.bw = and i64 %i.bu, %i.bv
  %.not161 = icmp eq i64 %i.bw, 0
  br i1 %.not161, label %bb.e, label %bb.aa

bb.e:                                             ; preds = %.lr.ph179
  %i.bx = load ptr, ptr %i.r, align 8, !tbaa !366 ; 4 uses
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !830
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -8
  %.not.i.i58 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not.i.i58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.bo, ptr %i.bx, align 8, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit59

bb.g:                                             ; preds = %bb.e
  %i.cb = load ptr, ptr %i.s, align 8, !tbaa !363 ; 3 uses
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !363 ; 6 uses
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = icmp ne ptr %i.cb, null
  %.neg.i.i.i = sext i1 %i.ch to i64
  %i.ci = add nsw i64 %i.cg, %.neg.i.i.i
  %i.cj = shl nsw i64 %i.ci, 6
  %i.ck = load ptr, ptr %i.t, align 8, !tbaa !364
  %i.cl = ptrtoint ptr %i.bx to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  %i.cp = add nsw i64 %i.cj, %i.co
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !365
end_hunk_0
begin_hunk_1_@_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18growAndEmplaceBackIJS6_EEERS6_DpOT_:bb.a
  store ptr %i.y, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !190
  %i.af = load i64, ptr %i.z, align 8, !tbaa !194
  store i64 %i.af, ptr %i.x, align 8, !tbaa !194
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !191
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !191
  store ptr %i.z, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !190
  store i64 0, ptr %i.ag, align 8, !tbaa !191
  store i8 0, ptr %i.z, align 8, !tbaa !194
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1007

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !33  ; 3 uses
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !34 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.al = zext i32 %.pre3.i to i64
  %.idx2.i = shl nuw nsw i64 %i.al, 5
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.am, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !190 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !194
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.an
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1008

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.at = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i ] ; 2 uses
  %i.au = load i64, ptr %i.a, align 8, !tbaa !36
  %i.av = icmp eq ptr %i.at, %i.b
  br i1 %i.av, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE21takeAllocationForGrowEPS6_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit
  call void @free(ptr noundef %i.at) #19
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE21takeAllocationForGrowEPS6_m.exit

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE21takeAllocationForGrowEPS6_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !33
  %i.aw = trunc i64 %i.au to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !398
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !34
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.az, ptr %i.d, align 8, !tbaa !34
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %i.bc
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm5Timer9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !443, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !443, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !29
  %i.j = load i8, ptr %i.d, align 8, !range !29
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !444, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !444, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9MCOperandEEE11callback_fnIZNKS_4bolt14BinaryFunction18computeBlockHashesENSD_12HashFunctionEE3$_0EES6_lS9_"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #3 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.b = getelementptr i8, ptr %.val, i64 128
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !186
  tail call void @_ZN4llvm4bolt15hashInstOperandB5cxx11ERNS0_13BinaryContextERKNS_9MCOperandE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2268) %.val.val, ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  ret void
}

declare void @_ZN4llvm4bolt15hashInstOperandB5cxx11ERNS0_13BinaryContextERKNS_9MCOperandE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(2268), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !214    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #22
  unreachable

_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !241  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !239  ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EEC2EmRKS3_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit
  %i.z = icmp ugt i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.d, label %_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i.i, !prof !236

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #20
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !242
  %.pre29 = load ptr, ptr %i.t, align 8, !tbaa !242
  %.pre33 = ptrtoint ptr %.pre29 to i64
  br label %_ZNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit
  %.pre-phi = phi i64 [ %.pre33, %_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.ab = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.ac = phi ptr [ %i.aa, %_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.pre-phi34 = ptrtoint ptr %i.ab to i64
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !239
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !240
  %i.ag = sub i64 %.pre-phi, %.pre-phi34          ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 8
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !243

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EEC2EmRKS3_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ac, ptr align 8 %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2ERKS4_.exit.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EEC2EmRKS3_.exit.i.i
  %i.ai = icmp eq i64 %i.ag, 8
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2ERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !237
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !237
  br label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2ERKS4_.exit.i

_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 %i.ag
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !241
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !241 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !239 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %.not.i.i.i.i4.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i.i.i4.i, label %_ZNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EEC2EmRKS3_.exit.i6.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2ERKS4_.exit.i
  %i.at = icmp ugt i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.i, label %_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i5.i, !prof !236

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i5.i: ; preds = %bb.h
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #20
  %.pre30 = load ptr, ptr %i.am, align 8, !tbaa !242
  %.pre31 = load ptr, ptr %i.an, align 8, !tbaa !242
  %.pre37 = ptrtoint ptr %.pre31 to i64
  br label %_ZNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EEC2EmRKS3_.exit.i6.i

_ZNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EEC2EmRKS3_.exit.i6.i: ; preds = %_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i5.i, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2ERKS4_.exit.i
  %.pre-phi36 = phi i64 [ %.pre37, %_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i5.i ], [ %i.aq, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2ERKS4_.exit.i ]
  %i.av = phi ptr [ %.pre30, %_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i5.i ], [ %i.ap, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2ERKS4_.exit.i ] ; 3 uses
  %i.aw = phi ptr [ %i.au, %_ZNSt15__new_allocatorIPN4llvm8FlowJumpEE8allocateEmPKv.exit.i.i.i.i5.i ], [ null, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2ERKS4_.exit.i ] ; 5 uses
  %.pre-phi38 = ptrtoint ptr %i.av to i64
  store ptr %i.aw, ptr %i.al, align 8, !tbaa !239
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !240
  %i.ba = sub i64 %.pre-phi36, %.pre-phi38        ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, 8
  br i1 %i.bb, label %bb.j, label %bb.k, !prof !243

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EEC2EmRKS3_.exit.i6.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aw, ptr align 8 %i.av, i64 %i.ba, i1 false)
  br label %_ZN4llvm9FlowBlockC2ERKS0_.exit

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm8FlowJumpESaIS2_EEC2EmRKS3_.exit.i6.i
  %i.bc = icmp eq i64 %i.ba, 8
  br i1 %i.bc, label %bb.l, label %_ZN4llvm9FlowBlockC2ERKS0_.exit

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.av, align 8, !tbaa !237
  store ptr %i.bd, ptr %i.aw, align 8, !tbaa !237
  br label %_ZN4llvm9FlowBlockC2ERKS0_.exit

_ZN4llvm9FlowBlockC2ERKS0_.exit:                  ; preds = %bb.j, %bb.k, %bb.l
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 %i.ba
  store ptr %i.be, ptr %i.ax, align 8, !tbaa !241
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm9FlowBlockC2ERKS0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %i.p, %_ZN4llvm9FlowBlockC2ERKS0_.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i ], [ %i.c, %_ZN4llvm9FlowBlockC2ERKS0_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i, i64 32, i1 false), !alias.scope !1017
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !242, !alias.scope !1016
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !242, !alias.scope !1015
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !240, !alias.scope !1016
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false), !alias.scope !1016
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !239, !alias.scope !1016
  %i.bo = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !242, !alias.scope !1016
  %i.bp = insertelement <4 x ptr> poison, ptr %i.bm, i64 0
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %i.bn, i64 1
  %i.br = shufflevector <2 x ptr> %i.bo, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x ptr> %i.bq, <4 x ptr> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bs, ptr %i.bi, align 8, !tbaa !242, !alias.scope !1015
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false), !alias.scope !1016
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bt, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm9FlowBlockC2ERKS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN4llvm9FlowBlockC2ERKS0_.exit ], [ %i.bu, %.lr.ph.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.cl, %.lr.ph.i.i.i17 ], [ %i.bv, %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.ck, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i19, i64 32, i1 false), !alias.scope !1020
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !242, !alias.scope !1019
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !242, !alias.scope !1018
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !240, !alias.scope !1019
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false), !alias.scope !1019
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !239, !alias.scope !1019
  %i.cf = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !242, !alias.scope !1019
  %i.cg = insertelement <4 x ptr> poison, ptr %i.cd, i64 0
  %i.ch = insertelement <4 x ptr> %i.cg, ptr %i.ce, i64 1
  %i.ci = shufflevector <2 x ptr> %i.cf, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x ptr> %i.ch, <4 x ptr> %i.ci, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.cj, ptr %i.bz, align 8, !tbaa !242, !alias.scope !1018
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false), !alias.scope !1019
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 80 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 80 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ck, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !11

_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.bv, %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.cl, %.lr.ph.i.i.i17 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN4llvm9FlowBlockESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !215
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cp) #21
  br label %_ZNSt12_Vector_baseIN4llvm9FlowBlockESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvm9FlowBlockESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.m
  store ptr %i.p, ptr %0, align 8, !tbaa !214
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !213
  %i.cq = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !215
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !214    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #22
  unreachable

_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.r, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i8 0, i64 56, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i, i64 32, i1 false), !alias.scope !1029
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !242, !alias.scope !1028
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !242, !alias.scope !1027
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !240, !alias.scope !1028
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !1028
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !239, !alias.scope !1028
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !242, !alias.scope !1028
  %i.ad = insertelement <4 x ptr> poison, ptr %i.aa, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %i.ab, i64 1
  %i.af = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x ptr> %i.ae, <4 x ptr> %i.af, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ag, ptr %i.w, align 8, !tbaa !242, !alias.scope !1027
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !1028
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4llvm9FlowBlockESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ai, %.lr.ph.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.az, %.lr.ph.i.i.i16 ], [ %i.aj, %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  %.0911.i.i.i18 = phi ptr [ %i.ay, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN4llvm9FlowBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i17, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i18, i64 32, i1 false), !alias.scope !1032
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !242, !alias.scope !1031
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !242, !alias.scope !1030
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48
end_hunk_1
