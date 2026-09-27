Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3956
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtCsc4241EHy6Do_9typst_kit6server6handle:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit74: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyENtNtB4_6marker4SendNtB4y_4SyncEL_EEEB3R_.exit71, %bb.kt, %bb.nd
  %.sroa.0.2 = phi ptr [ %i.avw, %bb.nd ], [ %.sroa.0.1, %bb.kt ], [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputINtNtB4_6option6OptionNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyENtNtB4_6marker4SendNtB4y_4SyncEL_EEEB3R_.exit71 ]
  %.val26 = load i64, ptr %i.bj, align 8, !range !21, !alias.scope !55, !noundef !17 ; 2 uses
  %i.avt = icmp eq i64 %.val26, 0
  br i1 %i.avt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit82, label %bb.nb

bb.nb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit74
  %i.avu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val27 = load ptr, ptr %i.avu, align 8, !nonnull !17, !noundef !17
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef %.val26, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !9064
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit82

.body45:                                          ; preds = %bb.nc
  %i.avv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit

bb.nc:                                            ; preds = %bb.q
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i40, i8 0, i64 16, i1 false), !alias.scope !8861, !noalias !9065
  store i64 1, ptr %i.bg, align 8, !alias.scope !8861, !noalias !9065
  %.sroa.54.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i64 16, ptr %.sroa.54.0..sroa_idx.i41, align 8, !alias.scope !8861, !noalias !9065
  %.sroa.6.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store ptr %i.ct, ptr %.sroa.6.0..sroa_idx.i42, align 8, !alias.scope !8861, !noalias !9065
  %.sroa.7.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx.i43, align 8, !alias.scope !8861, !noalias !9065
  %.sroa.8.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store i16 400, ptr %.sroa.8.0..sroa_idx.i44, align 8, !alias.scope !8861, !noalias !9065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !8861
  %i.avw = invoke fastcc noundef ptr @_RINvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB6_7Request7respondNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.bh, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.bg)
          to label %bb.nd unwind label %.body45

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit74

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit82: ; preds = %bb.nb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit82
  %.sroa.0.3 = phi ptr [ %i.awa, %bb.nh ], [ %.sroa.0.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit82 ] ; 2 uses
  %.val24 = load i64, ptr %i.bn, align 8, !range !21, !alias.scope !55, !noundef !17 ; 2 uses
  %i.avx = icmp eq i64 %.val24, 0
  br i1 %i.avx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit83, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit83.sink.split

bb.nf:                                            ; preds = %bb.r
  %i.avy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.aw) #46, !noalias !9066
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http7request7RequestECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(176) %i.bh) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsc4241EHy6Do_9typst_kit.exit unwind label %bb.kv

.body:                                            ; preds = %bb.ng
  %i.avz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit39

bb.ng:                                            ; preds = %bb.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !8857, !noalias !9067
  store i64 1, ptr %i.bk, align 8, !alias.scope !8857, !noalias !9067
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i64 16, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !8857, !noalias !9067
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %i.cg, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !8857, !noalias !9067
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !8857, !noalias !9067
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i16 400, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !8857, !noalias !9067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !8857
  %i.awa = invoke fastcc noundef ptr @_RINvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB6_7Request7respondNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.bl, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.bk)
          to label %bb.nh unwind label %.body

bb.nh:                                            ; preds = %bb.ng
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.ne

bb.ni:                                            ; preds = %bb.j
  %i.awb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsbGiR87yI9G2_9tiny_http6common6HeaderEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ax) #46, !noalias !9068
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http7request7RequestECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(176) %i.bl) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs431wuiqtBa9_3url3UrlECsc4241EHy6Do_9typst_kit.exit39 unwind label %bb.kv

bb.nj:                                            ; preds = %bb.nk, %bb.b
  %.pn1711 = phi { ptr, i32 } [ %.pn1712, %bb.nk ], [ %.pn15, %bb.b ]
  resume { ptr, i32 } %.pn1711

bb.nk:                                            ; preds = %.thread, %bb.b
  %.pn1712 = phi { ptr, i32 } [ %i.bq, %.thread ], [ %.pn15, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http7request7RequestECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(176) %0) #46
          to label %bb.nj unwind label %bb.kv
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup(i32 noundef range(i32 133, 1114112) %0) unnamed_addr #14 {
bb.a:
  %i.a = lshr i32 %0, 8
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.d
    i32 22, label %bb.b
    i32 32, label %bb.f
    i32 48, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 5760
  %i.c = zext i1 %i.b to i8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %0, 12288
  %i.e = zext i1 %i.d to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = and i32 %0, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.c ], [ %i.i, %bb.d ], [ %i.c, %bb.b ], [ %i.o, %bb.f ], [ 0, %bb.a ]
  %i.j = trunc i8 %.sroa.0.0 to i1
  ret i1 %i.j

bb.f:                                             ; preds = %bb.a
  %i.k = and i32 %0, 255
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noundef !17
  %i.o = lshr i8 %i.n, 1
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXCsgSlMZLQvLVR_10native_tlsNtB2_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !49, !noundef !17 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp sgt i64 %i.a, -9223372036854775805
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.d [
    i64 -2, label %bb.c
    i64 -1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.e
  %.sroa.7.0 = phi ptr [ undef, %bb.a ], [ @320, %bb.d ], [ @19, %bb.e ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %0, %bb.d ], [ %i.f, %bb.e ], [ null, %bb.b ]
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %.sroa.7.0, 1
  ret { ptr, ptr } %i.e

bb.d:                                             ; preds = %bb.b
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs3oUPovFnLWP_4core3anyINtNtCs1xwejQucwHj_5alloc3vec3VechENtB2_3Any7type_idCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @321, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs3oUPovFnLWP_4core3anyNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecNtB2_3Any7type_idCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @322, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs3oUPovFnLWP_4core3anyReNtB2_3Any7type_idCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @323, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef ptr @_RNvXNtNtCs1xwejQucwHj_5alloc2io4utilNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyNtNtB4_4read4Read10read_exact(ptr noalias nofree nonnull readnone captures(none) %0, ptr noalias nofree nonnull readnone captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %. = select i1 %i.a, ptr null, ptr @80
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, ptr } @_RNvXNtNtCs1xwejQucwHj_5alloc2io4utilNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyNtNtB4_4read4Read11read_to_end(ptr noalias nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #17 {
bb.a:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, ptr } @_RNvXNtNtCs1xwejQucwHj_5alloc2io4utilNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyNtNtB4_4read4Read13read_vectored(ptr noalias nofree nonnull readnone captures(none) %0, ptr noalias nofree nonnull readnone align 8 captures(none) %1, i64 range(i64 0, 576460752303423488) %2) unnamed_addr #17 {
bb.a:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_RNvXNtNtCs1xwejQucwHj_5alloc2io4utilNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyNtNtB4_4read4Read14read_buf_exact(ptr noalias nofree nonnull readnone captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17
  %i.e = icmp eq i64 %i.b, %i.d
  %. = select i1 %i.e, ptr null, ptr @80
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, ptr } @_RNvXNtNtCs1xwejQucwHj_5alloc2io4utilNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyNtNtB4_4read4Read14read_to_string(ptr noalias nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #17 {
bb.a:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXNtNtCs1xwejQucwHj_5alloc2io4utilNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyNtNtB4_4read4Read16is_read_vectored(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #17 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, ptr } @_RNvXNtNtCs1xwejQucwHj_5alloc2io4utilNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyNtNtB4_4read4Read4read(ptr noalias nofree nonnull readnone captures(none) %0, ptr noalias nofree nonnull readnone captures(none) %1, i64 range(i64 0, -9223372036854775808) %2) unnamed_addr #17 {
bb.a:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @_RNvXNtNtCs1xwejQucwHj_5alloc2io4utilNtNtNtCs3oUPovFnLWP_4core2io4util5EmptyNtNtB4_4read4Read8read_buf(ptr noalias nofree nonnull readnone captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr nofree nonnull readnone captures(none) %2) unnamed_addr #17 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define internal noundef ptr @_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !9079, !noalias !9080, !nonnull !17, !noundef !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !9079, !noalias !9080, !noundef !17 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !9079, !noalias !9080, !noundef !17 ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.d) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 %..i.i ; 2 uses
  %i.f = sub nuw nsw i64 %.val1.i, %..i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9081)
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsc4241EHy6Do_9typst_kit.exit.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.a
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit.i

_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsc4241EHy6Do_9typst_kit.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.e, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !9082, !noalias !9083
  br label %bb.c

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsc4241EHy6Do_9typst_kit.exit.i
  %i.i = load i8, ptr %i.e, align 1, !noalias !9084, !noundef !17
  store i8 %i.i, ptr %1, align 1, !alias.scope !9081, !noalias !9085
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit.i
  %i.j = add i64 %i.d, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i64 [ %i.j, %bb.c ], [ %.val1.i, %bb.a ]
  %.sroa.0.0.i6 = phi ptr [ null, %bb.c ], [ @80, %bb.a ]
  store i64 %storemerge, ptr %i.c, align 8
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read11read_to_endCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !9095, !noalias !9096, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !9095, !noalias !9096, !noundef !17 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9095, !noalias !9096, !noundef !17 ; 3 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.e) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 %..i.i
  %i.g = sub nuw nsw i64 %.val1.i, %..i.i         ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !17 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9097)
  %i.j = load i64, ptr %1, align 8, !range !21, !alias.scope !9097, !noundef !17 ; 3 uses
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9098)
  %i.m = add i64 %i.g, %i.i                       ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsc4241EHy6Do_9typst_kit.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl nuw i64 %i.j, 1
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.o)
  %..i14.i.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i.i, i64 8) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9099
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val13.i.i = load ptr, ptr %i.p, align 8, !alias.scope !9099
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.j, ptr %.val13.i.i, i64 noundef %..i14.i.i, i64 noundef 1, i64 noundef 1), !noalias !9099
  %i.q = load i64, ptr %i.a, align 8, !range !19, !noalias !9099, !noundef !17
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9099
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsc4241EHy6Do_9typst_kit.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !9099, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9099
  store ptr %i.t, ptr %i.p, align 8, !alias.scope !9099
  %i.u = icmp sgt i64 %..i14.i.i, -1
  tail call void @llvm.assume(i1 %i.u)
  store i64 %..i14.i.i, ptr %1, align 8, !alias.scope !9099
  %.pre.i = sub i64 %..i14.i.i, %i.i
  %i.v = icmp ule i64 %i.g, %.pre.i
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9100)
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.a, %bb.e
  %i.w = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %.not.i.not = icmp ugt i64 %.val1.i, %i.e
  br i1 %.not.i.not, label %bb.f, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit

bb.f:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !9100, !nonnull !17, !noundef !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.f, i64 %i.g, i1 false), !noalias !9100
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, %bb.f
  %i.aa = add i64 %i.i, %i.g
  store i64 %i.aa, ptr %i.h, align 8, !alias.scope !9100
  %i.ab = add i64 %i.g, %i.e
  store i64 %i.ab, ptr %i.d, align 8
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsc4241EHy6Do_9typst_kit.exit.thread

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsc4241EHy6Do_9typst_kit.exit.thread: ; preds = %bb.d, %bb.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit
  %.sroa.3.0 = phi i64 [ %i.g, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit ], [ 163208757251, %bb.b ], [ 163208757251, %bb.d ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit ], [ 1, %bb.b ], [ 1, %bb.d ]
  %i.ac = inttoptr i64 %.sroa.3.0 to ptr
  %i.ad = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ae = insertvalue { i64, ptr } %i.ad, ptr %i.ac, 1
  ret { i64, ptr } %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal { i64, ptr } @_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read13read_vectoredCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !nonnull !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load i64, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCsc4241EHy6Do_9typst_kit.exit, %.lr.ph
  %.sroa.01.011 = phi i64 [ 0, %.lr.ph ], [ %i.p, %_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCsc4241EHy6Do_9typst_kit.exit ]
  %.sroa.03.010 = phi ptr [ %1, %.lr.ph ], [ %i.g, %_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCsc4241EHy6Do_9typst_kit.exit ] ; 3 uses
  %i.f = phi i64 [ %.promoted, %.lr.ph ], [ %i.o, %_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCsc4241EHy6Do_9typst_kit.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.010, i64 16 ; 2 uses
  %i.h = load ptr, ptr %.sroa.03.010, align 8, !noundef !17 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.010, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !17 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9112)
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %i.f) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %..i.i.i ; 2 uses
  %i.l = sub nuw nsw i64 %.val1.i.i, %..i.i.i     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9113)
  %..i.i5.i = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 range(i64 0, -9223372036854775808) %i.j) ; 4 uses
  %i.m = icmp eq i64 %..i.i5.i, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = load i8, ptr %i.k, align 1, !noalias !9114, !noundef !17
  store i8 %i.n, ptr %i.h, align 1, !alias.scope !9115, !noalias !9116
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.k, i64 range(i64 0, -9223372036854775808) %..i.i5.i, i1 false), !alias.scope !9117, !noalias !9118
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCsc4241EHy6Do_9typst_kit.exit

_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit.i.i
  %i.o = add i64 %..i.i5.i, %i.f                  ; 2 uses
  %i.p = add i64 %..i.i5.i, %.sroa.01.011         ; 2 uses
  %i.q = icmp ult i64 %i.l, %i.j
  %i.r = icmp eq ptr %i.g, %i.a
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %._crit_edge.loopexit, label %bb.b

._crit_edge.loopexit:                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCsc4241EHy6Do_9typst_kit.exit
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !9111, !noalias !9112
  %i.s = inttoptr i64 %i.p to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.01.1 = phi ptr [ null, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  %i.t = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %.sroa.01.1, 1
  ret { i64, ptr } %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_0
begin_hunk_1_@_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB7_5WriteNtNtBb_6marker4SendEL_EEENtNtBb_3fmt5Write10write_charCsc4241EHy6Do_9typst_kit:bb.a
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB4_5WriteNtNtB8_6marker4SendEL_EEENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit.exit

bb.h:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !10363, !noalias !10364, !noundef !17 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10365
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i
    i64 1, label %bb.k
  ], !prof !30

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !10366, !noalias !10365
  store i8 3, ptr %i.a, align 8, !alias.scope !10366, !noalias !10365
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i unwind label %bb.l, !noalias !10363

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10365
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !10363, !noalias !10364
  resume { ptr, i32 } %i.an

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !10363, !noalias !10364
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB4_5WriteNtNtB8_6marker4SendEL_EEENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB4_5WriteNtNtB8_6marker4SendEL_EEENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB7_5WriteNtNtBb_6marker4SendEL_EEENtNtBb_3fmt5Write9write_fmtCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #4 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBT_5WriteNtNtBa_6marker4SendEL_EEENtB4_12SpecWriteFmt14spec_write_fmtCsc4241EHy6Do_9typst_kit.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @85, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !10367
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !10377
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !10377
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !10377
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !10377
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !10377
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !10377
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !10377
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !10377
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !10377
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !10377
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10378)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !10378, !noalias !10379, !nonnull !17, !noundef !17
  %i.ad = call fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i), !noalias !10378 ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit.exit

bb.h:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !10378, !noalias !10379, !noundef !17 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10380
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i
    i64 1, label %bb.k
  ], !prof !30

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !10381, !noalias !10380
  store i8 3, ptr %i.a, align 8, !alias.scope !10381, !noalias !10380
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i unwind label %bb.l, !noalias !10378

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10380
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !10378, !noalias !10379
  resume { ptr, i32 } %i.an

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !10378, !noalias !10379
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #4 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsc4241EHy6Do_9typst_kit.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @89, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !10382
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCsgSlMZLQvLVR_10native_tls5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr @396, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtCsgSlMZLQvLVR_10native_tls5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !49, !alias.scope !10385, !noundef !17 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp sgt i64 %i.a, -9223372036854775805
  br i1 %i.c, label %bb.b, label %_RNvXCsgSlMZLQvLVR_10native_tlsNtB2_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.c [
    i64 -2, label %_RNvXCsgSlMZLQvLVR_10native_tlsNtB2_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit
    i64 -1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %_RNvXCsgSlMZLQvLVR_10native_tlsNtB2_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXCsgSlMZLQvLVR_10native_tlsNtB2_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit

_RNvXCsgSlMZLQvLVR_10native_tlsNtB2_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.7.0.i = phi ptr [ undef, %bb.a ], [ @320, %bb.c ], [ @19, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %0, %bb.c ], [ %i.d, %bb.d ], [ null, %bb.b ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.7.0.i, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsgSlMZLQvLVR_10native_tls5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #22 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsgSlMZLQvLVR_10native_tls5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @397, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #4 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCs1xwejQucwHj_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsc4241EHy6Do_9typst_kit.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @368, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !10386
  ret i1 %i.a
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvYNtNtCs261H7cERR92_10serde_json5error5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error14invalid_lengthCsc4241EHy6Do_9typst_kit(i64 noundef %0, ptr noundef nonnull %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @84, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRDNtNtCs7PiwjADO7TO_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsc4241EHy6Do_9typst_kit, ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs261H7cERR92_10serde_json5errorNtB6_5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECsc4241EHy6Do_9typst_kit(ptr noundef nonnull @399, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #4 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB4_12SpecWriteFmt14spec_write_fmtCsc4241EHy6Do_9typst_kit.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @115, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !10387
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr @396, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #22 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @401, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsl8oL64ujIrP_7openssl5error10ErrorStackNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr @396, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsl8oL64ujIrP_7openssl5error10ErrorStackNtNtCs3oUPovFnLWP_4core5error5Error5causeCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsl8oL64ujIrP_7openssl5error10ErrorStackNtNtCs3oUPovFnLWP_4core5error5Error6sourceCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsl8oL64ujIrP_7openssl5error10ErrorStackNtNtCs3oUPovFnLWP_4core5error5Error7provideCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #22 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsl8oL64ujIrP_7openssl5error10ErrorStackNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @402, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr @396, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error7provideCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #22 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @403, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0.036 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.116, %bb.l ] ; 3 uses
  %.sroa.6.035 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.114, %bb.l ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = call { i64, ptr } @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unixNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.036, i64 noundef %.sroa.6.035) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 13 uses
  store i64 %i.g, ptr %i.b, align 8
  store ptr %i.h, ptr %i.d, align 8
  %i.i = trunc nuw i64 %i.g to i1
  %i.j = ptrtoint ptr %i.h to i64                 ; 8 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split23
    i64 0, label %.split24
    i64 1, label %.split
  ], !prof !30

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !17, !noundef !17
  %i.q = invoke noundef zeroext i1 %i.p(i32 noundef %i.n)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.m, !inline_history !0

.split23:                                         ; preds = %bb.c
  %i.r = lshr i64 %i.j, 32
  %i.s = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.t = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.u, label %bb.j, label %bb.g

.split24:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !36, !noundef !17
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread.thread, label %bb.g

.split:                                           ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.h, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !36, !noundef !17
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ab = icmp eq ptr %i.h, null
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ult i64 %.sroa.6.035, %i.j
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !23

bb.g:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split23, %.split24, %bb.e
  %.sroa.07.0 = phi ptr [ @394, %bb.e ], [ %i.h, %.split24 ], [ %i.h, %.split23 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %.sroa.6.035, i64 noundef %.sroa.6.035, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #45
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ad = sub nuw nsw i64 %.sroa.6.035, %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 %i.j
  br label %bb.l

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.q, label %.thread.thread, label %bb.g

.loopexit:                                        ; preds = %bb.l, %bb.a, %bb.g
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.g ], [ null, %bb.a ], [ null, %bb.l ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10392
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit

bb.j:                                             ; preds = %.split23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10392
  %i.af = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %i.ag = and i64 %i.j, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  call void @llvm.assume(i1 %i.af)
  call void @llvm.assume(i1 %i.ah)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit

bb.k:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10392
  %i.ai = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  store ptr %i.ai, ptr %i.e, align 8, !alias.scope !10393, !noalias !10392
  store i8 3, ptr %i.a, align 8, !alias.scope !10393, !noalias !10392
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !10392
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit: ; preds = %.thread.thread, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10392
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit
  %.sroa.0.116 = phi ptr [ %.sroa.0.036, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit ], [ %i.ae, %bb.i ]
  %.sroa.6.114 = phi i64 [ %.sroa.6.035, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit ], [ %i.ad, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = icmp eq i64 %.sroa.6.114, 0
  br i1 %i.aj, label %.loopexit, label %bb.b

bb.m:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #46
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %lpad.thr_comm

bb.o:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10400
  store ptr %0, ptr %i.b, align 8, !noalias !10400
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !noalias !10400
  %i.d = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @89, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #46
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noalias !10400, !noundef !17 ; 5 uses
  %.not.i5 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i5, label %bb.i, label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.e:                                             ; preds = %bb.c
  br i1 %.not.i5, label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECsc4241EHy6Do_9typst_kit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10401
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
end_hunk_1
