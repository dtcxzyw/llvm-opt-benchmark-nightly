inline.NumInlined: 1527
inline.NumDeleted: 687
begin_hunk_0_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !35
  %i.bo = uitofp i32 %i.bn to float
  %i.bp = fdiv contract float %i.bl, %i.bo        ; 2 uses
  %i.bq = uitofp nneg i32 %.sroa.speculated359 to float
  %13 = fdiv contract float %i.bq, %i.bp
  %14 = fptosi float %13 to i32                   ; 4 uses
  %15 = uitofp nneg i32 %.sroa.speculated355 to float
  %16 = fdiv contract float %15, %i.bp
  %17 = fptosi float %16 to i32                   ; 3 uses
  %.not181 = icmp sgt i32 %17, %14
  br i1 %.not181, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = sub nsw i32 %17, %14
  %i.bu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bs, i64 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %i.bt) #29 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

end_hunk_1
begin_hunk_2_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !36
  %i.by = uitofp i32 %i.bx to float
  %i.bz = fdiv contract float %i.bv, %i.by        ; 2 uses
  %i.ca = uitofp nneg i32 %.sroa.speculated351 to float
  %18 = fdiv contract float %i.ca, %i.bz
  %19 = fptosi float %18 to i32                   ; 4 uses
  %20 = uitofp nneg i32 %.sroa.speculated to float
  %21 = fdiv contract float %20, %i.bz
  %22 = fptosi float %21 to i32                   ; 3 uses
  %.not182 = icmp sgt i32 %22, %19
  br i1 %.not182, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
end_hunk_2
begin_hunk_3_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262, %bb.u
  %i.cj = phi ptr [ %i.ch, %bb.u ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262 ]
  %i.ck = sub nsw i32 %17, %14
  %i.cl = sub nsw i32 %22, %19
  invoke void @_ZN8ultrahdr10apply_cropEPNS_16uhdr_crop_effectEP14uhdr_raw_imageiiiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %9, ptr noundef %i.cj, ptr noundef nonnull %i.aq, i32 noundef %14, i32 noundef %19, i32 noundef %i.ck, i32 noundef %i.cl, ptr noundef null, ptr noundef null)
          to label %.thread unwind label %bb.y

.thread:                                          ; preds = %bb.w
end_hunk_3
begin_hunk_4_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !85
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = sub nsw i32 %22, %19
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.co, i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %i.cp) #29 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

end_hunk_4
