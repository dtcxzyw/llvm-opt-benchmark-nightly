Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUCodeGenPrepare?download=true
inline.NumInlined: 4478
inline.NumDeleted: 2495
begin_hunk_0_@_ZN11VectorSlice12getSlicedValEPN4llvm10BasicBlockEPNS0_5ValueENS0_9StringRefE:bb.a

_ZN4llvm11SmallVectorIiLj4EED2Ev.exit:            ; preds = %._crit_edge, %bb.f
  %.pre27 = phi ptr [ %i.aw, %._crit_edge ], [ %.pre27.pre, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.j

.lr.ph:                                           ; preds = %bb.e, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.01525 = phi i32 [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ %i.an, %bb.e ] ; 3 uses
  %i.az = load i32, ptr %i.ak, align 8, !tbaa !93 ; 2 uses
  %i.ba = load i32, ptr %i.al, align 4, !tbaa !94
  %.not.i = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !51

bb.g:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %.01525)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bb = zext i32 %i.az to i64
  %i.bc = load ptr, ptr %7, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb
  store i32 %.01525, ptr %i.bd, align 1
  %i.be = load i32, ptr %i.ak, align 8, !tbaa !93
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.ak, align 8, !tbaa !93
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.g, %bb.h
  %i.bg = add nuw i32 %.01525, 1                  ; 2 uses
  %i.bh = load i32, ptr %i.am, align 8, !tbaa !400
  %i.bi = load i32, ptr %i.ag, align 4, !tbaa !401
  %i.bj = add i32 %i.bi, %i.bh
  %i.bk = icmp ult i32 %i.bg, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !758

bb.i:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !400
  %i.bn = zext i32 %i.bm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.bo, align 8, !tbaa !363
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.bp, align 1, !tbaa !364
  store ptr %3, ptr %9, align 8, !tbaa !172
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %4, ptr %i.bq, align 8, !tbaa !172
  %i.br = call noundef ptr @_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueEmRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull %2, i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(34) %9) ; 2 uses
  store ptr %i.br, ptr %i.d, align 8, !tbaa !171
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4llvm11SmallVectorIiLj4EED2Ev.exit
  %i.bs = phi ptr [ %i.br, %bb.i ], [ %.pre27, %_ZN4llvm11SmallVectorIiLj4EED2Ev.exit ]
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.0 = phi ptr [ %i.bs, %bb.j ], [ %i.e, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL15collectPHINodesRKN4llvm7PHINodeERNS_11SmallPtrSetIPS1_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !36, !noalias !761, !noundef !37
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !38, !noalias !761 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !96, !noalias !761 ; 4 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.f, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.j, %.critedge.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !97, !noalias !761
  %.not15.i.i = icmp eq ptr %i.i, %0
  br i1 %.not15.i.i, label %.loopexit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !95, !noalias !761
  %i.m = icmp ult i32 %i.f, %i.l
  br i1 %i.m, label %.critedge, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

.critedge:                                        ; preds = %._crit_edge.i.i
  %i.n = add nuw i32 %i.f, 1
  store i32 %i.n, ptr %i.e, align 4, !tbaa !96, !noalias !761
  store ptr %0, ptr %i.h, align 8, !tbaa !97, !noalias !761
  br label %bb.c

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.a
  %i.o = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull %0) #20, !noalias !761
  %i.p = extractvalue { ptr, i8 } %i.o, 1
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.critedge, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4              ; 3 uses
  %i.t = and i32 %i.s, 1073741824
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %0, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !142
  %.pre.i.i.i = and i32 %i.s, 268435455
  %.pre1.i.i.i = zext nneg i32 %.pre.i.i.i to i64
  br label %_ZNK4llvm7PHINode15incoming_valuesEv.exit

bb.e:                                             ; preds = %bb.c
  %i.w = and i32 %i.s, 268435455
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [32 x i8], ptr %0, i64 %i.y
  br label %_ZNK4llvm7PHINode15incoming_valuesEv.exit

_ZNK4llvm7PHINode15incoming_valuesEv.exit:        ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.v, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %.pre-phi2.i.i.i = phi i64 [ %.pre1.i.i.i, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  %.idx = shl nuw nsw i64 %.pre-phi2.i.i.i, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %.not41 = icmp eq i64 %.pre-phi2.i.i.i, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %_ZNK4llvm7PHINode15incoming_valuesEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.027.043 = load ptr, ptr %i.ac, align 8, !tbaa !142 ; 2 uses
  %.not3744 = icmp eq ptr %.sroa.027.043, null
  br i1 %.not3744, label %.loopexit, label %.lr.ph47

.lr.ph:                                           ; preds = %_ZNK4llvm7PHINode15incoming_valuesEv.exit, %bb.g
  %.042 = phi ptr [ %i.af, %bb.g ], [ %i.aa, %_ZNK4llvm7PHINode15incoming_valuesEv.exit ] ; 2 uses
  %i.ad = load ptr, ptr %.042, align 8, !tbaa !134 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !117
  %.not36 = icmp eq i8 %i.ae, 87
  br i1 %.not36, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZL15collectPHINodesRKN4llvm7PHINodeERNS_11SmallPtrSetIPS1_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.ab
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph47:                                         ; preds = %._crit_edge, %bb.i
  %.sroa.027.045 = phi ptr [ %.sroa.027.0, %bb.i ], [ %.sroa.027.043, %._crit_edge ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.027.045, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !762 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !117
  %.not39 = icmp eq i8 %i.ai, 87
  br i1 %.not39, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph47
  tail call fastcc void @_ZL15collectPHINodesRKN4llvm7PHINodeERNS_11SmallPtrSetIPS1_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph47
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.027.045, i64 8
  %.sroa.027.0 = load ptr, ptr %i.aj, align 8, !tbaa !142 ; 2 uses
  %.not37 = icmp eq ptr %.sroa.027.0, null
  br i1 %.not37, label %.loopexit, label %.lr.ph47

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.i, %._crit_edge, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL29isInterestingPHIIncomingValuePKN4llvm5ValueE(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.llvm::BitVector", align 8   ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 255
  %i.f = icmp ne i32 %i.e, 18
  %.not70 = icmp eq ptr %i.b, null
  %.not = or i1 %.not70, %i.f
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !384
  %.fr85 = freeze i32 %i.h                        ; 4 uses
  %i.i = add i32 %.fr85, 63                       ; 2 uses
  %i.j = lshr i32 %i.i, 6                         ; 3 uses
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.n, align 4, !tbaa !94
  %i.o = icmp ugt i32 %i.i, 447
  br i1 %i.o, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit:            ; preds = %bb.b
  store i32 0, ptr %i.m, align 8, !tbaa !93
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull %i.l, i64 noundef %i.k, i64 noundef 8) #20
  %i.p = load ptr, ptr %1, align 8, !tbaa !40
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZN4llvm9BitVectorC2Ejb.exit.sink.split:          ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit
  %.sink = phi ptr [ %i.p, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.l, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !415
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  store i32 %i.j, ptr %i.m, align 8, !tbaa !93
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %.fr85, ptr %i.q, align 8, !tbaa !764
  %i.r = load i8, ptr %0, align 8, !tbaa !117     ; 2 uses
  %.not7279 = icmp eq i8 %i.r, 94
  br i1 %.not7279, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorC2Ejb.exit
  %i.s = load ptr, ptr %1, align 8                ; 7 uses
  %i.t = lshr i32 %.fr85, 6                       ; 2 uses
  %.not19.i = icmp eq i32 %i.t, 0
  %wide.trip.count.i = zext nneg i32 %i.t to i64  ; 3 uses
  %i.u = and i32 %.fr85, 63                       ; 2 uses
  %.not12.not.i = icmp eq i32 %i.u, 0             ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %wide.trip.count.i ; 2 uses
  %i.w = zext nneg i32 %i.u to i64
  %notmask.i = shl nsw i64 -1, %i.w               ; 2 uses
  br i1 %.not19.i, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %.not12.not.i, label %.lr.ph.split.us91, label %.lr.ph.split

.lr.ph.split.us91:                                ; preds = %.lr.ph.split.preheader, %_ZNK4llvm9BitVector3allEv.exit.thread57.loopexit.us
  %.05080.us93 = phi ptr [ %15, %_ZNK4llvm9BitVector3allEv.exit.thread57.loopexit.us ], [ %0, %.lr.ph.split.preheader ] ; 3 uses
  %2 = getelementptr inbounds i8, ptr %.05080.us93, i64 -96
  %3 = getelementptr inbounds i8, ptr %.05080.us93, i64 -32
  %4 = load ptr, ptr %3, align 8, !tbaa !134      ; 3 uses
  %5 = load i8, ptr %4, align 8, !tbaa !117
  %.not74.us94 = icmp eq i8 %5, 5
  br i1 %.not74.us94, label %6, label %.thread

6:                                                ; preds = %.lr.ph.split.us91
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %9 = load i32, ptr %8, align 8, !tbaa !382
  %10 = icmp ult i32 %9, 65
  %11 = load ptr, ptr %7, align 8
  %spec.select.i.i36.us95 = select i1 %10, ptr %7, ptr %11
  %.0.i.i.us96 = load i64, ptr %spec.select.i.i36.us95, align 8, !tbaa !172 ; 3 uses
  %12 = load i32, ptr %i.g, align 8, !tbaa !384
  %13 = zext i32 %12 to i64
  %.not32.us97 = icmp ult i64 %.0.i.i.us96, %13
  br i1 %.not32.us97, label %14, label %.thread

14:                                               ; preds = %6
  %15 = load ptr, ptr %2, align 8, !tbaa !134     ; 4 uses
  %16 = load i8, ptr %15, align 8, !tbaa !117     ; 3 uses
  %17 = icmp ugt i8 %16, 29
  br i1 %17, label %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us98, label %.lr.ph.i.us

_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us98:     ; preds = %14
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %19 = load ptr, ptr %18, align 8, !tbaa !145
  %20 = getelementptr inbounds nuw i8, ptr %.05080.us93, i64 40
  %21 = load ptr, ptr %20, align 8, !tbaa !145
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %.lr.ph.i.us, label %.thread

.lr.ph.i.us:                                      ; preds = %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us98, %14
  %23 = and i64 %.0.i.i.us96, 63
  %24 = shl nuw i64 1, %23
  %25 = lshr i64 %.0.i.i.us96, 6
  %26 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %25 ; 2 uses
  %27 = load i64, ptr %26, align 8, !tbaa !415
  %28 = or i64 %27, %24
  store i64 %28, ptr %26, align 8, !tbaa !415
  br label %29

29:                                               ; preds = %32, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %32 ] ; 2 uses
  %30 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.us
  %31 = load i64, ptr %30, align 8, !tbaa !415
  %.not.i.us = icmp eq i64 %31, -1
  br i1 %.not.i.us, label %32, label %_ZNK4llvm9BitVector3allEv.exit.thread57.loopexit.us

32:                                               ; preds = %29
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %.thread, label %29, !llvm.loop !763

_ZNK4llvm9BitVector3allEv.exit.thread57.loopexit.us: ; preds = %29
  %.not72.us100 = icmp eq i8 %16, 94
  br i1 %.not72.us100, label %.lr.ph.split.us91, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not12.not.i, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.x = getelementptr inbounds i8, ptr %0, i64 -96
  %i.y = getelementptr inbounds i8, ptr %0, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !134  ; 3 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !117
  %.not74.us.us = icmp eq i8 %i.aa, 5
  br i1 %.not74.us.us, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph.split.us.split.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !382
  %i.ae = icmp ult i32 %i.ad, 65
  %i.af = load ptr, ptr %i.ab, align 8
  %spec.select.i.i36.us.us = select i1 %i.ae, ptr %i.ab, ptr %i.af
  %.0.i.i.us.us = load i64, ptr %spec.select.i.i36.us.us, align 8, !tbaa !172 ; 3 uses
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !384
  %i.ah = zext i32 %i.ag to i64
  %.not32.us.us = icmp ult i64 %.0.i.i.us.us, %i.ah
  br i1 %.not32.us.us, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !134 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !117
  %i.ak = icmp ugt i8 %i.aj, 29
  br i1 %i.ak, label %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us.us, label %._crit_edge.i.us.us

_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us.us:    ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !145
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !145
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %._crit_edge.i.us.us, label %.thread

._crit_edge.i.us.us:                              ; preds = %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us.us, %bb.d
  %i.aq = and i64 %.0.i.i.us.us, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = lshr i64 %.0.i.i.us.us, 6
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !415
  %i.av = or i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.at, align 8, !tbaa !415
  br label %.thread

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZNK4llvm9BitVector3allEv.exit.thread57.us
  %.05080.us = phi ptr [ %i.bh, %_ZNK4llvm9BitVector3allEv.exit.thread57.us ], [ %0, %.lr.ph.split.us ] ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.05080.us, i64 -96
  %i.ax = getelementptr inbounds i8, ptr %.05080.us, i64 -32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !134 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !117
  %.not74.us = icmp eq i8 %i.az, 5
  br i1 %.not74.us, label %bb.e, label %.thread

bb.e:                                             ; preds = %.lr.ph.split.us.split
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !382
  %i.bd = icmp ult i32 %i.bc, 65
  %i.be = load ptr, ptr %i.ba, align 8
  %spec.select.i.i36.us = select i1 %i.bd, ptr %i.ba, ptr %i.be
  %.0.i.i.us = load i64, ptr %spec.select.i.i36.us, align 8, !tbaa !172 ; 3 uses
  %i.bf = load i32, ptr %i.g, align 8, !tbaa !384
  %i.bg = zext i32 %i.bf to i64
  %.not32.us = icmp ult i64 %.0.i.i.us, %i.bg
  br i1 %.not32.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !134 ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !117 ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 29
  br i1 %i.bj, label %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us, label %._crit_edge.i.us

_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us:       ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !145
  %i.bm = getelementptr inbounds nuw i8, ptr %.05080.us, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !145
  %i.bo = icmp eq ptr %i.bl, %i.bn
  br i1 %i.bo, label %._crit_edge.i.us, label %.thread

._crit_edge.i.us:                                 ; preds = %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us, %bb.f
  %i.bp = and i64 %.0.i.i.us, 63
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = lshr i64 %.0.i.i.us, 6
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !415
  %i.bu = or i64 %i.bt, %i.bq
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !415
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !415
  %i.bw = xor i64 %i.bv, %notmask.i
  %.fr.us = freeze i64 %i.bw
  %i.bx = icmp eq i64 %.fr.us, -1
  br i1 %i.bx, label %.thread, label %_ZNK4llvm9BitVector3allEv.exit.thread57.us

_ZNK4llvm9BitVector3allEv.exit.thread57.us:       ; preds = %._crit_edge.i.us
  %.not72.us = icmp eq i8 %i.bi, 94
  br i1 %.not72.us, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNK4llvm9BitVector3allEv.exit.thread57
  %.05080 = phi ptr [ %i.cj, %_ZNK4llvm9BitVector3allEv.exit.thread57 ], [ %0, %.lr.ph.split.preheader ] ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.05080, i64 -96
  %i.bz = getelementptr inbounds i8, ptr %.05080, i64 -32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !134 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !117
  %.not74 = icmp eq i8 %i.cb, 5
  br i1 %.not74, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph.split
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !382
  %i.cf = icmp ult i32 %i.ce, 65
  %i.cg = load ptr, ptr %i.cc, align 8
  %spec.select.i.i36 = select i1 %i.cf, ptr %i.cc, ptr %i.cg
  %.0.i.i = load i64, ptr %spec.select.i.i36, align 8, !tbaa !172 ; 3 uses
  %i.ch = load i32, ptr %i.g, align 8, !tbaa !384
  %i.ci = zext i32 %i.ch to i64
  %.not32 = icmp ult i64 %.0.i.i, %i.ci
  br i1 %.not32, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cj = load ptr, ptr %i.by, align 8, !tbaa !134 ; 4 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !117 ; 3 uses
  %i.cl = icmp ugt i8 %i.ck, 29
  br i1 %i.cl, label %_ZL11areInSameBBPKN4llvm5ValueES2_.exit, label %.lr.ph.i

_ZL11areInSameBBPKN4llvm5ValueES2_.exit:          ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !145
  %i.co = getelementptr inbounds nuw i8, ptr %.05080, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !145
  %i.cq = icmp eq ptr %i.cn, %i.cp
  br i1 %i.cq, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %_ZL11areInSameBBPKN4llvm5ValueES2_.exit, %bb.h
  %i.cr = and i64 %.0.i.i, 63
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = lshr i64 %.0.i.i, 6
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ct ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !415
  %i.cw = or i64 %i.cv, %i.cs
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !415
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK4llvm9BitVector3allEv.exit, label %bb.j, !llvm.loop !763

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !415
  %.not.i = icmp eq i64 %i.cy, -1
  br i1 %.not.i, label %bb.i, label %_ZNK4llvm9BitVector3allEv.exit.thread57

_ZNK4llvm9BitVector3allEv.exit:                   ; preds = %bb.i
  %i.cz = load i64, ptr %i.v, align 8, !tbaa !415
  %i.da = xor i64 %i.cz, %notmask.i
  %.fr = freeze i64 %i.da
  %i.db = icmp eq i64 %.fr, -1
  br i1 %i.db, label %.thread, label %_ZNK4llvm9BitVector3allEv.exit.thread57

_ZNK4llvm9BitVector3allEv.exit.thread57:          ; preds = %bb.j, %_ZNK4llvm9BitVector3allEv.exit
  %.not72 = icmp eq i8 %i.ck, 94
  br i1 %.not72, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK4llvm9BitVector3allEv.exit.thread57, %_ZNK4llvm9BitVector3allEv.exit.thread57.loopexit.us, %_ZNK4llvm9BitVector3allEv.exit.thread57.us, %_ZN4llvm9BitVectorC2Ejb.exit
  %33 = phi i8 [ %i.r, %_ZN4llvm9BitVectorC2Ejb.exit ], [ %i.bi, %_ZNK4llvm9BitVector3allEv.exit.thread57.us ], [ %16, %_ZNK4llvm9BitVector3allEv.exit.thread57.loopexit.us ], [ %i.ck, %_ZNK4llvm9BitVector3allEv.exit.thread57 ] ; 2 uses
  %.050.lcssa = phi ptr [ %0, %_ZN4llvm9BitVectorC2Ejb.exit ], [ %i.bh, %_ZNK4llvm9BitVector3allEv.exit.thread57.us ], [ %15, %_ZNK4llvm9BitVector3allEv.exit.thread57.loopexit.us ], [ %i.cj, %_ZNK4llvm9BitVector3allEv.exit.thread57 ] ; 4 uses
  %i.dc = icmp ult i8 %33, 23
  br i1 %i.dc, label %.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %.not76 = icmp eq i8 %33, 95
  br i1 %.not76, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds i8, ptr %.050.lcssa, i64 -32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !134 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8, !tbaa !117 ; 2 uses
  %i.dg = icmp ult i8 %i.df, 23
  br i1 %i.dg, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds i8, ptr %.050.lcssa, i64 -64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !134 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !117
  %i.dk = icmp ugt i8 %i.dj, 29
  br i1 %i.dk, label %_ZL11areInSameBBPKN4llvm5ValueES2_.exit41, label %_ZL11areInSameBBPKN4llvm5ValueES2_.exit41.thread

_ZL11areInSameBBPKN4llvm5ValueES2_.exit41:        ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %.050.lcssa, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !145
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !145
  %i.dp = icmp eq ptr %i.dm, %i.do
  br i1 %i.dp, label %.thread, label %_ZL11areInSameBBPKN4llvm5ValueES2_.exit41.thread

_ZL11areInSameBBPKN4llvm5ValueES2_.exit41.thread: ; preds = %bb.m, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit41
  %i.dq = icmp ugt i8 %i.df, 29
  br i1 %i.dq, label %bb.n, label %.thread

bb.n:                                             ; preds = %_ZL11areInSameBBPKN4llvm5ValueES2_.exit41.thread
  %i.dr = getelementptr inbounds nuw i8, ptr %.050.lcssa, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !145
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !145
  %i.dv = icmp eq ptr %i.ds, %i.du
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm9BitVector3allEv.exit, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit, %bb.g, %.lr.ph.split, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us98, %6, %.lr.ph.split.us91, %32, %.lr.ph.split.us.split, %bb.e, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us, %._crit_edge.i.us, %.lr.ph.split.us.split.us, %bb.c, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us.us, %._crit_edge.i.us.us, %bb.k, %bb.n, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit41.thread, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit41, %bb.l, %._crit_edge
  %.5 = phi i1 [ true, %._crit_edge ], [ false, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit41.thread ], [ false, %bb.k ], [ true, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit41 ], [ true, %bb.l ], [ %i.dv, %bb.n ], [ false, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us ], [ true, %._crit_edge.i.us.us ], [ false, %bb.c ], [ false, %.lr.ph.split.us.split.us ], [ false, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us.us ], [ false, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit.us98 ], [ true, %32 ], [ false, %.lr.ph.split.us.split ], [ false, %bb.e ], [ true, %._crit_edge.i.us ], [ false, %.lr.ph.split.us91 ], [ false, %6 ], [ false, %bb.g ], [ true, %_ZNK4llvm9BitVector3allEv.exit ], [ false, %.lr.ph.split ], [ false, %_ZL11areInSameBBPKN4llvm5ValueES2_.exit ]
  %i.dw = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.l
  br i1 %i.dx, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.thread
  call void @free(ptr noundef %i.dw) #20
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %.thread, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZN4llvm9BitVectorD2Ev.exit
  %.6 = phi i1 [ %.5, %_ZN4llvm9BitVectorD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.6
}

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !99, !noalias !769 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108, !noalias !769 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !98, !noalias !769 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !391    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !48
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !49

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !391
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !51

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !48
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !52, !llvm.loop !16

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !441
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !107
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !51

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !441
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !108
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !99
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !48
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !48
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !107
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !391
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !391
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 0, ptr %i.bi, align 8, !tbaa !179
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99, !noalias !774 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108, !noalias !774 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !98, !noalias !774 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !391    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !48
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !49

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !391
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !51

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !52, !llvm.loop !16

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !441
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_7PHINodeEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.124", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
end_hunk_0
