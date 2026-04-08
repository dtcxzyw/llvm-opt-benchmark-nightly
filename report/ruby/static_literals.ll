inline.NumInlined: 33
inline.NumDeleted: 8
begin_hunk_0_@pm_static_literal_inspect_node:bb.a
  br label %tailrecurse.i

bb.s:                                             ; preds = %tailrecurse.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 487, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_static_literal_positive_p) #11, !inline_history !58
  unreachable

pm_static_literal_positive_p.exit:                ; preds = %tailrecurse.i
  %i.af = getelementptr i8, ptr %.tr.i, i64 44
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !59, !range !46, !noundef !47
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.u, label %bb.t

end_hunk_0
begin_hunk_1_@pm_static_literal_inspect_node:bb.a
  tail call void @pm_buffer_append_source(ptr noundef %0, ptr noundef %i.ao, i64 noundef %i.ap, i32 noundef 0) #10
  tail call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 47) #10
  %i.aq = getelementptr i8, ptr %2, i64 2         ; 4 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !61 ; 2 uses
  %i.as = and i16 %i.ar, 16
  %.not = icmp eq i16 %i.as, 0
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef 1) #10
  %.pre = load i16, ptr %i.aq, align 2, !tbaa !61
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
end_hunk_1
begin_hunk_2_@pm_static_literal_inspect_node:bb.a

bb.ad:                                            ; preds = %bb.ac
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef 1) #10
  %.pre88 = load i16, ptr %i.aq, align 2, !tbaa !61
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
end_hunk_2
begin_hunk_3_@pm_static_literal_inspect_node:bb.a

bb.af:                                            ; preds = %bb.ae
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef 1) #10
  %.pre89 = load i16, ptr %i.aq, align 2, !tbaa !61
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
end_hunk_3
begin_hunk_4_@node_hash:bb.a

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62   ; 5 uses
  %i.f = and i64 %i.e, 4611686018427387903        ; 2 uses
  %.not29.i.i = icmp eq i64 %i.f, 0
  br i1 %.not29.i.i, label %murmur_hash.exit.i, label %.lr.ph.i.i.preheader
end_hunk_4
begin_hunk_5_@node_hash:bb.a
  %i.ac = add i32 %i.ab, -430675100               ; 3 uses
  %niter232.next.1 = add i64 %niter232, 2         ; 2 uses
  %niter232.ncmp.1 = icmp eq i64 %niter232.next.1, %unroll_iter231
  br i1 %niter232.ncmp.1, label %murmur_hash.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !63

murmur_hash.exit.i.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
end_hunk_5
begin_hunk_6_@node_hash:bb.a

bb.e:                                             ; preds = %bb.d
  %i.du = getelementptr i8, ptr %1, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !62 ; 5 uses
  %i.dw = and i64 %i.dv, 4611686018427387903      ; 2 uses
  %.not29.i.i43 = icmp eq i64 %i.dw, 0
  br i1 %.not29.i.i43, label %murmur_hash.exit.i49, label %.lr.ph.i.i44.preheader
end_hunk_6
begin_hunk_7_@node_hash:bb.a
  %i.et = add i32 %i.es, -430675100               ; 3 uses
  %niter220.next.1 = add i64 %niter220, 2         ; 2 uses
  %niter220.ncmp.1 = icmp eq i64 %niter220.next.1, %unroll_iter219
  br i1 %niter220.ncmp.1, label %murmur_hash.exit.i49.loopexit.unr-lcssa, label %.lr.ph.i.i44, !llvm.loop !63

murmur_hash.exit.i49.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i44
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
end_hunk_7
begin_hunk_8_@node_hash:bb.a

bb.f:                                             ; preds = %integer_hash.exit55
  %i.gg = getelementptr i8, ptr %1, i64 48
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !62 ; 5 uses
  %i.gi = and i64 %i.gh, 4611686018427387903      ; 2 uses
  %.not29.i.i57 = icmp eq i64 %i.gi, 0
  br i1 %.not29.i.i57, label %murmur_hash.exit.i63, label %.lr.ph.i.i58.preheader
end_hunk_8
begin_hunk_9_@node_hash:bb.a
  %i.hf = add i32 %i.he, -430675100               ; 3 uses
  %niter226.next.1 = add i64 %niter226, 2         ; 2 uses
  %niter226.ncmp.1 = icmp eq i64 %niter226.next.1, %unroll_iter225
  br i1 %niter226.ncmp.1, label %murmur_hash.exit.i63.loopexit.unr-lcssa, label %.lr.ph.i.i58, !llvm.loop !63

murmur_hash.exit.i63.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i58
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
end_hunk_9
begin_hunk_10_@node_hash:bb.a
bb.h:                                             ; preds = %bb.a
  %i.jh = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.ji = getelementptr i8, ptr %1, i64 2
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !61
  %i.jk = and i16 %i.jj, 12
  %i.jl = tail call ptr @pm_string_source(ptr noundef %i.jh) #10 ; 4 uses
  %i.jm = tail call i64 @pm_string_length(ptr noundef %i.jh) #10 ; 5 uses
end_hunk_10
begin_hunk_11_@node_hash:bb.a
  %i.kw = add i32 %i.kv, -430675100               ; 3 uses
  %niter214.next.1 = add i64 %niter214, 2         ; 2 uses
  %niter214.ncmp.1 = icmp eq i64 %niter214.next.1, %unroll_iter213
  br i1 %niter214.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i70, !llvm.loop !63

.lr.ph39.i:                                       ; preds = %._crit_edge.i
  %i.kx = getelementptr i8, ptr %.027.lcssa.i, i64 %i.ka
end_hunk_11
begin_hunk_12_@node_hash:bb.a
  %i.ny = add i32 %i.nx, -430675100               ; 3 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge.loopexit.i83.unr-lcssa, label %.lr.ph.i78, !llvm.loop !63

.lr.ph39.i89:                                     ; preds = %._crit_edge.i85
  %i.nz = getelementptr i8, ptr %.027.lcssa.i86, i64 %i.nc
end_hunk_12
begin_hunk_13_@node_hash:bb.a
  %i.qt = add i32 %i.qs, -430675100               ; 3 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %._crit_edge.loopexit.i100.unr-lcssa, label %.lr.ph.i95, !llvm.loop !63

.lr.ph39.i106:                                    ; preds = %._crit_edge.i102
  %i.qu = getelementptr i8, ptr %.027.lcssa.i103, i64 %i.px
end_hunk_13
begin_hunk_14_@node_hash:bb.a
  %i.rz = mul i32 %i.ry, -1028477387              ; 2 uses
  %i.sa = lshr i32 %i.rz, 16
  %i.sb = getelementptr i8, ptr %1, i64 2
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !61
  %i.sd = zext i16 %i.sc to i32                   ; 2 uses
  %i.se = mul i32 %i.sd, -862048943
  %i.sf = mul i32 %i.sd, 380141568
end_hunk_14
begin_hunk_15_@node_hash:bb.a
  %i.tx = add i32 %i.tw, -430675100               ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i117.unr-lcssa, label %.lr.ph.i112, !llvm.loop !63

.lr.ph39.i123:                                    ; preds = %._crit_edge.i119
  %i.ty = getelementptr i8, ptr %.027.lcssa.i120, i64 %i.tb
end_hunk_15
begin_hunk_16_@node_hash:bb.a
  %i.vd = mul i32 %i.vc, -1028477387              ; 2 uses
  %i.ve = lshr i32 %i.vd, 16
  %i.vf = getelementptr i8, ptr %1, i64 2
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !61
  %i.vh = zext i16 %i.vg to i32                   ; 2 uses
  %i.vi = mul i32 %i.vh, -862048943
  %i.vj = mul i32 %i.vh, 380141568
end_hunk_16
begin_hunk_17_@llvm.assume
!55 = !{!9, !9, i64 0}
!56 = !{!57, !44, i64 44}
!57 = !{!"pm_rational_node", !12, i64 0, !41, i64 24, !41, i64 48}
!58 = distinct !{null}
!59 = !{!60, !44, i64 44}
!60 = !{!"pm_integer_node", !12, i64 0, !41, i64 24}
!61 = !{!12, !13, i64 2}
!62 = !{!41, !42, i64 0}
!63 = distinct !{!63, !30}
end_hunk_17
