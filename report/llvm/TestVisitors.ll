Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestVisitors?download=true
inline.NumInlined: 1750
inline.NumDeleted: 1014
begin_hunk_0_@"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZL25testBlockAndRegionWalkersS3_E3$_5EEvlS3_":bb.a
  br i1 %i.l, label %"_ZZL25testBlockAndRegionWalkersPN4mlir9OperationEENK3$_5clES1_.exit", label %_ZN4mlir9Operation10getRegionsEv.exit.i

_ZN4mlir9Operation10getRegionsEv.exit.i:          ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = lshr i32 %i.j, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.n, 1
  %i.o = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o
  %i.q = lshr i32 %i.j, 21
  %i.r = and i32 %i.q, 2040
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !123
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.w ; 2 uses
  %i.y = shl nuw nsw i32 %i.k, 5
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN4mlir6Region4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PS0_vEET3_OT1_.exit.i", %_ZN4mlir9Operation10getRegionsEv.exit.i
  %.015.i = phi ptr [ %i.be, %"_ZN4mlir6Region4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PS0_vEET3_OT1_.exit.i" ], [ %i.x, %_ZN4mlir9Operation10getRegionsEv.exit.i ] ; 5 uses
  %.sroa.06.0.in9.i.i = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %.sroa.06.010.i.i = load ptr, ptr %.sroa.06.0.in9.i.i, align 8, !tbaa !47 ; 2 uses
  %.not11.i.i = icmp eq ptr %.sroa.06.010.i.i, %.015.i
  br i1 %.not11.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !338, !nonnull !31
  %i.ac = ptrtoint ptr %i.ab to i64
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %"_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PNS_6RegionEvEET3_OT1_.exit.i.i", %.lr.ph.i
  %i.ad = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.am = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull @.str.19, i64 noundef 9) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ah, ptr noundef nonnull align 1 dereferenceable(9) @.str.19, i64 9, i1 false)
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 9
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i:           ; preds = %bb.e, %bb.d
  tail call fastcc void @_ZL11printRegionPN4mlir6RegionE(ptr noundef nonnull align 8 dereferenceable(28) %.015.i)
  %i.ap = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i
  %i.av = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull @.str.10, i64 noundef 1) #16 ; 0 uses
  br label %"_ZN4mlir6Region4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PS0_vEET3_OT1_.exit.i"

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i
  store i8 10, ptr %i.at, align 1
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !39
  br label %"_ZN4mlir6Region4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PS0_vEET3_OT1_.exit.i"

bb.h:                                             ; preds = %"_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PNS_6RegionEvEET3_OT1_.exit.i.i", %.lr.ph.i.i
  %.sroa.06.012.i.i = phi ptr [ %.sroa.06.010.i.i, %.lr.ph.i.i ], [ %.sroa.06.0.i.i, %"_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PNS_6RegionEvEET3_OT1_.exit.i.i" ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 32 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not5.i.i.i.i, label %"_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PNS_6RegionEvEET3_OT1_.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.01.06.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47 ; 2 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.01.06.i.i.i.i) #16
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvPNS_6RegionEEEENS_9WalkOrderE(ptr noundef nonnull %i.bd, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir6RegionEEE11callback_fnIZL25testBlockAndRegionWalkersPNS1_9OperationEE3$_3EEvlS3_", i64 %i.ac, i32 noundef 1)
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.ba
  br i1 %.not.i.i.i.i, label %"_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PNS_6RegionEvEET3_OT1_.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN4mlir5Block4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PNS_6RegionEvEET3_OT1_.exit.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.h
  %.sroa.06.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 8
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !47 ; 2 uses
  %.not.i10.i = icmp eq ptr %.sroa.06.0.i.i, %.015.i
  br i1 %.not.i10.i, label %._crit_edge.i.i, label %bb.h

"_ZN4mlir6Region4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PS0_vEET3_OT1_.exit.i": ; preds = %bb.g, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.aa
  br i1 %.not.i, label %"_ZZL25testBlockAndRegionWalkersPN4mlir9OperationEENK3$_5clES1_.exit", label %.lr.ph.i

"_ZZL25testBlockAndRegionWalkersPN4mlir9OperationEENK3$_5clES1_.exit": ; preds = %"_ZN4mlir6Region4walkILNS_9WalkOrderE1ENS_15ForwardIteratorERZL25testBlockAndRegionWalkersPNS_9OperationEE3$_3PS0_vEET3_OT1_.exit.i", %.thread.i.i, %_ZN4mlir9Operation7hasAttrEN4llvm9StringRefE.exit.i, %bb.c
  ret void
}

declare noundef ptr @_ZN4mlir9Operation5cloneERKNS0_12CloneOptionsE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZN4mlir9Operation12CloneOptions3allEv(ptr dead_on_unwind writable sret(%"class.mlir::Operation::CloneOptions") align 8) local_unnamed_addr #2

declare void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #16, !inline_history !339
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #16 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !47 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !47 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #16
  %i.m = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull %i.l, ptr %1, i64 %2, i32 noundef %3)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.03176, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.f
  br i1 %.not, label %._crit_edge77, label %.preheader

._crit_edge77:                                    ; preds = %._crit_edge, %bb.c
  %i.p = icmp eq i32 %3, 1
  br i1 %i.p, label %bb.f, label %.thread

bb.f:                                             ; preds = %._crit_edge77
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #16, !inline_history !339
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 1, 3) i32 @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZL24testSkipErasureCallbacksS4_E3$_0EES2_lS4_"(i64 %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::OperationName", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  br i1 %i.d, label %"_ZZL24testSkipErasureCallbacksPN4mlir9OperationEENK3$_0clES1_.exit", label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124, !nonnull !31, !noundef !31
  %i.g = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.f) #16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i1.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i1.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = icmp eq ptr %i.j, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  br i1 %i.k, label %"_ZZL24testSkipErasureCallbacksPN4mlir9OperationEENK3$_0clES1_.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i
  %i.l = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult i64 %i.s, 8
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull @.str.44, i64 noundef 8) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.d:                                             ; preds = %bb.b
  store i64 2334956331001279045, ptr %i.p, align 1
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.o, align 8, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.d, %bb.c
  %i.x = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.ae, 4
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull @.str.20, i64 noundef 4) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  store i32 656437359, ptr %i.ab, align 1
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.x, %bb.f ] ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  call void @_ZNK4mlir13OperationName5printERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.ao = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i, ptr noundef nonnull @.str.21, i64 noundef 1) #16 ; 0 uses
  br label %_ZL14printOperationPN4mlir9OperationE.exit.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  store i8 39, ptr %i.am, align 1
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !39
  br label %_ZL14printOperationPN4mlir9OperationE.exit.i

_ZL14printOperationPN4mlir9OperationE.exit.i:     ; preds = %bb.h, %bb.g
  %i.ar = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZL14printOperationPN4mlir9OperationE.exit.i
  %i.ax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull @.str.10, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit4.i

bb.j:                                             ; preds = %_ZL14printOperationPN4mlir9OperationE.exit.i
  store i8 10, ptr %i.av, align 1
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.au, align 8, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit4.i

_ZN4llvm11raw_ostreamlsEPKc.exit4.i:              ; preds = %bb.j, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !125 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %1, i64 -16
  %i.bd = zext i32 %i.bb to i64
  %.not11.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i.i, label %_ZN4mlir9Operation11dropAllUsesEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit4.i, %_ZN4mlir5Value11dropAllUsesEv.exit.i.i
  %.sroa.4.012.i.i = phi i64 [ %i.bp, %_ZN4mlir5Value11dropAllUsesEv.exit.i.i ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit4.i ] ; 2 uses
  %i.be = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 noundef %.sroa.4.012.i.i) #16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !127 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN4mlir5Value11dropAllUsesEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE4dropEv.exit.i.i.i.i
  %i.bh = phi ptr [ %i.bn, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE4dropEv.exit.i.i.i.i ], [ %i.bf, %.lr.ph.i.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE4dropEv.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !129 ; 3 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !130
  %.not2.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE4dropEv.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !128
  br label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE4dropEv.exit.i.i.i.i

_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE4dropEv.exit.i.i.i.i: ; preds = %bb.l, %bb.k, %.lr.ph.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i8 0, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 0, ptr %i.bm, align 8, !tbaa !132
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !127 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN4mlir5Value11dropAllUsesEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZN4mlir5Value11dropAllUsesEv.exit.i.i:           ; preds = %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE4dropEv.exit.i.i.i.i, %.lr.ph.i.i
  %i.bp = add nuw nsw i64 %.sroa.4.012.i.i, 1     ; 2 uses
  %.not.i5.i = icmp eq i64 %i.bp, %i.bd
  br i1 %.not.i5.i, label %_ZN4mlir9Operation11dropAllUsesEv.exit.i, label %.lr.ph.i.i

_ZN4mlir9Operation11dropAllUsesEv.exit.i:         ; preds = %_ZN4mlir5Value11dropAllUsesEv.exit.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit4.i
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  br label %"_ZZL24testSkipErasureCallbacksPN4mlir9OperationEENK3$_0clES1_.exit"

"_ZZL24testSkipErasureCallbacksPN4mlir9OperationEENK3$_0clES1_.exit": ; preds = %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit.i, %_ZN4mlir9Operation11dropAllUsesEv.exit.i
  %.sroa.0.0.i = phi i32 [ 2, %_ZN4mlir9Operation11dropAllUsesEv.exit.i ], [ 1, %bb.a ], [ 1, %_ZN4mlir9Operation11getParentOpEv.exit.i ]
  ret i32 %.sroa.0.0.i
}

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #16 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 3 uses
  %.not109 = icmp eq i64 %i.c, 0
  br i1 %.not109, label %.thread84, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  switch i32 %3, label %.lr.ph114.split.split [
    i32 1, label %.lr.ph114.split.us.split
    i32 0, label %.lr.ph114.split.split.us
  ]

.lr.ph114.split.us.split:                         ; preds = %.lr.ph114, %._crit_edge98.split.us.us.split
  %.034110.us = phi ptr [ %i.r, %._crit_edge98.split.us.us.split ], [ %i.b, %.lr.ph114 ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.034110.us, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %.not8794.us = icmp eq ptr %i.f, %.034110.us
  br i1 %.not8794.us, label %._crit_edge98.split.us.us.split, label %.lr.ph97.us

.lr.ph97.us:                                      ; preds = %.lr.ph114.split.us.split, %.thread66.us.us
  %.sroa.044.095.us.us = phi ptr [ %i.h, %.thread66.us.us ], [ %i.f, %.lr.ph114.split.us.split ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us.us, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.044.095.us.us, i64 -8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us.us, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us.us, i64 32 ; 2 uses
  %.sroa.038.091.us.us = load ptr, ptr %i.j, align 8, !tbaa !47 ; 2 uses
  %.not8892.us.us = icmp eq ptr %.sroa.038.091.us.us, %i.k
  br i1 %.not8892.us.us, label %._crit_edge.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph97.us, %bb.b
  %.sroa.038.093.us.us = phi ptr [ %.sroa.038.0.us.us, %bb.b ], [ %.sroa.038.091.us.us, %.lr.ph97.us ] ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.038.093.us.us) #16
  %i.m = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE(ptr noundef nonnull %i.l, ptr %1, i64 %2, i32 noundef 1)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread84, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.038.093.us.us, i64 8
  %.sroa.038.0.us.us = load ptr, ptr %i.o, align 8, !tbaa !47 ; 2 uses
  %.not88.us.us = icmp eq ptr %.sroa.038.0.us.us, %i.k
  br i1 %.not88.us.us, label %._crit_edge.us.us, label %.lr.ph.us.us

._crit_edge.us.us:                                ; preds = %bb.b, %.lr.ph97.us
  %i.p = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %i.i) #16, !inline_history !340
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread84, label %.thread66.us.us

.thread66.us.us:                                  ; preds = %._crit_edge.us.us
  %.not87.us.us = icmp eq ptr %i.h, %.034110.us
  br i1 %.not87.us.us, label %._crit_edge98.split.us.us.split, label %.lr.ph97.us

._crit_edge98.split.us.us.split:                  ; preds = %.thread66.us.us, %.lr.ph114.split.us.split
  %i.r = getelementptr inbounds nuw i8, ptr %.034110.us, i64 32 ; 2 uses
  %.not.us = icmp eq ptr %i.r, %i.d
  br i1 %.not.us, label %.thread84, label %.lr.ph114.split.us.split

.lr.ph114.split.split.us:                         ; preds = %.lr.ph114, %._crit_edge98.split.split.us.us
  %.034110.us115 = phi ptr [ %i.ae, %._crit_edge98.split.split.us.us ], [ %i.b, %.lr.ph114 ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.034110.us115, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %.not8794.us116 = icmp eq ptr %i.t, %.034110.us115
  br i1 %.not8794.us116, label %._crit_edge98.split.split.us.us, label %.lr.ph97.us117

.lr.ph97.us117:                                   ; preds = %.lr.ph114.split.split.us, %.thread66.us107.us
  %.sroa.044.095.us99.us = phi ptr [ %i.v, %.thread66.us107.us ], [ %i.t, %.lr.ph114.split.split.us ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us99.us, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.044.095.us99.us, i64 -8
  %i.x = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %i.w) #16, !inline_history !340 ; 2 uses
  switch i32 %i.x, label %bb.c [
    i32 2, label %.thread66.us107.us
    i32 0, label %.thread84
  ]

bb.c:                                             ; preds = %.lr.ph97.us117
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us99.us, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us99.us, i64 32 ; 2 uses
  %.sroa.038.091.us100.us = load ptr, ptr %i.y, align 8, !tbaa !47 ; 2 uses
  %.not8892.us101.us = icmp eq ptr %.sroa.038.091.us100.us, %i.z
  br i1 %.not8892.us101.us, label %.thread66.us107.us, label %.lr.ph.us102.us

.lr.ph.us102.us:                                  ; preds = %bb.c, %bb.d
  %.sroa.038.093.us103.us = phi ptr [ %.sroa.038.0.us104.us, %bb.d ], [ %.sroa.038.091.us100.us, %bb.c ] ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.038.093.us103.us) #16
  %i.ab = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE(ptr noundef nonnull %i.aa, ptr %1, i64 %2, i32 noundef 0)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread84, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us102.us
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.093.us103.us, i64 8
  %.sroa.038.0.us104.us = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %.not88.us105.us = icmp eq ptr %.sroa.038.0.us104.us, %i.z
  br i1 %.not88.us105.us, label %.thread66.us107.us, label %.lr.ph.us102.us

.thread66.us107.us:                               ; preds = %bb.d, %bb.c, %.lr.ph97.us117
  %.not87.us108.us = icmp eq ptr %i.v, %.034110.us115
  br i1 %.not87.us108.us, label %._crit_edge98.split.split.us.us, label %.lr.ph97.us117

._crit_edge98.split.split.us.us:                  ; preds = %.thread66.us107.us, %.lr.ph114.split.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.034110.us115, i64 32 ; 2 uses
  %.not.us118 = icmp eq ptr %i.ae, %i.d
  br i1 %.not.us118, label %.thread84, label %.lr.ph114.split.split.us

.lr.ph114.split.split:                            ; preds = %.lr.ph114, %._crit_edge98.split.split
  %.034110 = phi ptr [ %i.ap, %._crit_edge98.split.split ], [ %i.b, %.lr.ph114 ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.034110, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %.not8794 = icmp eq ptr %i.ag, %.034110
  br i1 %.not8794, label %._crit_edge98.split.split, label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph114.split.split, %.thread66
  %.sroa.044.095 = phi ptr [ %i.ai, %.thread66 ], [ %i.ag, %.lr.ph114.split.split ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.044.095, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.044.095, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.044.095, i64 32 ; 2 uses
  %.sroa.038.091 = load ptr, ptr %i.aj, align 8, !tbaa !47 ; 2 uses
  %.not8892 = icmp eq ptr %.sroa.038.091, %i.ak
  br i1 %.not8892, label %.thread66, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.038.093, i64 8
  %.sroa.038.0 = load ptr, ptr %i.al, align 8, !tbaa !47 ; 2 uses
  %.not88 = icmp eq ptr %.sroa.038.0, %i.ak
  br i1 %.not88, label %.thread66, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph97, %bb.e
  %.sroa.038.093 = phi ptr [ %.sroa.038.0, %bb.e ], [ %.sroa.038.091, %.lr.ph97 ] ; 2 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.038.093) #16
  %i.an = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE(ptr noundef nonnull %i.am, ptr %1, i64 %2, i32 noundef %3)
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread84, label %bb.e

.thread66:                                        ; preds = %bb.e, %.lr.ph97
  %.not87 = icmp eq ptr %i.ai, %.034110
  br i1 %.not87, label %._crit_edge98.split.split, label %.lr.ph97

._crit_edge98.split.split:                        ; preds = %.thread66, %.lr.ph114.split.split
  %i.ap = getelementptr inbounds nuw i8, ptr %.034110, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.d
  br i1 %.not, label %.thread84, label %.lr.ph114.split.split

.thread84:                                        ; preds = %._crit_edge98.split.split.us.us, %.lr.ph97.us117, %.lr.ph.us102.us, %._crit_edge98.split.us.us.split, %._crit_edge.us.us, %.lr.ph.us.us, %._crit_edge98.split.split, %.lr.ph, %bb.a
  %.sroa.033.10 = phi i32 [ %i.x, %.lr.ph97.us117 ], [ 1, %bb.a ], [ 1, %._crit_edge98.split.us.us.split ], [ 0, %._crit_edge.us.us ], [ 1, %._crit_edge98.split.split ], [ 0, %.lr.ph.us102.us ], [ 0, %.lr.ph.us.us ], [ 0, %.lr.ph ], [ 1, %._crit_edge98.split.split.us.us ]
  ret i32 %.sroa.033.10
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 1, 3) i32 @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_5BlockEEE11callback_fnIZL24testSkipErasureCallbacksPNS1_9OperationEE3$_1EES2_lS4_"(i64 %0, ptr noundef nonnull %1) #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  br i1 %i.e, label %"_ZZL24testSkipErasureCallbacksPN4mlir9OperationEENK3$_1clEPNS_5BlockE.exit", label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124, !nonnull !31, !noundef !31
  %i.h = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.g) #16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i6.i = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i6.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.l = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  br i1 %i.l, label %"_ZZL24testSkipErasureCallbacksPN4mlir9OperationEENK3$_1clEPNS_5BlockE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !133
  %i.n = icmp eq ptr %i.m, null
  %i.o = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 3 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ult i64 %i.v, 8
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull @.str.44, i64 noundef 8) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.e:                                             ; preds = %bb.c
  store i64 2334956331001279045, ptr %i.s, align 1
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.r, align 8, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.e, %bb.d
  tail call fastcc void @_ZL10printBlockPN4mlir5BlockE(ptr noundef nonnull %1)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull @.str.10, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9.i

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  store i8 10, ptr %i.ae, align 1
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9.i

_ZN4llvm11raw_ostreamlsEPKc.exit9.i:              ; preds = %bb.g, %bb.f
  tail call void @_ZN4mlir5Block23dropAllDefinedValueUsesEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #16
  tail call void @_ZN4mlir5Block5eraseEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #16
  br label %"_ZZL24testSkipErasureCallbacksPN4mlir9OperationEENK3$_1clEPNS_5BlockE.exit"

bb.h:                                             ; preds = %bb.b
  %i.aj = icmp ult i64 %i.v, 13
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull @.str.45, i64 noundef 13) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12.i

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.s, ptr noundef nonnull align 1 dereferenceable(13) @.str.45, i64 13, i1 false)
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 13
  store ptr %i.am, ptr %i.r, align 8, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12.i

_ZN4llvm11raw_ostreamlsEPKc.exit12.i:             ; preds = %bb.j, %bb.i
  tail call fastcc void @_ZL10printBlockPN4mlir5BlockE(ptr noundef nonnull %1)
  %i.an = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 2 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 17
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12.i
  %i.aw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull @.str.46, i64 noundef 17) #16 ; 0 uses
  br label %"_ZZL24testSkipErasureCallbacksPN4mlir9OperationEENK3$_1clEPNS_5BlockE.exit"

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ar, ptr noundef nonnull align 1 dereferenceable(17) @.str.46, i64 17, i1 false)
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 17
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !39
  br label %"_ZZL24testSkipErasureCallbacksPN4mlir9OperationEENK3$_1clEPNS_5BlockE.exit"

"_ZZL24testSkipErasureCallbacksPN4mlir9OperationEENK3$_1clEPNS_5BlockE.exit": ; preds = %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit.i, %_ZN4llvm11raw_ostreamlsEPKc.exit9.i, %bb.k, %bb.l
  %.sroa.0.0.i = phi i32 [ 1, %_ZN4mlir9Operation11getParentOpEv.exit.i ], [ 2, %_ZN4llvm11raw_ostreamlsEPKc.exit9.i ], [ 1, %bb.a ], [ 1, %bb.k ], [ 1, %bb.l ]
  ret i32 %.sroa.0.0.i
}

declare void @_ZN4mlir5Block23dropAllDefinedValueUsesEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZN4mlir5Block5eraseEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZL26testNoSkipErasureCallbacksS3_E3$_0EEvlS3_"(i64 %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::OperationName", align 8 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.44, i64 noundef 8) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.c:                                             ; preds = %bb.a
  store i64 2334956331001279045, ptr %i.e, align 1
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.d, align 8, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.c, %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult i64 %i.t, 4
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull @.str.20, i64 noundef 4) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  store i32 656437359, ptr %i.q, align 1
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.x, ptr %i.p, align 8, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.m, %bb.e ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  call void @_ZNK4mlir13OperationName5printERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i, ptr noundef nonnull @.str.21, i64 noundef 1) #16 ; 0 uses
  br label %_ZL14printOperationPN4mlir9OperationE.exit.i

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  store i8 39, ptr %i.ac, align 1
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !39
  br label %_ZL14printOperationPN4mlir9OperationE.exit.i

_ZL14printOperationPN4mlir9OperationE.exit.i:     ; preds = %bb.g, %bb.f
  %i.ah = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZL14printOperationPN4mlir9OperationE.exit.i
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull @.str.10, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i

bb.i:                                             ; preds = %_ZL14printOperationPN4mlir9OperationE.exit.i
  store i8 10, ptr %i.al, align 1
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i

_ZN4llvm11raw_ostreamlsEPKc.exit5.i:              ; preds = %bb.i, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 36
end_hunk_0
