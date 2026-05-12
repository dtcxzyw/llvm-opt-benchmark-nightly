inline.NumInlined: 3109
inline.NumDeleted: 1191
begin_hunk_0_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %65 = alloca %"struct.fmt::v11::detail::format_arg_store.353", align 16 ; 5 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %67 = alloca %"struct.facebook::velox::StringView", align 8 ; 9 uses
  %68 = alloca %"class.std::shared_ptr.46", align 16 ; 4 uses
  %69 = alloca %"class.std::shared_ptr.324", align 16 ; 8 uses
  %i.i = alloca i128, align 16                    ; 5 uses
  %70 = alloca %"class.std::shared_ptr.46", align 8 ; 5 uses
  %71 = alloca %"class.std::shared_ptr.282", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #28, !noalias !532
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.46") align 8 %68, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.abd, ptr noundef %5), !noalias !532
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %100 = load <2 x ptr>, ptr %68, align 16, !tbaa !168, !noalias !536 ; 2 uses
  store <2 x ptr> %100, ptr %69, align 16, !tbaa !168, !alias.scope !537, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28, !noalias !532
  %i.abe = load ptr, ptr %3, align 8, !tbaa !169, !noalias !526
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  br i1 %.not.i41, label %_ZN8facebook5velox3row12_GLOBAL__N_118deserializeStringsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit, label %.lr.ph.i42.a

.lr.ph.i42.a:                                     ; preds = %bb.dk
  %.4..4..4..4..4..4..4..sroa_idx646 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %.4..4..4..4..4..4..4..sroa_idx647 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %.8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %67, i64 8
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %.8..8..8..8..8..8..8..sroa_idx648 = getelementptr inbounds nuw i8, ptr %67, i64 8
  br label %bb.dl

_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit.i: ; preds = %bb.dw
  %101 = load <2 x ptr>, ptr %69, align 16, !tbaa !168, !noalias !526
  br label %_ZN8facebook5velox3row12_GLOBAL__N_118deserializeStringsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit

bb.dl:                                            ; preds = %.lr.ph.i42.a, %bb.dw
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i48, %bb.dw ], [ 0, %.lr.ph.i42.a ] ; 9 uses
  %i.abh = lshr i64 %indvars.iv.i43, 6
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.abh
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !97, !noalias !526
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  br i1 %.not.i.i44, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %102 = load ptr, ptr %69, align 16, !tbaa !473, !noalias !526 ; 3 uses
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 56
  %i.abn = load i32, ptr %103, align 8, !tbaa !333, !noalias !526
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %102, i32 noundef %i.abn, i1 noundef zeroext true)
          to label %.noexc.i53 unwind label %.loopexit.i46, !noalias !526

.noexc.i53:                                       ; preds = %bb.dm
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %i.abo = load ptr, ptr %104, align 8, !tbaa !169, !noalias !526 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 44
  %i.abq = load i8, ptr %i.abp, align 4, !tbaa !208, !noalias !526
  %i.abr = and i8 %i.abq, 2
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %indvars.iv.i43
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !97, !noalias !526
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.acg ; 2 uses
  %105 = load ptr, ptr %69, align 16, !tbaa !473, !noalias !526
  %.val.i45 = load i32, ptr %i.ach, align 4, !tbaa !3, !noalias !526 ; 6 uses
  %i.aci = getelementptr i8, ptr %i.ach, i64 4
  %.val22.i = load i32, ptr %i.aci, align 4, !tbaa !3, !noalias !526
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %.8..8..sroa.2.0.copyload.i.i = phi ptr [ undef, %bb.dt ], [ %.8..8..8..8..8..8..8..sroa.2.0.copyload.pre.i.i, %bb.du ], [ %i.ack, %bb.dv ]
  %.0..0..0..0..0..0..0..sroa.0.0.copyload.i.i = load i64, ptr %67, align 8, !noalias !526
  %i.acy = trunc nuw nsw i64 %indvars.iv.i43 to i32
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272) %105, i32 noundef %i.acy, i64 %.0..0..0..0..0..0..0..sroa.0.0.copyload.i.i, ptr %.8..8..sroa.2.0.copyload.i.i)
          to label %_ZN8facebook5velox3row12_GLOBAL__N_110readStringEPKcS4_PNS0_10FlatVectorINS0_10StringViewEEEi.exit.i unwind label %.loopexit.i46, !noalias !526

_ZN8facebook5velox3row12_GLOBAL__N_110readStringEPKcS4_PNS0_10FlatVectorINS0_10StringViewEEEi.exit.i: ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit.i.i
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  store i64 %i.adc, ptr %i.ada, align 8, !tbaa !97, !noalias !526
  %indvars.iv.next.i48 = add nuw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %i.abc
  br i1 %exitcond.not.i49, label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit.i, label %bb.dl, !llvm.loop !544

_ZN8facebook5velox3row12_GLOBAL__N_118deserializeStringsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit: ; preds = %bb.dk, %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit.i
  %106 = phi <2 x ptr> [ %101, %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit.i ], [ %100, %bb.dk ]
  store <2 x ptr> %106, ptr %0, align 8, !tbaa !168, !alias.scope !526
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28, !noalias !526
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

end_hunk_7
begin_hunk_8_@_ZN8facebook5velox3row12_GLOBAL__N_123deserializeStringArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERKS9_IiSaIiEERSM_PNS0_6memory10MemoryPoolE:bb.a
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.353", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.46", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr.324", align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !166    ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox3row12_GLOBAL__N_123deserializeStringArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERKS9_IiSaIiEERSM_PNS0_6memory10MemoryPoolE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !1186
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.46") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.06.lcssa.i, ptr noundef %5), !noalias !1186
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %11 = load <2 x ptr>, ptr %9, align 16, !tbaa !168, !noalias !1192 ; 2 uses
  store <2 x ptr> %11, ptr %10, align 16, !tbaa !168, !alias.scope !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1186
  br i1 %.not.i, label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_19totalSizeEPKim.exit
  %.4..4..4..4..4..sroa_idx47 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.4..4..4..4..4..sroa_idx48 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox3row12_GLOBAL__N_123deserializeStringArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERKS9_IiSaIiEERSM_PNS0_6memory10MemoryPoolE:bb.a
  br label %bb.b

_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit: ; preds = %.loopexit
  %12 = load <2 x ptr>, ptr %10, align 16, !tbaa !168
  br label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit, %_ZN8facebook5velox3row12_GLOBAL__N_19totalSizeEPKim.exit
  %13 = phi <2 x ptr> [ %12, %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit ], [ %11, %_ZN8facebook5velox3row12_GLOBAL__N_19totalSizeEPKim.exit ]
  store <2 x ptr> %13, ptr %0, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  ret void

end_hunk_10
begin_hunk_11_@_ZN8facebook5velox3row12_GLOBAL__N_123deserializeStringArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERKS9_IiSaIiEERSM_PNS0_6memory10MemoryPoolE:bb.a
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %14 = load ptr, ptr %10, align 16, !tbaa !473   ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.bc = load i32, ptr %15, align 8, !tbaa !333
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %14, i32 noundef %i.bc, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit4

.noexc:                                           ; preds = %bb.e
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.bd = load ptr, ptr %16, align 8, !tbaa !169  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !208
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox3row12_GLOBAL__N_123deserializeStringArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERKS9_IiSaIiEERSM_PNS0_6memory10MemoryPoolE:bb.a
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx ; 2 uses
  %i.bz = sext i32 %i.at to i64
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %i.bz ; 2 uses
  %17 = load ptr, ptr %10, align 16, !tbaa !473
  %.val = load i32, ptr %i.ca, align 4, !tbaa !3  ; 6 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 4
  %.val51 = load i32, ptr %i.cb, align 4, !tbaa !3
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox3row12_GLOBAL__N_123deserializeStringArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERKS9_IiSaIiEERSM_PNS0_6memory10MemoryPoolE:bb.a
_ZN8facebook5velox10StringViewC2EPKci.exit.i:     ; preds = %bb.n, %bb.m, %bb.l
  %.8..8..sroa.2.0.copyload.i = phi ptr [ undef, %bb.l ], [ %.8..8..8..8..8..sroa.2.0.copyload.pre.i, %bb.m ], [ %i.cd, %bb.n ]
  %.0..0..0..0..0..sroa.0.0.copyload.i = load i64, ptr %8, align 8
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272) %17, i32 noundef %.18, i64 %.0..0..0..0..0..sroa.0.0.copyload.i, ptr %.8..8..sroa.2.0.copyload.i)
          to label %_ZN8facebook5velox3row12_GLOBAL__N_110readStringEPKcS4_PNS0_10FlatVectorINS0_10StringViewEEEi.exit unwind label %.loopexit4

_ZN8facebook5velox3row12_GLOBAL__N_110readStringEPKcS4_PNS0_10FlatVectorINS0_10StringViewEEEi.exit: ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit.i
end_hunk_13
