inline.NumInlined: 1056
inline.NumDeleted: 590
begin_hunk_0_@_ZNK6hermes18SourceMapGenerator25mergedWithInputSourceMapsEv
define hidden void @_ZNK6hermes18SourceMapGenerator25mergedWithInputSourceMapsEv(ptr dead_on_unwind noalias writable sret(%"class.hermes::SourceMapGenerator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Optional.18", align 4 ; 8 uses
  %.sroa.15 = alloca [3 x i8], align 1            ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.llvh::Optional", align 16   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
end_hunk_0
begin_hunk_1_@_ZNK6hermes18SourceMapGenerator25mergedWithInputSourceMapsEv:bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 24 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 4, !tbaa !86, !range !17, !noalias !173, !noundef !18
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.i, label %5

bb.i:                                             ; preds = %.lr.ph
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 4
end_hunk_1
begin_hunk_2_@_ZNK6hermes18SourceMapGenerator25mergedWithInputSourceMapsEv:bb.a
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3
  %i.do = icmp ugt i64 %i.dn, %i.dh
  br i1 %i.do, label %bb.j, label %5

bb.j:                                             ; preds = %bb.i
  %i.dp = sext i32 %i.dg to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !101, !noalias !173 ; 7 uses
  %.not.i24 = icmp eq ptr %i.dr, null
  br i1 %.not.i24, label %5, label %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit

_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !173
end_hunk_2
begin_hunk_3_@_ZNK6hermes18SourceMapGenerator25mergedWithInputSourceMapsEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

5:                                                ; preds = %.lr.ph, %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %.sroa.075.0.copyload269 = load i32, ptr %.sroa.0123.0171, align 4 ; 7 uses
  %.sroa.15.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.15.0..sroa_idx271, i64 3, i1 false)
  %6 = load i8, ptr %i.dc, align 4, !tbaa !86, !range !17, !noundef !18
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %bb.bb, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.bb:                                            ; preds = %5
  %.sroa.578.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 4
  %.sroa.9.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 8
  %.sroa.9.4.copyload = load i32, ptr %.sroa.9.4..sroa_idx, align 4 ; 6 uses
end_hunk_3
begin_hunk_4_@_ZNK6hermes18SourceMapGenerator25mergedWithInputSourceMapsEv:bb.a
  %.sroa.10.4.copyload = load i32, ptr %.sroa.10.4..sroa_idx, align 4 ; 6 uses
  %.sroa.11.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 16
  %.sroa.11.4.copyload = load i64, ptr %.sroa.11.4..sroa_idx, align 4 ; 6 uses
  %i.jd = load i32, ptr %.sroa.578.0..sroa_idx270, align 4, !tbaa !91 ; 2 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.je ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK6hermes18SourceMapGenerator25mergedWithInputSourceMapsEv:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lu) #17
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53, %bb.bw, %bb.bu, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50, %5
  %.sroa.063.2317 = phi ptr [ %.sroa.063.1179, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.063.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.063.1179, %5 ], [ %.sroa.063.1179, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.063.1179, %bb.bu ], [ %.sroa.063.1179, %bb.bw ], [ %.sroa.063.1179, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.063.1179, %bb.ca ], [ %.sroa.063.1179, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ] ; 2 uses
  %.sroa.3.2315 = phi ptr [ %.sroa.3.1178, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.3.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.3.1178, %5 ], [ %.sroa.3.1178, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.3.1178, %bb.bu ], [ %.sroa.3.1178, %bb.bw ], [ %.sroa.3.1178, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.3.1178, %bb.ca ], [ %.sroa.3.1178, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ] ; 2 uses
  %.sroa.5.2313 = phi ptr [ %.sroa.5.1177, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.5.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.5.1177, %5 ], [ %.sroa.5.1177, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.5.1177, %bb.bu ], [ %.sroa.5.1177, %bb.bw ], [ %.sroa.5.1177, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.5.1177, %bb.ca ], [ %.sroa.5.1177, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ] ; 2 uses
  %.sroa.075.0.copyload278299 = phi i32 [ %.sroa.075.0.copyload, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.075.0.copyload, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.075.0.copyload269, %5 ], [ %.sroa.075.0.copyload269, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.075.0.copyload269, %bb.bu ], [ %.sroa.075.0.copyload269, %bb.bw ], [ %.sroa.075.0.copyload269, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.075.0.copyload269, %bb.ca ], [ %.sroa.075.0.copyload269, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ] ; 2 uses
  %.sroa.12.1 = phi i8 [ 0, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 0, %5 ], [ 1, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ 1, %bb.bu ], [ 1, %bb.bw ], [ 1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ 1, %bb.ca ], [ 1, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ] ; 2 uses
  %.sroa.11.1 = phi i64 [ 0, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 0, %5 ], [ %.sroa.11.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.11.4.copyload, %bb.bu ], [ %.sroa.11.4.copyload, %bb.bw ], [ %.sroa.11.4.copyload, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.11.4.copyload, %bb.ca ], [ %.sroa.11.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ] ; 2 uses
  %.sroa.10.1 = phi i32 [ undef, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.0.i.sroa.6.0.copyload, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ undef, %5 ], [ %.sroa.10.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.10.4.copyload, %bb.bu ], [ %.sroa.10.4.copyload, %bb.bw ], [ %.sroa.10.4.copyload, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.10.4.copyload, %bb.ca ], [ %.sroa.10.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ] ; 2 uses
  %.sroa.9.1 = phi i32 [ undef, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %.sroa.0.i.sroa.5.0.copyload, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ undef, %5 ], [ %.sroa.9.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.9.4.copyload, %bb.bu ], [ %.sroa.9.4.copyload, %bb.bw ], [ %.sroa.9.4.copyload, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.9.4.copyload, %bb.ca ], [ %.sroa.9.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ] ; 2 uses
  %.sroa.578.1 = phi i32 [ undef, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ], [ %i.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ undef, %5 ], [ %i.ls, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %i.lt, %bb.bu ], [ %i.lt, %bb.bw ], [ %i.lt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %i.lt, %bb.ca ], [ %i.lk, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.9129.0173, %.sroa.14132.0172
  br i1 %.not.i.i, label %bb.cc, label %bb.cb

end_hunk_5
