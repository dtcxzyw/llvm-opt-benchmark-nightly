inline.NumInlined: 41
inline.NumDeleted: 20
begin_hunk_0
; Function Attrs: nounwind uwtable
define void @Init_printf() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_define_module(ptr noundef nonnull @.str) #6
  %i.b = tail call i64 @rb_define_module_under(i64 noundef %i.a, ptr noundef nonnull @.str.1) #6 ; 5 uses
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.2, ptr noundef nonnull @printf_test_s, i32 noundef 1) #6
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.3, ptr noundef nonnull @printf_test_v, i32 noundef 1) #6
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @printf_test_q, i32 noundef 1) #6
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.5, ptr noundef nonnull @printf_test_call, i32 noundef -1) #6
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.6, ptr noundef nonnull @snprintf_count, i32 noundef 1) #6
  ret void
}

end_hunk_0
begin_hunk_1_@rb_define_singleton_method
; Function Attrs: nounwind uwtable
define internal i64 @printf_test_s(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call nonnull ptr @rb_usascii_encoding() #6
  %i.b = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7, i64 noundef %1) #6
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal i64 @printf_test_v(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call nonnull ptr @rb_usascii_encoding() #6
  %i.b = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, i64 noundef %1) #6
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal i64 @printf_test_q(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call nonnull ptr @rb_usascii_encoding() #6
  %i.b = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.9, i64 noundef %1) #6
  ret i64 %i.b
}

end_hunk_1
begin_hunk_2_@printf_test_call:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = icmp sgt i32 %0, 0
  %.028.idx.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.028.idx.sroa.gep121 = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
end_hunk_2
begin_hunk_3_@printf_test_call:bb.a
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  %i.h = tail call i32 @rb_keyword_given_p() #6
  %.not83 = icmp eq i32 %i.h, 0
  br i1 %.not83, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @rb_hash_dup(i64 noundef %i.g) #6
  %i.j = add nsw i32 %0, -1
  br label %bb.d

end_hunk_3
begin_hunk_4_@printf_test_call:bb.a

.thread:                                          ; preds = %bb.a, %bb.e, %bb.d
  %.1.i82 = phi i32 [ %.1.i, %bb.d ], [ %.1.i, %bb.e ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.1.i82, i32 noundef 2, i32 noundef 2) #7
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
end_hunk_4
begin_hunk_5_@printf_test_call:bb.a
  br i1 %i.w, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !15

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.f, %rb_scan_args_set.exit
  tail call void @rb_unexpected_type(i64 noundef %i.l, i32 noundef 5) #8
  unreachable

Check_Type.exit:                                  ; preds = %bb.f
end_hunk_5
begin_hunk_6_@printf_test_call:bb.a

bb.g:                                             ; preds = %Check_Type.exit
  %i.z = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef nonnull @.str.11, i64 noundef %i.y) #7
  unreachable

bb.h:                                             ; preds = %Check_Type.exit
end_hunk_6
begin_hunk_7_@printf_test_call:bb.a
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i64 @rb_fix2int(i64 noundef %i.af) #6
  br label %rb_num2int_inline.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = tail call i64 @rb_num2int(i64 noundef %i.af) #6
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.k, %bb.l
end_hunk_7
begin_hunk_8_@printf_test_call:bb.a
  br label %bb.o

bb.m:                                             ; preds = %RSTRING_PTR.exit
  %i.ak = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #6
  br label %bb.o

bb.n:                                             ; preds = %RSTRING_PTR.exit
  %i.al = sext i8 %i.ae to i32
  %i.am = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.am, ptr noundef nonnull @.str.12, i32 noundef %i.al) #7
  unreachable

bb.o:                                             ; preds = %bb.m, %rb_num2int_inline.exit
end_hunk_8
begin_hunk_9_@printf_test_call:bb.a
  br i1 %i.av, label %Check_Type.exit34, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i33, !prof !15

rbimpl_RB_TYPE_P_fastpath.exit.thread.i33:        ; preds = %bb.q, %bb.p
  call void @rb_unexpected_type(i64 noundef %.188.i, i32 noundef 8) #8
  unreachable

Check_Type.exit34:                                ; preds = %bb.q
end_hunk_9
begin_hunk_10_@printf_test_call:bb.a
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %Check_Type.exit34, %.lr.ph.i
  %i.aw = call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 5) #6 ; 3 uses
  store i64 %i.aw, ptr @printf_test_call.rbimpl_id, align 8, !tbaa !10
  %.not.i35 = icmp eq i64 %i.aw, 0
  br i1 %.not.i35, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !19

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %Check_Type.exit34
  %.lcssa.i = phi i64 [ %.pr.i, %Check_Type.exit34 ], [ %i.aw, %.lr.ph.i ]
  %i.ax = call i64 @rb_id2sym(i64 noundef %.lcssa.i) #6
  %i.ay = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.ax) #6
  %i.az = and i64 %i.ay, -5
  %.not84 = icmp eq i64 %i.az, 0
  br i1 %.not84, label %bb.s, label %bb.r
end_hunk_10
begin_hunk_11_@printf_test_call:bb.a
  br i1 %.not4.i37, label %.lr.ph.i39, label %rbimpl_intern_const.exit41

.lr.ph.i39:                                       ; preds = %bb.s, %.lr.ph.i39
  %i.ba = call i64 @rb_intern2(ptr noundef nonnull @.str.15, i64 noundef 4) #6 ; 3 uses
  store i64 %i.ba, ptr @printf_test_call.rbimpl_id.14, align 8, !tbaa !10
  %.not.i40 = icmp eq i64 %i.ba, 0
  br i1 %.not.i40, label %.lr.ph.i39, label %rbimpl_intern_const.exit41, !llvm.loop !19

rbimpl_intern_const.exit41:                       ; preds = %.lr.ph.i39, %bb.s
  %.lcssa.i38 = phi i64 [ %.pr.i36, %bb.s ], [ %i.ba, %.lr.ph.i39 ]
  %i.bb = call i64 @rb_id2sym(i64 noundef %.lcssa.i38) #6
  %i.bc = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.bb) #6
  %i.bd = and i64 %i.bc, -5
  %.not85 = icmp eq i64 %i.bd, 0
  br i1 %.not85, label %bb.u, label %bb.t
end_hunk_11
begin_hunk_12_@printf_test_call:bb.a
  br i1 %.not4.i43, label %.lr.ph.i45, label %rbimpl_intern_const.exit47

.lr.ph.i45:                                       ; preds = %bb.u, %.lr.ph.i45
  %i.be = call i64 @rb_intern2(ptr noundef nonnull @.str.17, i64 noundef 4) #6 ; 3 uses
  store i64 %i.be, ptr @printf_test_call.rbimpl_id.16, align 8, !tbaa !10
  %.not.i46 = icmp eq i64 %i.be, 0
  br i1 %.not.i46, label %.lr.ph.i45, label %rbimpl_intern_const.exit47, !llvm.loop !19

rbimpl_intern_const.exit47:                       ; preds = %.lr.ph.i45, %bb.u
  %.lcssa.i44 = phi i64 [ %.pr.i42, %bb.u ], [ %i.be, %.lr.ph.i45 ]
  %i.bf = call i64 @rb_id2sym(i64 noundef %.lcssa.i44) #6
  %i.bg = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.bf) #6
  %i.bh = and i64 %i.bg, -5
  %.not86 = icmp eq i64 %i.bh, 0
  br i1 %.not86, label %bb.w, label %bb.v
end_hunk_12
begin_hunk_13_@printf_test_call:bb.a
  br i1 %.not4.i49, label %.lr.ph.i51, label %rbimpl_intern_const.exit53

.lr.ph.i51:                                       ; preds = %bb.w, %.lr.ph.i51
  %i.bi = call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 5) #6 ; 3 uses
  store i64 %i.bi, ptr @printf_test_call.rbimpl_id.18, align 8, !tbaa !10
  %.not.i52 = icmp eq i64 %i.bi, 0
  br i1 %.not.i52, label %.lr.ph.i51, label %rbimpl_intern_const.exit53, !llvm.loop !19

rbimpl_intern_const.exit53:                       ; preds = %.lr.ph.i51, %bb.w
  %.lcssa.i50 = phi i64 [ %.pr.i48, %bb.w ], [ %i.bi, %.lr.ph.i51 ]
  %i.bj = call i64 @rb_id2sym(i64 noundef %.lcssa.i50) #6
  %i.bk = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.bj) #6
  %i.bl = and i64 %i.bk, -5
  %.not87 = icmp eq i64 %i.bl, 0
  br i1 %.not87, label %bb.y, label %bb.x
end_hunk_13
begin_hunk_14_@printf_test_call:bb.a
  br i1 %.not4.i55, label %.lr.ph.i57, label %rbimpl_intern_const.exit59

.lr.ph.i57:                                       ; preds = %bb.y, %.lr.ph.i57
  %i.bm = call i64 @rb_intern2(ptr noundef nonnull @.str.21, i64 noundef 4) #6 ; 3 uses
  store i64 %i.bm, ptr @printf_test_call.rbimpl_id.20, align 8, !tbaa !10
  %.not.i58 = icmp eq i64 %i.bm, 0
  br i1 %.not.i58, label %.lr.ph.i57, label %rbimpl_intern_const.exit59, !llvm.loop !19

rbimpl_intern_const.exit59:                       ; preds = %.lr.ph.i57, %bb.y
  %.lcssa.i56 = phi i64 [ %.pr.i54, %bb.y ], [ %i.bm, %.lr.ph.i57 ]
  %i.bn = call i64 @rb_id2sym(i64 noundef %.lcssa.i56) #6
  %i.bo = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.bn) #6
  %i.bp = and i64 %i.bo, -5
  %.not88 = icmp eq i64 %i.bp, 0
  br i1 %.not88, label %bb.aa, label %bb.z
end_hunk_14
begin_hunk_15_@printf_test_call:bb.a
  br i1 %.not4.i61, label %.lr.ph.i63, label %rbimpl_intern_const.exit65

.lr.ph.i63:                                       ; preds = %bb.aa, %.lr.ph.i63
  %i.bq = call i64 @rb_intern2(ptr noundef nonnull @.str.23, i64 noundef 5) #6 ; 3 uses
  store i64 %i.bq, ptr @printf_test_call.rbimpl_id.22, align 8, !tbaa !10
  %.not.i64 = icmp eq i64 %i.bq, 0
  br i1 %.not.i64, label %.lr.ph.i63, label %rbimpl_intern_const.exit65, !llvm.loop !19

rbimpl_intern_const.exit65:                       ; preds = %.lr.ph.i63, %bb.aa
  %.lcssa.i62 = phi i64 [ %.pr.i60, %bb.aa ], [ %i.bq, %.lr.ph.i63 ]
  %i.br = call i64 @rb_id2sym(i64 noundef %.lcssa.i62) #6
  %i.bs = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.br) #6 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4
  br i1 %i.bt, label %uint_to_str.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %rbimpl_intern_const.exit65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bv = call i64 @rb_num2uint(i64 noundef %i.bs) #6
  %i.bw = trunc i64 %i.bv to i32
  br label %.preheader.i

end_hunk_15
begin_hunk_16_@printf_test_call:bb.a
  br i1 %.not4.i69, label %.lr.ph.i71, label %rbimpl_intern_const.exit73

.lr.ph.i71:                                       ; preds = %uint_to_str.exit, %.lr.ph.i71
  %i.ci = call i64 @rb_intern2(ptr noundef nonnull @.str.25, i64 noundef 4) #6 ; 3 uses
  store i64 %i.ci, ptr @printf_test_call.rbimpl_id.24, align 8, !tbaa !10
  %.not.i72 = icmp eq i64 %i.ci, 0
  br i1 %.not.i72, label %.lr.ph.i71, label %rbimpl_intern_const.exit73, !llvm.loop !19

rbimpl_intern_const.exit73:                       ; preds = %.lr.ph.i71, %uint_to_str.exit
  %.lcssa.i70 = phi i64 [ %.pr.i68, %uint_to_str.exit ], [ %i.ci, %.lr.ph.i71 ]
  %i.cj = call i64 @rb_id2sym(i64 noundef %.lcssa.i70) #6
  %i.ck = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.cj) #6 ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 4
  br i1 %i.cl, label %uint_to_str.exit79.a, label %bb.ac

end_hunk_16
begin_hunk_17_@printf_test_call:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.co = call i64 @rb_num2uint(i64 noundef %i.ck) #6
  %.not.i74 = icmp slt i64 %.5.idx, 31
  br i1 %.not.i74, label %.preheader.i76.preheader, label %uint_to_str.exit79.a

.preheader.i76.preheader:                         ; preds = %bb.ad
  %i.cp = trunc i64 %i.co to i32
end_hunk_17
begin_hunk_18_@printf_test_call:bb.a
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.ptr, ptr noundef nonnull align 1 dereferenceable(1) %i.ct, i64 %i.da, i1 false)
  %i.db = getelementptr inbounds i8, ptr %.ptr, i64 %i.da
  br label %uint_to_str.exit79.a

uint_to_str.exit79.a:                             ; preds = %bb.ae, %bb.ad, %rbimpl_intern_const.exit73, %bb.ac, %bb.o
  %.7 = phi ptr [ %.028.idx.sroa.gep121, %bb.o ], [ %.5.ptr, %rbimpl_intern_const.exit73 ], [ %.ptr, %bb.ac ], [ %i.db, %bb.ae ], [ %.ptr, %bb.ad ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.ae, ptr %.7, align 1, !tbaa !18
  store i8 0, ptr %i.dc, align 1, !tbaa !18
  %i.dd = icmp eq i8 %i.ae, 115
  %i.de = call nonnull ptr @rb_usascii_encoding() #6 ; 2 uses
  br i1 %i.dd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %uint_to_str.exit79.a
  %i.df = call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.de, ptr noundef nonnull %i.b, ptr noundef %.030) #6
  br label %bb.ah

bb.ag:                                            ; preds = %uint_to_str.exit79.a
  %i.dg = call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.de, ptr noundef nonnull %i.b, i32 noundef %.029) #6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i64 [ %i.df, %bb.af ], [ %i.dg, %bb.ag ]
  %i.dh = call i64 @rb_usascii_str_new_cstr(ptr noundef nonnull %i.b) #6
  %i.di = call i64 @rb_assoc_new(i64 noundef %.0, i64 noundef %i.dh) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i64 %i.di
}

end_hunk_18
begin_hunk_19_@snprintf_count:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #6
  %i.c = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.26, ptr noundef %i.b) #6
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 1
  %i.f = or disjoint i64 %i.e, 1
end_hunk_19
begin_hunk_20_@rb_keyword_given_p
; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2
end_hunk_20
begin_hunk_21_@rb_intern2
declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

declare i64 @rb_num2uint(i64 noundef) local_unnamed_addr #2

end_hunk_21
begin_hunk_22_@ruby_snprintf
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
end_hunk_22
