Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_render-b6943bf748ed61f5.typst_render.34e4e3ded1502606-cgu.0?download=true
inline.NumInlined: 1272
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs4xylOWI7Ys4_12typst_render5image12render_image:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.afn, align 8, !alias.scope !1818, !noalias !1677 ; 2 uses
  %i.afo = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.afo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImagemmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0EB3Y_.exit.i
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !1818, !noalias !1677, !nonnull !5, !noundef !5
  %i.afp = shl nuw i64 %.val4.i.i.i.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %i.afp, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1819
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i: ; preds = %bb.fg, %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImagemmEEINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEENCNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture0EB3Y_.exit.i
  %.val.i.i.i.i.i.i54.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1818, !noalias !1677 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.afq, align 8, !alias.scope !1818, !noalias !1677, !noundef !5 ; 4 uses
  %i.afr = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.afr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i
  %i.afs = icmp slt i64 %.val1.i.i.i.i.i.i.i, 576460752303423487
  call void @llvm.assume(i1 %i.afs)
  %i.aft = shl i64 %.val1.i.i.i.i.i.i.i, 5        ; 2 uses
  %i.afu = add i64 %i.aft, 32                     ; 2 uses
  %i.afv = add nsw i64 %.val1.i.i.i.i.i.i.i, 17
  %i.afw = add i64 %i.afv, %i.afu                 ; 4 uses
  %i.afx = icmp uge i64 %i.afw, %i.afu
  %i.afy = icmp ult i64 %i.afw, 9223372036854775793
  call void @llvm.assume(i1 %i.afx)
  call void @llvm.assume(i1 %i.afy)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i54.i) ]
  %i.afz = icmp eq i64 %i.afw, 0
  br i1 %i.afz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aga = sub nuw nsw i64 -32, %i.aft
  %i.agb = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i54.i, i64 %i.aga
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.agb, i64 noundef %i.afw, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1819
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i: ; preds = %bb.fh, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i
  %i.agc = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %.val.i.i.i.i.i.i = load i64, ptr %i.agc, align 8, !alias.scope !1820, !noalias !1677 ; 2 uses
  %i.agd = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.agd, label %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit, label %bb.fi

bb.fi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1820, !noalias !1677, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1821
  br label %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit

_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1677
  %.not = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit

bb.fj:                                            ; preds = %bb.fl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit
  %i.age = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(104) %i.as) #28
  %i.agf = atomicrmw add ptr %.sroa.0.0.i.i, i64 -1 release, align 8, !noalias !1822
  %i.agg = icmp eq i64 %i.agf, 1
  br i1 %i.agg, label %bb.fm, label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit
  store ptr %.sroa.0.0.i.i, ptr %i.at, align 8
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40 ; 2 uses
  %i.agi = load <2 x i32>, ptr %i.agh, align 8
  %i.agj = uitofp <2 x i32> %i.agi to <2 x float>
  %i.agk = fdiv <2 x float> %i.az, %i.agj         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.agm = load ptr, ptr %i.agl, align 8, !nonnull !5, !noundef !5
  %i.agn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.ago = load i64, ptr %i.agn, align 8, !noundef !5
  store i64 -9223372036854775804, ptr %i.as, align 8
  %i.agp = extractelement <2 x float> %i.agk, i64 0
  store float %i.agp, ptr %.sink6.i.i36.sroa.gep, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store <2 x float> zeroinitializer, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.agq = extractelement <2 x float> %i.agk, i64 1
  store float %i.agq, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store <2 x float> zeroinitializer, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %i.agm, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.agr = load <2 x i32>, ptr %i.agh, align 8
  store i64 %i.ago, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store <2 x i32> %i.agr, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store float 1.000000e+00, ptr %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  store i8 0, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 61
  store i8 0, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  %i.ags = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store <4 x i8> <i8 1, i8 0, i8 0, i8 3>, ptr %i.ags, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvMs0_NtCsd315radwPZ_14tiny_skia_path4rectNtB5_4Rect9from_xywh(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.ar, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.ck, float noundef %i.ci)
          to label %bb.fk unwind label %bb.fj

bb.fk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit
  %i.agt = load i32, ptr %i.ar, align 4, !range !15, !noundef !5
  %i.agu = trunc nuw i32 %i.agt to i1
  br i1 %i.agu, label %bb.fl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40

bb.fl:                                            ; preds = %bb.fk
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %i.agv, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.agx = load ptr, ptr %i.agw, align 8, !align !16, !noundef !5
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap9fill_rect(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.as, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.agx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48 unwind label %bb.fj

bb.fm:                                            ; preds = %bb.fj
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.at) #25
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40: ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.agy = atomicrmw add ptr %.sroa.0.0.i.i, i64 -1 release, align 8, !noalias !1823
  %i.agz = icmp eq i64 %i.agy, 1
  br i1 %i.agz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.at) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split, %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48: ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.aha = atomicrmw add ptr %.sroa.0.0.i.i, i64 -1 release, align 8, !noalias !1824
  %i.ahb = icmp eq i64 %i.aha, 1
  br i1 %i.ahb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(80) %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) %5, i1 noundef zeroext %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 6 uses
  %.sroa.846.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.j = alloca [20 x i8], align 4                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 73 uses
  %i.r = alloca [96 x i8], align 8                ; 19 uses
  %i.s = alloca [16 x i8], align 16               ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 4                ; 4 uses
  %i.v = alloca [24 x i8], align 4                ; 4 uses
  %i.w = alloca [24 x i8], align 4                ; 4 uses
  %.sroa.569.sroa.0 = alloca [24 x i8], align 8   ; 4 uses
  %i.x = alloca [28 x i8], align 4                ; 5 uses
  %i.y = alloca [24 x i8], align 4                ; 4 uses
  %i.z = alloca [24 x i8], align 16               ; 6 uses
  %i.aa = alloca [24 x i8], align 4               ; 4 uses
  %.sroa.547.sroa.0 = alloca [24 x i8], align 8   ; 4 uses
  %i.ab = alloca [28 x i8], align 4               ; 5 uses
  %i.ac = alloca [24 x i8], align 4               ; 4 uses
  %i.ad = alloca [24 x i8], align 16              ; 6 uses
  %i.ae = alloca [20 x i8], align 4               ; 4 uses
  %i.af = alloca [16 x i8], align 16              ; 4 uses
  %i.ag = alloca [104 x i8], align 8              ; 25 uses
  %i.ah = alloca [32 x i8], align 16              ; 7 uses
  %.not.not = icmp eq ptr %5, null                ; 3 uses
  %.sink6.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 9 uses
  %.sink6.i.sroa.gep187 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  br i1 %.not.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5shapeNtB2_5Shape4bbox(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %5, i1 noundef zeroext %6)
  %i.ai = load <2 x double>, ptr %i.ah, align 16  ; 5 uses
  %i.aj = fdiv <2 x double> %i.ai, splat (double 1.270000e+02)
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  %i.al = load i64, ptr %5, align 8, !range !11, !noundef !5
  %7 = icmp ne i64 %i.al, -9223372036854775807    ; 2 uses
  br i1 %7, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load double, ptr %i.am, align 8, !noundef !5 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !noundef !5 ; 3 uses
  %i.aq = fcmp ord double %i.an, 0.000000e+00     ; 2 uses
  %i.ar = bitcast double %i.an to i64
  %i.as = icmp slt i64 %i.ar, 0
  %.sroa.014.0 = and i1 %i.aq, %i.as
  br i1 %.sroa.014.0, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.au = load double, ptr %i.at, align 16, !alias.scope !2312, !noundef !5
  %i.av = extractelement <2 x double> %i.ai, i64 0 ; 2 uses
  %i.aw = fneg double %i.av
  %i.ax = fcmp uno double %i.av, 0.000000e+00
  %spec.store.select.i = select i1 %i.ax, double 0.000000e+00, double %i.aw
  %i.ay = fadd double %spec.store.select.i, %i.au ; 2 uses
  %.inv.i = fcmp ord double %i.ay, 0.000000e+00
  %.neg = fneg double %i.ay
  %i.az = select i1 %.inv.i, double %.neg, double -0.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.078.0 = phi double [ %i.az, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.ba = fcmp ord double %i.ap, 0.000000e+00     ; 2 uses
  %i.bb = bitcast double %i.ap to i64
  %i.bc = icmp slt i64 %i.bb, 0
  %.sroa.015.0 = and i1 %i.ba, %i.bc
  br i1 %.sroa.015.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.be = load double, ptr %i.bd, align 8, !alias.scope !2313, !noundef !5
  %i.bf = extractelement <2 x double> %i.ai, i64 1 ; 2 uses
  %i.bg = fneg double %i.bf
  %i.bh = fcmp uno double %i.bf, 0.000000e+00
  %spec.store.select2.i164 = select i1 %i.bh, double 0.000000e+00, double %i.bg
  %i.bi = fadd double %spec.store.select2.i164, %i.be ; 2 uses
  %.inv15.i165 = fcmp ord double %i.bi, 0.000000e+00
  %.neg195 = fneg double %i.bi
  %i.bj = select i1 %.inv15.i165, double %.neg195, double -0.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.081.0 = phi double [ %i.bj, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bl = load float, ptr %i.bk, align 8, !noundef !5
  %i.bm = fpext float %i.bl to double
  %i.bn = insertelement <2 x double> poison, double %.sroa.078.0, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %.sroa.081.0, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x double> %i.bo, %i.bq          ; 2 uses
  %i.bs = fcmp ord <2 x double> %i.br, zeroinitializer
  %i.bt = select <2 x i1> %i.bs, <2 x double> %i.br, <2 x double> zeroinitializer ; 2 uses
  %i.bu = call double @llvm.copysign.f64(double 1.000000e+00, double %i.an)
  %i.bv = call double @llvm.copysign.f64(double 1.000000e+00, double %i.ap)
  %i.bw = bitcast <2 x double> %i.bt to <2 x i64>
  %i.bx = bitcast double %i.bu to i64
  %i.by = select i1 %i.aq, i64 %i.bx, i64 0
  %i.bz = bitcast double %i.bv to i64
  %i.ca = select i1 %i.ba, i64 %i.bz, i64 0
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  %.sroa.10.0194 = phi i64 [ %i.ca, %bb.g ], [ undef, %bb.b ]
  %.sroa.8.0 = phi i64 [ %i.by, %bb.g ], [ undef, %bb.b ]
  %storemerge = phi i64 [ 1, %bb.g ], [ 0, %bb.b ]
  %i.cb = phi <2 x i64> [ %i.bw, %bb.g ], [ undef, %bb.b ]
  %i.cc = phi <2 x double> [ %i.bt, %bb.g ], [ undef, %bb.b ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ce = fneg <2 x double> %i.ai
  %i.cf = fcmp uno <2 x double> %i.ai, zeroinitializer
  %i.cg = load <2 x double>, ptr %i.cd, align 16, !alias.scope !2314
  %i.ch = select <2 x i1> %i.cf, <2 x double> zeroinitializer, <2 x double> %i.ce
  %i.ci = fadd <2 x double> %i.ch, %i.cg          ; 2 uses
  %i.cj = fcmp ord <2 x double> %i.ci, zeroinitializer
  %i.ck = select <2 x i1> %i.cj, <2 x double> %i.ci, <2 x double> zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.sroa.10.1 = phi i64 [ %.sroa.10.0194, %bb.h ], [ undef, %bb.a ] ; 4 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.0, %bb.h ], [ undef, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %storemerge, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %.not = phi i1 [ %7, %bb.h ], [ true, %bb.a ]
  %i.cl = phi <2 x double> [ %i.ck, %bb.h ], [ zeroinitializer, %bb.a ]
  %i.cm = phi <2 x i64> [ %i.cb, %bb.h ], [ undef, %bb.a ] ; 5 uses
  %i.cn = phi <2 x float> [ %i.ak, %bb.h ], [ undef, %bb.a ] ; 2 uses
  %i.co = phi <2 x double> [ %i.cc, %bb.h ], [ undef, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 -9223372036854775808, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink6.i.sroa.gep, ptr noundef nonnull align 8 dereferenceable(16) @61, i64 16, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ag, i64 96 ; 3 uses
  store <4 x i8> <i8 1, i8 0, i8 0, i8 3>, ptr %i.cp, align 8
  %i.cq = load i32, ptr %1, align 8, !range !10, !noundef !5 ; 2 uses
  %i.cr = icmp samesign ugt i32 %i.cq, 1
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = add nsw i64 %i.cs, -1
  %i.cu = select i1 %i.cr, i64 %i.ct, i64 0
  switch i64 %i.cu, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %switch.lookup
    i64 2, label %bb.l
  ]

default.unreachable418:                           ; preds = %.thread
  unreachable

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color10to_process(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.n unwind label %bb.m

switch.lookup:                                    ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !range !4, !noundef !5 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !5, !noundef !5 ; 30 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint, i64 %i.cw
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %switch.ext
  %.sroa.095.0 = load i8, ptr %i.cz, align 1, !range !24, !noundef !5 ; 2 uses
  %.not157 = icmp eq i8 %.sroa.095.0, 2
  %i.da = trunc nuw i8 %.sroa.095.0 to i1
  %.sroa.042.0 = select i1 %.not157, i1 %3, i1 %i.da ; 2 uses
  %i.db = load <2 x double>, ptr %2, align 8
  %i.dc = insertelement <2 x i1> poison, i1 %.sroa.042.0, i64 0
  %i.dd = shufflevector <2 x i1> %i.dc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.de = select <2 x i1> %i.dd, <2 x double> %i.db, <2 x double> %i.cl ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  br i1 %.sroa.042.0, label %bb.v, label %bb.w

bb.l:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  %i.di = load i8, ptr %i.dh, align 16, !range !24, !noundef !5 ; 2 uses
  %.not155 = icmp eq i8 %i.di, 2
  %i.dj = trunc nuw i8 %i.di to i1
  %.sroa.059.0 = select i1 %.not155, i1 %3, i1 %i.dj ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br i1 %.sroa.059.0, label %bb.go, label %bb.gp

.body:                                            ; preds = %bb.gy, %bb.gz, %.body.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.m ], [ %i.bqg, %bb.gz ], [ %i.bqg, %bb.gy ], [ %eh.lpad-body.i, %.body.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ag) #28
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %.invoke, %bb.gs, %bb.r, %bb.n, %bb.hg, %bb.hf, %bb.he, %bb.gu, %bb.go, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit, %bb.aa, %bb.v, %bb.s, %bb.k
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !2315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2316
  invoke void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.ae)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.n
  %i.dl = load <4 x float>, ptr %i.s, align 16, !noalias !2316 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2316
  %i.dm = extractelement <4 x float> %i.dl, i64 0 ; 2 uses
  %or.cond.i.i = call i1 @llvm.is.fpclass.f32(float %i.dm, /* (zero psub pnorm) */ i32 480)
  %i.dn = fcmp ole float %i.dm, 1.000000e+00
  %or.cond1.i.i = and i1 %or.cond.i.i, %i.dn
  br i1 %or.cond1.i.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.noexc
  %i.do = extractelement <4 x float> %i.dl, i64 1 ; 2 uses
  %or.cond2.i.i = call i1 @llvm.is.fpclass.f32(float %i.do, /* (zero psub pnorm) */ i32 480)
  %i.dp = fcmp ole float %i.do, 1.000000e+00
  %or.cond3.i.i = and i1 %or.cond2.i.i, %i.dp
  br i1 %or.cond3.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dq = extractelement <4 x float> %i.dl, i64 2 ; 2 uses
  %or.cond4.i.i = call i1 @llvm.is.fpclass.f32(float %i.dq, /* (zero psub pnorm) */ i32 480)
  %i.dr = fcmp ole float %i.dq, 1.000000e+00
  %or.cond5.i.i = and i1 %or.cond4.i.i, %i.dr
  br i1 %or.cond5.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ds = extractelement <4 x float> %i.dl, i64 3 ; 2 uses
  %or.cond6.i.i = call i1 @llvm.is.fpclass.f32(float %i.ds, /* (zero psub pnorm) */ i32 480)
  %i.dt = fcmp ole float %i.ds, 1.000000e+00
  %or.cond7.i.i = and i1 %or.cond6.i.i, %i.dt
  br i1 %or.cond7.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #31
          to label %.noexc173 unwind label %bb.m

.noexc173:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  store <4 x float> %i.dl, ptr %i.af, align 16, !alias.scope !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvMs_NtCsfVrisfeHJNS_9tiny_skia7painterNtB4_5Paint9set_color(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ag, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.af)
          to label %bb.t unwind label %bb.m

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i8 1, ptr %i.cp, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit185, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  ret void

bb.v:                                             ; preds = %switch.lookup
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform6invert(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.ab, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.dv)
          to label %bb.z unwind label %bb.m

bb.w:                                             ; preds = %switch.lookup
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.ad, align 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  br i1 %.not.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.cn, ptr %i.dw, align 16
  br label %.thread

bb.y:                                             ; preds = %bb.w
  store <2 x float> zeroinitializer, ptr %i.dw, align 16
  br label %.thread

bb.z:                                             ; preds = %bb.v
  %i.dx = load i32, ptr %i.ab, align 4, !range !15, !noundef !5
  %i.dy = trunc nuw i32 %i.dx to i1
  br i1 %i.dy, label %bb.aa, label %.invoke, !prof !19

bb.aa:                                            ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ac, ptr noundef nonnull align 4 dereferenceable(24) %i.dz, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform11post_concat(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.du, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.ac)
          to label %bb.ab unwind label %bb.m

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %.thread

.thread:                                          ; preds = %bb.y, %bb.x, %bb.ab
  %.sroa.0.1 = phi i64 [ 0, %bb.ab ], [ %.sroa.0.0, %bb.x ], [ %.sroa.0.0, %bb.y ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.eb = load float, ptr %i.ea, align 8, !noundef !5 ; 4 uses
  %i.ec = call float @llvm.ceil.f32(float %i.eb)
  %i.ed = call i32 @llvm.fptoui.sat.i32.f32(float %i.ec) ; 2 uses
  %i.ee = fdiv <2 x double> %i.de, splat (double 1.270000e+02) ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 0
  %i.eg = fptrunc double %i.ef to float
  %i.eh = call float @llvm.fabs.f32(float %i.eg)
  %i.ei = fmul float %i.eh, %i.eb
  %i.ej = call float @llvm.ceil.f32(float %i.ei)
  %i.ek = call i32 @llvm.fptoui.sat.i32.f32(float %i.ej)
  %..i = call noundef i32 @llvm.umax.i32(i32 %i.ed, i32 %i.ek) ; 6 uses
  %i.el = extractelement <2 x double> %i.ee, i64 1
  %i.em = fptrunc double %i.el to float
  %i.en = call float @llvm.fabs.f32(float %i.em)
  %i.eo = fmul float %i.en, %i.eb
  %i.ep = call float @llvm.ceil.f32(float %i.eo)
  %i.eq = call i32 @llvm.fptoui.sat.i32.f32(float %i.ep)
  %..i174 = call noundef i32 @llvm.umax.i32(i32 %i.ed, i32 %i.eq) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, i8 0, i64 16, i1 false), !alias.scope !2318, !noalias !2317
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !2318, !noalias !2317
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !2318, !noalias !2317
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !2318, !noalias !2317
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @40, i64 32, i1 false), !noalias !2317
end_hunk_0
begin_hunk_1_@_RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint:bb.a
  %i.bov = icmp eq i64 %i.bou, 1
  br i1 %i.bov, label %bb.gj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

bb.gj:                                            ; preds = %bb.gi
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %4) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.gj, %bb.gi, %bb.gh
  store ptr %.sroa.0.0.i.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.547.sroa.0)
  %i.bow = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.box = load ptr, ptr %i.bow, align 8, !nonnull !5, !noundef !5
  %i.boy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.boz = load i64, ptr %i.boy, align 8, !noundef !5
  %i.bpa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.bpb = load <2 x i32>, ptr %i.bpa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.bpc = fcmp uno <2 x double> %i.de, zeroinitializer
  %i.bpd = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 1.000000e+00), <2 x double> %i.de)
  %i.bpe = fptrunc <2 x double> %i.bpd to <2 x float>
  %i.bpf = select <2 x i1> %i.bpc, <2 x float> splat (float +qnan), <2 x float> %i.bpe
  %i.bpg = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.bph = shufflevector <2 x float> %i.bpg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpi = fdiv <2 x float> %i.bpf, %i.bph        ; 2 uses
  %i.bpj = extractelement <2 x float> %i.bpi, i64 0
  %i.bpk = extractelement <2 x float> %i.bpi, i64 1
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform9pre_scale(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.ad, float noundef %i.bpj, float noundef %i.bpk)
          to label %bb.gk unwind label %bb.m

bb.gk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.547.sroa.0, ptr noundef nonnull align 4 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  %i.bpl = load i64, ptr %i.ag, align 8, !range !9, !alias.scope !2508, !noundef !5 ; 5 uses
  %i.bpm = icmp ne i64 %i.bpl, -9223372036854775806
  call void @llvm.assume(i1 %i.bpm)
  %i.bpn = xor i64 %i.bpl, -9223372036854775808
  %i.bpo = icmp slt i64 %i.bpl, 0
  %i.bpp = select i1 %i.bpo, i64 %i.bpn, i64 2
  switch i64 %i.bpp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit [
    i64 1, label %bb.gl
    i64 2, label %bb.gm
    i64 3, label %bb.gn
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i: ; preds = %bb.gn, %bb.gm, %bb.gl
  %.sink6.i.sroa.phi = phi ptr [ %.sink6.i.sroa.gep, %bb.gm ], [ %.sink6.i.sroa.gep187, %bb.gl ], [ %.sink6.i.sroa.gep187, %bb.gn ]
  %.val4.sink.i = phi i64 [ %i.bpl, %bb.gm ], [ %.val.i, %bb.gl ], [ %.val4.i, %bb.gn ]
  %.val5.i = load ptr, ptr %.sink6.i.sroa.phi, align 8, !alias.scope !2508, !nonnull !5, !noundef !5
  %i.bpq = mul nuw i64 %.val4.sink.i, 20
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.bpq, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2508
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit

bb.gl:                                            ; preds = %bb.gk
  %.val.i = load i64, ptr %.sink6.i.sroa.gep, align 8, !alias.scope !2508 ; 2 uses
  %i.bpr = icmp eq i64 %.val.i, 0
  br i1 %i.bpr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i

bb.gm:                                            ; preds = %bb.gk
  %i.bps = icmp eq i64 %i.bpl, 0
  br i1 %i.bps, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i

bb.gn:                                            ; preds = %bb.gk
  %.val4.i = load i64, ptr %.sink6.i.sroa.gep, align 8, !alias.scope !2508 ; 2 uses
  %i.bpt = icmp eq i64 %.val4.i, 0
  br i1 %i.bpt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.gn, %bb.gm, %bb.gl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i, %bb.gk
  store i64 -9223372036854775804, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink6.i.sroa.gep, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.547.sroa.0, i64 24, i1 false)
  %.sroa.547.sroa.5.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.box, ptr %.sroa.547.sroa.5.0..sroa.547.0..sroa_idx48.sroa_idx, align 8
  %.sroa.547.sroa.6.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %i.boz, ptr %.sroa.547.sroa.6.0..sroa.547.0..sroa_idx48.sroa_idx, align 8
  %.sroa.547.sroa.7.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store <2 x i32> %i.bpb, ptr %.sroa.547.sroa.7.0..sroa.547.0..sroa_idx48.sroa_idx, align 8
  %.sroa.547.sroa.9.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store float 1.000000e+00, ptr %.sroa.547.sroa.9.0..sroa.547.0..sroa_idx48.sroa_idx, align 8
  %.sroa.547.sroa.10.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  store i8 0, ptr %.sroa.547.sroa.10.0..sroa.547.0..sroa_idx48.sroa_idx, align 4
  %.sroa.547.sroa.11.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 61
  store i8 0, ptr %.sroa.547.sroa.11.0..sroa.547.0..sroa_idx48.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547.sroa.0)
  %i.bpu = load ptr, ptr %i.cx, align 8, !nonnull !5, !noundef !5
  %switch.gep553 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint.364, i64 %i.cw
  %switch.load554 = load i8, ptr %switch.gep553, align 1
  %switch.ext555 = zext i8 %switch.load554 to i64
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 %switch.ext555
  %.sroa.058.0 = load i8, ptr %i.bpv, align 8, !range !18, !noundef !5
  store i8 %.sroa.058.0, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.u

bb.go:                                            ; preds = %bb.l
  %i.bpw = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.bpx = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform6invert(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bpx)
          to label %bb.gt unwind label %bb.m

bb.gp:                                            ; preds = %bb.l
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.z, align 16
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  br i1 %.not.not, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  store <2 x float> %i.cn, ptr %i.bpy, align 16
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  store <2 x float> zeroinitializer, ptr %i.bpy, align 16
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gq, %bb.gr, %bb.gv
  %i.bpz = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val186 = load float, ptr %i.bpz, align 8, !noundef !5 ; 2 uses
  invoke fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5paint19render_tiling_frame(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.t, float %.val186, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.df)
          to label %bb.gw unwind label %bb.m

bb.gt:                                            ; preds = %bb.go
  %i.bqa = load i32, ptr %i.x, align 4, !range !15, !noundef !5
  %i.bqb = trunc nuw i32 %i.bqa to i1
  br i1 %i.bqb, label %bb.gu, label %.invoke, !prof !19

bb.gu:                                            ; preds = %bb.gt
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.y, ptr noundef nonnull align 4 dereferenceable(24) %i.bqc, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform11post_concat(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bpw, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.y)
          to label %bb.gv unwind label %bb.m

.invoke:                                          ; preds = %bb.gt, %bb.z
  %i.bqd = phi ptr [ @69, %bb.z ], [ @70, %bb.gt ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bqd) #29
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.gs

bb.gw:                                            ; preds = %bb.gs
  %.sroa.5.16.copyload = load i64, ptr %i.t, align 8 ; 3 uses
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7.16.copyload = load ptr, ptr %.sroa.7.16..sroa_idx, align 8 ; 3 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2509
  %i.bqe = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef 8) #26, !noalias !2509 ; 8 uses
  %i.bqf = icmp eq ptr %i.bqe, null
  br i1 %i.bqf, label %bb.gx, label %bb.ha, !prof !17

bb.gx:                                            ; preds = %bb.gw
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc177 unwind label %bb.gy

.noexc177:                                        ; preds = %bb.gx
  unreachable

bb.gy:                                            ; preds = %bb.gx
  %i.bqg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bqh = icmp eq i64 %.sroa.5.16.copyload, 0
  br i1 %i.bqh, label %.body, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.16.copyload) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.16.copyload, i64 noundef %.sroa.5.16.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %.body

bb.ha:                                            ; preds = %bb.gw
  %.sroa.8193.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 1, ptr %i.bqe, align 8
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bqe, i64 8
  store i64 1, ptr %.sroa.4192.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bqe, i64 16
  store i64 %.sroa.5.16.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bqe, i64 24 ; 2 uses
  store ptr %.sroa.7.16.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bqe, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8193.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8193.16..sroa_idx, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  %i.bqi = load ptr, ptr %4, align 8, !alias.scope !2510, !noundef !5 ; 2 uses
  %i.bqj = icmp eq ptr %i.bqi, null
  br i1 %i.bqj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit178, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bqk = atomicrmw add ptr %i.bqi, i64 -1 release, align 8, !noalias !2511
  %i.bql = icmp eq i64 %i.bqk, 1
  br i1 %i.bql, label %bb.hc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit178

bb.hc:                                            ; preds = %bb.hb
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %4) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit178

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit178: ; preds = %bb.hc, %bb.hb, %bb.ha
  store ptr %i.bqe, ptr %4, align 8
  %brmerge = or i1 %.not, %.sroa.059.0
  br i1 %brmerge, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit178
  %i.bqm = fneg <2 x double> %i.co
  %i.bqn = fcmp uno <2 x double> %i.co, zeroinitializer
  %i.bqo = select <2 x i1> %i.bqn, <2 x double> zeroinitializer, <2 x double> %i.bqm
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit178
  %i.bqp = phi <2 x double> [ zeroinitializer, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit178 ], [ %i.bqo, %bb.hd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.569.sroa.0)
  %i.bqq = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.bqr = load i64, ptr %.sroa.8193.0..sroa_idx, align 8, !noundef !5
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqe, i64 40
  %i.bqt = load <2 x i32>, ptr %i.bqs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  %i.bqv = load <2 x double>, ptr %i.bqu, align 16
  %i.bqw = fdiv <2 x double> %i.bqv, splat (double 1.270000e+02)
  %i.bqx = fptrunc <2 x double> %i.bqw to <2 x float> ; 2 uses
  %i.bqy = extractelement <2 x float> %i.bqx, i64 0
  %i.bqz = extractelement <2 x float> %i.bqx, i64 1
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform13pre_translate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.z, float noundef %i.bqy, float noundef %i.bqz)
          to label %bb.hf unwind label %bb.m

bb.hf:                                            ; preds = %bb.he
  %i.bra = fdiv float 1.000000e+00, %.val186      ; 2 uses
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform9pre_scale(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.u, float noundef %i.bra, float noundef %i.bra)
          to label %bb.hg unwind label %bb.m

bb.hg:                                            ; preds = %bb.hf
  %i.brb = fdiv <2 x double> %i.bqp, splat (double 1.270000e+02)
  %i.brc = fptrunc <2 x double> %i.brb to <2 x float> ; 2 uses
  %i.brd = extractelement <2 x float> %i.brc, i64 0
  %i.bre = extractelement <2 x float> %i.brc, i64 1
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform13pre_translate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.v, float noundef %i.brd, float noundef %i.bre)
          to label %bb.hh unwind label %bb.m

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.569.sroa.0, ptr noundef nonnull align 4 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  %i.brf = load i64, ptr %i.ag, align 8, !range !9, !alias.scope !2512, !noundef !5 ; 5 uses
  %i.brg = icmp ne i64 %i.brf, -9223372036854775806
  call void @llvm.assume(i1 %i.brg)
  %i.brh = xor i64 %i.brf, -9223372036854775808
  %i.bri = icmp slt i64 %i.brf, 0
  %i.brj = select i1 %i.bri, i64 %i.brh, i64 2
  switch i64 %i.brj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit185 [
    i64 1, label %bb.hi
    i64 2, label %bb.hj
    i64 3, label %bb.hk
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i180: ; preds = %bb.hk, %bb.hj, %bb.hi
  %.sink6.i181.sroa.phi = phi ptr [ %.sink6.i.sroa.gep, %bb.hj ], [ %.sink6.i.sroa.gep187, %bb.hi ], [ %.sink6.i.sroa.gep187, %bb.hk ]
  %.val4.sink.i182 = phi i64 [ %i.brf, %bb.hj ], [ %.val.i184, %bb.hi ], [ %.val4.i179, %bb.hk ]
  %.val5.i183 = load ptr, ptr %.sink6.i181.sroa.phi, align 8, !alias.scope !2512, !nonnull !5, !noundef !5
  %i.brk = mul nuw i64 %.val4.sink.i182, 20
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i183, i64 noundef %i.brk, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2512
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit185

bb.hi:                                            ; preds = %bb.hh
  %.val.i184 = load i64, ptr %.sink6.i.sroa.gep, align 8, !alias.scope !2512 ; 2 uses
  %i.brl = icmp eq i64 %.val.i184, 0
  br i1 %i.brl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit185, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i180

bb.hj:                                            ; preds = %bb.hh
  %i.brm = icmp eq i64 %i.brf, 0
  br i1 %i.brm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit185, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i180

bb.hk:                                            ; preds = %bb.hh
  %.val4.i179 = load i64, ptr %.sink6.i.sroa.gep, align 8, !alias.scope !2512 ; 2 uses
  %i.brn = icmp eq i64 %.val4.i179, 0
  br i1 %i.brn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit185, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i180

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit185: ; preds = %bb.hk, %bb.hj, %bb.hi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfVrisfeHJNS_9tiny_skia7shaders15linear_gradient14LinearGradientECs4xylOWI7Ys4_12typst_render.exit.sink.split.i180, %bb.hh
  store i64 -9223372036854775804, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink6.i.sroa.gep, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.569.sroa.0, i64 24, i1 false)
  %.sroa.569.sroa.5.0..sroa.569.0..sroa_idx70.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.bqq, ptr %.sroa.569.sroa.5.0..sroa.569.0..sroa_idx70.sroa_idx, align 8
  %.sroa.569.sroa.6.0..sroa.569.0..sroa_idx70.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %i.bqr, ptr %.sroa.569.sroa.6.0..sroa.569.0..sroa_idx70.sroa_idx, align 8
  %.sroa.569.sroa.7.0..sroa.569.0..sroa_idx70.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store <2 x i32> %i.bqt, ptr %.sroa.569.sroa.7.0..sroa.569.0..sroa_idx70.sroa_idx, align 8
  %.sroa.569.sroa.9.0..sroa.569.0..sroa_idx70.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store float 1.000000e+00, ptr %.sroa.569.sroa.9.0..sroa.569.0..sroa_idx70.sroa_idx, align 8
  %.sroa.569.sroa.10.0..sroa.569.0..sroa_idx70.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  store i8 0, ptr %.sroa.569.sroa.10.0..sroa.569.0..sroa_idx70.sroa_idx, align 4
  %.sroa.569.sroa.11.0..sroa.569.0..sroa_idx70.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 61
  store i8 2, ptr %.sroa.569.sroa.11.0..sroa.569.0..sroa_idx70.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.569.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5paint19render_tiling_frame(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, float %.72.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 13 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.g = load <2 x double>, ptr %i.e, align 16
  %i.h = load <2 x double>, ptr %i.f, align 16
  %i.i = fadd <2 x double> %i.g, %i.h             ; 2 uses
  %i.j = fcmp ord <2 x double> %i.i, zeroinitializer
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = fdiv <2 x double> %i.i, splat (double 1.270000e+02)
  %i.l = select <2 x i1> %i.j, <2 x double> %i.k, <2 x double> zeroinitializer
  %i.m = fptrunc <2 x double> %i.l to <2 x float> ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = fmul float %.72.val, %i.n
  %i.p = tail call float @llvm.round.f32(float %i.o)
  %i.q = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.p)
  %i.r = extractelement <2 x float> %i.m, i64 1
  %i.s = fmul float %.72.val, %i.r
  %i.t = tail call float @llvm.round.f32(float %i.s)
  %i.u = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.t)
  call void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i32 noundef %i.q, i32 noundef %i.u)
  %i.v = load i64, ptr %i.b, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.b, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31
  unreachable

bb.c:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.x = icmp eq i64 %.val, 0
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val9 = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %.72.val, ptr %i.z, align 16, !alias.scope !2517
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store <2 x float> zeroinitializer, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !2517
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float %.72.val, ptr %.sroa.7.0..sroa_idx, align 4, !alias.scope !2517
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x float> zeroinitializer, ptr %.sroa.8.0..sroa_idx, align 16, !alias.scope !2517
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float %.72.val, ptr %i.aa, align 8, !alias.scope !2517
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store <2 x float> zeroinitializer, ptr %.sroa.5.0..sroa_idx2, align 4, !alias.scope !2517
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store float %.72.val, ptr %.sroa.7.0..sroa_idx6, align 4, !alias.scope !2517
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx8, i8 0, i64 16, i1 false)
  store float %.72.val, ptr %i.ab, align 8, !alias.scope !2518
  %i.ac = load <2 x double>, ptr %i.e, align 16
  store <2 x double> %i.ac, ptr %i.a, align 16, !alias.scope !2518
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @_RNvCs4xylOWI7Ys4_12typst_render12render_frame(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5shape12render_shape(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 4                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 12 uses
  %i.e = alloca [104 x i8], align 8               ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [104 x i8], align 8               ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
end_hunk_1
