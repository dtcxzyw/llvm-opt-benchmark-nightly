begin_hunk_0_@CRYPTO_cbc128_decrypt
define dso_local void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef captures(address) %4, ptr noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %6 = alloca %union.anon, align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.b
end_hunk_0
begin_hunk_1_@CRYPTO_cbc128_decrypt:bb.a
  br i1 %.not98, label %.loopexit, label %.loopexit100.thread

.loopexit100.thread:                              ; preds = %.preheader101, %.preheader99, %.loopexit100
  %.2146 = phi ptr [ %.2, %.loopexit100 ], [ %0, %.preheader99 ], [ %0, %.preheader101 ] ; 16 uses
  %.277145 = phi ptr [ %.277, %.loopexit100 ], [ %1, %.preheader99 ], [ %1, %.preheader101 ] ; 8 uses
  %.282144 = phi i64 [ %.282, %.loopexit100 ], [ %2, %.preheader99 ], [ %2, %.preheader101 ] ; 17 uses
  %.2146182 = ptrtoaddr ptr %.2146 to i64
  call void %5(ptr noundef %.2146, ptr noundef nonnull %6, ptr noundef %3) #3
  %i.af = sub nuw nsw i64 17, %.282144            ; 3 uses
  %min.iters.check = icmp ult i64 %.282144, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit100.thread
end_hunk_1
begin_hunk_2_@CRYPTO_cbc128_decrypt:bb.a
  %bound1172 = icmp ult ptr %6, %scevgep157
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  br i1 %conflict.rdx174, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.282144, -32                  ; 4 uses
  %i.ag = or disjoint i64 %i.af, %n.vec           ; 2 uses
  br label %vector.body

end_hunk_2
begin_hunk_3_@CRYPTO_cbc128_decrypt:bb.a
  store <16 x i8> %wide.load175, ptr %i.am, align 1, !tbaa !13, !alias.scope !30, !noalias !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block.a, label %vector.body, !llvm.loop !36

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %.282144, %n.vec
  %ind.escape.a = add i64 %i.ag, -1
  br i1 %cmp.n.a, label %iter.check, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.loopexit100.thread, %middle.block.a
  %indvars.iv.ph = phi i64 [ %i.af, %vector.memcheck ], [ %i.af, %.loopexit100.thread ], [ %i.ag, %middle.block.a ] ; 3 uses
  %.287118.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.loopexit100.thread ], [ %n.vec, %middle.block.a ] ; 7 uses
  %.neg = or disjoint i64 %.287118.ph, 1
  %xtraiter = and i64 %.282144, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_3
begin_hunk_4_@CRYPTO_cbc128_decrypt:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.2146, i64 %.287118.ph
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 %.287118.ph
  %i.av = load i8, ptr %i.au, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %.287118.ph ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = xor i8 %i.ax, %i.av
end_hunk_4
begin_hunk_5_@CRYPTO_cbc128_decrypt:bb.a
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %iter.check

iter.check:                                       ; preds = %iter.check.loopexit.unr-lcssa, %scalar.ph.prol.loopexit, %middle.block.a
  %indvars.iv.lcssa = phi i64 [ %ind.escape.a, %middle.block.a ], [ %indvars.iv.ph, %scalar.ph.prol.loopexit ], [ %indvars.iv.next, %iter.check.loopexit.unr-lcssa ] ; 3 uses
  %i.bc = sub i64 16, %.282144                    ; 7 uses
  %min.iters.check184 = icmp ult i64 %i.bc, 4
  %i.bd = sub i64 %i.a, %.2146182
end_hunk_5
begin_hunk_6_@CRYPTO_cbc128_decrypt:bb.a
  store <16 x i8> %wide.load192, ptr %i.bi, align 1, !tbaa !13
  %index.next193 = add nuw i64 %index190, 32      ; 2 uses
  %i.bj = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.bj, label %middle.block194, label %vector.body189, !llvm.loop !37

middle.block194:                                  ; preds = %vector.body189
  %cmp.n195 = icmp eq i64 %i.bc, %n.vec188
end_hunk_6
begin_hunk_7_@CRYPTO_cbc128_decrypt:bb.a

vec.epilog.iter.check.a:                          ; preds = %middle.block194
  %min.epilog.iters.check.a = icmp eq i64 %n.mod.vf187, 0
  br i1 %min.epilog.iters.check.a, label %.lr.ph120.preheader, label %vec.epilog.ph.a, !prof !38

vec.epilog.ph.a:                                  ; preds = %vector.main.loop.iter.check.a, %vec.epilog.iter.check.a
  %vec.epilog.resume.val.a = phi i64 [ %n.vec188, %vec.epilog.iter.check.a ], [ 0, %vector.main.loop.iter.check.a ]
end_hunk_7
begin_hunk_8_@CRYPTO_cbc128_decrypt:bb.a
  store <4 x i8> %wide.load200, ptr %i.bn, align 1, !tbaa !13
  %index.next201 = add nuw i64 %index199, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next201, %n.vec198
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body.a, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.a
  %cmp.n202 = icmp eq i64 %i.bc, %n.vec198
end_hunk_8
begin_hunk_9_@CRYPTO_cbc128_decrypt:bb.a
  %i.bt = add nuw nsw i64 %.388119.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter210
  br i1 %prol.iter.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !40

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader
  %.388119.unr = phi i64 [ %.388119.ph, %.lr.ph120.preheader ], [ %i.bt, %.lr.ph120.prol ]
end_hunk_9
begin_hunk_10_@CRYPTO_cbc128_decrypt:bb.a
  %i.cn = add nuw nsw i64 %.287118, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cn, %.282144
  %indvars.iv.next.1 = add i64 %indvars.iv, 2
  br i1 %exitcond.not.1, label %iter.check.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !41

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %.388119 = phi i64 [ %i.dd, %.lr.ph120 ], [ %.388119.unr, %.lr.ph120.prol.loopexit ] ; 6 uses
end_hunk_10
begin_hunk_11_@CRYPTO_cbc128_decrypt:bb.a
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !13
  %i.dd = add nuw nsw i64 %.388119, 4             ; 2 uses
  %exitcond128.not.3 = icmp eq i64 %i.dd, %indvars.iv.lcssa
  br i1 %exitcond128.not.3, label %.loopexit, label %.lr.ph120, !llvm.loop !42

.loopexit:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %middle.block194, %vec.epilog.middle.block, %.loopexit100, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
end_hunk_11
begin_hunk_12_@CRYPTO_cbc128_decrypt:bb.a
!34 = distinct !{!34, !27}
!35 = !{!31, !26, !29}
!36 = distinct !{!36, !12, !15, !16}
!37 = distinct !{!37, !12, !15, !16}
!38 = !{!"branch_weights", i32 4, i32 28}
!39 = distinct !{!39, !12, !15, !16}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !12, !15}
!42 = distinct !{!42, !12, !15}
end_hunk_12
