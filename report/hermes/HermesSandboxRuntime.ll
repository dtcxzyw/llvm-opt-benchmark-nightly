begin_hunk_0
; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl30createFunctionFromHostFunctionERKN8facebook3jsi10PropNameIDEjSt8functionIFNS2_5ValueERNS2_7RuntimeERKS7_PSA_mEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::Function") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef %3, ptr noundef captures(none) %4) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function", align 16    ; 10 uses
  %6 = alloca %"class.std::function", align 8     ; 5 uses
  %7 = alloca %"class.std::function", align 8     ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
end_hunk_0
begin_hunk_1
  %storemerge.i.i.i.i.i.i = phi ptr [ %i.cp, %bb.p ], [ %i.ch, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i6.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EEixEm.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !575
  %.sroa.0.i.i.i.sroa.0.0.copyload.pre.i.i = load <2 x i64>, ptr %5, align 16, !tbaa !24
  br label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i6.i.i

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i6.i.i: ; preds = %bb.q, %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EEixEm.exit.i.i
  %.sroa.0.i.i.i.sroa.0.0.copyload.i.i = phi <2 x i64> [ %.sroa.0.i.i.i.sroa.0.0.copyload.pre.i.i, %bb.q ], [ zeroinitializer, %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EEixEm.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %storemerge.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !575
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload.i.i, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !24
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !307 ; 3 uses
  store ptr %i.ct, ptr %i.cr, align 16, !tbaa !307
  store ptr %i.bs, ptr %i.cs, align 8, !tbaa !307
  %i.cu = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !307
end_hunk_1
