begin_hunk_0
.lr.ph154:                                        ; preds = %bb.i
  %.not119 = icmp eq ptr %4, null
  %i.gy = add nsw i64 %i.gx, -1
  %i.gz = sdiv i64 %i.gy, 8                       ; 2 uses
  %i.ha = icmp eq i32 %i.gw, 0
  br i1 %i.ha, label %.critedge.thread, label %.lr.ph154.split.split.preheader

end_hunk_0
begin_hunk_1
  %i.hp = mul i64 %i.ho, %i.gx                    ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.hm, i64 %i.hp
  %i.hr = ptrtoaddr ptr %i.hm to i64
  %7 = add nsw i64 %i.gz, 1                       ; 2 uses
  %i.hs = tail call i64 @llvm.smax.i64(i64 %7, i64 1)
  %i.ht = add i64 %i.hp, %i.hr
  %i.hu = tail call i64 @llvm.smax.i64(i64 %7, i64 1) ; 2 uses
  %min.iters.check230 = icmp ult i32 %i.gw, 105
  %8 = sub nsw i64 0, %i.hs
  %9 = and i64 %8, 4294967295
  %10 = icmp eq i64 %9, 0
  %n.vec233 = and i64 %i.hu, 9223372036854775804  ; 4 uses
  %i.hv = trunc i64 %n.vec233 to i32
  %cmp.n240 = icmp eq i64 %i.hu, %n.vec233
  br label %.lr.ph154.split.split

.lr.ph154.split.split:                            ; preds = %.lr.ph154.split.split.preheader, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split
end_hunk_1
begin_hunk_2
  %i.id = mul i32 %i.gw, %i.ic
  %i.ie = zext i32 %i.id to i64                   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ie ; 2 uses
  %brmerge = select i1 %min.iters.check230, i1 true, i1 %10
  br i1 %brmerge, label %scalar.ph229.preheader, label %vector.memcheck226

vector.memcheck226:                               ; preds = %.lr.ph148
  %i.ig = add nuw i64 %i.gu, %i.ie
end_hunk_2
begin_hunk_3
middle.block239:                                  ; preds = %vector.body234
  br i1 %cmp.n240, label %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %.lr.ph148, %vector.memcheck226, %middle.block239
  %.ph = phi i64 [ 0, %vector.memcheck226 ], [ %n.vec233, %middle.block239 ], [ 0, %.lr.ph148 ]
  %.0107146.ph = phi i32 [ 0, %vector.memcheck226 ], [ %i.hv, %middle.block239 ], [ 0, %.lr.ph148 ]
  br label %scalar.ph229

._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split: ; preds = %scalar.ph229, %middle.block239
end_hunk_3
