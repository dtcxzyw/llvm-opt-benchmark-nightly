inline.NumInlined: 27259
inline.NumDeleted: 5979
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  %49 = alloca %"struct.fmt::v11::detail::format_arg_store.356", align 16 ; 5 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %51 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %52 = alloca %"class.std::optional.283", align 8 ; 4 uses
  %.sroa.5.i283 = alloca [12 x i8], align 4       ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  %i.n = alloca i64, align 8                      ; 4 uses
  %57 = alloca %"struct.fmt::v11::detail::format_arg_store.320", align 16 ; 5 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %58 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %59 = alloca %"class.std::optional.283", align 8 ; 4 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  unreachable

_ZNSt8functionIFN5boost13intrusive_ptrIN8facebook5velox6BufferEEEPKvmEEC2ERKS9_.exit230: ; preds = %bb.ik, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit224
  %i.adi = trunc i64 %i.acp to i32                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7796)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  store i32 %i.adi, ptr %i.p, align 4, !tbaa !3, !noalias !7796
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #38, !noalias !7796
  %sext655 = shl i64 %i.acp, 32
  %i.adj = ashr exact i64 %sext655, 32            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #38, !noalias !7796
  %i.adk = getelementptr inbounds nuw i8, ptr %59, i64 16
  store i8 0, ptr %i.adk, align 8, !tbaa !1570, !noalias !7796
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  br i1 %.not.i233, label %._crit_edge.thread.i, label %.lr.ph.i234.preheader

.lr.ph.i234.preheader:                            ; preds = %bb.ip
  %umax = call i64 @llvm.umax.i64(i64 %i.adj, i64 1)
  %.sroa.5.i.4.i.4.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 4
  %.sroa.5.i.4.i.4.i.4.i.4.i.4..sroa_idx1488 = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 4
  br label %.lr.ph.i234
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  br label %bb.jv

.lr.ph.i234:                                      ; preds = %.lr.ph.i234.preheader, %bb.ja
  %.076.i = phi i1 [ %i.aem, %bb.ja ], [ false, %.lr.ph.i234.preheader ]
  %storemerge75.i = phi i64 [ %i.aen, %bb.ja ], [ 0, %.lr.ph.i234.preheader ] ; 4 uses
  %i.ads = getelementptr [8 x i8], ptr %i.act, i64 %storemerge75.i ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  store ptr null, ptr %.sroa.5.i.4.i.4.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !139, !noalias !7796
  %i.aej = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.adw) #38, !noalias !7796, !srcloc !7806
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.5.i, ptr align 1 %i.aef, i64 %i.aej, i1 false), !noalias !7796
  br label %bb.ja

bb.iz:                                            ; preds = %bb.iw
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy, %bb.ix
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %i.adq, i64 %storemerge75.i ; 2 uses
  store i32 %i.aeg, ptr %i.ael, align 8, !tbaa !3, !noalias !7796
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.aem = or i1 %.076.i, %i.aeh                  ; 2 uses
  %i.aen = add nuw i64 %storemerge75.i, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.aen, %umax
  br i1 %exitcond.not, label %._crit_edge.i238, label %.lr.ph.i234, !llvm.loop !7808

bb.jb:                                            ; preds = %._crit_edge.i238
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #38, !noalias !7796
  %i.aeo = getelementptr inbounds [8 x i8], ptr %i.act, i64 %i.adj
  %i.aep = load i64, ptr %i.aeo, align 8, !tbaa !397, !noalias !7796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7796
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  unreachable

_ZNSt8functionIFN5boost13intrusive_ptrIN8facebook5velox6BufferEEEPKvmEEC2ERKS9_.exit282: ; preds = %bb.kj, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit276
  %i.alh = trunc i64 %i.ako to i32                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7831)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  store i32 %i.alh, ptr %i.l, align 4, !tbaa !3, !noalias !7831
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #38, !noalias !7831
  %sext656 = shl i64 %i.ako, 32
  %i.ali = ashr exact i64 %sext656, 32            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #38, !noalias !7831
  %i.alj = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i8 0, ptr %i.alj, align 8, !tbaa !1570, !noalias !7831
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  br i1 %.not.i286, label %._crit_edge.thread.i330, label %.lr.ph.i287.preheader

.lr.ph.i287.preheader:                            ; preds = %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit.i
  %umax692 = call i64 @llvm.umax.i64(i64 %i.ali, i64 1)
  %.sroa.5.i283.4.i283.4.i283.4.i283.4.i283.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i283, i64 4
  %.sroa.5.i283.4.i283.4.i283.4.i283.4.i283.4..sroa_idx1489 = getelementptr inbounds nuw i8, ptr %.sroa.5.i283, i64 4
  br label %.lr.ph.i287
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  br label %bb.ls

.lr.ph.i287:                                      ; preds = %.lr.ph.i287.preheader, %bb.kw
  %.02166.i = phi i64 [ %i.alr, %bb.kw ], [ 0, %.lr.ph.i287.preheader ] ; 3 uses
  %.02265.i = phi i1 [ %i.amn, %bb.kw ], [ false, %.lr.ph.i287.preheader ]
  %i.alr = add nuw i64 %.02166.i, 1               ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  %i.amj = zext nneg i32 %i.alw to i64
  %i.amk = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.amj) #38, !noalias !7831, !srcloc !7806
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.5.i283, ptr align 1 %i.aly, i64 %i.amk, i1 false), !noalias !7831
  br label %bb.kw

bb.kv:                                            ; preds = %bb.ks
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku, %bb.kt
  %i.amm = getelementptr inbounds nuw [16 x i8], ptr %i.alp, i64 %.02166.i ; 2 uses
  store i32 %i.alw, ptr %i.amm, align 8, !tbaa !3, !noalias !7831
  %.sroa.5.0..sroa_idx.i288 = getelementptr inbounds nuw i8, ptr %i.amm, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i288, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i283, i64 12, i1 false), !tbaa.struct !7807, !noalias !7831
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i283)
  %i.amn = or i1 %.02265.i, %i.amh                ; 2 uses
  %exitcond693.not = icmp eq i64 %i.alr, %umax692
  br i1 %exitcond693.not, label %._crit_edge.i289, label %.lr.ph.i287, !llvm.loop !7840

bb.kx:                                            ; preds = %bb.kp
  %i.amo = landingpad { ptr, i32 }
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a

bb.ky:                                            ; preds = %._crit_edge.i289
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #38, !noalias !7831
  %i.amp = getelementptr inbounds [4 x i8], ptr %i.aks, i64 %i.ali
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !3, !noalias !7831
  %i.amr = sext i32 %i.amq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7831
end_hunk_15
