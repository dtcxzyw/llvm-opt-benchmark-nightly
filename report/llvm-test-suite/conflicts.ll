inline.NumInlined: 10
inline.NumDeleted: 1
begin_hunk_0_@set_conflicts:bb.a
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 28
  %n.vec = and i64 %i.ck, 9223372036854775800     ; 3 uses
  %i.cl = shl i64 %n.vec, 2                       ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bt, i64 %i.cl
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br label %.lr.ph74.us

end_hunk_0
begin_hunk_1_@set_conflicts:bb.a
  br i1 %found.conflict, label %.lr.ph77.us.preheader124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.di = getelementptr i8, ptr %i.cr, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %offset.idx ; 3 uses
  %next.gep119 = getelementptr i8, ptr %i.cr, i64 %offset.idx ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !4, !alias.scope !37
  %wide.load120.a = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4, !alias.scope !37
end_hunk_1
begin_hunk_2_@count_sr_conflicts:bb.a
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 28
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ao, i64 %i.bj
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br label %.lr.ph63.us

end_hunk_2
begin_hunk_3_@count_sr_conflicts:bb.a
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bq = getelementptr i8, ptr %i.bo, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %offset.idx ; 3 uses
  %next.gep95 = getelementptr i8, ptr %i.bo, i64 %offset.idx ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !4, !alias.scope !61
  %wide.load96.a = load <4 x i32>, ptr %i.br, align 4, !tbaa !4, !alias.scope !61
end_hunk_3
begin_hunk_4_@count_sr_conflicts:bb.a
  br i1 %found.conflict106, label %.lr.ph72.preheader128, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck100
  %n.vec112 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cr = shl i64 %n.vec112, 2                    ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ao, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.ce, i64 %i.cr
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next123, %vector.body113 ] ; 2 uses
  %offset.idx115 = shl i64 %index114, 2           ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.ao, i64 %offset.idx115 ; 3 uses
  %next.gep118 = getelementptr i8, ptr %i.ce, i64 %offset.idx115 ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119.a = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !4, !alias.scope !69
  %wide.load120 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !4, !alias.scope !69
end_hunk_4
begin_hunk_5_@print_reductions:bb.a
  br i1 %conflict.rdx, label %.lr.ph226.preheader410, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 9223372036854775800     ; 3 uses
  %i.dh = shl i64 %n.vec, 2                       ; 3 uses
  %i.di = getelementptr i8, ptr %i.cu, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.ck, i64 %i.dh
  %i.dk = getelementptr i8, ptr %i.cq, i64 %i.dh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 3 uses
  %next.gep = getelementptr i8, ptr %i.cu, i64 %offset.idx ; 2 uses
  %next.gep348.a = getelementptr i8, ptr %i.ck, i64 %offset.idx ; 2 uses
  %next.gep350 = getelementptr i8, ptr %i.cq, i64 %offset.idx ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4
  %wide.load351.a = load <4 x i32>, ptr %i.dl, align 4, !tbaa !4
end_hunk_5
begin_hunk_6_@print_reductions:bb.a
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %min.iters.check386 = icmp ult i64 %i.gh, 28
  %diff.check382 = icmp ult i64 %i.gd, 32
  %n.vec389 = and i64 %i.gj, 9223372036854775800  ; 3 uses
  %i.gk = shl i64 %n.vec389, 2                    ; 3 uses
  %i.gl = getelementptr i8, ptr %i.fe, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.fm, i64 %i.gk
  %cmp.n404 = icmp eq i64 %i.gj, %n.vec389
  %min.iters.check361 = icmp ult i64 %i.ga, 28
  %bound0 = icmp ult ptr %i.fm, %scevgep358
  %bound1 = icmp ult ptr %i.fe, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec364 = and i64 %i.gc, 9223372036854775800  ; 3 uses
  %i.gn = shl i64 %n.vec364, 2                    ; 2 uses
  %i.go = getelementptr i8, ptr %i.fe, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.fm, i64 %i.gn
  %cmp.n377 = icmp eq i64 %i.gc, %n.vec364
  br label %bb.t

end_hunk_6
begin_hunk_7_@print_reductions:bb.a
  br i1 %conflict.rdx383, label %.lr.ph236.preheader409, label %vector.ph387

vector.ph387:                                     ; preds = %vector.memcheck380
  %i.gz = getelementptr i8, ptr %i.gv, i64 %i.gk
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph387
  %index391 = phi i64 [ 0, %vector.ph387 ], [ %index.next402, %vector.body390 ] ; 2 uses
  %offset.idx392 = shl i64 %index391, 2           ; 3 uses
  %next.gep393 = getelementptr i8, ptr %i.gv, i64 %offset.idx392 ; 2 uses
  %next.gep395 = getelementptr i8, ptr %i.fe, i64 %offset.idx392 ; 2 uses
  %next.gep397 = getelementptr i8, ptr %i.fm, i64 %offset.idx392 ; 2 uses
  %i.ha = getelementptr i8, ptr %next.gep393, i64 16
  %wide.load398 = load <4 x i32>, ptr %next.gep393, align 4, !tbaa !4
  %wide.load399 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !4
end_hunk_7
begin_hunk_8_@print_reductions:bb.a
  br i1 %brmerge, label %.lr.ph247.preheader408, label %vector.body365

vector.body365:                                   ; preds = %.lr.ph247.preheader, %vector.body365
  %index366 = phi i64 [ %index.next375, %vector.body365 ], [ 0, %.lr.ph247.preheader ] ; 2 uses
  %offset.idx367 = shl i64 %index366, 2           ; 2 uses
  %next.gep368 = getelementptr i8, ptr %i.fe, i64 %offset.idx367 ; 2 uses
  %next.gep370 = getelementptr i8, ptr %i.fm, i64 %offset.idx367 ; 3 uses
  %i.il = getelementptr i8, ptr %next.gep368, i64 16
  %wide.load371 = load <4 x i32>, ptr %next.gep368, align 4, !tbaa !4, !alias.scope !89
  %wide.load372 = load <4 x i32>, ptr %i.il, align 4, !tbaa !4, !alias.scope !89
end_hunk_8
