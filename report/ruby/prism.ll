begin_hunk_0
match_eol.exit:                                   ; preds = %peek_at.exit11.i.i2946, %bb.aea, %peek_at.exit.i.i2945, %bb.adz, %current_token_starts_line.exit2942.thread, %current_token_starts_line.exit2942, %lex_identifier.exit
  %i.cff = load i32, ptr %i.w, align 4, !tbaa !192 ; 3 uses
  %i.cfg = icmp eq i32 %.1.i2926, 66
  switch i32 %.1.i2926, label %bb.aef [
    i32 119, label %bb.aec
    i32 66, label %bb.aec
    i32 41, label %bb.aec
end_hunk_0
begin_hunk_1

bb.aed:                                           ; preds = %bb.aec
  %.5575 = select i1 %i.k, i32 32, i32 16
  br label %.sink.split5551

bb.aee:                                           ; preds = %bb.aec
  %i.cfi = icmp eq i32 %i.cff, 128
  br i1 %i.cfi, label %pm_token_is_numbered_parameter.exit.thread.sink.split, label %.sink.split5551

.sink.split5551:                                  ; preds = %bb.aee, %bb.aed
  %.sink5552 = phi i32 [ %.5575, %bb.aed ], [ 2, %bb.aee ]
  store i32 %.sink5552, ptr %i.w, align 4, !tbaa !192
  br label %bb.aef

bb.aef:                                           ; preds = %.sink.split5551, %match_eol.exit
  %i.cfj = and i32 %i.cff, 384
  %i.cfk = icmp eq i32 %i.cfj, 0
  %or.cond40 = and i1 %i.cfg, %i.cfk
end_hunk_1
begin_hunk_2
  store i32 %.sink5553, ptr %i.w, align 4, !tbaa !192
  br label %pm_token_is_numbered_parameter.exit.thread

pm_token_is_numbered_parameter.exit.thread:       ; preds = %pm_token_is_numbered_parameter.exit.thread.sink.split, %pm_parser_local_depth.exit.thread, %bb.aep, %bb.aeq, %pm_token_is_numbered_parameter.exit, %bb.aef
  store i32 %.1.i2926, ptr %i.c, align 8, !tbaa !169
  %i.chg = load ptr, ptr %i.ab, align 8, !tbaa !170 ; 3 uses
  %.not.i2956 = icmp eq ptr %i.chg, null
end_hunk_2
begin_hunk_3
  %i.u = getelementptr i8, ptr %i.e, i64 2        ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %bb.b
  %.01873 = phi i8 [ 0, %bb.b ], [ %.11874, %.backedge ] ; 4 uses
  %.val2157 = load i32, ptr %i.b, align 8, !tbaa !169 ; 5 uses
  switch i32 %.val2157, label %bb.d [
    i32 33, label %.loopexit
    i32 1, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  switch i16 %i.cj, label %.backedge [
    i16 139, label %pm_array_node_elements_append.exit.thread
    i16 103, label %..thread_crit_edge
  ]

.backedge:                                        ; preds = %bb.an, %pm_array_node_elements_append.exit.thread
  br label %bb.c

..thread_crit_edge:                               ; preds = %bb.an
  %.val.i2348.pr.pre = load i32, ptr %i.b, align 8, !tbaa !169
  br label %.loopexit

pm_array_node_elements_append.exit.thread:        ; preds = %bb.an
  %i.cp = load i16, ptr %i.u, align 2, !tbaa !115
  %i.cq = or i16 %i.cp, 4
  store i16 %i.cq, ptr %i.u, align 2, !tbaa !115
  br label %.backedge

.loopexit:                                        ; preds = %bb.c, %bb.c, %..thread_crit_edge
  %.val.i2348 = phi i32 [ %.val.i2348.pr.pre, %..thread_crit_edge ], [ %.val2157, %bb.c ], [ %.val2157, %bb.c ] ; 2 uses
  %i.cr = icmp eq i32 %.val.i2348, 14
  br i1 %i.cr, label %bb.ao, label %accept1.exit2349

bb.ao:                                            ; preds = %.loopexit
end_hunk_4
begin_hunk_5
  %.val.i2350.pre = load i32, ptr %i.b, align 8, !tbaa !169
  br label %accept1.exit2349

accept1.exit2349:                                 ; preds = %.loopexit, %bb.ao
  %117 = phi i32 [ %.val.i2348, %.loopexit ], [ %.val.i2350.pre, %bb.ao ] ; 2 uses
  %i.cs = icmp eq i32 %117, 33
  br i1 %i.cs, label %accept1.exit2351.thread, label %accept1.exit2351

end_hunk_5
