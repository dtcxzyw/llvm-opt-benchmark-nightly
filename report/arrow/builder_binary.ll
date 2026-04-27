inline.NumInlined: 1516
inline.NumDeleted: 700
begin_hunk_0_@_ZN5arrow22FixedSizeBinaryBuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = load ptr, ptr %1, align 8, !tbaa !223    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal20ChunkedStringBuilder6FinishEPSt6vectorISt10shared_ptrINS_5ArrayEESaIS5_EE:_ZN5arrow6StatusD2Ev.exit
  br label %bb.ab

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.028.031 = phi ptr [ %i.c, %.lr.ph ], [ %i.cc, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.h = load ptr, ptr %.sroa.028.031, align 8, !tbaa !345
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
end_hunk_1
begin_hunk_2_@_ZN5arrow9ArrayDataC2ERKS0_:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ab, %.noexc10 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.af, %.noexc10 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !133 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !146
end_hunk_2
begin_hunk_3_@_ZN5arrow9ArrayDataC2ERKS0_:bb.a

.lr.ph.i.i.i.i.i12:                               ; preds = %.noexc20, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i13 = phi ptr [ %i.bt, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.bd, %.noexc20 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i14 = phi ptr [ %i.bs, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.bh, %.noexc20 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i14, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !133 ; 2 uses
  %i.bm = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i14, align 8, !tbaa !146
end_hunk_3
