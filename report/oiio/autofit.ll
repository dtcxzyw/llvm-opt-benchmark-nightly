inline.NumInlined: 115
inline.NumDeleted: 35
begin_hunk_0_@af_cjk_hints_detect_features:bb.a
  br label %.thread250.i

.thread250.i:                                     ; preds = %bb.bc, %bb.bb, %.thread248.i
  %i.jm = phi i1 [ false, %bb.bc ], [ true, %bb.bb ], [ true, %.thread248.i ]
  %.0154.in.i = phi ptr [ %i.iw, %bb.bc ], [ %i.iv, %bb.bb ], [ %i.iv, %.thread248.i ]
  %.0153.i = phi ptr [ %i.jd, %bb.bc ], [ %i.ji, %bb.bb ], [ %i.jl, %.thread248.i ] ; 2 uses
  %.0154.i = load ptr, ptr %.0154.in.i, align 8, !tbaa !339 ; 3 uses
end_hunk_0
begin_hunk_1_@af_cjk_hints_detect_features:bb.a

bb.be:                                            ; preds = %.sink.split.i17, %bb.bd
  %.2.i = phi ptr [ %.0154.i, %bb.bd ], [ %i.ke, %.sink.split.i17 ] ; 3 uses
  br i1 %i.jm, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %.2.i, ptr %i.iw, align 8, !tbaa !386
end_hunk_1
begin_hunk_2_@af_cjk_hint_edges:bb.a
.lr.ph285:                                        ; preds = %.thread
  %i.l = getelementptr i8, ptr %0, i64 5148       ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 5152       ; 2 uses
  %2 = trunc nuw i32 %1 to i1
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph, %.thread
end_hunk_2
begin_hunk_3_@af_latin_metrics_scale_dim:bb.a
  %i.ap = add nsw i64 %.0166, %i.ab
  %i.aq = and i64 %i.ap, -64                      ; 2 uses
  %i.ar = icmp ne i64 %i.aq, %i.ab
  %3 = trunc nuw i32 %2 to i1
  %or.cond5 = select i1 %i.ar, i1 %3, i1 false
  br i1 %or.cond5, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
end_hunk_3
begin_hunk_4_@af_latin_hints_detect_features:bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !207
  %i.fa = icmp ne ptr %i.ez, null
  %4 = trunc nuw i8 %i.ev to i1
  %or.cond.i = select i1 %i.fa, i1 true, i1 %4
  br i1 %or.cond.i, label %bb.ab, label %bb.ag

bb.aa:                                            ; preds = %bb.y
end_hunk_4
begin_hunk_5_@af_latin_compute_stem_width:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.5152.val, i64 80
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [19600 x i8], ptr %i.a, i64 %i.b ; 7 uses
  %5 = trunc nuw i32 %0 to i1                     ; 2 uses
  %i.d = and i32 %.5148.val, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.ak, label %bb.b
end_hunk_5
begin_hunk_6_@af_latin_compute_stem_width:bb.a

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 21 uses
  br i1 %5, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %.5148.val, 2
end_hunk_6
begin_hunk_7_@af_latin_compute_stem_width:bb.a

af_latin_snap_width.exit:                         ; preds = %bb.v, %bb.w
  %.023.i = phi i64 [ %spec.select31.i, %bb.v ], [ %spec.select32.i, %bb.w ] ; 9 uses
  br i1 %5, label %bb.x, label %bb.z

bb.x:                                             ; preds = %af_latin_snap_width.exit
  %i.bu = icmp sgt i64 %.023.i, 63
end_hunk_7
