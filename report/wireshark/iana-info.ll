Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/iana-info?download=true
inline.NumInlined: 18
inline.NumDeleted: 9
begin_hunk_0_@global_services_dump:bb.a
  %i.al = mul i64 %i.ak, 24                       ; 2 uses
  %i.am = getelementptr i8, ptr @global_udp_services_table, i64 %i.al
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = icmp samesign ult i32 %indvars.iv, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i19.i41
  %.not.i22.i44 = icmp eq i32 %indvars.iv, %i.ao
  br i1 %.not.i22.i44, label %bsearch.exit26.i49, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = add nuw i64 %i.ak, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i19.i41
  %.117.i23.i45 = phi i64 [ %i.aq, %bb.n ], [ %.01620.i21.i43, %.lr.ph.i19.i41 ] ; 2 uses
  %.1.i24.i46 = phi i64 [ %.021.i20.i42, %bb.n ], [ %i.ak, %.lr.ph.i19.i41 ] ; 2 uses
  %i.ar = icmp ult i64 %.117.i23.i45, %.1.i24.i46
  br i1 %i.ar, label %.lr.ph.i19.i41, label %.lr.ph.i.i54.preheader, !llvm.loop !0

bsearch.exit26.i49:                               ; preds = %bb.m
  %i.as = getelementptr i8, ptr @global_udp_services_table, i64 %i.al ; 2 uses
  %.not18.i50 = icmp eq ptr %i.as, null
  br i1 %.not18.i50, label %.lr.ph.i.i54.preheader, label %bb.p

bb.p:                                             ; preds = %bsearch.exit.i51, %bsearch.exit26.i49
  %.014.i48.ph = phi ptr [ %i.as, %bsearch.exit26.i49 ], [ %i.ai, %bsearch.exit.i51 ] ; 2 uses
  %i.at = getelementptr i8, ptr %.014.i48.ph, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %.014.i48.ph, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.54, ptr noundef %i.au, i32 noundef %indvars.iv, ptr noundef %i.aw) ; 0 uses
  br label %.lr.ph.i.i54.preheader

.lr.ph.i.i54.preheader:                           ; preds = %bb.o, %bsearch.exit26.i49, %bb.p
  br label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.lr.ph.i.i54.preheader, %bb.s
  %.021.i.i55 = phi i64 [ %.1.i.i59, %bb.s ], [ 88, %.lr.ph.i.i54.preheader ] ; 2 uses
  %.01620.i.i56 = phi i64 [ %.117.i.i58, %bb.s ], [ 0, %.lr.ph.i.i54.preheader ] ; 2 uses
  %i.ay = add i64 %.01620.i.i56, %.021.i.i55
  %i.az = lshr i64 %i.ay, 1                       ; 3 uses
  %i.ba = mul i64 %i.az, 24                       ; 2 uses
  %i.bb = getelementptr i8, ptr @global_sctp_services_table, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = icmp samesign ult i32 %indvars.iv, %i.bd
  br i1 %i.be, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i54
  %.not.i.i57 = icmp eq i32 %indvars.iv, %i.bd
  br i1 %.not.i.i57, label %bsearch.exit.i71, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = add nuw i64 %i.az, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i54
  %.117.i.i58 = phi i64 [ %i.bf, %bb.r ], [ %.01620.i.i56, %.lr.ph.i.i54 ] ; 2 uses
  %.1.i.i59 = phi i64 [ %.021.i.i55, %bb.r ], [ %i.az, %.lr.ph.i.i54 ] ; 2 uses
  %i.bg = icmp ult i64 %.117.i.i58, %.1.i.i59
  br i1 %i.bg, label %.lr.ph.i.i54, label %.lr.ph.i.i74.preheader, !llvm.loop !0

bsearch.exit.i71:                                 ; preds = %bb.q
  %i.bh = getelementptr i8, ptr @global_sctp_services_table, i64 %i.ba ; 3 uses
  %.not.i72 = icmp eq ptr %i.bh, null
  br i1 %.not.i72, label %.lr.ph.i.i74.preheader, label %global_services_lookup.exit73

global_services_lookup.exit73:                    ; preds = %bsearch.exit.i71
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.55, ptr noundef %i.bj, i32 noundef %indvars.iv, ptr noundef %i.bl) ; 0 uses
  br label %.lr.ph.i.i74.preheader

.lr.ph.i.i74.preheader:                           ; preds = %bb.s, %bsearch.exit.i71, %global_services_lookup.exit73
  br label %.lr.ph.i.i74

.lr.ph.i.i74:                                     ; preds = %.lr.ph.i.i74.preheader, %bb.v
  %.021.i.i75 = phi i64 [ %.1.i.i79, %bb.v ], [ 9, %.lr.ph.i.i74.preheader ] ; 2 uses
  %.01620.i.i76 = phi i64 [ %.117.i.i78, %bb.v ], [ 0, %.lr.ph.i.i74.preheader ] ; 2 uses
  %i.bn = add i64 %.01620.i.i76, %.021.i.i75
  %i.bo = lshr i64 %i.bn, 1                       ; 3 uses
  %i.bp = mul i64 %i.bo, 24                       ; 2 uses
  %i.bq = getelementptr i8, ptr @global_dccp_services_table, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 8
  %i.bs = zext i16 %i.br to i32                   ; 2 uses
  %i.bt = icmp samesign ult i32 %indvars.iv, %i.bs
  br i1 %i.bt, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i74
  %.not.i.i77 = icmp eq i32 %indvars.iv, %i.bs
  br i1 %.not.i.i77, label %bsearch.exit.i91, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = add nuw i64 %i.bo, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i74
  %.117.i.i78 = phi i64 [ %i.bu, %bb.u ], [ %.01620.i.i76, %.lr.ph.i.i74 ] ; 2 uses
  %.1.i.i79 = phi i64 [ %.021.i.i75, %bb.u ], [ %i.bo, %.lr.ph.i.i74 ] ; 2 uses
  %i.bv = icmp ult i64 %.117.i.i78, %.1.i.i79
  br i1 %i.bv, label %.lr.ph.i.i74, label %global_services_lookup.exit93.thread, !llvm.loop !0

bsearch.exit.i91:                                 ; preds = %bb.t
  %i.bw = getelementptr i8, ptr @global_dccp_services_table, i64 %i.bp ; 3 uses
  %.not.i92 = icmp eq ptr %i.bw, null
  br i1 %.not.i92, label %global_services_lookup.exit93.thread, label %global_services_lookup.exit93

global_services_lookup.exit93:                    ; preds = %bsearch.exit.i91
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr i8, ptr %i.bw, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.56, ptr noundef %i.by, i32 noundef %indvars.iv, ptr noundef %i.ca) ; 0 uses
  br label %global_services_lookup.exit93.thread

global_services_lookup.exit93.thread:             ; preds = %bb.v, %bsearch.exit.i91, %global_services_lookup.exit93
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, 49151
  br i1 %exitcond.not, label %bb.b, label %.lr.ph.i.i.preheader, !llvm.loop !8
}

; Function Attrs: null_pointer_is_valid
declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @global_enterprises_dump(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @enterprise_val_ext, i64 16), align 8
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @enterprise_val_ext, i64 12), align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.57, i32 noundef %i.d, ptr noundef %i.f) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @enterprise_val_ext, i64 12), align 4
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !9
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(none) uwtable
define ptr @ws_iana_ipv4_special_block_lookup(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.a
  %.021.i = phi i64 [ %.1.i, %bb.d ], [ 25, %bb.a ] ; 2 uses
  %.01620.i = phi i64 [ %.117.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.a = add i64 %.01620.i, %.021.i
  %i.b = lshr i64 %i.a, 1                         ; 3 uses
  %i.c = mul i64 %i.b, 56
  %i.d = getelementptr i8, ptr @__ipv4_special_block, i64 %i.c ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, %0                         ; 2 uses
  %i.i = load i32, ptr %i.e, align 4              ; 2 uses
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.h, %i.i
  br i1 %.not.i, label %bsearch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %i.b, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.117.i = phi i64 [ %i.k, %bb.c ], [ %.01620.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i64 [ %.021.i, %bb.c ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %i.l = icmp ult i64 %.117.i, %.1.i
  br i1 %i.l, label %.lr.ph.i, label %bsearch.exit, !llvm.loop !0

bsearch.exit:                                     ; preds = %bb.b, %bb.d
  %.018.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.d ]
  ret ptr %.018.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable
define ptr @ws_iana_ipv6_special_block_lookup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %compare_ipv6_block.exit, %bb.a
  %.021.i = phi i64 [ %.1.i, %compare_ipv6_block.exit ], [ 24, %bb.a ] ; 2 uses
  %.01620.i = phi i64 [ %.117.i, %compare_ipv6_block.exit ], [ 0, %bb.a ] ; 2 uses
  %i.a = add i64 %.01620.i, %.021.i               ; 2 uses
  %i.b = lshr i64 %i.a, 1                         ; 3 uses
  %i.c = mul i64 %i.b, 56
  %i.d = getelementptr i8, ptr @__ipv6_special_block, i64 %i.c ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 20
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %1 = and i64 %i.a, 4611686018427387902
  %.not = icmp eq i64 %1, 44
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i
  %i.h = add i32 %i.g, -8
  %i.i = lshr i32 %i.h, 3
  %narrow.i = add nuw nsw i32 %i.i, 1
  %wide.trip.count.i = zext nneg i32 %narrow.i to i64 ; 2 uses
  %i.j = and i32 %i.g, 7
  br label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = getelementptr i8, ptr %i.e, i64 %indvars.iv.i
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %.not31.i = icmp eq i8 %i.l, %i.n
  br i1 %.not31.i, label %bb.b, label %compare_ipv6_block.exit

bb.b:                                             ; preds = %.lr.ph.i2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i2, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i
  %.024.lcssa.i = phi i32 [ %i.g, %.lr.ph.i ], [ %i.j, %bb.b ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %.lr.ph.i ], [ %wide.trip.count.i, %bb.b ] ; 2 uses
  %.not.i1 = icmp eq i32 %.024.lcssa.i, 0
  br i1 %.not.i1, label %bsearch.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.o = getelementptr i8, ptr %0, i64 %.0.lcssa.i
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext nneg i32 %.024.lcssa.i to i64
  %i.r = getelementptr i8, ptr @bitmasks, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = and i8 %i.s, %i.p                        ; 2 uses
  %i.u = getelementptr i8, ptr %i.e, i64 %.0.lcssa.i
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %.not30.i = icmp eq i8 %i.t, %i.v
  br i1 %.not30.i, label %bsearch.exit, label %compare_ipv6_block.exit

compare_ipv6_block.exit:                          ; preds = %.lr.ph.i2, %bb.c
  %.lcssa.sink = phi i8 [ %i.v, %bb.c ], [ %i.n, %.lr.ph.i2 ]
  %.lcssa20.sink = phi i8 [ %i.t, %bb.c ], [ %i.l, %.lr.ph.i2 ]
  %i.w = icmp ult i8 %.lcssa20.sink, %.lcssa.sink ; 2 uses
  %i.x = add nuw i64 %i.b, 1
  %.117.i = select i1 %i.w, i64 %.01620.i, i64 %i.x ; 2 uses
  %.1.i = select i1 %i.w, i64 %i.b, i64 %.021.i   ; 2 uses
  %i.y = icmp ult i64 %.117.i, %.1.i
  br i1 %i.y, label %.lr.ph.i, label %bsearch.exit, !llvm.loop !0

bsearch.exit:                                     ; preds = %bb.c, %._crit_edge.i, %compare_ipv6_block.exit
  %.018.i = phi ptr [ %i.d, %bb.c ], [ null, %compare_ipv6_block.exit ], [ %i.d, %._crit_edge.i ]
  ret ptr %.018.i
}

attributes #0 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
end_hunk_0
