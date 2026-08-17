inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@icmp_match:bb.a
  %i.k = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef nonnull %2, i32 noundef 8) #7
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread18, !prof !11

__skb_header_pointer.exit:                        ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = sext i32 %i.f to i64
  %i.p = getelementptr i8, ptr %i.n, i64 %i.o     ; 2 uses
  %.not14 = icmp eq ptr %i.p, null
  br i1 %.not14, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread18

__skb_header_pointer.exit.thread:                 ; preds = %bb.d, %bb.c, %__skb_header_pointer.exit
  %i.q = getelementptr i8, ptr %1, i64 30
  store i8 1, ptr %i.q, align 2
  br label %bb.f

__skb_header_pointer.exit.thread18:               ; preds = %bb.d, %__skb_header_pointer.exit
  %.0.i21 = phi ptr [ %i.p, %__skb_header_pointer.exit ], [ %2, %bb.d ] ; 2 uses
  %i.r = load i8, ptr %i.b, align 1               ; 2 uses
  %i.s = getelementptr i8, ptr %i.b, i64 3
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.r, -1
  br i1 %i.u, label %icmp_type_code_match.exit, label %bb.e

bb.e:                                             ; preds = %__skb_header_pointer.exit.thread18
  %i.v = getelementptr i8, ptr %.0.i21, i64 1
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = load i8, ptr %.0.i21, align 4
  %i.y = getelementptr i8, ptr %i.b, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr i8, ptr %i.b, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.x, %i.r
  %.not.i.i = icmp uge i8 %i.w, %i.ab
  %or.cond.not.i.i = and i1 %i.ac, %.not.i.i
  %i.ad = icmp ule i8 %i.w, %i.z
  %spec.select.i.i = and i1 %i.ad, %or.cond.not.i.i
  %i.ae = zext i1 %spec.select.i.i to i32
  br label %icmp_type_code_match.exit

icmp_type_code_match.exit:                        ; preds = %__skb_header_pointer.exit.thread18, %bb.e
  %i.af = phi i32 [ 1, %__skb_header_pointer.exit.thread18 ], [ %i.ae, %bb.e ]
  %i.ag = and i8 %i.t, 1
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = icmp ne i32 %i.af, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %icmp_type_code_match.exit, %__skb_header_pointer.exit.thread
  %.0 = phi i1 [ false, %__skb_header_pointer.exit.thread ], [ %i.ai, %icmp_type_code_match.exit ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal range(i32 -22, 1) i32 @icmp_checkentry(ptr nofree noundef readonly captures(none) %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 3
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp ugt i8 %i.d, 1
  %i.f = select i1 %i.e, i32 -22, i32 0
  ret i32 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @icmp6_match(ptr noundef %0, ptr nofree noundef captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.icmp6hdr, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 28
  %i.d = load i16, ptr %i.c, align 4
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !annotation !10
  %i.e = getelementptr i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 112
  %.val = load i32, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 116
  %.val15 = load i32, ptr %i.h, align 4
  %i.i = add i32 %i.f, %.val15
  %i.j = sub i32 %.val, %i.i
  %.not.i = icmp slt i32 %i.j, 8
  br i1 %.not.i, label %bb.c, label %__skb_header_pointer.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq ptr %0, null
  br i1 %.not13.i, label %__skb_header_pointer.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef nonnull %2, i32 noundef 8) #7
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread18, !prof !11

__skb_header_pointer.exit:                        ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = sext i32 %i.f to i64
  %i.p = getelementptr i8, ptr %i.n, i64 %i.o     ; 2 uses
  %.not14 = icmp eq ptr %i.p, null
  br i1 %.not14, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread18

__skb_header_pointer.exit.thread:                 ; preds = %bb.d, %bb.c, %__skb_header_pointer.exit
  %i.q = getelementptr i8, ptr %1, i64 30
  store i8 1, ptr %i.q, align 2
  br label %bb.e

__skb_header_pointer.exit.thread18:               ; preds = %bb.d, %__skb_header_pointer.exit
  %.0.i21 = phi ptr [ %i.p, %__skb_header_pointer.exit ], [ %2, %bb.d ] ; 2 uses
  %i.r = load i8, ptr %i.b, align 1
  %i.s = getelementptr i8, ptr %i.b, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr i8, ptr %i.b, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = load i8, ptr %.0.i21, align 4
  %i.x = getelementptr i8, ptr %.0.i21, i64 1
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = getelementptr i8, ptr %i.b, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = trunc i8 %i.aa to i1
  %i.ac = icmp eq i8 %i.w, %i.r
  %.not.i.i = icmp uge i8 %i.y, %i.t
  %or.cond.not.i.i = and i1 %i.ac, %.not.i.i
  %i.ad = icmp ule i8 %i.y, %i.v
  %spec.select.i.i = and i1 %i.ad, %or.cond.not.i.i
  %i.ae = xor i1 %spec.select.i.i, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %__skb_header_pointer.exit.thread18, %__skb_header_pointer.exit.thread
  %.0 = phi i1 [ false, %__skb_header_pointer.exit.thread ], [ %i.ae, %__skb_header_pointer.exit.thread18 ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal range(i32 -22, 1) i32 @icmp6_checkentry(ptr nofree noundef readonly captures(none) %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 3
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp ugt i8 %i.d, 1
  %i.f = select i1 %i.e, i32 -22, i32 0
  ret i32 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @tcp_find_option(i8 noundef zeroext range(i8 1, 0) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 41) %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false), !annotation !10
  %i.b = add i32 %2, 20                           ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 112
  %.val = load i32, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %1, i64 116
  %.val28 = load i32, ptr %i.d, align 4
  %i.e = add i32 %.val, -20
  %i.f = add i32 %2, %.val28
  %i.g = sub i32 %i.e, %i.f
  %.not.i = icmp slt i32 %i.g, %3
  br i1 %.not.i, label %bb.c, label %__skb_header_pointer.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq ptr %1, null
  br i1 %.not13.i, label %__skb_header_pointer.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %i.b, ptr noundef nonnull %i.a, i32 noundef range(i32 1, 41) %3) #7
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %__skb_header_pointer.exit.thread, label %.preheader, !prof !11

__skb_header_pointer.exit:                        ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 208
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = sext i32 %i.b to i64
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %__skb_header_pointer.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.d, %__skb_header_pointer.exit
  %.0.i37 = phi ptr [ %i.m, %__skb_header_pointer.exit ], [ %i.a, %bb.d ]
  %i.o = add nsw i32 %3, -1
  br label %bb.e

__skb_header_pointer.exit.thread:                 ; preds = %bb.d, %bb.c, %__skb_header_pointer.exit
  store i8 1, ptr %5, align 1
  br label %.loopexit

bb.e:                                             ; preds = %.preheader, %bb.i
  %.02231 = phi i32 [ 0, %.preheader ], [ %i.y, %bb.i ] ; 3 uses
  %i.p = zext nneg i32 %.02231 to i64
  %i.q = getelementptr i8, ptr %.0.i37, i64 %i.p  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %i.s = icmp eq i8 %i.r, %0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = xor i1 %4, true
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.u = icmp ult i8 %i.r, 2
  %i.v = icmp eq i32 %.02231, %i.o
  %or.cond = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.q, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %narrow = call i8 @llvm.umax.i8(i8 %i.x, i8 1)
  %. = zext i8 %narrow to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %..sink = phi i32 [ %., %bb.h ], [ 1, %bb.g ]
  %i.y = add nuw nsw i32 %.02231, %..sink         ; 2 uses
  %i.z = icmp samesign ult i32 %i.y, %3
  br i1 %i.z, label %bb.e, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %bb.i, %bb.a, %bb.f, %__skb_header_pointer.exit.thread
  %.0 = phi i1 [ false, %__skb_header_pointer.exit.thread ], [ %i.t, %bb.f ], [ %4, %bb.a ], [ %4, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #6

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { nounwind }
attributes #9 = { noredzone "no-builtin-wcslen" }

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
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 3006}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
