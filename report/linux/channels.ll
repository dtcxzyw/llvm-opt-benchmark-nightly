Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/channels?download=true
inline.NumInlined: 23
inline.NumDeleted: 6
begin_hunk_0_@ethnl_set_channels_validate:bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 392
  %i.g = load ptr, ptr %i.f, align 8
  %.not3 = icmp eq ptr %i.g, null
  %i.h = select i1 %.not3, i32 -95, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ -95, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ethnl_set_channels(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ethtool_channels, align 8   ; 14 uses
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  %i.b = getelementptr i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr i8, ptr %i.a, i64 752      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = getelementptr i8, ptr %i.e, i64 384
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef %i.a, ptr noundef nonnull %2) #6
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8              ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr i8, ptr %i.c, i64 48
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %ethnl_update_u32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val.i = load i32, ptr %i.p, align 4           ; 3 uses
  %i.q = icmp eq i32 %i.k, %.val.i
  br i1 %i.q, label %ethnl_update_u32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %.val.i, ptr %i.j, align 4
  br label %ethnl_update_u32.exit

ethnl_update_u32.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  %i.r = phi i32 [ %i.k, %bb.a ], [ %i.k, %bb.b ], [ %.val.i, %bb.c ] ; 2 uses
  %.077 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ] ; 2 uses
  %i.s = getelementptr i8, ptr %i.c, i64 56
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i65 = icmp eq ptr %i.t, null
  br i1 %.not.i65, label %ethnl_update_u32.exit67, label %bb.d

bb.d:                                             ; preds = %ethnl_update_u32.exit
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val.i66 = load i32, ptr %i.u, align 4         ; 3 uses
  %i.v = icmp eq i32 %i.m, %.val.i66
  br i1 %i.v, label %ethnl_update_u32.exit67, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.val.i66, ptr %i.l, align 8
  br label %ethnl_update_u32.exit67

ethnl_update_u32.exit67:                          ; preds = %ethnl_update_u32.exit, %bb.d, %bb.e
  %i.w = phi i32 [ %i.m, %ethnl_update_u32.exit ], [ %i.m, %bb.d ], [ %.val.i66, %bb.e ] ; 2 uses
  %.178 = phi i8 [ %.077, %ethnl_update_u32.exit ], [ %.077, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 3 uses
  %i.y = getelementptr i8, ptr %i.c, i64 64
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i68 = icmp eq ptr %i.z, null
  br i1 %.not.i68, label %ethnl_update_u32.exit70, label %bb.f

bb.f:                                             ; preds = %ethnl_update_u32.exit67
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val.i69 = load i32, ptr %i.aa, align 4        ; 2 uses
  %i.ab = load i32, ptr %i.x, align 4
  %i.ac = icmp eq i32 %i.ab, %.val.i69
  br i1 %i.ac, label %ethnl_update_u32.exit70, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.val.i69, ptr %i.x, align 4
  br label %ethnl_update_u32.exit70

ethnl_update_u32.exit70:                          ; preds = %ethnl_update_u32.exit67, %bb.f, %bb.g
  %.2 = phi i8 [ %.178, %ethnl_update_u32.exit67 ], [ %.178, %bb.f ], [ 1, %bb.g ]
  %i.ad = getelementptr i8, ptr %i.c, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i71 = icmp eq ptr %i.ae, null
  br i1 %.not.i71, label %ethnl_update_u32.exit73, label %bb.h

bb.h:                                             ; preds = %ethnl_update_u32.exit70
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val.i72 = load i32, ptr %i.af, align 4        ; 3 uses
  %i.ag = icmp eq i32 %i.i, %.val.i72
  br i1 %i.ag, label %ethnl_update_u32.exit73, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.val.i72, ptr %i.h, align 8
  br label %ethnl_update_u32.exit73

ethnl_update_u32.exit73:                          ; preds = %ethnl_update_u32.exit70, %bb.h, %bb.i
  %i.ah = phi i32 [ %i.i, %ethnl_update_u32.exit70 ], [ %i.i, %bb.h ], [ %.val.i72, %bb.i ] ; 3 uses
  %.076 = phi i8 [ 0, %ethnl_update_u32.exit70 ], [ 0, %bb.h ], [ 1, %bb.i ] ; 2 uses
  %i.ai = or i8 %.076, %.2
  %.not = icmp eq i8 %i.ai, 0
  br i1 %.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %ethnl_update_u32.exit73
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp ugt i32 %i.r, %i.ak
  br i1 %i.al, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp ugt i32 %i.w, %i.an
  br i1 %i.ao, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i32, ptr %i.x, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp ugt i32 %i.ap, %i.ar
  br i1 %i.as, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 8
  %.not86 = icmp ugt i32 %i.ah, %i.au
  br i1 %.not86, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.k, %bb.j, %bb.l, %bb.m
  %.081 = phi i64 [ 9, %bb.m ], [ 7, %bb.k ], [ 6, %bb.j ], [ 8, %bb.l ]
  %i.av = getelementptr i8, ptr %1, i64 96
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_channels.__msg) #6
  %.not61 = icmp eq ptr %i.aw, null
  br i1 %.not61, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.thread
  store ptr @ethnl_set_channels.__msg, ptr %i.aw, align 8
  %i.ax = getelementptr [8 x i8], ptr %i.c, i64 %.081
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.aw, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.aw, i64 16
  store ptr null, ptr %i.ba, align 8
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bb = or i32 %i.ah, %i.r
  %or.cond.not = icmp eq i32 %i.bb, 0
  br i1 %or.cond.not, label %.thread82, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = icmp ne i32 %i.ah, 0
  %i.bd = icmp ne i32 %i.w, 0
  %or.cond5 = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond5, label %bb.r, label %.thread82

.thread82:                                        ; preds = %bb.o, %bb.p
  %.185 = phi i64 [ 7, %bb.p ], [ 6, %bb.o ]
  %i.be = getelementptr i8, ptr %1, i64 96
  %i.bf = load ptr, ptr %i.be, align 8            ; 4 uses
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_channels.__msg.1) #6
  %.not60 = icmp eq ptr %i.bf, null
  br i1 %.not60, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.thread82
  %i.bg = trunc nuw i8 %.076 to i1
  %spec.select = select i1 %i.bg, i64 9, i64 %.185
  store ptr @ethnl_set_channels.__msg.1, ptr %i.bf, align 8
  %i.bh = getelementptr [8 x i8], ptr %i.c, i64 %spec.select
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %i.bf, i64 8
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %i.bf, i64 16
  store ptr null, ptr %i.bk, align 8
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.bl = call i32 @ethtool_check_max_channel(ptr noundef %i.a, ptr noundef nonnull byval(%struct.ethtool_channels) align 8 %2, ptr noundef %1) #6 ; 2 uses
  %.not59 = icmp eq i32 %i.bl, 0
  br i1 %.not59, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.bm = load i32, ptr %i.h, align 8             ; 2 uses
  %i.bn = load i32, ptr %i.j, align 4
  %i.bo = add i32 %i.bn, %i.bm                    ; 2 uses
  %i.bp = add i32 %i.k, %i.i                      ; 2 uses
  %i.bq = icmp ult i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s
  %i.br = getelementptr i8, ptr %1, i64 96
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %i.bs = add nuw i32 %.05188, 1                  ; 2 uses
  %3 = icmp ult i32 %i.bs, %i.bp
  br i1 %3, label %bb.u, label %._crit_edge.loopexit, !llvm.loop !10

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %.05188 = phi i32 [ %i.bo, %.lr.ph ], [ %i.bs, %bb.t ] ; 2 uses
  %i.bt = load ptr, ptr %i.br, align 8
  %i.bu = call zeroext i1 @netdev_queue_busy(ptr noundef %i.a, i32 noundef %.05188, i32 noundef 0, ptr noundef %i.bt) #6
  br i1 %i.bu, label %.loopexit, label %bb.t

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre = load i32, ptr %i.h, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %i.bv = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bm, %bb.s ]
  %i.bw = load i32, ptr %i.l, align 8
  %i.bx = add i32 %i.bw, %i.bv                    ; 2 uses
  %i.by = add i32 %i.m, %i.i                      ; 2 uses
  %i.bz = icmp ult i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %._crit_edge
  %i.ca = getelementptr i8, ptr %1, i64 96
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %i.cb = add nuw i32 %.15289, 1                  ; 2 uses
  %4 = icmp ult i32 %i.cb, %i.by
  br i1 %4, label %bb.w, label %._crit_edge92, !llvm.loop !12

bb.w:                                             ; preds = %.lr.ph91, %bb.v
  %.15289 = phi i32 [ %i.bx, %.lr.ph91 ], [ %i.cb, %bb.v ] ; 2 uses
  %i.cc = load ptr, ptr %i.ca, align 8
  %i.cd = call zeroext i1 @netdev_queue_busy(ptr noundef %i.a, i32 noundef %.15289, i32 noundef 1, ptr noundef %i.cc) #6
  br i1 %i.cd, label %.loopexit, label %bb.v

._crit_edge92:                                    ; preds = %bb.v, %._crit_edge
  %i.ce = load ptr, ptr %i.d, align 16
  %i.cf = getelementptr i8, ptr %i.ce, i64 392
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call i32 %i.cg(ptr noundef %i.a, ptr noundef nonnull %2) #6 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  %i.cj = select i1 %i.ci, i32 %i.ch, i32 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.w, %bb.r, %.thread82, %bb.q, %.thread, %bb.n, %ethnl_update_u32.exit73, %._crit_edge92
  %.053 = phi i32 [ 0, %ethnl_update_u32.exit73 ], [ -22, %.thread ], [ -22, %.thread82 ], [ %i.bl, %bb.r ], [ -22, %bb.w ], [ %i.cj, %._crit_edge92 ], [ -22, %bb.n ], [ -22, %bb.q ], [ -22, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.053
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ethtool_check_max_channel(ptr noundef, ptr noundef byval(%struct.ethtool_channels) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @netdev_queue_busy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noredzone nounwind "no-builtin-wcslen" }
attributes #7 = { nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
end_hunk_0
