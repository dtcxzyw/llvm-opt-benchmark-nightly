inline.NumInlined: 1811
inline.NumDeleted: 673
begin_hunk_0_@_ZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimE:bb.a
  br i1 %i.vp, label %.critedge153.i, label %.lr.ph546.split.i

.lr.ph546.split.i:                                ; preds = %.lr.ph546.i, %.critedge.i
  %.sroa.0494.0545.i = phi ptr [ %i.xk, %.critedge.i ], [ %i.vh, %.lr.ph546.i ] ; 2 uses
  %i.vq = load ptr, ptr %28, align 16, !tbaa !257, !noalias !217 ; 2 uses
  %i.vr = load ptr, ptr %i.sw, align 8, !tbaa !257, !noalias !217 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
end_hunk_0
begin_hunk_1_@_ZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimE:bb.a
  br i1 %i.vu, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph546.split.i, %bb.bq
  %.sroa.0490.0544.i = phi ptr [ %i.vt, %bb.bq ], [ %i.vq, %.lr.ph546.split.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19, !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19, !noalias !217
  invoke void @_ZNK5arrow8internal16PlatformFilename4JoinERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::internal::PlatformFilename") align 8 %41, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0494.0545.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0490.0544.i)
end_hunk_1
begin_hunk_2_@_ZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimE:bb.a
  br label %.body65.i

bb.fe:                                            ; preds = %bb.fc, %.lr.ph.i106
  %.sroa.0124.0135.i = phi ptr [ %i.aji, %.lr.ph.i106 ], [ %i.ajo, %bb.fc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !308
  %i.ajr = load ptr, ptr %8, align 8, !tbaa !223, !noalias !308
  %i.ajs = load i64, ptr %i.acm, align 8, !tbaa !221, !noalias !308
end_hunk_2
begin_hunk_3_@_ZN5arrow2io8internal12_GLOBAL__N_110try_dlopenERKSt6vectorINS_8internal16PlatformFilenameESaIS5_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.06 = phi ptr [ %i.a, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN5arrow8internal18LoadDynamicLibraryERKNS0_16PlatformFilenameE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.2") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01.06)
          to label %bb.d unwind label %bb.e
end_hunk_3
begin_hunk_4_@_ZN5arrow2io8internal12_GLOBAL__N_118MakeFilenameVectorERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  %i.r = phi ptr [ %i.i, %.lr.ph ], [ %i.m, %bb.b ]
  %.01725 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.01725 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !223
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !221
end_hunk_4
begin_hunk_5_@_ZN5arrow2io8internal12_GLOBAL__N_118MakeFilenameVectorERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a

_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit: ; preds = %bb.g
  %i.z = load ptr, ptr %2, align 16, !tbaa !258
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.01725
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow8internal16PlatformFilenameaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l       ; 0 uses

end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_:bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -8
  tail call void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !259  ; 3 uses
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_:bb.a
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit, !llvm.loop !457

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow8internal16PlatformFilenameaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %bb.f

end_hunk_7
