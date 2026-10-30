Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/IR?download=true
inline.NumInlined: 3701
inline.NumDeleted: 2010
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E11try_emplaceIJiEEESt4pairINS_16DenseMapIteratorIS3_jS5_S8_Lb0EEEbERKS3_DpOT_:bb.a
  %i.z = load i32, ptr %i.y, align 8, !tbaa !325  ; 3 uses
  %i.aa = shl i32 %i.z, 2
  %i.ab = add i32 %i.aa, 4
  %i.ac = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !90

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit
  %i.ad = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !326
  %.neg.i.i = xor i32 %i.z, -1
  %.neg13.i.i = add i32 %i.d, %.neg.i.i
  %i.ag = sub i32 %.neg13.i.i, %i.af
  %i.ah = lshr i32 %i.d, 3
  %.not11.i.i = icmp ugt i32 %i.ag, %i.ah
  br i1 %.not11.i.i, label %bb.g, label %.sink.split.i.i, !prof !90

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ad, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %.sink.i.i5)
  %i.ai = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !325
  %.pre9.i = load ptr, ptr %i.a, align 8, !tbaa !324
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.aj = phi ptr [ %.pre9.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ak = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.z, %bb.f ]
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 8, !tbaa !325
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.aj, align 8, !tbaa !112
  %i.am = icmp eq ptr %.sroa.01.0.copyload.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.am, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16InsertIntoBucketIRKS3_JiEEEPS8_SE_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !326
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !326
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16InsertIntoBucketIRKS3_JiEEEPS8_SE_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16InsertIntoBucketIRKS3_JiEEEPS8_SE_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = load i64, ptr %2, align 8, !tbaa !112
  store i64 %i.aq, ptr %i.aj, align 8, !tbaa !112
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i32, ptr %3, align 4, !tbaa !19
  store i32 %i.as, ptr %i.ar, align 8, !tbaa !19
  %i.at = load ptr, ptr %1, align 8, !tbaa !287
  %i.au = load i32, ptr %i.c, align 8, !tbaa !323
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16InsertIntoBucketIRKS3_JiEEEPS8_SE_OT_DpOT0_.exit
  %.sink30 = phi i32 [ %i.au, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16InsertIntoBucketIRKS3_JiEEEPS8_SE_OT_DpOT0_.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.d ]
  %.sink28 = phi ptr [ %i.at, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16InsertIntoBucketIRKS3_JiEEEPS8_SE_OT_DpOT0_.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.d ]
  %.sink27 = phi ptr [ %i.aj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16InsertIntoBucketIRKS3_JiEEEPS8_SE_OT_DpOT0_.exit ], [ %i.m, %bb.b ], [ %i.w, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16InsertIntoBucketIRKS3_JiEEEPS8_SE_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.av = zext i32 %.sink30 to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sink28, i64 %i.av
  store ptr %.sink27, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ax, align 8, !tbaa !124
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6Module9viewGraphEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1033) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.04.07 = load ptr, ptr %i.a, align 8, !tbaa !79 ; 2 uses
  %.not8 = icmp eq ptr %.sroa.04.07, %i.b
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.09 = phi ptr [ %.sroa.04.0, %.lr.ph ], [ %.sroa.04.07, %bb.a ] ; 2 uses
  tail call void @_ZN6hermes9viewGraphEPNS_8FunctionE(ptr noundef nonnull %.sroa.04.09) #28
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 8
  %.sroa.04.0 = load ptr, ptr %i.c, align 8, !tbaa !79 ; 2 uses
  %.not = icmp eq ptr %.sroa.04.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes6Module4dumpERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(1033) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.hermes::IRPrinter", align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6hermes9IRPrinterE, i64 16), ptr %2, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !154
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210, !nonnull !107, !align !211
  store ptr %i.f, ptr %i.d, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %1, ptr %i.g, align 8, !tbaa !213
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.h, align 8, !tbaa !214
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !215
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !216
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.i, ptr %i.k, align 8, !tbaa !217
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.i, ptr %i.l, align 8, !tbaa !218
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 0, ptr %i.m, align 8, !tbaa !219
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !220
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !215
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !216
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %i.o, ptr %i.q, align 8, !tbaa !217
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.o, ptr %i.r, align 8, !tbaa !218
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 0, ptr %i.s, align 8, !tbaa !219
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 0, ptr %i.t, align 8, !tbaa !220
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !215
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !216
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 176
  store ptr %i.u, ptr %i.w, align 8, !tbaa !217
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %i.u, ptr %i.x, align 8, !tbaa !218
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i64 0, ptr %i.y, align 8, !tbaa !219
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i32 0, ptr %i.z, align 8, !tbaa !220
  call void @_ZN6hermes9IRVisitorINS_9IRPrinterEvE5visitERKNS_5ValueE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6hermes9IRPrinterE, i64 16), ptr %2, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !216
  call void @_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(52) %i.aa, ptr noundef %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !216
  call void @_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(52) %i.ac, ptr noundef %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !216
  call void @_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(52) %i.ae, ptr noundef %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN6hermes6Module16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(1033) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::FoldingSetNodeID", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 32, ptr %i.d, align 4, !tbaa !89
  %i.e = bitcast double %1 to i64                 ; 2 uses
  call void @_ZN4llvh16FoldingSetNodeID10AddIntegerEm(ptr noundef nonnull align 8 dereferenceable(144) %2, i64 noundef %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !245
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.g = call noundef ptr @_ZN4llvh14FoldingSetBase19FindNodeOrInsertPosERKNS_16FoldingSetNodeIDERPv(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -40
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.l, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 2, ptr %i.n, align 4, !tbaa !89
  store i8 114, ptr %i.j, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !298
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store double %1, ptr %i.p, align 8, !tbaa !443
  %3 = fcmp ogt double %1, f0x41DFFFFFFFC00000
  %i.q = fcmp olt double %1, f0xC1E0000000000000
  %or.cond.i.i.i = or i1 %3, %i.q
  %4 = fcmp uno double %1, 0.000000e+00
  %or.cond1.i.i.i = or i1 %4, %or.cond.i.i.i
  br i1 %or.cond1.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = fptosi double %1 to i32                  ; 2 uses
  %i.s = sitofp i32 %i.r to double
  %i.t = fcmp oeq double %1, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.r, 0
  %i.u = icmp slt i64 %i.e, 0
  %or.cond.i.i = and i1 %.not.i.i.i, %i.u
  br i1 %or.cond.i.i, label %bb.e, label %_ZN6hermes13LiteralNumberC2Ed.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br label %_ZN6hermes13LiteralNumberC2Ed.exit

_ZN6hermes13LiteralNumberC2Ed.exit:               ; preds = %bb.d, %bb.e
  %storemerge.i = phi i32 [ 458784, %bb.e ], [ 131104, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i32 %storemerge.i, ptr %i.v, align 2, !tbaa !235
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !245
  call void @_ZN4llvh14FoldingSetBase10InsertNodeEPNS0_4NodeEPv(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.o, ptr noundef %i.w) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6hermes13LiteralNumberC2Ed.exit
  %.1 = phi ptr [ %i.j, %_ZN6hermes13LiteralNumberC2Ed.exit ], [ %i.i, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.x = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.b
  br i1 %i.y, label %_ZN4llvh16FoldingSetNodeIDD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.x) #28
  br label %_ZN4llvh16FoldingSetNodeIDD2Ev.exit

_ZN4llvh16FoldingSetNodeIDD2Ev.exit:              ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN6hermes6Module16getLiteralBigIntEPNS_12UniqueStringE(ptr noundef nonnull align 8 dereferenceable(1033) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::FoldingSetNodeID", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 32, ptr %i.d, align 4, !tbaa !89
  call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !245
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.f = call noundef ptr @_ZN4llvh14FoldingSetBase19FindNodeOrInsertPosERKNS_16FoldingSetNodeIDERPv(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -40
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.l, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 2, ptr %i.n, align 4, !tbaa !89
  store i8 115, ptr %i.i, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !298
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %1, ptr %i.p, align 8, !tbaa !445
  store i32 458816, ptr %i.j, align 2, !tbaa !235
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !245
  call void @_ZN4llvh14FoldingSetBase10InsertNodeEPNS0_4NodeEPv(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %i.o, ptr noundef %i.q) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.r = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %_ZN4llvh16FoldingSetNodeIDD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.r) #28
  br label %_ZN4llvh16FoldingSetNodeIDD2Ev.exit

_ZN4llvh16FoldingSetNodeIDD2Ev.exit:              ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN6hermes6Module14getLiteralBoolEb(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(1033) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.0.v = select i1 %1, i64 576, i64 528
  %.0 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes4Type5printERN4llvh11raw_ostreamE(ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ] ; 4 uses
  %.010 = phi i1 [ true, %bb.a ], [ %.1, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ] ; 4 uses
  %i.c = icmp eq i64 %indvars.iv, 7
  %.pre = load i16, ptr %0, align 2, !tbaa !109   ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  switch i16 %.pre, label %bb.e [
    i16 256, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
    i16 512, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = zext i16 %.pre to i32
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = shl nuw nsw i32 1, %i.e
  %i.g = and i32 %i.f, %i.d
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.pre12 = load ptr, ptr %i.b, align 8, !tbaa !224 ; 3 uses
  br i1 %.010, label %_ZN4llvh11raw_ostreamlsEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.i = icmp eq ptr %i.h, %.pre12
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.119, i64 noundef 1) #28 ; 0 uses
  %.pre11 = load ptr, ptr %i.b, align 8, !tbaa !224
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.i:                                             ; preds = %bb.g
  store i8 124, ptr %.pre12, align 1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !224
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.i, %bb.h, %bb.f
  %i.m = phi ptr [ %i.l, %bb.i ], [ %.pre11, %bb.h ], [ %.pre12, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6hermes4Type10getKindStrENS0_8TypeKindEE5names, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114  ; 3 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #29 ; 5 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ugt i64 %i.p, %i.t
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %i.o, i64 noundef %i.p) #28 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.o, i64 %i.p, i1 false)
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.p
  store ptr %i.x, ptr %i.b, align 8, !tbaa !224
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.d, %bb.d, %bb.l, %bb.k, %bb.j, %bb.e
  %.1 = phi i1 [ %.010, %bb.d ], [ %.010, %bb.d ], [ %.010, %bb.e ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !446
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvhlsERNS_11raw_ostreamERKN6hermes4TypeE(ptr noundef nonnull returned align 8 dereferenceable(36) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZNK6hermes4Type5printERN4llvh11raw_ostreamE(ptr noundef nonnull align 2 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(36) %0)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
end_hunk_0
