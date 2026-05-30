inline.NumInlined: 89673
inline.NumDeleted: 14427
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE6unpackILi0ELb0EJEEEvRNSD_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISK_EERKSH_ISt10shared_ptrINS0_10BaseVectorEESaISQ_EEDpRT1_:bb.a
  call void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE6unpackILi1ELb0EJNS1_12VectorReaderIS9_EEEEEvRNSD_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISM_EERKSJ_ISt10shared_ptrINS0_10BaseVectorEESaISS_EEDpRT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(138) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE22tryAcquireStringBufferEPNS0_10BaseVectorEPKSE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !77
  %.not35 = icmp eq ptr %i.a, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16)
  br i1 %.not35, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %bb.a
  %.tr32.lcssa = phi ptr [ %1, %bb.a ], [ %.tr32.be, %tailrecurse.backedge ]
  tail call void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE35acquireSharedStringBuffersRecursiveEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272) %.tr32.lcssa, ptr noundef %2)
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %.tr3236 = phi ptr [ %.tr32.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 3 uses
  %i.b = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %.tr3236, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #24 ; 2 uses
  %.not25 = icmp eq ptr %i.b, null
  br i1 %.not25, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %bb.d
  %.tr32.be.in = phi ptr [ %i.c, %bb.b ], [ %i.h, %bb.d ]
  %.tr32.be = load ptr, ptr %.tr32.be.in, align 8, !tbaa !664 ; 3 uses
  %i.d = load ptr, ptr %.tr32.be, align 8, !tbaa !77
  %.not = icmp eq ptr %i.d, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16)
  br i1 %.not, label %tailrecurse._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.e = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %.tr3236, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9MapVectorE, i64 0) #24 ; 3 uses
  %.not26 = icmp eq ptr %i.e, null
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !664
  tail call void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE22tryAcquireStringBufferEPNS0_10BaseVectorEPKSE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.g, ptr noundef %2)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  br label %tailrecurse.backedge

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %.tr3236, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9RowVectorE, i64 0) #24 ; 3 uses
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3043 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3043 ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.f, %.lr.ph38
  %.sroa.028.037 = phi ptr [ %i.p, %.lr.ph38 ], [ %i.k, %bb.f ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.028.037, align 8, !tbaa !664
  tail call void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE22tryAcquireStringBufferEPNS0_10BaseVectorEPKSE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.o, ptr noundef %2)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %.loopexit, label %.lr.ph38

.loopexit:                                        ; preds = %.lr.ph38, %bb.f, %bb.e, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(138) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.3076, align 8           ; 5 uses
  %5 = alloca %class.anon.3077, align 8           ; 4 uses
  %6 = alloca %class.anon.3078, align 8           ; 6 uses
  %7 = alloca %class.anon.3067, align 8           ; 6 uses
  %8 = alloca %class.anon.3071, align 8           ; 5 uses
  %9 = alloca %class.anon.3072, align 8           ; 4 uses
  %10 = alloca %class.anon.3073, align 8          ; 6 uses
  %11 = alloca %class.anon.3066, align 8          ; 6 uses
  %12 = alloca %class.anon.3044, align 8          ; 5 uses
  %13 = alloca %class.anon.3045, align 8          ; 4 uses
  %14 = alloca %class.anon.3046, align 8          ; 6 uses
  %15 = alloca %class.anon.3031, align 8          ; 6 uses
  %16 = alloca %class.anon.3035, align 8          ; 5 uses
  %17 = alloca %class.anon.3036, align 8          ; 4 uses
  %18 = alloca %class.anon.3037, align 8          ; 6 uses
  %19 = alloca %class.anon.3030, align 8          ; 6 uses
  %20 = alloca %"struct.facebook::velox::exec::ConstantVectorReader.3025", align 8 ; 6 uses
  %21 = alloca %"struct.facebook::velox::exec::FlatVectorReader.3027", align 8 ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !669
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !664  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !670
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.g = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i8 0, ptr %i.g, align 4, !tbaa !1540
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.i = load i8, ptr %i.h, align 4, !tbaa !8772, !range !307, !noundef !308
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN8facebook5velox4exec20ConstantVectorReaderIiEC2ERNS0_14ConstantVectorIiEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %.sroa.0.0.insert.ext.i = zext i32 %i.l to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %20, align 8
  br label %_ZN8facebook5velox4exec20ConstantVectorReaderIiEC2ERNS0_14ConstantVectorIiEE.exit

_ZN8facebook5velox4exec20ConstantVectorReaderIiEC2ERNS0_14ConstantVectorIiEE.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !831, !range !307, !noundef !308
  %i.p = xor i8 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 137 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8763, !range !307, !noundef !308
  %i.s = or i8 %i.r, %i.p
  %i.t = or i8 %i.s, %i.m                         ; 2 uses
  store i8 %i.t, ptr %i.q, align 1, !tbaa !8763
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8facebook5velox4exec20ConstantVectorReaderIiEC2ERNS0_14ConstantVectorIiEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr %20, ptr %19, align 8
  %.sroa.224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %3, ptr %.sroa.224.0..sroa_idx.i.i, align 8
  %.sroa.325.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %0, ptr %.sroa.325.0..sroa_idx.i.i, align 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8771, !nonnull !308, !align !414
  %i.x = load ptr, ptr %1, align 8, !tbaa !8760
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr %1, ptr %16, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %19, ptr %i.y, align 8
  store ptr %1, ptr %17, align 8
  store ptr %16, ptr %18, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %17, ptr %i.z, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !8774
  call void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_iEEEJSD_iEEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EENSK_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKS1_SS_SU_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %i.x, ptr noundef nonnull byval(%class.anon.3037) align 8 %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_20ConstantVectorReaderIS9_EENSF_IiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_.exit

bb.e:                                             ; preds = %_ZN8facebook5velox4exec20ConstantVectorReaderIiEC2ERNS0_14ConstantVectorIiEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr %0, ptr %15, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %20, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !8771, !nonnull !308, !align !414
  %i.ac = load ptr, ptr %1, align 8, !tbaa !8760
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %1, ptr %12, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %15, ptr %i.ad, align 8
  store ptr %1, ptr %13, align 8
  store ptr %12, ptr %14, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %13, ptr %i.ae, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !8776
  call void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_iEEEJSD_iEEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EENSK_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E0_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKS1_SS_SU_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %i.ac, ptr noundef nonnull byval(%class.anon.3046) align 8 %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_20ConstantVectorReaderIS9_EENSF_IiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_.exit

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_20ConstantVectorReaderIS9_EENSF_IiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2653
  store ptr %i.ah, ptr %21, align 8, !tbaa !8778
  %i.ai = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !8780
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !831, !range !307, !noundef !308
  %i.al = xor i8 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 137 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8763, !range !307, !noundef !308
  %i.ao = or i8 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1249
  %i.ar = icmp ne ptr %i.aq, null
  %22 = zext i1 %i.ar to i8
  %23 = or i8 %i.ao, %22                          ; 2 uses
  store i8 %23, ptr %i.am, align 1, !tbaa !8763
  %24 = trunc nuw i8 %23 to i1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %21, ptr %11, align 8
  %.sroa.224.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %3, ptr %.sroa.224.0..sroa_idx.i.i13, align 8
  %.sroa.325.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %0, ptr %.sroa.325.0..sroa_idx.i.i14, align 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8771, !nonnull !308, !align !414
  %i.au = load ptr, ptr %1, align 8, !tbaa !8760
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %1, ptr %8, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %11, ptr %i.av, align 8
  store ptr %1, ptr %9, align 8
  store ptr %8, ptr %10, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.aw, align 8, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !8781
  call void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_iEEEJSD_iEEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EENS3_16FlatVectorReaderIiEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E_EEvSP_ST_EUlST_E_ZNKSI_ISY_EEvSP_ST_EUlST_E0_EEvRKS1_ST_SV_EUlST_E_EEvST_(ptr noundef nonnull align 8 dereferenceable(38) %i.au, ptr noundef nonnull byval(%class.anon.3073) align 8 %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_20ConstantVectorReaderIS9_EENS1_16FlatVectorReaderIiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISO_EEDpRT0_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %0, ptr %7, align 8
  %.sroa.2.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i.i11, align 8
  %.sroa.3.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %21, ptr %.sroa.3.0..sroa_idx.i.i12, align 8
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !8771, !nonnull !308, !align !414
  %i.az = load ptr, ptr %1, align 8, !tbaa !8760
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %1, ptr %4, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %7, ptr %i.ba, align 8
  store ptr %1, ptr %5, align 8
  store ptr %4, ptr %6, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.bb, align 8, !tbaa !75
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ay, ptr %i.bc, align 8, !tbaa !8783
  call void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_iEEEJSD_iEEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EENS3_16FlatVectorReaderIiEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E0_EEvSP_ST_EUlST_E_ZNKSI_ISY_EEvSP_ST_EUlST_E0_EEvRKS1_ST_SV_EUlST_E_EEvST_(ptr noundef nonnull align 8 dereferenceable(38) %i.az, ptr noundef nonnull byval(%class.anon.3078) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_20ConstantVectorReaderIS9_EENS1_16FlatVectorReaderIiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISO_EEDpRT0_.exit

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_20ConstantVectorReaderIS9_EENS1_16FlatVectorReaderIiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISO_EEDpRT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_20ConstantVectorReaderIS9_EENS1_16FlatVectorReaderIiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISO_EEDpRT0_.exit, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_20ConstantVectorReaderIS9_EENSF_IiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(138) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.3140, align 8           ; 5 uses
  %5 = alloca %class.anon.3141, align 8           ; 4 uses
  %6 = alloca %class.anon.3142, align 8           ; 6 uses
  %7 = alloca %class.anon.3131, align 8           ; 6 uses
  %8 = alloca %class.anon.3135, align 8           ; 5 uses
  %9 = alloca %class.anon.3136, align 8           ; 4 uses
  %10 = alloca %class.anon.3137, align 8          ; 6 uses
  %11 = alloca %class.anon.3130, align 8          ; 6 uses
  %12 = alloca %class.anon.3108, align 8          ; 5 uses
  %13 = alloca %class.anon.3109, align 8          ; 4 uses
  %14 = alloca %class.anon.3110, align 8          ; 6 uses
  %15 = alloca %class.anon.3099, align 8          ; 6 uses
  %16 = alloca %class.anon.3103, align 8          ; 5 uses
  %17 = alloca %class.anon.3104, align 8          ; 4 uses
  %18 = alloca %class.anon.3105, align 8          ; 6 uses
  %19 = alloca %class.anon.3098, align 8          ; 6 uses
  %20 = alloca %"struct.facebook::velox::exec::ConstantVectorReader.3025", align 8 ; 6 uses
  %21 = alloca %"struct.facebook::velox::exec::FlatVectorReader.3027", align 8 ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !669
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !664  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !670
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.g = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i8 0, ptr %i.g, align 4, !tbaa !1540
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.i = load i8, ptr %i.h, align 4, !tbaa !8772, !range !307, !noundef !308
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN8facebook5velox4exec20ConstantVectorReaderIiEC2ERNS0_14ConstantVectorIiEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %.sroa.0.0.insert.ext.i = zext i32 %i.l to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %20, align 8
  br label %_ZN8facebook5velox4exec20ConstantVectorReaderIiEC2ERNS0_14ConstantVectorIiEE.exit

_ZN8facebook5velox4exec20ConstantVectorReaderIiEC2ERNS0_14ConstantVectorIiEE.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2669
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1249
  %i.r = icmp ne ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 137 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8763, !range !307, !noundef !308
  %22 = zext i1 %i.r to i8
  %23 = or i8 %i.t, %22
  %i.u = or i8 %23, %i.m                          ; 2 uses
  store i8 %i.u, ptr %i.s, align 1, !tbaa !8763
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8facebook5velox4exec20ConstantVectorReaderIiEC2ERNS0_14ConstantVectorIiEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr %20, ptr %19, align 8
  %.sroa.224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %3, ptr %.sroa.224.0..sroa_idx.i.i, align 8
  %.sroa.325.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %0, ptr %.sroa.325.0..sroa_idx.i.i, align 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8771, !nonnull !308, !align !414
  %i.y = load ptr, ptr %1, align 8, !tbaa !8760
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr %1, ptr %16, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %19, ptr %i.z, align 8
  store ptr %1, ptr %17, align 8
  store ptr %16, ptr %18, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %17, ptr %i.aa, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !8785
  call void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_iEEEJSD_iEEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EENS3_20ConstantVectorReaderIiEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E_EEvSP_ST_EUlST_E_ZNKSI_ISY_EEvSP_ST_EUlST_E0_EEvRKS1_ST_SV_EUlST_E_EEvST_(ptr noundef nonnull align 8 dereferenceable(38) %i.y, ptr noundef nonnull byval(%class.anon.3105) align 8 %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIS9_EENS1_20ConstantVectorReaderIiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISO_EEDpRT0_.exit

bb.e:                                             ; preds = %_ZN8facebook5velox4exec20ConstantVectorReaderIiEC2ERNS0_14ConstantVectorIiEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr %0, ptr %15, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %20, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !8771, !nonnull !308, !align !414
  %i.ad = load ptr, ptr %1, align 8, !tbaa !8760
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %1, ptr %12, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %15, ptr %i.ae, align 8
  store ptr %1, ptr %13, align 8
  store ptr %12, ptr %14, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %13, ptr %i.af, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !8787
  call void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_iEEEJSD_iEEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EENS3_20ConstantVectorReaderIiEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E0_EEvSP_ST_EUlST_E_ZNKSI_ISY_EEvSP_ST_EUlST_E0_EEvRKS1_ST_SV_EUlST_E_EEvST_(ptr noundef nonnull align 8 dereferenceable(38) %i.ad, ptr noundef nonnull byval(%class.anon.3110) align 8 %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIS9_EENS1_20ConstantVectorReaderIiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISO_EEDpRT0_.exit

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIS9_EENS1_20ConstantVectorReaderIiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISO_EEDpRT0_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2653
  store ptr %i.ai, ptr %21, align 8, !tbaa !8778
  %i.aj = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !8780
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2669
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1249
  %i.ao = icmp ne ptr %i.an, null
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 137 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8763, !range !307, !noundef !308
  %24 = zext i1 %i.ao to i8
  %25 = or i8 %i.aq, %24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1249
  %i.at = icmp ne ptr %i.as, null
  %26 = zext i1 %i.at to i8
  %27 = or i8 %25, %26                            ; 2 uses
  store i8 %27, ptr %i.ap, align 1, !tbaa !8763
  %28 = trunc nuw i8 %27 to i1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %21, ptr %11, align 8
  %.sroa.224.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %3, ptr %.sroa.224.0..sroa_idx.i.i13, align 8
  %.sroa.325.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %0, ptr %.sroa.325.0..sroa_idx.i.i14, align 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8771, !nonnull !308, !align !414
  %i.aw = load ptr, ptr %1, align 8, !tbaa !8760
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %1, ptr %8, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %11, ptr %i.ax, align 8
  store ptr %1, ptr %9, align 8
  store ptr %8, ptr %10, align 8, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.ay, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.av, ptr %i.az, align 8, !tbaa !8789
  call void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_iEEEJSD_iEEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EENSK_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKS1_SS_SU_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %i.aw, ptr noundef nonnull byval(%class.anon.3137) align 8 %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIS9_EENSF_IiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %0, ptr %7, align 8
  %.sroa.2.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i.i11, align 8
  %.sroa.3.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %21, ptr %.sroa.3.0..sroa_idx.i.i12, align 8
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !8771, !nonnull !308, !align !414
  %i.bb = load ptr, ptr %1, align 8, !tbaa !8760
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %1, ptr %4, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %7, ptr %i.bc, align 8
  store ptr %1, ptr %5, align 8
  store ptr %4, ptr %6, align 8, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.bd, align 8, !tbaa !75
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !8791
  call void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_iEEEJSD_iEEEE8applyUdfIZNKSH_7iterateIJNS3_16FlatVectorReaderISD_EENSK_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E0_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKS1_SS_SU_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %i.bb, ptr noundef nonnull byval(%class.anon.3142) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIS9_EENSF_IiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_.exit

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIS9_EENSF_IiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIS9_EENSF_IiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_.exit, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIS9_EENS1_20ConstantVectorReaderIiEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISO_EEDpRT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJSD_iEEEJSD_iEEEE8applyUdfIZNKSH_7iterateIJNS3_20ConstantVectorReaderISD_EENSK_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKS1_SS_SU_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.3037) align 8 %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.474", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 8 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1089, !range !307, !noundef !308
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !85, !range !307
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1015
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1016 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1014
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !743    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i100.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i100.not, label %.critedge.i.i.i, label %.lr.ph102

bb.f:                                             ; preds = %.lr.ph102
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i101, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph102, label %.critedge.i.i.i, !llvm.loop !1170

.lr.ph102:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i101 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i101, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !368
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1170

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !368
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph102, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph102 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.at

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1016 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1015 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph71, label %.loopexit57

.lr.ph71:                                         ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !8774 ; 2 uses
  %.pre81 = load ptr, ptr %1, align 8, !tbaa !8793 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre81, i64 8
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  %.sroa.4.4..sroa_idx131 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph71, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EENSI_IiEEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E_EEvSM_SQ_EUlSQ_E_ZNKSG_ISV_EEvSM_SQ_EUlSQ_E0_EEvRKNS0_17SelectivityVectorESQ_SS_ENKUlSQ_E_clIiEEDaSQ_.exit
  %i.ap = phi i32 [ %i.ag, %.lr.ph71 ], [ %i.hs, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_iEEEJSB_iEEEE8applyUdfIZNKSF_7iterateIJNS1_20ConstantVectorReaderISB_EENSI_IiEEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E_EEvSM_SQ_EUlSQ_E_ZNKSG_ISV_EEvSM_SQ_EUlSQ_E0_EEvRKNS0_17SelectivityVectorESQ_SS_ENKUlSQ_E_clIiEEDaSQ_.exit ] ; 5 uses
  %i.aq = load ptr, ptr %.pre81, align 8, !tbaa !8794, !nonnull !308, !align !414 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88 ; 2 uses
  store i32 %i.ap, ptr %i.ar, align 8, !tbaa !787
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !8797, !nonnull !308, !align !414 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8798, !noalias !8802, !nonnull !308, !align !414 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !831, !range !307, !noalias !8802, !noundef !308
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.j, label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !8805, !noalias !8802, !nonnull !308, !align !915 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !1540, !range !307, !noalias !8802, !noundef !308
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %bb.x

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !8806
  %.sroa.0.0.copyload.i = load i64, ptr %i.av, align 8, !noalias !8806 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
end_hunk_0
