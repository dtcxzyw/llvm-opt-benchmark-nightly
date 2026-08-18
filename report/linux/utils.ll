inline.NumInlined: 33
inline.NumDeleted: 14
begin_hunk_0_@nf_checksum_partial:bb.a
bb.a:
  switch i16 %5, label %nf_ip_checksum_partial.exit [
    i16 2, label %bb.b
    i16 10, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val.i = load i16, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 200
  %.val20.i = load ptr, ptr %i.b, align 8
  %i.c = zext i16 %.val.i to i64
  %i.d = getelementptr i8, ptr %.val20.i, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = lshr i8 %i.f, 5
  %i.h = and i8 %i.g, 3
  switch i8 %i.h, label %nf_ip_checksum_partial.exit [
    i8 2, label %bb.c
    i8 0, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 112
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  %.pre21.i = sub i32 %.pre.i, %2
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 112
  %i.j = load i32, ptr %i.i, align 8
  %i.k = sub i32 %i.j, %2                         ; 2 uses
  %i.l = icmp eq i32 %3, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call zeroext i16 @nf_ip_checksum(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %4) #6
  br label %nf_ip_checksum_partial.exit

bb.e:                                             ; preds = %bb.c, %._crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre21.i, %._crit_edge.i ], [ %i.k, %bb.c ]
  %i.n = getelementptr i8, ptr %i.d, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr i8, ptr %i.d, i64 16
  %i.q = load i32, ptr %i.p, align 4
  %i.r = zext i8 %4 to i32
  %i.s = and i32 %.pre-phi.i, 255
  %i.t = add nuw nsw i32 %i.s, %i.r
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = tail call i32 asm "  addl $1, $0\0A  adcl $2, $0\0A  adcl $3, $0\0A  adcl $$0, $0\0A", "=r,imr,imr,imr,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q, i32 %i.o, i32 %i.u, i32 0) #4, !srcloc !11
  %i.w = getelementptr i8, ptr %0, i64 140
  store i32 %i.v, ptr %i.w, align 4
  %i.x = and i8 %i.f, -97
  store i8 %i.x, ptr %i.e, align 8
  %i.y = add i32 %3, %2
  %i.z = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %0, i32 noundef %i.y) #5
  br label %nf_ip_checksum_partial.exit

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %0, i64 184
  %.val.i11 = load i16, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %0, i64 200
  %.val23.i = load ptr, ptr %i.ab, align 8
  %i.ac = zext i16 %.val.i11 to i64
  %i.ad = getelementptr i8, ptr %.val23.i, i64 %i.ac ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 128       ; 3 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = lshr i8 %i.af, 5
  %i.ah = and i8 %i.ag, 3
  switch i8 %i.ah, label %nf_ip_checksum_partial.exit [
    i8 2, label %bb.g
    i8 0, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %0, i64 112
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = sub i32 %i.aj, %2
  %i.al = icmp eq i32 %3, %i.ak
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = tail call zeroext i16 @nf_ip6_checksum(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %4) #6
  br label %nf_ip_checksum_partial.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.an = tail call i32 @skb_checksum(ptr noundef %0, i32 noundef 0, i32 noundef %2, i32 noundef 0) #5
  %i.ao = getelementptr i8, ptr %i.ad, i64 8
  %i.ap = getelementptr i8, ptr %i.ad, i64 24
  %i.aq = getelementptr i8, ptr %0, i64 112
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = sub i32 %i.ar, %2
  %i.at = xor i32 %i.an, -1
  %i.au = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 %i.at) #4, !srcloc !12
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.as)
  %i.aw = zext i32 %i.av to i64
  %i.ax = zext i8 %4 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = zext i32 %i.au to i64
  %i.ba = add nuw nsw i64 %i.ay, %i.az
  %i.bb = add nuw nsw i64 %i.ba, %i.aw
  %i.bc = getelementptr i8, ptr %i.ad, i64 16
  %i.bd = getelementptr i8, ptr %i.ad, i64 32
  %i.be = tail call i64 asm "\09addq $1,$0\0A\09adcq $2,$0\0A\09adcq $3,$0\0A\09adcq $4,$0\0A\09adcq $$0,$0\0A", "=r,*m,*m,*m,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ao, ptr elementtype(i64) %i.bc, ptr elementtype(i64) %i.ap, ptr elementtype(i64) %i.bd, i64 %i.bb) #4, !srcloc !13 ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  %i.bg = lshr i64 %i.be, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  %i.bi = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.bf, i32 %i.bh) #4, !srcloc !12 ; 2 uses
  %i.bj = shl i32 %i.bi, 16
  %i.bk = and i32 %i.bi, -65536
  %i.bl = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bj, i32 %i.bk) #3, !srcloc !10
  %i.bm = lshr i32 %i.bl, 16
  %i.bn = or disjoint i32 %i.bm, -65536
  %i.bo = getelementptr i8, ptr %0, i64 140
  store i32 %i.bn, ptr %i.bo, align 4
  %i.bp = load i8, ptr %i.ae, align 8
  %i.bq = and i8 %i.bp, -97
  store i8 %i.bq, ptr %i.ae, align 8
  %i.br = add i32 %3, %2
  %i.bs = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %0, i32 noundef %i.br) #5
  br label %nf_ip_checksum_partial.exit

nf_ip_checksum_partial.exit:                      ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i16 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.z, %bb.e ], [ %i.m, %bb.d ], [ %i.bs, %bb.i ], [ %i.am, %bb.h ], [ 0, %bb.f ]
  ret i16 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @nf_route(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %4) #0 align 16 prefalign(16) {
bb.a:
  switch i16 %4, label %bb.d [
    i16 2, label %bb.b
    i16 10, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @nf_ip_route(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @__nf_ip6_route(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_ip_route(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -74, 1) i32 @nf_ip6_check_hbh_len(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112        ; 3 uses
  %.val68 = load i32, ptr %i.a, align 8           ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 116        ; 2 uses
  %.val69 = load i32, ptr %i.b, align 4
  %i.c = sub i32 %.val68, %.val69                 ; 3 uses
  %.not.i = icmp ult i32 %i.c, 48
  br i1 %.not.i, label %bb.b, label %bb.d, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %.val68, 48
  br i1 %i.d, label %pskb_may_pull_reason.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i32 48, %i.c
  %i.f = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %i.e) #5
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %pskb_may_pull_reason.exit, label %._crit_edge, !prof !14

._crit_edge:                                      ; preds = %bb.c
  %.val64.pre = load i32, ptr %i.a, align 8       ; 2 uses
  %.val65.pre = load i32, ptr %i.b, align 4
  %.pre = sub i32 %.val64.pre, %.val65.pre
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.val64 = phi i32 [ %.val64.pre, %._crit_edge ], [ %.val68, %bb.a ]
  %i.g = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %.val60 = load i16, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %.val61 = load ptr, ptr %i.h, align 8           ; 2 uses
  %i.i = zext i16 %.val60 to i64                  ; 2 uses
  %i.j = getelementptr i8, ptr %.val61, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 41
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 3                  ; 2 uses
  %i.o = add nuw nsw i32 %i.n, 48                 ; 3 uses
  %.not.i52 = icmp ugt i32 %i.o, %.pre-phi
  br i1 %.not.i52, label %bb.e, label %bb.g, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ugt i32 %i.o, %.val64
  br i1 %i.p, label %pskb_may_pull_reason.exit, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.q = sub nuw nsw i32 %i.o, %.pre-phi
  %i.r = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %i.q) #5
  %.not9.i54 = icmp eq ptr %i.r, null
  br i1 %.not9.i54, label %pskb_may_pull_reason.exit, label %._crit_edge81, !prof !14

._crit_edge81:                                    ; preds = %bb.f
  %.val.pre = load i16, ptr %i.g, align 8
  %.val57.pre = load ptr, ptr %i.h, align 8
  %.pre84 = zext i16 %.val.pre to i64
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge81, %bb.d
  %.pre-phi85 = phi i64 [ %.pre84, %._crit_edge81 ], [ %i.i, %bb.d ]
  %.val57 = phi ptr [ %.val57.pre, %._crit_edge81 ], [ %.val61, %bb.d ]
  %i.s = getelementptr i8, ptr %.val57, i64 %.pre-phi85 ; 2 uses
  %i.t = or disjoint i32 %i.n, 6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.r
  %.04078 = phi i32 [ 42, %bb.g ], [ %.141, %bb.r ] ; 5 uses
  %.04277 = phi i32 [ %i.t, %bb.g ], [ %.143, %bb.r ] ; 4 uses
  %i.u = sext i32 %.04078 to i64
  %i.v = getelementptr i8, ptr %i.s, i64 %i.u     ; 2 uses
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = add i32 %.04078, 1
  %i.z = add nsw i32 %.04277, -1
  br label %bb.r, !llvm.loop !15

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %.04277, 1
  br i1 %i.aa, label %pskb_may_pull_reason.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add i32 %.04078, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.af, 2                ; 3 uses
  %i.ah = icmp samesign ugt i32 %i.ag, %.04277
  br i1 %i.ah, label %pskb_may_pull_reason.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp eq i8 %i.w, -62
  br i1 %i.ai, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %.not49 = icmp eq i8 %i.ae, 4
  %i.aj = and i32 %.04078, 3
  %.not50 = icmp eq i32 %i.aj, 2
  %or.cond = and i1 %.not49, %.not50
  br i1 %or.cond, label %bb.n, label %pskb_may_pull_reason.exit

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %i.v, i64 2
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al) ; 3 uses
  %i.an = icmp ult i32 %i.am, 65536
  br i1 %i.an, label %pskb_may_pull_reason.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val58 = load i16, ptr %i.g, align 8
  %.val59 = load ptr, ptr %i.h, align 8
  %i.ao = zext i16 %.val58 to i64
  %i.ap = getelementptr i8, ptr %.val59, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = load i16, ptr %i.aq, align 4
  %.not51 = icmp eq i16 %i.ar, 0
  br i1 %.not51, label %bb.p, label %pskb_may_pull_reason.exit

bb.p:                                             ; preds = %bb.o
  %i.as = zext i32 %i.am to i64
  %i.at = load i32, ptr %i.a, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = add nsw i64 %i.au, -40
  %i.aw = icmp ult i64 %i.av, %i.as
  br i1 %i.aw, label %pskb_may_pull_reason.exit, label %.critedge

.critedge:                                        ; preds = %bb.p
  store i32 %i.am, ptr %1, align 4
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.l
  %i.ax = add i32 %i.ag, %.04078
  %i.ay = sub nuw nsw i32 %.04277, %i.ag
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.143 = phi i32 [ %i.z, %bb.i ], [ %i.ay, %bb.q ] ; 2 uses
  %.141 = phi i32 [ %i.y, %bb.i ], [ %i.ax, %bb.q ]
  %i.az = icmp sgt i32 %.143, 0
  br i1 %i.az, label %bb.h, label %pskb_may_pull_reason.exit

pskb_may_pull_reason.exit:                        ; preds = %bb.m, %bb.o, %bb.n, %bb.p, %bb.j, %bb.k, %bb.r, %bb.f, %bb.c, %bb.e, %bb.b
  %.4 = phi i32 [ -12, %bb.f ], [ -12, %bb.e ], [ -12, %bb.c ], [ -12, %bb.b ], [ -74, %bb.m ], [ -74, %bb.o ], [ -74, %bb.n ], [ -74, %bb.p ], [ -74, %bb.j ], [ -74, %bb.k ], [ 0, %bb.r ]
  ret i32 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete_head(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__nf_ip6_route(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(read) }
attributes #5 = { noredzone nounwind "no-builtin-wcslen" }
attributes #6 = { noredzone "no-builtin-wcslen" }

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
!10 = !{i64 8360813, i64 8360836}
!11 = !{i64 8362562, i64 8362586, i64 8362609, i64 8362632}
!12 = !{i64 8364442, i64 8364455}
!13 = !{i64 8365361, i64 8365389, i64 8365416, i64 8365443, i64 8365470}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
end_hunk_0
