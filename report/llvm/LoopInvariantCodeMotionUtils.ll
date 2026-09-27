Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopInvariantCodeMotionUtils?download=true
inline.NumInlined: 1372
inline.NumDeleted: 890
begin_hunk_0_@_ZN12_GLOBAL__N_115MatchingSubsets26populateSubsetOpsAtIterArgEN4mlir19LoopLikeOpInterfaceENS1_13BlockArgumentEb:.preheader
  br i1 %i.p, label %bb.a, label %.lr.ph.preheader

bb.a:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.b, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.u = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 49), i64 34) #15
  store ptr %i.v, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i

_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr %.sroa.01.0.copyload.i.i.i.i.i.i) #15, !inline_history !210
  br i1 %i.ab, label %_ZL22getSingleTerminatorUseN4mlir5ValueE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i
  %.sroa.063.0123.pre = load ptr, ptr %.sroa.070.0, align 8, !tbaa !73 ; 2 uses
  %.not124 = icmp eq ptr %.sroa.063.0123.pre, null
  br i1 %.not124, label %.thread96, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.i, %bb.d
  %.sroa.063.0127.ph = phi ptr [ %i.n, %_ZNK4mlir5Value9hasOneUseEv.exit.i ], [ %.sroa.063.0123.pre, %bb.d ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ar
  %.sroa.063.0127 = phi ptr [ %.sroa.063.0, %bb.ar ], [ %.sroa.063.0127.ph, %.lr.ph.preheader ] ; 15 uses
  %.sroa.067.0125 = phi ptr [ %.sroa.067.6.jt5, %bb.ar ], [ null, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.063.0127, i64 16 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 4 uses
  %i.ae = call noundef ptr @_ZN4mlir11OpInterfaceINS_19LoopLikeOpInterfaceENS_6detail34LoopLikeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %i.ad)
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZN4llvm20ValueFromPointerCastIN4mlir19LoopLikeOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = call noundef ptr @_ZN4mlir11OpInterfaceINS_19LoopLikeOpInterfaceENS_6detail34LoopLikeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.ad)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir19LoopLikeOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir19LoopLikeOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.f ], [ null, %bb.e ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.ad, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.ag, 1
  br label %_ZN4llvm8dyn_castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit

_ZN4llvm8dyn_castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit: ; preds = %.lr.ph, %_ZN4llvm20ValueFromPointerCastIN4mlir19LoopLikeOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir19LoopLikeOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 2 uses
  store ptr %i.ah, ptr %8, align 8
  %i.ai = extractvalue { ptr, ptr } %.pn.i.i, 1
  store ptr %i.ai, ptr %i.b, align 8
  %.not107 = icmp eq ptr %i.ah, null
  br i1 %.not107, label %bb.p, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit
  %i.aj = call { ptr, i64 } @_ZN4mlir19LoopLikeOpInterface15getInitsMutableEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #15 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 6 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1      ; 5 uses
  %.idx3.i.i = shl nuw nsw i64 %i.al, 5           ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx3.i.i
  %i.an = lshr i64 %i.al, 2                       ; 2 uses
  %.not.i.i38 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i38, label %._crit_edge.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ao = and i64 %.idx3.i.i, 9223372036854775680
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ak, i64 %i.ao
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i
  %.038.i.i.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02937.i.i.i.i.i = phi ptr [ %i.aw, %bb.h ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.ap = icmp eq ptr %.02937.i.i.i.i.i, %.sroa.063.0127
  %i.aq = getelementptr inbounds nuw i8, ptr %.02937.i.i.i.i.i, i64 32
  %i.ar = icmp eq ptr %i.aq, %.sroa.063.0127
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %.02937.i.i.i.i.i, i64 64
  %i.at = icmp eq ptr %i.as, %.sroa.063.0127
  %or.cond12.i = select i1 %or.cond.i, i1 true, i1 %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %.02937.i.i.i.i.i, i64 96
  %i.av = icmp eq ptr %i.au, %.sroa.063.0127
  %or.cond14.i = select i1 %or.cond12.i, i1 true, i1 %i.av
  br i1 %or.cond14.i, label %_ZN4llvm4findIRNS_15MutableArrayRefIN4mlir9OpOperandEEES3_EEDaOT_RKT0_.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.02937.i.i.i.i.i, i64 128
  %i.ax = add nsw i64 %.038.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.038.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.h
  %i.az = and i64 %i.al, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.g
  %.pre-phi40.i.i.i.i.i = phi i64 [ %i.az, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.al, %bb.g ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.ak, %bb.g ] ; 4 uses
  switch i64 %.pre-phi40.i.i.i.i.i, label %bb.n [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ba = icmp eq ptr %.029.lcssa.i.i.i.i.i, %.sroa.063.0127
  br i1 %i.ba, label %_ZN4llvm4findIRNS_15MutableArrayRefIN4mlir9OpOperandEEES3_EEDaOT_RKT0_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.bb, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bc = icmp eq ptr %.1.i.i.i.i.i, %.sroa.063.0127
  br i1 %i.bc, label %_ZN4llvm4findIRNS_15MutableArrayRefIN4mlir9OpOperandEEES3_EEDaOT_RKT0_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.bd, %bb.l ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.be = icmp eq ptr %.2.i.i.i.i.i, %.sroa.063.0127
  br i1 %i.be, label %_ZN4llvm4findIRNS_15MutableArrayRefIN4mlir9OpOperandEEES3_EEDaOT_RKT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i
  br label %_ZN4llvm4findIRNS_15MutableArrayRefIN4mlir9OpOperandEEES3_EEDaOT_RKT0_.exit.i

_ZN4llvm4findIRNS_15MutableArrayRefIN4mlir9OpOperandEEES3_EEDaOT_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.n, %bb.m, %bb.k, %bb.i
  %.028.i.i.i.i.i = phi ptr [ %.sroa.063.0127, %bb.k ], [ %i.am, %bb.n ], [ %.sroa.063.0127, %bb.m ], [ %.sroa.063.0127, %bb.i ], [ %.sroa.063.0127, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.al
  %i.bg = icmp eq ptr %.028.i.i.i.i.i, %i.bf
  br i1 %i.bg, label %.thread.jt1, label %_ZN4mlir19LoopLikeOpInterface24getTiedLoopRegionIterArgEPNS_9OpOperandE.exit

_ZN4mlir19LoopLikeOpInterface24getTiedLoopRegionIterArgEPNS_9OpOperandE.exit: ; preds = %_ZN4llvm4findIRNS_15MutableArrayRefIN4mlir9OpOperandEEES3_EEDaOT_RKT0_.exit.i
  %i.bh = call { ptr, i64 } @_ZN4mlir19LoopLikeOpInterface17getRegionIterArgsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  %i.bj = ptrtoint ptr %.028.i.i.i.i.i to i64
  %i.bk = ptrtoint ptr %i.ak to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %.not112 = icmp eq i64 %i.bo, 0
  br i1 %.not112, label %.thread.jt1, label %bb.o

bb.o:                                             ; preds = %_ZN4mlir19LoopLikeOpInterface24getTiedLoopRegionIterArgEPNS_9OpOperandE.exit
  %i.bp = inttoptr i64 %i.bo to ptr
  %.sroa.011.0.copyload = load ptr, ptr %8, align 8
  %.sroa.212.0.copyload = load ptr, ptr %i.b, align 8
  %i.bq = call fastcc i8 @_ZN12_GLOBAL__N_115MatchingSubsets26populateSubsetOpsAtIterArgEN4mlir19LoopLikeOpInterfaceENS1_13BlockArgumentEb(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr %.sroa.011.0.copyload, ptr %.sroa.212.0.copyload, ptr nonnull %i.bp, i1 noundef zeroext false)
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = icmp eq ptr %.sroa.067.0125, null
  %or.cond.not = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond.not, label %.thread.jt5, label %.thread.jt1

.thread.jt5:                                      ; preds = %bb.o
  %i.bt = call ptr @_ZN4mlir19LoopLikeOpInterface17getTiedLoopResultEPNS_9OpOperandE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %.sroa.063.0127)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.ar

.thread.jt1:                                      ; preds = %bb.o, %_ZN4mlir19LoopLikeOpInterface24getTiedLoopRegionIterArgEPNS_9OpOperandE.exit, %_ZN4llvm4findIRNS_15MutableArrayRefIN4mlir9OpOperandEEES3_EEDaOT_RKT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.thread96

bb.p:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 4 uses
  %i.bv = call noundef ptr @_ZN4mlir11OpInterfaceINS_17SubsetOpInterfaceENS_6detail32SubsetOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %i.bu)
  %.not.i.i39 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i39, label %_ZN4llvm8dyn_castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.i40 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i40, label %_ZN4llvm20ValueFromPointerCastIN4mlir17SubsetOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = call noundef ptr @_ZN4mlir11OpInterfaceINS_17SubsetOpInterfaceENS_6detail32SubsetOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.bu)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir17SubsetOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir17SubsetOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i: ; preds = %bb.r, %bb.q
  %i.bx = phi ptr [ %i.bw, %bb.r ], [ null, %bb.q ]
  %.fca.0.insert.i.i.i41 = insertvalue { ptr, ptr } zeroinitializer, ptr %i.bu, 0
  %.fca.1.insert.i.i.i42 = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i41, ptr %i.bx, 1
  br label %_ZN4llvm8dyn_castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit

_ZN4llvm8dyn_castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit: ; preds = %bb.p, %_ZN4llvm20ValueFromPointerCastIN4mlir17SubsetOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i
  %.pn.i.i43 = phi { ptr, ptr } [ %.fca.1.insert.i.i.i42, %_ZN4llvm20ValueFromPointerCastIN4mlir17SubsetOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i ], [ zeroinitializer, %bb.p ] ; 4 uses
  %i.by = extractvalue { ptr, ptr } %.pn.i.i43, 0 ; 7 uses
  %i.bz = extractvalue { ptr, ptr } %.pn.i.i43, 1 ; 2 uses
  %.not108 = icmp eq ptr %i.by, null
  br i1 %.not108, label %.thread96, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit
  %i.ca = load i32, ptr %i.d, align 8, !tbaa !51  ; 2 uses
  %i.cb = load i32, ptr %i.e, align 4, !tbaa !57
  %.not.i.i44 = icmp ult i32 %i.ca, %i.cb
  br i1 %.not.i.i44, label %bb.u, label %bb.t, !prof !21

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir17SubsetOpInterfaceELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr nonnull %i.by, ptr %i.bz)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir17SubsetOpInterfaceELb1EE9push_backES2_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cc = zext i32 %i.ca to i64
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  store ptr %i.by, ptr %i.ce, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.bz, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.cf = load i32, ptr %i.d, align 8, !tbaa !51
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.d, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir17SubsetOpInterfaceELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir17SubsetOpInterfaceELb1EE9push_backES2_.exit.i: ; preds = %bb.u, %bb.t
  br i1 %4, label %bb.v, label %_ZN12_GLOBAL__N_115MatchingSubsets6insertEN4mlir17SubsetOpInterfaceEb.exit

bb.v:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir17SubsetOpInterfaceELb1EE9push_backES2_.exit.i
  %i.ch = call noundef ptr @_ZN4mlir11OpInterfaceINS_27SubsetExtractionOpInterfaceENS_6detail42SubsetExtractionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.by)
  %.not.i.i.i45 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i45, label %_ZN4llvm8dyn_castIN4mlir27SubsetExtractionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir27SubsetExtractionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir27SubsetExtractionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i: ; preds = %bb.v
  %i.ci = call noundef ptr @_ZN4mlir11OpInterfaceINS_27SubsetExtractionOpInterfaceENS_6detail42SubsetExtractionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.by)
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.pn.i.i43, ptr %i.ci, 1
  br label %_ZN4llvm8dyn_castIN4mlir27SubsetExtractionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i

_ZN4llvm8dyn_castIN4mlir27SubsetExtractionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i: ; preds = %_ZN4llvm20ValueFromPointerCastIN4mlir27SubsetExtractionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i, %bb.v
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir27SubsetExtractionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i ], [ zeroinitializer, %bb.v ] ; 2 uses
  %i.cj = extractvalue { ptr, ptr } %.pn.i.i.i, 0 ; 5 uses
  %i.ck = extractvalue { ptr, ptr } %.pn.i.i.i, 1 ; 4 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_115MatchingSubsets18insertExtractionOpEN4mlir27SubsetExtractionOpInterfaceE.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir27SubsetExtractionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !50, !noalias !228 ; 2 uses
  %i.cm = load i32, ptr %i.g, align 8, !tbaa !51, !noalias !229 ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %.idx.i.i = shl nuw nsw i64 %i.cn, 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i.i
  %.not30.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.thread.i.i, %.lr.ph.i.i
  %.sroa.7.032.i.i = phi i64 [ %i.cu, %.thread.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.sroa.015.031.i.i = phi ptr [ %i.cv, %.thread.i.i ], [ %i.cl, %.lr.ph.i.i ] ; 2 uses
  %i.cq = load ptr, ptr %.sroa.015.031.i.i, align 8, !tbaa !65 ; 3 uses
  %.not28.i.i = icmp eq ptr %i.cq, null
  br i1 %.not28.i.i, label %.thread.i.i, label %_ZN4llvm4castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit.i.i

_ZN4llvm4castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit.i.i: ; preds = %.lr.ph.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.cr = call noundef ptr @_ZN4mlir11OpInterfaceINS_17SubsetOpInterfaceENS_6detail32SubsetOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.cq)
  store ptr %i.cq, ptr %6, align 8
  store ptr %i.cr, ptr %i.h, align 8
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !83
  %i.ct = call noundef zeroext i1 @_ZN4mlir17SubsetOpInterface26operatesOnEquivalentSubsetES0_N4llvm12function_refIFbNS_5ValueES3_EEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %i.cj, ptr %i.cs, ptr nonnull @_ZN4llvm12function_refIFbN4mlir5ValueES2_EE11callback_fnIS3_EEblS2_S2_, i64 ptrtoint (ptr @_ZN12_GLOBAL__N_115MatchingSubsets12isEquivalentEN4mlir5ValueES2_ to i64)) #15
  br i1 %i.ct, label %.split.us.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm4castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.x, %.lr.ph.split.i.i
  %i.cu = add nuw nsw i64 %.sroa.7.032.i.i, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.015.031.i.i, i64 16 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.cv, %i.co
  br i1 %.not.i6.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i

.split.us.i.i:                                    ; preds = %_ZN4llvm4castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit.i.i
  %i.cw = load ptr, ptr %0, align 8, !tbaa !50
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.sroa.7.032.i.i ; 2 uses
  store ptr %i.cj, ptr %i.cx, align 8
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.ck, ptr %.sroa.422.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN12_GLOBAL__N_115MatchingSubsets18insertExtractionOpEN4mlir27SubsetExtractionOpInterfaceE.exit.i

._crit_edge.i.i:                                  ; preds = %.thread.i.i, %bb.w
  %i.cy = load i32, ptr %i.i, align 8, !tbaa !51  ; 2 uses
  %i.cz = load i32, ptr %i.j, align 4, !tbaa !57
  %.not.i7.i.i = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i7.i.i, label %bb.z, label %bb.y, !prof !21

bb.y:                                             ; preds = %._crit_edge.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nonnull %i.cj, ptr %i.ck)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE9push_backES2_.exit.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.da = zext i32 %i.cy to i64
  %i.db = load ptr, ptr %0, align 8, !tbaa !50
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.da ; 2 uses
  store ptr %i.cj, ptr %i.dc, align 1
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.ck, ptr %.sroa.3.0..sroa_idx.i.i.i, align 1
  %i.dd = load i32, ptr %i.i, align 8, !tbaa !51
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.i, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE9push_backES2_.exit.i.i: ; preds = %bb.z, %bb.y
  %i.df = load i32, ptr %i.g, align 8, !tbaa !51  ; 2 uses
  %i.dg = load i32, ptr %i.k, align 4, !tbaa !57
  %.not.i8.i.i = icmp ult i32 %i.df, %i.dg
  br i1 %.not.i8.i.i, label %bb.ab, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE9push_backES2_.exit.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir26SubsetInsertionOpInterfaceELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr null, ptr null)
  br label %_ZN12_GLOBAL__N_115MatchingSubsets18insertExtractionOpEN4mlir27SubsetExtractionOpInterfaceE.exit.i

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE9push_backES2_.exit.i.i
  %i.dh = zext i32 %i.df to i64
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.dh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.dk = load i32, ptr %i.g, align 8, !tbaa !51
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.g, align 8, !tbaa !51
  br label %_ZN12_GLOBAL__N_115MatchingSubsets18insertExtractionOpEN4mlir27SubsetExtractionOpInterfaceE.exit.i

_ZN12_GLOBAL__N_115MatchingSubsets18insertExtractionOpEN4mlir27SubsetExtractionOpInterfaceE.exit.i: ; preds = %bb.ab, %bb.aa, %.split.us.i.i, %_ZN4llvm8dyn_castIN4mlir27SubsetExtractionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i
  %i.dm = call noundef ptr @_ZN4mlir11OpInterfaceINS_26SubsetInsertionOpInterfaceENS_6detail41SubsetInsertionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.by)
  %.not.i.i7.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i7.i, label %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i: ; preds = %_ZN12_GLOBAL__N_115MatchingSubsets18insertExtractionOpEN4mlir27SubsetExtractionOpInterfaceE.exit.i
  %i.dn = call noundef ptr @_ZN4mlir11OpInterfaceINS_26SubsetInsertionOpInterfaceENS_6detail41SubsetInsertionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.by)
  %.fca.1.insert.i.i.i10.i = insertvalue { ptr, ptr } %.pn.i.i43, ptr %i.dn, 1
  br label %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i

_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i: ; preds = %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i, %_ZN12_GLOBAL__N_115MatchingSubsets18insertExtractionOpEN4mlir27SubsetExtractionOpInterfaceE.exit.i
  %.pn.i.i11.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i10.i, %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i ], [ zeroinitializer, %_ZN12_GLOBAL__N_115MatchingSubsets18insertExtractionOpEN4mlir27SubsetExtractionOpInterfaceE.exit.i ] ; 2 uses
  %i.do = extractvalue { ptr, ptr } %.pn.i.i11.i, 0 ; 5 uses
  %i.dp = extractvalue { ptr, ptr } %.pn.i.i11.i, 1 ; 4 uses
  %.not42.i = icmp eq ptr %i.do, null
  br i1 %.not42.i, label %_ZN12_GLOBAL__N_115MatchingSubsets6insertEN4mlir17SubsetOpInterfaceEb.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i
  %i.dq = load ptr, ptr %0, align 8, !tbaa !50, !noalias !230 ; 2 uses
  %i.dr = load i32, ptr %i.i, align 8, !tbaa !51, !noalias !231 ; 2 uses
  %i.ds = zext i32 %i.dr to i64
  %.idx.i13.i = shl nuw nsw i64 %i.ds, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx.i13.i
  %.not30.i14.i = icmp eq i32 %i.dr, 0
  br i1 %.not30.i14.i, label %._crit_edge.i24.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  br label %.lr.ph.split.i17.i

.lr.ph.split.i17.i:                               ; preds = %.thread.i22.i, %.lr.ph.i15.i
  %.sroa.7.032.i18.i = phi i64 [ %i.dz, %.thread.i22.i ], [ 0, %.lr.ph.i15.i ] ; 2 uses
  %.sroa.015.031.i19.i = phi ptr [ %i.ea, %.thread.i22.i ], [ %i.dq, %.lr.ph.i15.i ] ; 2 uses
  %i.dv = load ptr, ptr %.sroa.015.031.i19.i, align 8, !tbaa !65 ; 3 uses
  %.not28.i20.i = icmp eq ptr %i.dv, null
  br i1 %.not28.i20.i, label %.thread.i22.i, label %_ZN4llvm4castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit.i21.i

_ZN4llvm4castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit.i21.i: ; preds = %.lr.ph.split.i17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.dw = call noundef ptr @_ZN4mlir11OpInterfaceINS_17SubsetOpInterfaceENS_6detail32SubsetOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.dv)
  store ptr %i.dv, ptr %5, align 8
  store ptr %i.dw, ptr %i.l, align 8
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !85
  %i.dy = call noundef zeroext i1 @_ZN4mlir17SubsetOpInterface26operatesOnEquivalentSubsetES0_N4llvm12function_refIFbNS_5ValueES3_EEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.do, ptr %i.dx, ptr nonnull @_ZN4llvm12function_refIFbN4mlir5ValueES2_EE11callback_fnIS3_EEblS2_S2_, i64 ptrtoint (ptr @_ZN12_GLOBAL__N_115MatchingSubsets12isEquivalentEN4mlir5ValueES2_ to i64)) #15
  br i1 %i.dy, label %.split.us.i28.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm4castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.thread.i22.i

.thread.i22.i:                                    ; preds = %bb.ad, %.lr.ph.split.i17.i
  %i.dz = add nuw nsw i64 %.sroa.7.032.i18.i, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.015.031.i19.i, i64 16 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ea, %i.dt
  br i1 %.not.i23.i, label %._crit_edge.i24.loopexit.i, label %.lr.ph.split.i17.i

.split.us.i28.i:                                  ; preds = %_ZN4llvm4castIN4mlir17SubsetOpInterfaceENS1_9OperationEEEDcPT0_.exit.i21.i
  %i.eb = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %.sroa.7.032.i18.i ; 2 uses
  store ptr %i.do, ptr %i.ec, align 8
  %.sroa.422.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.dp, ptr %.sroa.422.0..sroa_idx.i30.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZN12_GLOBAL__N_115MatchingSubsets6insertEN4mlir17SubsetOpInterfaceEb.exit

._crit_edge.i24.loopexit.i:                       ; preds = %.thread.i22.i
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !51
  br label %._crit_edge.i24.i

._crit_edge.i24.i:                                ; preds = %._crit_edge.i24.loopexit.i, %bb.ac
  %i.ed = phi i32 [ %.pre.i, %._crit_edge.i24.loopexit.i ], [ 0, %bb.ac ] ; 2 uses
  %i.ee = load i32, ptr %i.j, align 4, !tbaa !57
  %.not.i7.i25.i = icmp ult i32 %i.ed, %i.ee
  br i1 %.not.i7.i25.i, label %bb.af, label %bb.ae, !prof !21

bb.ae:                                            ; preds = %._crit_edge.i24.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr null, ptr null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE9push_backES2_.exit.i26.i

bb.af:                                            ; preds = %._crit_edge.i24.i
  %i.ef = zext i32 %i.ed to i64
  %i.eg = load ptr, ptr %0, align 8, !tbaa !50
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.ef
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eh, i8 0, i64 16, i1 false)
  %i.ei = load i32, ptr %i.i, align 8, !tbaa !51
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.i, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE9push_backES2_.exit.i26.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE9push_backES2_.exit.i26.i: ; preds = %bb.af, %bb.ae
  %i.ek = load i32, ptr %i.g, align 8, !tbaa !51  ; 2 uses
  %i.el = load i32, ptr %i.k, align 4, !tbaa !57
  %.not.i8.i27.i = icmp ult i32 %i.ek, %i.el
  br i1 %.not.i8.i27.i, label %bb.ah, label %bb.ag, !prof !21

bb.ag:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE9push_backES2_.exit.i26.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir26SubsetInsertionOpInterfaceELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr nonnull %i.do, ptr %i.dp)
  br label %_ZN12_GLOBAL__N_115MatchingSubsets6insertEN4mlir17SubsetOpInterfaceEb.exit

bb.ah:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir27SubsetExtractionOpInterfaceELb1EE9push_backES2_.exit.i26.i
  %i.em = zext i32 %i.ek to i64
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.em ; 2 uses
  store ptr %i.do, ptr %i.eo, align 1
  %.sroa.3.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.dp, ptr %.sroa.3.0..sroa_idx.i9.i.i, align 1
  %i.ep = load i32, ptr %i.g, align 8, !tbaa !51
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.g, align 8, !tbaa !51
  br label %_ZN12_GLOBAL__N_115MatchingSubsets6insertEN4mlir17SubsetOpInterfaceEb.exit

_ZN12_GLOBAL__N_115MatchingSubsets6insertEN4mlir17SubsetOpInterfaceEb.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir17SubsetOpInterfaceELb1EE9push_backES2_.exit.i, %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i, %.split.us.i28.i, %bb.ag, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.er = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 4 uses
  %i.es = call noundef ptr @_ZN4mlir11OpInterfaceINS_26SubsetInsertionOpInterfaceENS_6detail41SubsetInsertionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %i.er)
  %.not.i.i46 = icmp eq ptr %i.es, null
  br i1 %.not.i.i46, label %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN12_GLOBAL__N_115MatchingSubsets6insertEN4mlir17SubsetOpInterfaceEb.exit
  %.not.i.i.i.i.i.i47 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i.i47, label %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = call noundef ptr @_ZN4mlir11OpInterfaceINS_26SubsetInsertionOpInterfaceENS_6detail41SubsetInsertionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.er)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i: ; preds = %bb.aj, %bb.ai
  %i.eu = phi ptr [ %i.et, %bb.aj ], [ null, %bb.ai ]
  %.fca.0.insert.i.i.i48 = insertvalue { ptr, ptr } poison, ptr %i.er, 0
  %.fca.1.insert.i.i.i49 = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i48, ptr %i.eu, 1
  br label %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit

_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit: ; preds = %_ZN12_GLOBAL__N_115MatchingSubsets6insertEN4mlir17SubsetOpInterfaceEb.exit, %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i
  %.pn.i.i50 = phi { ptr, ptr } [ %.fca.1.insert.i.i.i49, %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i ], [ zeroinitializer, %_ZN12_GLOBAL__N_115MatchingSubsets6insertEN4mlir17SubsetOpInterfaceEb.exit ] ; 2 uses
  %i.ev = extractvalue { ptr, ptr } %.pn.i.i50, 0 ; 2 uses
  store ptr %i.ev, ptr %9, align 8
  %i.ew = extractvalue { ptr, ptr } %.pn.i.i50, 1
  store ptr %i.ew, ptr %i.m, align 8
  %.not109 = icmp eq ptr %i.ev, null
  br i1 %.not109, label %.thread80.jt5, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit
  %i.ex = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 8 uses
  %i.ey = call noundef ptr @_ZN4mlir11OpInterfaceINS_27DestinationStyleOpInterfaceENS_6detail42DestinationStyleOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %i.ex)
  %.not.i.i51 = icmp eq ptr %i.ey, null
  %.not.i.i.i.i.i.i52 = icmp eq ptr %i.ex, null
  %or.cond = or i1 %.not.i.i51, %.not.i.i.i.i.i.i52
  br i1 %or.cond, label %.thread80.jt1, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ez = call noundef ptr @_ZN4mlir11OpInterfaceINS_27DestinationStyleOpInterfaceENS_6detail42DestinationStyleOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.ex) ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 44 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = and i32 %i.fb, 8388608
  %.not.i.i.i56 = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i.i56, label %_ZN4mlir9Operation11getOperandsEv.exit.i, label %bb.am, !prof !22

bb.am:                                            ; preds = %bb.al
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !78
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 68
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !79
  %i.fh = zext i32 %i.fg to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit.i

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i = phi ptr [ %i.fe, %bb.am ], [ null, %bb.al ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.fh, %bb.am ], [ 0, %bb.al ] ; 2 uses
  %i.fi = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_27DestinationStyleOpInterface22hasPureTensorSemanticsEvEUlS7_E_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i, i64 0, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i)
  %i.fj = extractvalue { ptr, i64 } %i.fi, 1
  %.not.i57 = icmp eq i64 %.sroa.4.0.i.i.i, %i.fj
  br i1 %.not.i57, label %bb.an, label %.thread80.jt1

bb.an:                                            ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i
  %i.fk = load i32, ptr %i.fa, align 4
  %i.fl = and i32 %i.fk, 8388608
  %.not.i.i2.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i2.i, label %_ZN4mlir27DestinationStyleOpInterface22hasPureTensorSemanticsEv.exit, label %bb.ao, !prof !22

bb.ao:                                            ; preds = %bb.an
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !78
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 68
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !79
  %i.fq = zext i32 %i.fp to i64
  br label %_ZN4mlir27DestinationStyleOpInterface22hasPureTensorSemanticsEv.exit

_ZN4mlir27DestinationStyleOpInterface22hasPureTensorSemanticsEv.exit: ; preds = %bb.an, %bb.ao
  %.sroa.0.0.i.i3.i = phi ptr [ %i.fn, %bb.ao ], [ null, %bb.an ] ; 2 uses
  %.sroa.4.0.i.i4.i = phi i64 [ %i.fq, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.fr = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_27DestinationStyleOpInterface22hasPureTensorSemanticsEvEUlS7_E0_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i3.i, i64 0, ptr %.sroa.0.0.i.i3.i, i64 %.sroa.4.0.i.i4.i)
  %i.fs = extractvalue { ptr, i64 } %i.fr, 1
  %.not111 = icmp eq i64 %.sroa.4.0.i.i4.i, %i.fs
  br i1 %.not111, label %.thread80.jt1, label %bb.ap

bb.ap:                                            ; preds = %_ZN4mlir27DestinationStyleOpInterface22hasPureTensorSemanticsEv.exit
  %i.ft = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4mlir26SubsetInsertionOpInterface21getDestinationOperandEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  %.not35 = icmp ne ptr %.sroa.063.0127, %i.ft
  %i.fu = icmp ne ptr %.sroa.067.0125, null
  %or.cond105 = select i1 %.not35, i1 true, i1 %i.fu
  br i1 %or.cond105, label %.thread80.jt1, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fv = call ptr @_ZN4mlir26SubsetInsertionOpInterface21getUpdatedDestinationEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  br label %.thread80.jt5

.thread80.jt1:                                    ; preds = %bb.ak, %_ZN4mlir9Operation11getOperandsEv.exit.i, %_ZN4mlir27DestinationStyleOpInterface22hasPureTensorSemanticsEv.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.thread96

.thread80.jt5:                                    ; preds = %bb.aq, %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit
  %.sroa.067.4.jt5 = phi ptr [ %.sroa.067.0125, %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit ], [ %i.fv, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.ar
end_hunk_0
