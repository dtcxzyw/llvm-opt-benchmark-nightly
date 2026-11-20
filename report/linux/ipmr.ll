Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ipmr?download=true
inline.NumInlined: 666
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ipmr_rtm_getroute:bb.a
  %.0.i35 = phi i32 [ %.val.i34, %bb.ae ], [ 0, %nla_get_in_addr_default.exit ]
  %i.cx = call ptr @__alloc_skb(i32 noundef range(i32 0, -3) 348, i32 noundef range(i32 2080, 3265) 3264, i32 noundef 0, i32 noundef -1) #18 ; 4 uses
  %.not = icmp eq ptr %i.cx, null
  br i1 %.not, label %ipmr_rtm_valid_getroute_req.exit.thread, label %bb.af

bb.af:                                            ; preds = %nla_get_in_addr_default.exit36
  call void @__rcu_read_lock() #18
  %i.cy = getelementptr i8, ptr %.val, i64 1720
  %i.cz = load volatile ptr, ptr %i.cy, align 8   ; 3 uses
  %.not30 = icmp eq ptr %i.cz, null
  br i1 %.not30, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 %.0.i35, ptr %3, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %i.da, align 4
  %i.db = call ptr @mr_mfc_find_parent(ptr noundef nonnull %i.cz, ptr noundef nonnull %3, i32 noundef -1) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not31 = icmp eq ptr %i.db, null
  br i1 %.not31, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr i8, ptr %0, i64 52        ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr i8, ptr %1, i64 8
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = call fastcc i32 @ipmr_fill_mroute(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cx, i32 noundef %i.dd, i32 noundef %i.df, ptr noundef nonnull %i.db, i32 noundef 24, i32 noundef 0) #19, !srcloc !145 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @__rcu_read_unlock() #18
  %i.di = load i32, ptr %i.dc, align 4
  %i.dj = call i32 @rtnl_unicast(ptr noundef nonnull %i.cx, ptr noundef %.val, i32 noundef %i.di) #18
  br label %ipmr_rtm_valid_getroute_req.exit.thread

ipmr_rtm_valid_getroute_req.exit.thread:          ; preds = %bb.g, %bb.ab, %bb.y, %bb.r, %bb.c, %bb.f, %bb.aa, %bb.x, %bb.q, %bb.b, %nla_get_in_addr_default.exit36, %ipmr_rtm_valid_getroute_req.exit, %bb.aj, %bb.ai
  %.0 = phi i32 [ %.042.i, %ipmr_rtm_valid_getroute_req.exit ], [ %.1, %bb.aj ], [ %i.dj, %bb.ai ], [ -105, %nla_get_in_addr_default.exit36 ], [ -22, %bb.b ], [ -22, %bb.q ], [ -22, %bb.x ], [ -22, %bb.aa ], [ -22, %bb.f ], [ -22, %bb.c ], [ -22, %bb.r ], [ -22, %bb.y ], [ -22, %bb.ab ], [ -22, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ah
  %.1 = phi i32 [ %i.dg, %bb.ah ], [ -2, %bb.af ], [ -2, %bb.ag ]
  call void @__rcu_read_unlock() #18
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %i.cx, i32 noundef 2) #18
  br label %ipmr_rtm_valid_getroute_req.exit.thread
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ipmr_rtm_dumproute(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.fib_dump_filter, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  tail call void @__rcu_read_lock() #18
  %i.a = getelementptr i8, ptr %1, i64 76
  %i.b = load i8, ptr %i.a, align 4, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 48
  %.val29 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i32 @ip_valid_fib_dump_req(ptr noundef %.val29, ptr noundef %i.h, ptr noundef nonnull %2, ptr noundef %1) #18 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.pre = load i32, ptr %2, align 8
  %i.k = icmp eq i32 %.pre, 0
  br i1 %i.k, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 48
  %.val = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.val, i64 1720
  %i.p = load volatile ptr, ptr %i.o, align 8     ; 2 uses
  %.not25 = icmp eq ptr %i.p, null
  br i1 %.not25, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.val.i = load i32, ptr %i.r, align 4
  %.not.i = icmp eq i32 %.val.i, 16
  br i1 %.not.i, label %rtnl_msg_family.exit.thread, label %rtnl_msg_family.exit

rtnl_msg_family.exit:                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load i8, ptr %i.s, align 4
  %.not26 = icmp eq i8 %i.t, -128
  br i1 %.not26, label %bb.f, label %rtnl_msg_family.exit.thread

rtnl_msg_family.exit.thread:                      ; preds = %bb.e, %rtnl_msg_family.exit
  %i.u = getelementptr i8, ptr %0, i64 112
  %i.v = load i32, ptr %i.u, align 8
  br label %bb.i

bb.f:                                             ; preds = %rtnl_msg_family.exit
  %i.w = getelementptr i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  call void @do_trace_netlink_extack(ptr noundef @ipmr_rtm_dumproute.__msg) #18
  %.not27 = icmp eq ptr %i.x, null
  br i1 %.not27, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @ipmr_rtm_dumproute.__msg, ptr %i.x, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.y = call i32 @mr_table_dump(ptr noundef nonnull %i.p, ptr noundef %0, ptr noundef %1, ptr noundef @_ipmr_fill_mroute, ptr noundef @mfc_unres_lock, ptr noundef nonnull %2) #18
  %i.z = getelementptr i8, ptr %0, i64 112
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %.not28 = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not28, i32 %i.y, i32 %i.aa
  br label %bb.i

.thread:                                          ; preds = %bb.a, %bb.c
  %i.ac = call i32 @mr_rtm_dumproute(ptr noundef %0, ptr noundef %1, ptr noundef @ipmr_mr_table_iter, ptr noundef @_ipmr_fill_mroute, ptr noundef @mfc_unres_lock, ptr noundef nonnull %2) #18
  br label %bb.i

bb.i:                                             ; preds = %rtnl_msg_family.exit.thread, %bb.h, %bb.g, %bb.f, %bb.b, %.thread
  %.1 = phi i32 [ %i.i, %bb.b ], [ %i.ac, %.thread ], [ %i.ab, %bb.h ], [ %i.v, %rtnl_msg_family.exit.thread ], [ -2, %bb.g ], [ -2, %bb.f ]
  call void @__rcu_read_unlock() #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @netlink_strict_get_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 16 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = icmp ult i32 %i.a, 28
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @do_trace_netlink_extack(ptr noundef @__nlmsg_parse.__msg) #18
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %__nlmsg_parse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @__nlmsg_parse.__msg, ptr %2, align 8
  br label %__nlmsg_parse.exit

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 28
  %i.d = add i32 %i.a, -28
  %i.e = tail call i32 @__nla_parse(ptr noundef %1, i32 noundef 31, ptr noundef %i.c, i32 noundef %i.d, ptr noundef @rtm_ipv4_policy, i32 noundef 3, ptr noundef %2) #18
  br label %__nlmsg_parse.exit

__nlmsg_parse.exit:                               ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.e, %bb.d ], [ -22, %bb.c ], [ -22, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip_valid_fib_dump_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mr_table_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -90, 1) i32 @_ipmr_fill_mroute(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @ipmr_fill_mroute(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #19, !srcloc !146
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mr_rtm_dumproute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { fn_ret_thunk_extern inlinehint nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #13 = { nocallback nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #16 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #17 = { nounwind }
attributes #18 = { noredzone nounwind "no-builtin-wcslen" }
attributes #19 = { noredzone "no-builtin-wcslen" }
attributes #20 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #21 = { nounwind memory(none) }

!llvm.named.register.rsp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{!0, !25}
!1 = distinct !{!1, !25}
!2 = distinct !{!2, !25}
!3 = distinct !{!3, !25}
!4 = distinct !{!4, !25}
!5 = distinct !{!5, !25}
!6 = !{!"rsp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 8, !"cf-protection-branch", i32 1}
!9 = !{i32 4, !"function_return_thunk_extern", i32 1}
!10 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!11 = !{i32 1, !"Code Model", i32 2}
!12 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!13 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!14 = !{i32 1, !"override-stack-alignment", i32 8}
!15 = !{i32 4, !"SkipRaxSetup", i32 1}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!17 = !{!"auto-init"}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{i64 2159474021}
!22 = !{i64 2161234976, i64 2161235003, i64 2161235401, i64 2161235434, i64 2161235469, i64 2161235485, i64 2161236326, i64 2161236384, i64 2161236433, i64 2161236243, i64 2161235544, i64 2161235576}
!23 = !{i64 2161233270}
!24 = !{i64 2148918904, i64 2148918943, i64 2148918964, i64 2148919001, i64 2148919024, i64 2148918895}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i64 14253865}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{i64 1218138, i64 1218159}
!29 = !{i64 1218350}
!30 = !{i64 2150041454}
!31 = !{i64 2153313869}
!32 = !{i64 2148577252, i64 2148577291, i64 2148577312, i64 2148577349, i64 2148577372, i64 2148577381}
!33 = !{!"branch_weights", i32 1, i32 1999}
!34 = !{i64 2153314078}
!35 = !{i64 2150047635}
!36 = !{i64 2153314260}
!37 = !{i64 2429139}
!38 = !{i64 2153316416}
!39 = !{!"branch_weights", i32 0, i32 1}
!40 = !{i64 2161892904}
!41 = !{i64 2148572958}
!42 = !{i64 2148572099, i64 2148572138, i64 2148572159, i64 2148572196, i64 2148572219, i64 2148572090}
!43 = !{i64 2153319848}
!44 = !{i64 2153320030}
!45 = !{i64 1218442}
!46 = !{i64 2161807021}
!47 = !{i64 2161807835}
!48 = !{i64 2161808017}
!49 = !{i64 2148919279, i64 2148919318, i64 2148919339, i64 2148919376, i64 2148919399, i64 2148919270}
!50 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!51 = !{i64 2148929110, i64 2148929149, i64 2148929170, i64 2148929207, i64 2148929230, i64 2148929239}
!52 = !{i64 2150737577}
!53 = !{i64 2148946427, i64 2148946466, i64 2148946487, i64 2148946524, i64 2148946547, i64 2148946418}
!54 = !{i64 2148943721, i64 2148943760, i64 2148943781, i64 2148943818, i64 2148943841, i64 2148943712}
!55 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!56 = !{i64 2159843912, i64 2159843787}
!57 = !{i64 2159844435, i64 2159845507, i64 2159845540, i64 2159845575, i64 2159845591, i64 2159846518, i64 2159846576, i64 2159846625, i64 2159846435, i64 2159845650, i64 2159845682, i64 2159845765}
!58 = !{i64 2159846927, i64 2159846803}
!59 = !{i64 2162668245}
!60 = !{i64 2162582854}
!61 = !{i64 37729}
!62 = !{i64 37824}
!63 = !{i64 38396}
!64 = !{i64 38448}
!65 = !{i64 38790}
!66 = !{i64 35397}
!67 = distinct !{null}
!68 = !{i64 2157364601}
!69 = !{i64 2162467131, i64 2162467158, i64 2162467556, i64 2162467589, i64 2162467624, i64 2162467640, i64 2162468481, i64 2162468539, i64 2162468588, i64 2162468398, i64 2162467699, i64 2162467731}
!70 = !{i64 2162465426}
!71 = !{i64 2159490242}
!72 = !{i64 2162513509}
!73 = distinct !{!73, !25}
!74 = !{i64 30846}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25}
!79 = !{i64 31597}
!80 = !{i64 2161854373}
!81 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!82 = !{i64 2153721003}
!83 = !{i64 25999}
!84 = !{i64 33053}
!85 = distinct !{!85, !25}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !25}
!88 = !{i64 33707}
!89 = !{i64 34304}
!90 = !{i64 34681}
!91 = !{i64 34733}
!92 = !{i64 41736}
!93 = !{i64 2150621337, i64 2150621212}
!94 = !{i64 2150621860, i64 2150622913, i64 2150622946, i64 2150622981, i64 2150622997, i64 2150623924, i64 2150623982, i64 2150624031, i64 2150623841, i64 2150623056, i64 2150623088, i64 2150623171}
!95 = !{i64 2150624335, i64 2150624211}
!96 = !{i64 2162614356}
!97 = !{i64 2162631917}
!98 = !{i64 56784}
!99 = !{i64 57376}
!100 = !{i64 57460}
!101 = distinct !{!101, !25}
!102 = !{i64 29533}
!103 = !{i64 29748}
!104 = distinct !{!104, !25}
!105 = !{i64 53126}
!106 = !{i64 53233}
!107 = distinct !{!107, !25}
!108 = !{i64 59681}
!109 = !{i64 50563}
!110 = !{i64 62281}
!111 = !{i64 13650}
!112 = !{i64 64611}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25}
!115 = distinct !{null, ptr @ipmr_forward_finish, null}
!116 = !{i64 49629}
!117 = !{i64 2148740226, i64 2148740266, i64 2148740383, i64 2148740404, i64 2148740447, i64 2148740462, i64 2148740495, i64 2148740529, i64 2148740553}
!118 = distinct !{null}
!119 = !{i64 47927}
!120 = !{i64 2162689541}
!121 = distinct !{null}
!122 = !{i64 2162444724}
!123 = !{i64 82301}
!124 = !{i64 82790}
!125 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!126 = !{i64 2162456751, i64 2162456621}
!127 = !{i64 2162457282, i64 2162458343, i64 2162458376, i64 2162458411, i64 2162458427, i64 2162459354, i64 2162459412, i64 2162459461, i64 2162459271, i64 2162458486, i64 2162458518, i64 2162458601}
!128 = !{i64 2162459761, i64 2162459632}
!129 = !{i64 11125}
!130 = !{i64 2162461228, i64 2162461098}
!131 = !{i64 2162461759, i64 2162462854, i64 2162462887, i64 2162462922, i64 2162462938, i64 2162463865, i64 2162463923, i64 2162463972, i64 2162463782, i64 2162462997, i64 2162463029, i64 2162463112}
!132 = !{i64 2162464272, i64 2162464143}
!133 = distinct !{!133, !25}
!134 = !{i64 19956}
!135 = !{i64 20022}
!136 = distinct !{!136, !25}
!137 = distinct !{!137, !25}
!138 = !{i64 45405}
!139 = !{i64 8701869, i64 8701892}
!140 = distinct !{!140, !25}
!141 = distinct !{!141, !25}
!142 = distinct !{!142, !25}
!143 = !{i64 73276}
!144 = !{i64 73338}
!145 = !{i64 69031}
!146 = !{i64 63738}
end_hunk_0
