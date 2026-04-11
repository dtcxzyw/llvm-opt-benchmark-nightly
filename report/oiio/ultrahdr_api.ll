inline.NumInlined: 1527
inline.NumDeleted: 687
begin_hunk_0_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !35
  %i.bo = uitofp i32 %i.bn to float
  %i.bp = fdiv contract float %i.bl, %i.bo
  %i.bq = uitofp nneg i32 %.sroa.speculated359 to float
  %13 = uitofp nneg i32 %.sroa.speculated355 to float
  %14 = insertelement <2 x float> poison, float %13, i64 0
  %15 = insertelement <2 x float> %14, float %i.bq, i64 1
  %16 = insertelement <2 x float> poison, float %i.bp, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fdiv contract <2 x float> %15, %17
  %19 = fptosi <2 x float> %18 to <2 x i32>       ; 2 uses
  %20 = extractelement <2 x i32> %19, i64 0       ; 3 uses
  %21 = extractelement <2 x i32> %19, i64 1       ; 4 uses
  %.not181 = icmp sgt i32 %20, %21
  br i1 %.not181, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = sub nsw i32 %20, %21
  %i.bu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bs, i64 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %i.bt) #29 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

end_hunk_1
begin_hunk_2_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !36
  %i.by = uitofp i32 %i.bx to float
  %i.bz = fdiv contract float %i.bv, %i.by
  %i.ca = uitofp nneg i32 %.sroa.speculated351 to float
  %22 = uitofp nneg i32 %.sroa.speculated to float
  %23 = insertelement <2 x float> poison, float %22, i64 0
  %24 = insertelement <2 x float> %23, float %i.ca, i64 1
  %25 = insertelement <2 x float> poison, float %i.bz, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = fdiv contract <2 x float> %24, %26
  %28 = fptosi <2 x float> %27 to <2 x i32>       ; 2 uses
  %29 = extractelement <2 x i32> %28, i64 0       ; 3 uses
  %30 = extractelement <2 x i32> %28, i64 1       ; 4 uses
  %.not182 = icmp sgt i32 %29, %30
  br i1 %.not182, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
end_hunk_2
begin_hunk_3_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262, %bb.u
  %i.cj = phi ptr [ %i.ch, %bb.u ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262 ]
  %i.ck = sub nsw i32 %20, %21
  %i.cl = sub nsw i32 %29, %30
  invoke void @_ZN8ultrahdr10apply_cropEPNS_16uhdr_crop_effectEP14uhdr_raw_imageiiiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %9, ptr noundef %i.cj, ptr noundef nonnull %i.aq, i32 noundef %21, i32 noundef %30, i32 noundef %i.ck, i32 noundef %i.cl, ptr noundef null, ptr noundef null)
          to label %.thread unwind label %bb.y

.thread:                                          ; preds = %bb.w
end_hunk_3
begin_hunk_4_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !85
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = sub nsw i32 %29, %30
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.co, i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %i.cp) #29 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

end_hunk_4
