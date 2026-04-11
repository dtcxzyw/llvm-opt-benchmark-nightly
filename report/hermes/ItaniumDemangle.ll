inline.NumInlined: 2019
inline.NumDeleted: 419
begin_hunk_0_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseTemplateArgsEb:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 3 uses
  %i.am = ptrtoint ptr %i.ah to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EED2Ev.exit.us
end_hunk_0
begin_hunk_1_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseTemplateArgsEb:bb.a
bb.e:                                             ; preds = %bb.d, %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.ad, ptr %2, align 8, !tbaa !29
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !30
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.ac, align 16, !tbaa !29 ; 5 uses
  %i.as = icmp eq ptr %i.ar, %i.ah
  br i1 %i.as, label %bb.g, label %bb.f
end_hunk_1
begin_hunk_2_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseTemplateArgsEb:bb.a
  %i.at = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !84
  store <2 x ptr> %i.at, ptr %i.ae, align 8, !tbaa !84
  store ptr %i.ah, ptr %i.ac, align 16, !tbaa !29
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !30
  store ptr %i.ak, ptr %i.aj, align 16, !tbaa !31
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEC2EOS4_.exit.us

bb.g:                                             ; preds = %bb.e
end_hunk_2
begin_hunk_3_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseTemplateArgsEb:bb.a
  %i.bi = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !84
  store <2 x ptr> %i.bi, ptr %i.ai, align 8, !tbaa !84
  store ptr %i.ad, ptr %2, align 8, !tbaa !29
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !30
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !31
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEaSEOS4_.exit.us

bb.n:                                             ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEC2EOS4_.exit.us
end_hunk_3
begin_hunk_4_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseTemplateArgsEb:bb.a
bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef %i.be) #20
  store ptr %i.ah, ptr %i.ac, align 16, !tbaa !29
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !30
  store ptr %i.ak, ptr %i.aj, align 16, !tbaa !31
  %.pre.i21.us = load ptr, ptr %2, align 8, !tbaa !29
  br label %bb.p

end_hunk_4
