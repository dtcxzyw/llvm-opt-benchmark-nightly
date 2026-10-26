Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert7convert:bb.a
  %i.aqn = getelementptr inbounds nuw [88 x i8], ptr %.sink11.i.i.i.i7.i.i.i.i, i64 %i.aqg ; 2 uses
  %.sroa.047.0.copyload.i.i.i.i = load i64, ptr %i.aqn, align 8, !noalias !18207 ; 2 uses
  %.not.i9.i.i.i.i = icmp eq i64 %.sroa.047.0.copyload.i.i.i.i, -1
  br i1 %.not.i9.i.i.i.i, label %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.i.i, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i

_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.i.i: ; preds = %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i6.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18208)
  call void @llvm.experimental.noalias.scope.decl(metadata !18209)
  call void @llvm.experimental.noalias.scope.decl(metadata !18210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !18211
  %i.aqo = icmp eq i64 %i.aqj, %i.aqh
  br i1 %i.aqo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i, label %.lr.ph.i.i.i.i11.i.i.i.i

.lr.ph.i.i.i.i11.i.i.i.i:                         ; preds = %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.i.i, %.noexc.i.i.i18.i.i.i.i
  %i.aqp = phi i64 [ %i.aqq, %.noexc.i.i.i18.i.i.i.i ], [ %i.aqj, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.i.i ] ; 2 uses
  %i.aqq = add i64 %i.aqp, 1                      ; 3 uses
  store i64 %i.aqq, ptr %i.acd, align 8, !alias.scope !18212, !noalias !18053
  %i.aqr = getelementptr inbounds nuw [88 x i8], ptr %.sink11.i.i.i.i7.i.i.i.i, i64 %i.aqp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ev, ptr noundef nonnull align 8 dereferenceable(88) %i.aqr, i64 88, i1 false), !noalias !18207
  %.pr.i.i.i.i13.i.i.i.i = load i64, ptr %i.ev, align 8, !noalias !18211 ; 3 uses
  %.not.i.i.i.i14.i.i.i.i = icmp eq i64 %.pr.i.i.i.i13.i.i.i.i, -1
  br i1 %.not.i.i.i.i14.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i15.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i15.i.i.i.i: ; preds = %.lr.ph.i.i.i.i11.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18213)
  %.val.i.i.i120 = load i64, ptr %i.acx, align 8, !range !24, !alias.scope !18213, !noalias !18214, !noundef !10 ; 2 uses
  %i.aqs = icmp sgt i64 %.val.i.i.i120, 0
  br i1 %i.aqs, label %bb.jm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

bb.jm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i15.i.i.i.i
  %.val2.i.i.i = load ptr, ptr %i.acy, align 8, !alias.scope !18213, !noalias !18214, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val.i.i.i120, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18215
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i: ; preds = %bb.jm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i15.i.i.i.i
  %i.aqt = icmp eq i64 %.pr.i.i.i.i13.i.i.i.i, 0
  br i1 %i.aqt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i.i.i, label %bb.jn

bb.jn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  %.val4.i.i.i = load ptr, ptr %i.acz, align 8, !alias.scope !18213, !noalias !18214, !nonnull !10, !noundef !10
  %i.aqu = shl nuw i64 %.pr.i.i.i.i13.i.i.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.aqu, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !18216
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i.i.i: ; preds = %bb.jn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18217), !noalias !18218
  %i.aqv = load i64, ptr %i.ada, align 8, !range !38, !alias.scope !18219, !noalias !18214, !noundef !10 ; 3 uses
  %i.aqw = icmp eq i64 %i.aqv, -2
  br i1 %i.aqw, label %.invoke168.i.i, label %bb.jo

bb.jo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18220), !noalias !18218
  switch i64 %i.aqv, label %bb.jp [
    i64 -1, label %.invoke168.i.i
    i64 0, label %.noexc.i.i.i18.i.i.i.i
  ]

bb.jp:                                            ; preds = %bb.jo
  %.val1.i.i.i.i.i = load ptr, ptr %i.adb, align 8, !alias.scope !18221, !noalias !18214, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.aqv, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18222
  br label %.noexc.i.i.i18.i.i.i.i

.invoke168.i.i:                                   ; preds = %bb.jo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla11interactive11destination11DestinationECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %i.adb)
          to label %.noexc.i.i.i18.i.i.i.i unwind label %bb.jq, !noalias !18080

.noexc.i.i.i18.i.i.i.i:                           ; preds = %.invoke168.i.i, %bb.jp, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !18211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !18211
  %i.aqx = icmp eq i64 %i.aqq, %i.aqh
  br i1 %i.aqx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i, label %.lr.ph.i.i.i.i11.i.i.i.i

bb.jq:                                            ; preds = %.invoke168.i.i
  %i.aqy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.sroa.5237.0..sroa_idx.i) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i16.i.i.i.i unwind label %bb.jr, !noalias !18207

bb.jr:                                            ; preds = %bb.jq
  %i.aqz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18207
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i: ; preds = %.noexc.i.i.i18.i.i.i.i, %.lr.ph.i.i.i.i11.i.i.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !18211
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.sroa.5237.0..sroa_idx.i)
          to label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread8.i.i unwind label %bb.js, !noalias !18207

bb.js:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i
  %i.ara = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i16.i.i.i.i

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread8.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i
  store i64 0, ptr %.sroa.4236.0..sroa_idx.i, align 8, !alias.scope !18203, !noalias !18053
  br label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread5.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i16.i.i.i.i: ; preds = %bb.js, %bb.jq
  %eh.lpad-body.i17.i.i.i.i = phi { ptr, i32 } [ %i.ara, %bb.js ], [ %i.aqy, %bb.jq ]
  store i64 0, ptr %.sroa.4236.0..sroa_idx.i, align 8, !alias.scope !18203, !noalias !18053
  br label %.body.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEEB1B_.exit.i.i.i.i: ; preds = %bb.jj
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqc, i64 112
  store ptr %i.arb, ptr %.sroa.5237.sroa.4.0..sroa.5237.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !18201, !noalias !18053
  %.sroa.525.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.aqc, align 8, !noalias !18223 ; 3 uses
  %.sroa.525.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  %.sroa.525.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.525.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !18223
  %.sroa.525.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqc, i64 16
  %.sroa.525.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.525.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !18223 ; 2 uses
  %.sroa.525.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqc, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.7.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.525.sroa.7.0..sroa_idx.i.i.i.i, i64 72, i1 false), !noalias !18224
  %i.arc = icmp ugt i64 %.sroa.525.sroa.0.0.copyload.i.i.i.i, 1 ; 3 uses
  %spec.select61.i.i.i.i = select i1 %i.arc, i64 0, i64 %.sroa.525.sroa.6.0.copyload.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.arc, i64 %.sroa.525.sroa.0.0.copyload.i.i.i.i, i64 0
  %.sink10.i.i.i.i.i.i = select i1 %i.arc, i64 %.sroa.525.sroa.6.0.copyload.i.i.i.i, i64 %.sroa.525.sroa.0.0.copyload.i.i.i.i
  store i64 1, ptr %i.fd, align 8, !alias.scope !18225, !noalias !18053
  store i64 %spec.select.i.i.i.i, ptr %.sroa.4235.0..sroa_idx.i, align 8, !alias.scope !18225, !noalias !18053
  store i64 %.sroa.525.sroa.5.0.copyload.i.i.i.i, ptr %i.abw, align 8, !alias.scope !18225, !noalias !18053
  store i64 %spec.select61.i.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !alias.scope !18225, !noalias !18053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.i.i.i.i, i64 72, i1 false), !noalias !18226
  store i64 0, ptr %i.abu, align 8, !alias.scope !18225, !noalias !18053
  store i64 %.sink10.i.i.i.i.i.i, ptr %i.abv, align 8, !alias.scope !18225, !noalias !18053
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.7.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18057)
  br label %bb.gy

.body.i.i:                                        ; preds = %.invoke.i, %bb.ko, %bb.kn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit16.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i16.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i
  %.pn.i.i119 = phi { ptr, i32 } [ %lpad.phi15.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit16.i.i ], [ %eh.lpad-body.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i ], [ %eh.lpad-body.i17.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i16.i.i.i.i ], [ %lpad.phi15.i.i, %.invoke.i ], [ %lpad.phi15.i.i, %bb.ko ], [ %lpad.phi15.i.i, %bb.kn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2d_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB2f_4link14LinkAnnotationj1_EEEEB2f_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.fd) #44
          to label %.body.i116 unwind label %bb.kl, !noalias !18080

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i: ; preds = %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i.i.i.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i6.i.i.i.i
  %.pn169.i.i = phi ptr [ %i.aqn, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i6.i.i.i.i ], [ %i.aki, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.14.i.i = phi i64 [ %.sroa.047.0.copyload.i.i.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i6.i.i.i.i ], [ %.sroa.043.0.copyload.i.i.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i.i.i.i.i ]
  %.sroa.649.0..sroa_idx.i.i.sink.i.i = getelementptr inbounds nuw i8, ptr %.pn169.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc), !noalias !18053
  store i64 %.sroa.0.14.i.i, ptr %i.fc, align 8, !noalias !18053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.649.0..sroa_idx.i.i.sink.i.i, i64 80, i1 false)
  %i.ard = load i64, ptr %i.acg, align 8, !noalias !18053, !noundef !10 ; 7 uses
  %i.are = icmp eq i64 %i.ard, 1
  br i1 %i.are, label %bb.jt, label %bb.ju

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread5.i.i: ; preds = %bb.jk, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread8.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2d_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB2f_4link14LinkAnnotationj1_EEEEB2f_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.fd)
          to label %bb.kp unwind label %.loopexit311.i

bb.jt:                                            ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i
  %i.arf = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !18053, !nonnull !10, !noundef !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aci, ptr noundef nonnull align 4 dereferenceable(16) %i.arf, i64 16, i1 false), !noalias !18080
  %i.arg = getelementptr inbounds nuw i8, ptr %.pn169.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acj, ptr noundef nonnull align 8 dereferenceable(24) %i.arg, i64 24, i1 false)
  store i64 -1, ptr %i.fb, align 8, !noalias !18053
  store i64 -2, ptr %i.ack, align 8, !noalias !18053
  br label %bb.jx

bb.ju:                                            ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa), !noalias !18053
  %i.arh = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !18053, !nonnull !10, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !18227)
  call void @llvm.experimental.noalias.scope.decl(metadata !18228)
  %i.ari = shl i64 %i.ard, 5                      ; 4 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ari, 9223372036854775804
  br i1 %.not.i.i.i.i.i.i, label %bb.jw, label %bb.jv, !prof !36

bb.jv:                                            ; preds = %bb.ju
  %i.arj = icmp eq i64 %i.ari, 0
  br i1 %i.arj, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsidf7BFzONoc_6krilla4geom13QuadrilateralE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.jv
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18229
  %i.ark = call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ari, i64 noundef range(i64 1, 17) 4) #41, !noalias !18229 ; 2 uses
  %i.arl = icmp eq ptr %i.ark, null
  br i1 %i.arl, label %bb.jw, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsidf7BFzONoc_6krilla4geom13QuadrilateralE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.jw:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.ju
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.ju ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ari) #39
          to label %.noexc.i172.i unwind label %.loopexit.split-lp.i.i, !noalias !18080

.noexc.i172.i:                                    ; preds = %bb.jw
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsidf7BFzONoc_6krilla4geom13QuadrilateralE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.jv
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.jv ], [ %i.ark, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.jv ], [ %i.ard, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 2 uses
  %i.arm = icmp samesign ule i64 %i.ard, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.arm)
  %i.arn = icmp eq i64 %i.ard, 0
  br i1 %i.arn, label %.loopexit.i.i118, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsidf7BFzONoc_6krilla4geom13QuadrilateralE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.aro = phi i64 [ %i.arx, %.preheader.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsidf7BFzONoc_6krilla4geom13QuadrilateralE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i ] ; 3 uses
  %i.arp = getelementptr inbounds nuw [16 x i8], ptr %i.arh, i64 %i.aro ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18230)
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 8
  %i.arr = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.aro ; 4 uses
  %i.ars = load <2 x float>, ptr %i.arq, align 4, !alias.scope !18231, !noalias !18232 ; 2 uses
  %6 = shufflevector <2 x float> %i.ars, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 0>
  %.sroa.75.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %i.art = extractelement <2 x float> %i.ars, i64 0
  store float %i.art, ptr %.sroa.75.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !18233
  %.sroa.86.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.arr, i64 20
  %i.aru = load <2 x float>, ptr %i.arp, align 4, !alias.scope !18231, !noalias !18232 ; 3 uses
  %7 = shufflevector <2 x float> %i.aru, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %8 = shufflevector <3 x float> %7, <3 x float> %6, <4 x i32> <i32 0, i32 4, i32 5, i32 4>
  store <4 x float> %8, ptr %i.arr, align 4, !noalias !18233
  %i.arv = shufflevector <2 x float> %i.aru, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.arv, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !18233
  %.sroa.108.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.arr, i64 28
  %i.arw = extractelement <2 x float> %i.aru, i64 1
  store float %i.arw, ptr %.sroa.108.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !18233
  %i.arx = add nuw i64 %i.aro, 1                  ; 2 uses
  %i.ary = icmp eq i64 %i.arx, %i.ard
  br i1 %i.ary, label %.loopexit.i.i118, label %.preheader.i.i.i.i.i.i

bb.jx:                                            ; preds = %bb.jy, %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acm, ptr noundef nonnull align 8 dereferenceable(24) %i.acl, i64 24, i1 false), !noalias !18053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ey, ptr noundef nonnull align 8 dereferenceable(112) %i.fb, i64 112, i1 false), !noalias !18053
  store i32 0, ptr %i.acn, align 8, !noalias !18053
  %i.arz = load i64, ptr %i.acp, align 8, !range !25, !noalias !18053, !noundef !10
  store i64 %i.arz, ptr %i.aco, align 8, !noalias !18053
  %i.asa = load i32, ptr %i.acq, align 8, !range !14, !noalias !18053, !noundef !10
  %i.asb = trunc nuw i32 %i.asa to i1
  br i1 %i.asb, label %bb.jz, label %bb.ka

.thread.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ka, %bb.jz, %bb.ke, %bb.kd
  %lpad.loopexit.split-lp2217 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i

.loopexit.i.i118:                                 ; preds = %.preheader.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsidf7BFzONoc_6krilla4geom13QuadrilateralE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.fa, align 8, !alias.scope !18234, !noalias !18053
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !18234, !noalias !18053
  store i64 %i.ard, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !18234, !noalias !18053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez), !noalias !18053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(24) %i.ach, i64 24, i1 false), !noalias !18053
  invoke void @_RNvMs3_NtNtCsidf7BFzONoc_6krilla11interactive10annotationNtB5_14LinkAnnotation20new_with_quad_points(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.fb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ez)
          to label %bb.jy unwind label %.loopexit16.i.i, !noalias !18080

bb.jy:                                            ; preds = %.loopexit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !18053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !noalias !18053
  br label %bb.jx

bb.jz:                                            ; preds = %bb.jx
  invoke void @_RNvMs0_NtCsidf7BFzONoc_6krilla4pageNtB5_4Page14add_annotation(ptr noalias nofree noundef nonnull align 8 dereferenceable(416) %i.fy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.ey)
          to label %bb.kg unwind label %.thread.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18080

bb.ka:                                            ; preds = %bb.jx
  %i.asc = load i32, ptr %i.acr, align 4, !noalias !18053, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !18053
  invoke void @_RNvMs0_NtCsidf7BFzONoc_6krilla4pageNtB5_4Page21add_tagged_annotation(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ex, ptr noalias nofree noundef nonnull align 8 dereferenceable(416) %i.fy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.ey)
          to label %bb.kb unwind label %.thread.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18080

bb.kb:                                            ; preds = %bb.ka
  %i.asd = zext i32 %i.asc to i64                 ; 3 uses
  %i.ase = icmp ugt i64 %.val126.i, %i.asd
  br i1 %i.ase, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val125.i) ]
  %i.asf = getelementptr inbounds nuw [24 x i8], ptr %.val125.i, i64 %i.asd ; 2 uses
  %i.asg = load i64, ptr %i.asf, align 8, !range !30, !noalias !18235, !noundef !10
  %.not.not.i.i.i = icmp eq i64 %i.asg, -1
  br i1 %.not.not.i.i.i, label %bb.kf, label %bb.ke

bb.kd:                                            ; preds = %bb.kb
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.asd, i64 noundef %.val126.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #42
          to label %.noexc14.i.i unwind label %.thread.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18080

.noexc14.i.i:                                     ; preds = %bb.kd
  unreachable

bb.ke:                                            ; preds = %bb.kc
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 30, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #42
          to label %.noexc15.i.i unwind label %.thread.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !18080

.noexc15.i.i:                                     ; preds = %bb.ke
  unreachable

bb.kf:                                            ; preds = %bb.kc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ex, i64 24, i1 false), !noalias !18236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !18053
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.jz
  %.val10.i.i = load i64, ptr %i.fc, align 8, !noalias !18053 ; 2 uses
  %i.ash = icmp eq i64 %.val10.i.i, 0
  br i1 %i.ash, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %.val11.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !18053, !nonnull !10, !noundef !10
  %i.asi = shl nuw i64 %.val10.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i, i64 noundef %i.asi, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !18080
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.kh, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc), !noalias !18053
  %.pre.i.i.i.pre.i = load i64, ptr %i.fd, align 8, !range !19, !alias.scope !18197, !noalias !18053
  br label %bb.gx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %.thread.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.kk, %bb.kj
  %lpad.phi15.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.kk ], [ %lpad.phi.i.i, %bb.kj ], [ %lpad.loopexit.split-lp2217, %.thread.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 4 uses
  %.sroa.01.114.i.i = phi i1 [ %.sroa.01.1.ph.i.i, %bb.kk ], [ %.sroa.01.1.ph.i.i, %bb.kj ], [ false, %.thread.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val8.i169.i = load i64, ptr %i.fc, align 8, !noalias !18053 ; 2 uses
  %i.asj = icmp eq i64 %.val8.i169.i, 0
  br i1 %i.asj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit16.i.i, label %bb.ki

bb.ki:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %.val9.i170.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !18053, !nonnull !10, !noundef !10
  %i.ask = shl nuw i64 %.val8.i169.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i170.i, i64 noundef %i.ask, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !18080
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit16.i.i

.loopexit16.i.i:                                  ; preds = %.loopexit.i.i118
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kj

.loopexit.split-lp.i.i:                           ; preds = %bb.jw
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kj

bb.kj:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit16.i.i
  %.sroa.01.1.ph.i.i = phi i1 [ false, %.loopexit16.i.i ], [ true, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit16.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %.val.i168.i = load i64, ptr %i.acl, align 8, !range !24, !noalias !18053, !noundef !10 ; 2 uses
  %i.asl = icmp sgt i64 %.val.i168.i, 0
  br i1 %i.asl, label %bb.kk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.kk:                                            ; preds = %bb.kj
  %i.asm = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %.val7.i171.i = load ptr, ptr %i.asm, align 8, !noalias !18053, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i171.i, i64 noundef %.val.i168.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18237
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.kl:                                            ; preds = %.invoke.i, %.body.i.i
  %i.asn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18080
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit16.i.i: ; preds = %bb.ki, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  br i1 %.sroa.01.114.i.i, label %bb.km, label %.body.i.i

bb.km:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit16.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18238)
  %i.aso = load i64, ptr %i.ach, align 8, !range !38, !alias.scope !18238, !noalias !18239, !noundef !10 ; 3 uses
  %i.asp = icmp eq i64 %i.aso, -2
  br i1 %i.asp, label %.invoke.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  call void @llvm.experimental.noalias.scope.decl(metadata !18240), !noalias !18080
  switch i64 %i.aso, label %bb.ko [
    i64 -1, label %.invoke.i
    i64 0, label %.body.i.i
  ]

bb.ko:                                            ; preds = %bb.kn
  %i.asq = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %.val1.i.i.i = load ptr, ptr %i.asq, align 8, !alias.scope !18241, !noalias !18239, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.aso, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18242
  br label %.body.i.i

.invoke.i:                                        ; preds = %bb.kn, %bb.km
  %i.asr = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla11interactive11destination11DestinationECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %i.asr)
          to label %.body.i.i unwind label %bb.kl

bb.kp:                                            ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !noalias !18053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !18004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !noalias !18004
  %.val121.i = load i64, ptr %i.abp, align 8, !noalias !18004 ; 2 uses
  %i.ass = icmp eq i64 %.val121.i, 0
  br i1 %i.ass, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf7convert5StateEEB1c_.exit179.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %.val122.i = load ptr, ptr %.sroa.5.0..sroa_idx12.i.i, align 8, !noalias !18004, !nonnull !10, !noundef !10
  %i.ast = mul nuw i64 %.val121.i, 112
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val122.i, i64 noundef %i.ast, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf7convert5StateEEB1c_.exit179.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf7convert5StateEEB1c_.exit179.i: ; preds = %bb.kq, %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !18004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !18004
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsidf7BFzONoc_6krilla4page4PageECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(416) %i.fy)
          to label %.noexc138 unwind label %.body223.thread420.thread443.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc138:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf7convert5StateEEB1c_.exit179.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !18004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  br label %.backedge.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf7convert12FrameContextEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf7convert5StateEEB1c_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !18004
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsidf7BFzONoc_6krilla7surface7SurfaceECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(976) %i.fw)
          to label %bb.kr unwind label %.loopexit.split-lp.loopexit.split-lp.i114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf7convert12FrameContextEBF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !18004
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsidf7BFzONoc_6krilla4page4PageECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(416) %i.fy)
          to label %.thread402 unwind label %.body223.thread420.thread443.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread402:                                       ; preds = %bb.kr
end_hunk_0
