inline.NumInlined: 10
inline.NumDeleted: 1
begin_hunk_0_@set_conflicts:bb.a
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 28
  %n.vec = and i64 %i.ck, 9223372036854775800     ; 4 uses
  %i.cl = shl i64 %n.vec, 2
  %i.cm = getelementptr i8, ptr %i.bt, i64 %i.cl
  %1 = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br label %.lr.ph74.us

end_hunk_0
begin_hunk_1_@set_conflicts:bb.a
  br i1 %found.conflict, label %.lr.ph77.us.preheader124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.di = getelementptr i8, ptr %i.cr, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bt, i64 %offset.idx ; 3 uses
  %offset.idx118 = shl i64 %index, 2
  %next.gep119 = getelementptr i8, ptr %i.cr, i64 %offset.idx118 ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !4, !alias.scope !37
  %wide.load120.a = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4, !alias.scope !37
end_hunk_1
begin_hunk_2_@count_sr_conflicts:bb.a
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 28
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 4 uses
  %i.bj = shl i64 %n.vec, 2
  %i.bk = getelementptr i8, ptr %i.ao, i64 %i.bj
  %1 = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br label %.lr.ph63.us

end_hunk_2
begin_hunk_3_@count_sr_conflicts:bb.a
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bq = getelementptr i8, ptr %i.bo, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ao, i64 %offset.idx ; 3 uses
  %offset.idx94 = shl i64 %index, 2
  %next.gep95 = getelementptr i8, ptr %i.bo, i64 %offset.idx94 ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !4, !alias.scope !61
  %wide.load96.a = load <4 x i32>, ptr %i.br, align 4, !tbaa !4, !alias.scope !61
end_hunk_3
begin_hunk_4_@count_sr_conflicts:bb.a
  br i1 %found.conflict106, label %.lr.ph72.preheader128, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck100
  %n.vec112 = and i64 %i.ck, 9223372036854775800  ; 4 uses
  %i.cr = shl i64 %n.vec112, 2
  %i.cs = getelementptr i8, ptr %i.ao, i64 %i.cr
  %2 = shl i64 %n.vec112, 2
  %i.ct = getelementptr i8, ptr %i.ce, i64 %2
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next123, %vector.body113 ] ; 3 uses
  %offset.idx115 = shl i64 %index114, 2
  %next.gep116 = getelementptr i8, ptr %i.ao, i64 %offset.idx115 ; 3 uses
  %offset.idx117 = shl i64 %index114, 2
  %next.gep118 = getelementptr i8, ptr %i.ce, i64 %offset.idx117 ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119.a = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !4, !alias.scope !69
  %wide.load120 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !4, !alias.scope !69
end_hunk_4
begin_hunk_5_@print_reductions:bb.a
  br i1 %conflict.rdx, label %.lr.ph226.preheader410, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 9223372036854775800     ; 5 uses
  %i.dh = shl i64 %n.vec, 2
  %i.di = getelementptr i8, ptr %i.cu, i64 %i.dh
  %1 = shl i64 %n.vec, 2
  %i.dj = getelementptr i8, ptr %i.ck, i64 %1
  %2 = shl i64 %n.vec, 2
  %i.dk = getelementptr i8, ptr %i.cq, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cu, i64 %offset.idx ; 2 uses
  %offset.idx347 = shl i64 %index, 2
  %next.gep348.a = getelementptr i8, ptr %i.ck, i64 %offset.idx347 ; 2 uses
  %offset.idx349 = shl i64 %index, 2
  %next.gep350 = getelementptr i8, ptr %i.cq, i64 %offset.idx349 ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4
  %wide.load351.a = load <4 x i32>, ptr %i.dl, align 4, !tbaa !4
end_hunk_5
begin_hunk_6_@print_reductions:bb.a
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %min.iters.check386 = icmp ult i64 %i.gh, 28
  %diff.check382 = icmp ult i64 %i.gd, 32
  %n.vec389 = and i64 %i.gj, 9223372036854775800  ; 5 uses
  %3 = shl i64 %n.vec389, 2
  %i.gk = shl i64 %n.vec389, 2
  %i.gl = getelementptr i8, ptr %i.fe, i64 %i.gk
  %4 = shl i64 %n.vec389, 2
  %i.gm = getelementptr i8, ptr %i.fm, i64 %4
  %cmp.n404 = icmp eq i64 %i.gj, %n.vec389
  %min.iters.check361 = icmp ult i64 %i.ga, 28
  %bound0 = icmp ult ptr %i.fm, %scevgep358
  %bound1 = icmp ult ptr %i.fe, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec364 = and i64 %i.gc, 9223372036854775800  ; 4 uses
  %i.gn = shl i64 %n.vec364, 2
  %i.go = getelementptr i8, ptr %i.fe, i64 %i.gn
  %5 = shl i64 %n.vec364, 2
  %i.gp = getelementptr i8, ptr %i.fm, i64 %5
  %cmp.n377 = icmp eq i64 %i.gc, %n.vec364
  br label %bb.t

end_hunk_6
begin_hunk_7_@print_reductions:bb.a
  br i1 %conflict.rdx383, label %.lr.ph236.preheader409, label %vector.ph387

vector.ph387:                                     ; preds = %vector.memcheck380
  %i.gz = getelementptr i8, ptr %i.gv, i64 %3
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph387
  %index391 = phi i64 [ 0, %vector.ph387 ], [ %index.next402, %vector.body390 ] ; 4 uses
  %offset.idx392 = shl i64 %index391, 2
  %next.gep393 = getelementptr i8, ptr %i.gv, i64 %offset.idx392 ; 2 uses
  %offset.idx394 = shl i64 %index391, 2
  %next.gep395 = getelementptr i8, ptr %i.fe, i64 %offset.idx394 ; 2 uses
  %offset.idx396 = shl i64 %index391, 2
  %next.gep397 = getelementptr i8, ptr %i.fm, i64 %offset.idx396 ; 2 uses
  %i.ha = getelementptr i8, ptr %next.gep393, i64 16
  %wide.load398 = load <4 x i32>, ptr %next.gep393, align 4, !tbaa !4
  %wide.load399 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !4
end_hunk_7
begin_hunk_8_@print_reductions:bb.a
  br i1 %brmerge, label %.lr.ph247.preheader408, label %vector.body365

vector.body365:                                   ; preds = %.lr.ph247.preheader, %vector.body365
  %index366 = phi i64 [ %index.next375, %vector.body365 ], [ 0, %.lr.ph247.preheader ] ; 3 uses
  %offset.idx367 = shl i64 %index366, 2
  %next.gep368 = getelementptr i8, ptr %i.fe, i64 %offset.idx367 ; 2 uses
  %offset.idx369 = shl i64 %index366, 2
  %next.gep370 = getelementptr i8, ptr %i.fm, i64 %offset.idx369 ; 3 uses
  %i.il = getelementptr i8, ptr %next.gep368, i64 16
  %wide.load371 = load <4 x i32>, ptr %next.gep368, align 4, !tbaa !4, !alias.scope !89
  %wide.load372 = load <4 x i32>, ptr %i.il, align 4, !tbaa !4, !alias.scope !89
end_hunk_8
