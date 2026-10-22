Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/constants?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@scsi_opcode_sa_name:bb.a
  %i.a = icmp ult i32 %0, 192
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [8 x i8], ptr @cdb_byte0_names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %2, align 8
  %trunc = trunc nuw i32 %0 to i8
  switch i8 %trunc, label %.critedge [
    i8 127, label %bb.c
    i8 -93, label %.fold.split
    i8 -92, label %.fold.split58
    i8 94, label %.fold.split59
    i8 95, label %.fold.split60
    i8 -85, label %.fold.split61
    i8 -87, label %.fold.split62
    i8 -99, label %.fold.split63
    i8 -98, label %.fold.split64
    i8 -97, label %.fold.split65
    i8 -124, label %.fold.split66
    i8 -125, label %.fold.split67
  ]

.fold.split:                                      ; preds = %bb.b
  br label %bb.c

.fold.split58:                                    ; preds = %bb.b
  br label %bb.c

.fold.split59:                                    ; preds = %bb.b
  br label %bb.c

.fold.split60:                                    ; preds = %bb.b
  br label %bb.c

.fold.split61:                                    ; preds = %bb.b
  br label %bb.c

.fold.split62:                                    ; preds = %bb.b
  br label %bb.c

.fold.split63:                                    ; preds = %bb.b
  br label %bb.c

.fold.split64:                                    ; preds = %bb.b
  br label %bb.c

.fold.split65:                                    ; preds = %bb.b
  br label %bb.c

.fold.split66:                                    ; preds = %bb.b
  br label %bb.c

.fold.split67:                                    ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.fold.split67, %.fold.split66, %.fold.split65, %.fold.split64, %.fold.split63, %.fold.split62, %.fold.split61, %.fold.split60, %.fold.split59, %.fold.split58, %.fold.split
  %.lcssa = phi ptr [ @variable_length_arr, %bb.b ], [ @tpc_in_arr, %.fold.split66 ], [ @maint_in_arr, %.fold.split ], [ @maint_out_arr, %.fold.split58 ], [ @pr_in_arr, %.fold.split59 ], [ @pr_out_arr, %.fold.split60 ], [ @serv_in12_arr, %.fold.split61 ], [ @serv_out12_arr, %.fold.split62 ], [ @serv_bidi_arr, %.fold.split63 ], [ @serv_in16_arr, %.fold.split64 ], [ @serv_out16_arr, %.fold.split65 ], [ @tpc_out_arr, %.fold.split67 ]
  %.02437.lcssa = phi ptr [ @sa_names_arr, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 240), %.fold.split66 ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 24), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 48), %.fold.split58 ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 72), %.fold.split59 ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 96), %.fold.split60 ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 120), %.fold.split61 ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 144), %.fold.split62 ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 168), %.fold.split63 ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 192), %.fold.split64 ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 216), %.fold.split65 ], [ getelementptr inbounds nuw (i8, ptr @sa_names_arr, i64 264), %.fold.split67 ]
  %i.e = getelementptr i8, ptr %.02437.lcssa, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.039 = phi i32 [ %i.j, %bb.d ], [ 0, %bb.c ]
  %.138 = phi ptr [ %i.k, %bb.d ], [ %.lcssa, %bb.c ] ; 3 uses
  %i.h = load i32, ptr %.138, align 8
  %i.i = icmp eq i32 %1, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i32 %.039, 1                 ; 2 uses
  %i.k = getelementptr i8, ptr %.138, i64 16
  %exitcond.not = icmp eq i32 %i.j, %i.f
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !11

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.138, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %3, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.b, %bb.c, %bb.e, %bb.a
  %.025 = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ true, %bb.c ], [ false, %bb.b ], [ true, %bb.d ]
  ret i1 %.025
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local ptr @scsi_sense_key_string(i8 noundef zeroext %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i8 %0, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %i.c = getelementptr [8 x i8], ptr @snstext, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: write)
define dso_local ptr @scsi_extd_sense_format(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = zext i8 %0 to i32
  %i.b = shl nuw nsw i32 %i.a, 8
  %i.c = zext i8 %1 to i32
  %i.d = or disjoint i32 %i.b, %i.c               ; 4 uses
  store ptr null, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %bb.g ] ; 5 uses
  %.033 = phi i32 [ 0, %bb.a ], [ %i.ao, %bb.g ]  ; 2 uses
  %i.e = getelementptr [4 x i8], ptr @additional, i64 %indvars.iv ; 2 uses
  %i.f = load i16, ptr %i.e, align 16
  %i.g = zext i16 %i.f to i32
  %i.h = icmp eq i32 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.033.lcssa = phi i32 [ %.033, %bb.b ], [ %i.n, %bb.d ], [ %i.w, %bb.e ], [ %i.af, %bb.f ]
  %i.i = zext i32 %.033.lcssa to i64
  %i.j = getelementptr i8, ptr @.str.252, i64 %i.i
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.e, i64 2
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32
  %i.n = add i32 %.033, %i.m                      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr @additional, i64 %indvars.iv ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i16, ptr %i.p, align 4
  %i.r = zext i16 %i.q to i32
  %i.s = icmp eq i32 %i.d, %i.r
  br i1 %i.s, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.o, i64 6
  %i.u = load i16, ptr %i.t, align 2
  %i.v = zext i16 %i.u to i32
  %i.w = add i32 %i.n, %i.v                       ; 2 uses
  %i.x = getelementptr [4 x i8], ptr @additional, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = zext i16 %i.z to i32
  %i.ab = icmp eq i32 %i.d, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.x, i64 10
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32
  %i.af = add i32 %i.w, %i.ae                     ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr @additional, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 12
  %i.ai = load i16, ptr %i.ah, align 4
  %i.aj = zext i16 %i.ai to i32
  %i.ak = icmp eq i32 %i.d, %i.aj
  br i1 %i.ak, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.ag, i64 14
  %i.am = load i16, ptr %i.al, align 2
  %i.an = zext i16 %i.am to i32
  %i.ao = add i32 %i.af, %i.an
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 756
  br i1 %exitcond.not.3, label %.preheader.preheader, label %bb.b, !llvm.loop !12

.preheader.preheader:                             ; preds = %bb.g
  switch i8 %0, label %.loopexit [
    i8 64, label %bb.h
    i8 65, label %bb.i
    i8 66, label %.fold.split
    i8 77, label %.fold.split47
    i8 112, label %.fold.split48
  ]

bb.h:                                             ; preds = %.preheader.preheader
  %.not27 = icmp slt i8 %1, 0
  %spec.select = select i1 %.not27, ptr getelementptr inbounds nuw (i8, ptr @additional2, i64 24), ptr @additional2
  br label %bb.i

.fold.split:                                      ; preds = %.preheader.preheader
  br label %bb.i

.fold.split47:                                    ; preds = %.preheader.preheader
  br label %bb.i

.fold.split48:                                    ; preds = %.preheader.preheader
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.preheader, %.fold.split48, %.fold.split47, %.fold.split
  %.lcssa.a = phi ptr [ @.str.261, %.fold.split48 ], [ @.str.259, %.fold.split47 ], [ @.str.254, %.fold.split ], [ @.str.254, %.preheader.preheader ], [ @.str.254, %bb.h ]
  %.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @additional2, i64 120), %.fold.split48 ], [ getelementptr inbounds nuw (i8, ptr @additional2, i64 96), %.fold.split47 ], [ getelementptr inbounds nuw (i8, ptr @additional2, i64 72), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @additional2, i64 48), %.preheader.preheader ], [ %spec.select, %bb.h ]
  store ptr %.lcssa.a, ptr %2, align 8
  %i.ap = getelementptr i8, ptr %.lcssa, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.i, %bb.c
  %.022 = phi ptr [ %i.j, %bb.c ], [ %i.aq, %bb.i ], [ null, %.preheader.preheader ]
  ret ptr %.022
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local ptr @scsi_hostbyte_string(i32 noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = lshr i32 %0, 16
  %i.b = and i32 %i.a, 255                        ; 2 uses
  %i.c = icmp samesign ult i32 %i.b, 20
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr [8 x i8], ptr @hostbyte_table, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local ptr @scsi_mlreturn_string(i32 noundef %0) #3 align 16 prefalign(16) {
bb.a:
  switch i32 %0, label %.loopexit [
    i32 8193, label %bb.b
    i32 8194, label %.fold.split
    i32 8195, label %.fold.split12
    i32 8196, label %.fold.split13
    i32 8197, label %.fold.split14
    i32 8198, label %.fold.split15
    i32 8199, label %.fold.split16
    i32 8200, label %.fold.split17
    i32 8201, label %.fold.split18
  ]

.fold.split:                                      ; preds = %bb.a
  br label %bb.b

.fold.split12:                                    ; preds = %bb.a
  br label %bb.b

.fold.split13:                                    ; preds = %bb.a
  br label %bb.b

.fold.split14:                                    ; preds = %bb.a
  br label %bb.b

.fold.split15:                                    ; preds = %bb.a
  br label %bb.b

.fold.split16:                                    ; preds = %bb.a
  br label %bb.b

.fold.split17:                                    ; preds = %bb.a
  br label %bb.b

.fold.split18:                                    ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.fold.split18, %.fold.split17, %.fold.split16, %.fold.split15, %.fold.split14, %.fold.split13, %.fold.split12, %.fold.split
  %.069.lcssa = phi ptr [ @scsi_mlreturn_arr, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @scsi_mlreturn_arr, i64 112), %.fold.split17 ], [ getelementptr inbounds nuw (i8, ptr @scsi_mlreturn_arr, i64 16), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @scsi_mlreturn_arr, i64 32), %.fold.split12 ], [ getelementptr inbounds nuw (i8, ptr @scsi_mlreturn_arr, i64 48), %.fold.split13 ], [ getelementptr inbounds nuw (i8, ptr @scsi_mlreturn_arr, i64 64), %.fold.split14 ], [ getelementptr inbounds nuw (i8, ptr @scsi_mlreturn_arr, i64 80), %.fold.split15 ], [ getelementptr inbounds nuw (i8, ptr @scsi_mlreturn_arr, i64 96), %.fold.split16 ], [ getelementptr inbounds nuw (i8, ptr @scsi_mlreturn_arr, i64 128), %.fold.split18 ]
  %i.a = getelementptr i8, ptr %.069.lcssa, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b
  %.07 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.07
}

attributes #0 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
end_hunk_0
