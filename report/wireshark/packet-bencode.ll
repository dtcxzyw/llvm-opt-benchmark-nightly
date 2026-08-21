Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-bencode?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@dissect_bencoding_rec:bb.a
  %i.at = add nsw i32 %5, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.s
  %.1185 = phi i32 [ 1, %.lr.ph ], [ %i.ba, %bb.s ] ; 3 uses
  %.1153184 = phi i32 [ %i.as, %.lr.ph ], [ %i.bb, %bb.s ] ; 2 uses
  %i.au = add i32 %.1185, %2                      ; 2 uses
  %i.av = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.au)
  %i.aw = icmp eq i8 %i.av, 101
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = add i32 %.1185, 1
  br label %dissect_bencoding_int.exit

bb.q:                                             ; preds = %bb.o
  %i.ay = tail call fastcc i32 @dissect_bencoding_rec(ptr noundef %0, ptr noundef %1, i32 noundef %i.au, i32 noundef %.1153184, ptr noundef %i.ar, i32 noundef %i.at, ptr noundef %i.ap, i32 noundef 0) ; 4 uses
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @decrement_dissection_depth(ptr noundef %1)
  br label %dissect_bencoding_int.exit

bb.s:                                             ; preds = %bb.q
  %i.ba = add i32 %i.ay, %.1185                   ; 2 uses
  %i.bb = sub nsw i32 %.1153184, %i.ay            ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.o, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.s, %bb.n
  %.1.lcssa = phi i32 [ 1, %bb.n ], [ %i.ba, %bb.s ]
  tail call void @decrement_dissection_depth(ptr noundef %1)
  %i.bd = load i32, ptr @hf_bencode_truncated_data, align 4
  %i.be = add i32 %.1.lcssa, %2
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %i.ar, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.be, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %dissect_bencoding_int.exit

bb.t:                                             ; preds = %bb.e
  %i.bg = icmp samesign ult i32 %3, 3
  br i1 %i.bg, label %bb.u, label %.lr.ph.preheader.i

bb.u:                                             ; preds = %bb.t
  %i.bh = tail call ptr @proto_tree_add_expert(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @ei_bencode_int, ptr noundef %0, i32 noundef %2, i32 noundef range(i32 1, -2147483648) %3) ; 0 uses
  br label %dissect_bencoding_int.exit

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.bi = add i32 %2, 1
  %i.bj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bi) ; 3 uses
  %i.bk = zext nneg i8 %i.bj to i32
  switch i8 %i.bj, label %bb.v [
    i8 101, label %.loopexit.i
    i8 45, label %.lr.ph.peel.next.i
    i8 48, label %.lr.ph.peel.next.fold.split.i
  ]

bb.v:                                             ; preds = %.lr.ph.preheader.i
  %i.bl = add nsw i32 %3, -2
  %i.bm = add i8 %i.bj, -48
  %i.bn = icmp ult i8 %i.bm, 10
  br i1 %i.bn, label %bb.w, label %.thread73.i

bb.w:                                             ; preds = %bb.v
  %i.bo = add nsw i32 %i.bk, -48
  br label %.lr.ph.peel.next.i

.lr.ph.peel.next.fold.split.i:                    ; preds = %.lr.ph.preheader.i
  br label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %.lr.ph.peel.next.fold.split.i, %bb.w, %.lr.ph.preheader.i
  %.2.peel.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.bo, %bb.w ], [ 0, %.lr.ph.peel.next.fold.split.i ] ; 2 uses
  %i.bp = phi i1 [ true, %.lr.ph.preheader.i ], [ false, %bb.w ], [ false, %.lr.ph.peel.next.fold.split.i ]
  %.159.peel.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ 0, %bb.w ], [ 0, %.lr.ph.peel.next.fold.split.i ] ; 2 uses
  %i.bq = phi i1 [ true, %.lr.ph.preheader.i ], [ true, %bb.w ], [ false, %.lr.ph.peel.next.fold.split.i ]
  %i.br = add i32 %2, 2
  %i.bs = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.br) ; 4 uses
  %i.bt = add nsw i32 %3, -3                      ; 4 uses
  %i.bu = zext nneg i8 %i.bs to i32
  switch i8 %i.bs, label %bb.x [
    i8 101, label %.loopexit.i
    i8 45, label %.thread73.i
  ]

bb.x:                                             ; preds = %.lr.ph.peel.next.i
  %i.bv = icmp eq i8 %i.bs, 48
  %or.cond3.peel99.i = and i1 %i.bp, %i.bv
  br i1 %or.cond3.peel99.i, label %.thread73.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = add i8 %i.bs, -48
  %i.bx = icmp ult i8 %i.bw, 10
  %or.cond11.peel101.i = and i1 %i.bq, %i.bx
  br i1 %or.cond11.peel101.i, label %bb.z, label %.thread73.i

bb.z:                                             ; preds = %bb.y
  %exitcond.peel105.not.i = icmp eq i32 %3, 3
  br i1 %exitcond.peel105.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.z
  %i.by = mul nuw nsw i32 %.2.peel.i, 10
  %i.bz = add nsw i32 %i.by, -48
  %i.ca = add nsw i32 %i.bz, %i.bu
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ad
  %.086.i = phi i32 [ %i.ce, %bb.ad ], [ 3, %.lr.ph.i.preheader ] ; 2 uses
  %.06083.i = phi i32 [ %i.cp, %bb.ad ], [ %i.ca, %.lr.ph.i.preheader ] ; 2 uses
  %.06382.i = phi i32 [ %i.cd, %bb.ad ], [ %i.bt, %.lr.ph.i.preheader ]
  %i.cb = add i32 %.086.i, %2
  %i.cc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cb) ; 3 uses
  %i.cd = add nsw i32 %.06382.i, -1               ; 3 uses
  %i.ce = add nuw nsw i32 %.086.i, 1              ; 3 uses
  %i.cf = zext nneg i8 %i.cc to i32
  switch i8 %i.cc, label %bb.ac [
    i8 101, label %.loopexit.i
    i8 45, label %.thread73.i
  ]

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph.peel.next.i, %.lr.ph.preheader.i
  %.05884.lcssa.i = phi i32 [ %.159.peel.i, %.lr.ph.peel.next.i ], [ 0, %.lr.ph.preheader.i ], [ %.159.peel.i, %.lr.ph.i ]
  %.06083.lcssa.i = phi i32 [ %.2.peel.i, %.lr.ph.peel.next.i ], [ 0, %.lr.ph.preheader.i ], [ %.06083.i, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ 3, %.lr.ph.peel.next.i ], [ 2, %.lr.ph.preheader.i ], [ %i.ce, %.lr.ph.i ] ; 4 uses
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %dissect_bencoding_int.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i
  %.not68.i = icmp eq i32 %.05884.lcssa.i, 0
  %i.cg = sub i32 0, %.06083.lcssa.i
  %spec.select.i = select i1 %.not68.i, i32 %.06083.lcssa.i, i32 %i.cg ; 2 uses
  %i.ch = load i32, ptr @hf_bencode_int, align 4
  %i.ci = tail call ptr @proto_tree_add_int(ptr noundef nonnull %4, i32 noundef %i.ch, ptr noundef %0, i32 noundef %2, i32 noundef %.lcssa.i, i32 noundef %spec.select.i) ; 0 uses
  %i.cj = icmp eq i32 %7, 2
  br i1 %i.cj, label %bb.ab, label %dissect_bencoding_int.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %6, ptr noundef nonnull @.str.32, i32 noundef %spec.select.i)
  br label %dissect_bencoding_int.exit

bb.ac:                                            ; preds = %.lr.ph.i
  %i.ck = add i8 %i.cc, -48
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %bb.ad, label %.thread73.i

.thread73.i:                                      ; preds = %bb.ac, %.lr.ph.i, %bb.y, %bb.x, %.lr.ph.peel.next.i, %bb.v
  %.lcssa90.i = phi i32 [ %i.bl, %bb.v ], [ %i.bt, %bb.x ], [ %i.bt, %bb.y ], [ %i.bt, %.lr.ph.peel.next.i ], [ %i.cd, %.lr.ph.i ], [ %i.cd, %bb.ac ]
  %i.cm = tail call ptr @proto_tree_add_expert(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @ei_bencode_int, ptr noundef %0, i32 noundef %2, i32 noundef %.lcssa90.i) ; 0 uses
  br label %dissect_bencoding_int.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cn = mul i32 %.06083.i, 10
  %i.co = add i32 %i.cn, -48
  %i.cp = add i32 %i.co, %i.cf
  %exitcond.not.i = icmp eq i32 %i.ce, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.ad, %bb.z
  %i.cq = load i32, ptr @hf_bencode_truncated_data, align 4
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.cq, ptr noundef %0, i32 noundef %2, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %dissect_bencoding_int.exit

bb.ae:                                            ; preds = %bb.e
  %i.cs = add i8 %i.f, -49
  %or.cond = icmp ult i8 %i.cs, 9
  br i1 %or.cond, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ct = tail call fastcc i32 @dissect_bencoding_str(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %6, i32 noundef %7)
  br label %dissect_bencoding_int.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cu = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @ei_bencode_invalid, ptr noundef %0, i32 noundef %2) ; 0 uses
  br label %dissect_bencoding_int.exit

dissect_bencoding_int.exit:                       ; preds = %._crit_edge.i, %.thread73.i, %bb.ab, %bb.aa, %.loopexit.i, %bb.u, %bb.ag, %bb.af, %._crit_edge, %bb.r, %bb.p, %._crit_edge190, %.thread, %bb.j, %bb.h, %bb.d, %bb.b
  %.0151 = phi i32 [ -1, %bb.b ], [ %3, %bb.d ], [ %i.ct, %bb.af ], [ -1, %bb.ag ], [ %i.p, %bb.h ], [ %i.q, %bb.j ], [ %.0150163, %.thread ], [ -1, %._crit_edge190 ], [ %i.ax, %bb.p ], [ %i.ay, %bb.r ], [ -1, %._crit_edge ], [ -1, %bb.u ], [ -1, %.thread73.i ], [ -1, %._crit_edge.i ], [ %.lcssa.i, %bb.aa ], [ %.lcssa.i, %bb.ab ], [ %.lcssa.i, %.loopexit.i ]
  ret i32 %.0151
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 2, 0) i32 @dissect_bencoding_str(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 1, -2147483648) %3, ptr noundef %4, ptr noundef %5, i32 noundef range(i32 0, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i32 %3, 2
  br i1 %i.a, label %bb.b, label %.preheader.preheader

bb.b:                                             ; preds = %bb.a
  %7 = tail call ptr @proto_tree_add_expert(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @ei_bencode_str, ptr noundef %0, i32 noundef %2, i32 noundef 1) ; 0 uses
  br label %bb.m

.preheader.a:                                     ; preds = %bb.j
  %8 = icmp ne i8 %i.d, 48
  %i.b = icmp ne i32 %.080121, 0
  %or.cond11.not = or i1 %8, %i.b
  %.not.a = icmp eq i32 %i.e, 0
  br i1 %.not.a, label %bb.l, label %.preheader.preheader, !llvm.loop !11

.preheader.preheader:                             ; preds = %bb.a, %.preheader.a
  %.0122 = phi i1 [ %or.cond11.not, %.preheader.a ], [ true, %bb.a ]
  %.080121 = phi i32 [ %i.f, %.preheader.a ], [ 0, %bb.a ] ; 3 uses
  %.081120 = phi i32 [ %i.e, %.preheader.a ], [ %3, %bb.a ]
  %.082119 = phi i32 [ %i.y, %.preheader.a ], [ 0, %bb.a ] ; 8 uses
  %i.c = add i32 %.080121, %2
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.c) ; 4 uses
  %i.e = add nsw i32 %.081120, -1                 ; 3 uses
  %i.f = add nuw i32 %.080121, 1                  ; 5 uses
  %i.g = zext nneg i8 %i.d to i32
  %i.h = icmp eq i8 %i.d, 58
  %9 = icmp sgt i32 %i.f, 1
  %or.cond = select i1 %i.h, i1 %9, i1 false
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.preheader.preheader
  %i.i = icmp ugt i32 %.082119, %i.e
  %i.j = icmp slt i32 %.082119, 0
  %or.cond3 = or i1 %i.j, %i.i
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @proto_tree_add_expert(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @ei_bencode_str_length, ptr noundef %0, i32 noundef %2, i32 noundef %3) ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %.not91 = icmp eq ptr %4, null
  br i1 %.not91, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @hf_bencode_str_length, align 4
  %i.m = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %4, i32 noundef %i.l, ptr noundef %0, i32 noundef %2, i32 noundef %i.f, i32 noundef %.082119) ; 0 uses
  %i.n = load i32, ptr @hf_bencode_str, align 4
  %i.o = add i32 %i.f, %2                         ; 2 uses
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef nonnull %4, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.o, i32 noundef %.082119, i32 noundef 0) ; 0 uses
  switch i32 %6, label %bb.h [
    i32 1, label %.sink.split
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  %.str.30.sink = phi ptr [ @.str.31, %bb.g ], [ @.str.30, %bb.f ]
  %i.q = getelementptr i8, ptr %1, i64 416
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr @tvb_format_text(ptr noundef %i.r, ptr noundef %0, i32 noundef %i.o, i32 noundef %.082119)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %5, ptr noundef nonnull %.str.30.sink, ptr noundef %i.s)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %i.t = add nuw i32 %i.f, %.082119
  br label %bb.m

bb.i:                                             ; preds = %.preheader.preheader
  %i.u = add i8 %i.d, -48
  %i.v = icmp ult i8 %i.u, 10
  %or.cond9 = and i1 %.0122, %i.v
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = mul i32 %.082119, 10
  %i.x = add i32 %i.w, -48
  %i.y = add i32 %i.x, %i.g                       ; 2 uses
  %.not90 = icmp ult i32 %i.y, %.082119
  br i1 %.not90, label %bb.k, label %.preheader.a, !llvm.loop !11

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = tail call ptr @proto_tree_add_expert(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @ei_bencode_str, ptr noundef %0, i32 noundef %2, i32 noundef %3) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.preheader.a
  %i.aa = load i32, ptr @hf_bencode_truncated_data, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.aa, ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.d, %bb.b
  %.083 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %i.t, %bb.h ], [ -1, %bb.k ], [ -1, %bb.l ]
  ret i32 %.083
}

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7, !10}
!10 = !{!"llvm.loop.peeled.count", i32 2}
!11 = distinct !{!11, !7}
end_hunk_0
