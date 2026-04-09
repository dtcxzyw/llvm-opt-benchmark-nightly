inline.NumInlined: 457
inline.NumDeleted: 100
begin_hunk_0_@ins1:bb.a

bb.e:                                             ; preds = %bb.c
  %i.g = ashr i64 %i.c, 3
  %i.h = add i64 %.val, 7
  %i.i = add i64 %i.h, %i.g
  %i.j = and i64 %i.i, -4                         ; 2 uses
  %i.k = sub i64 %i.j, %i.c
  %i.l = icmp slt i64 %i.k, 1
end_hunk_0
begin_hunk_1_@_PyList_AppendTakeRefListResize:bb.a

bb.c:                                             ; preds = %bb.a
  %i.f = ashr i64 %i.b, 3
  %i.g = add i64 %.val, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -4                         ; 2 uses
  %i.j = sub i64 %i.i, %i.b
  %i.k = icmp slt i64 %i.j, 1
end_hunk_1
begin_hunk_2_@list_resize:bb.a

bb.c:                                             ; preds = %bb.a
  %i.e = ashr i64 %1, 3
  %i.f = add i64 %1, 6
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -4                         ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val = load i64, ptr %i.i, align 8, !tbaa !29
end_hunk_2
begin_hunk_3_@_list_extend:bb.a

bb.k:                                             ; preds = %bb.i
  %i.p = ashr i64 %i.k, 3
  %i.q = add i64 %i.k, 6
  %i.r = add i64 %i.q, %i.p
  %i.s = and i64 %i.r, -4                         ; 2 uses
  %i.t = sub i64 %i.s, %i.k
  %i.u = icmp sgt i64 %.val16.i, %i.t
end_hunk_3
begin_hunk_4_@list_ass_slice_lock_held:bb.a

bb.w:                                             ; preds = %bb.u
  %i.ba = ashr i64 %i.aw, 3
  %i.bb = add i64 %i.aw, 6
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = and i64 %i.bc, -4                       ; 2 uses
  %i.be = sub i64 %i.bd, %i.aw
  %i.bf = icmp sgt i64 %i.p, %i.be
end_hunk_4
begin_hunk_5_@list_ass_slice_lock_held:bb.a

bb.ae:                                            ; preds = %bb.ac
  %i.bv = ashr i64 %i.br, 3
  %i.bw = add i64 %i.br, 6
  %i.bx = add i64 %i.bw, %i.bv
  %i.by = and i64 %i.bx, -4                       ; 2 uses
  %i.bz = sub i64 %i.by, %i.br
  %i.ca = icmp sgt i64 %i.p, %i.bz
end_hunk_5
begin_hunk_6_@list_inplace_repeat_lock_held:bb.a

bb.l:                                             ; preds = %bb.j
  %i.y = ashr i64 %i.u, 3
  %i.z = add i64 %i.u, 6
  %i.aa = add i64 %i.z, %i.y
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = sub i64 %i.u, %.val
  %i.ad = sub i64 %i.ab, %i.u
end_hunk_6
begin_hunk_7_@list_inplace_repeat_lock_held:bb.a
  br i1 %i.as, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.p
  %2 = add nsw i64 %1, -1                         ; 3 uses
  %xtraiter = and i64 %.val, 1
  %i.at = icmp eq i64 %.val, 1
  br i1 %i.at, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph.a
  %unroll_iter = and i64 %.val, 9223372036854775806
  br label %bb.r

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_Py_RefcntAdd.exit.1
end_hunk_7
begin_hunk_8_@list_inplace_repeat_lock_held:bb.a

bb.q:                                             ; preds = %.epil.preheader
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add nuw i64 %2, %i.ax                   ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 2147483647
  %i.ba = trunc i64 %i.ay to i32
  %i.bb = select i1 %i.az, i32 -1073741824, i32 %i.ba
end_hunk_8
begin_hunk_9_@list_inplace_repeat_lock_held:bb.a

bb.s:                                             ; preds = %bb.r
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add nuw i64 %2, %i.bn                   ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 2147483647
  %i.bq = trunc i64 %i.bo to i32
  %i.br = select i1 %i.bp, i32 -1073741824, i32 %i.bq
end_hunk_9
begin_hunk_10_@list_inplace_repeat_lock_held:bb.a

bb.t:                                             ; preds = %_Py_RefcntAdd.exit
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = add nuw i64 %2, %i.bw                   ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 2147483647
  %i.bz = trunc i64 %i.bx to i32
  %i.ca = select i1 %i.by, i32 -1073741824, i32 %i.bz
end_hunk_10
begin_hunk_11_@list_extend_lock_held:bb.a

bb.i:                                             ; preds = %bb.g
  %i.t = ashr i64 %i.p, 3
  %i.u = add i64 %i.p, 6
  %i.v = add i64 %i.u, %i.t
  %i.w = and i64 %i.v, -4                         ; 2 uses
  %i.x = sub i64 %i.w, %i.p
  %i.y = icmp sgt i64 %i.c, %i.x
end_hunk_11
begin_hunk_12_@list_extend_dict:bb.a

bb.d:                                             ; preds = %bb.b
  %i.j = ashr i64 %i.e, 3
  %i.k = add i64 %i.e, 6
  %i.l = add i64 %i.k, %i.j
  %i.m = and i64 %i.l, -4                         ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %i.o = icmp sgt i64 %.val19, %i.n
end_hunk_12
begin_hunk_13_@list_extend_dictitems:bb.a

bb.d:                                             ; preds = %bb.b
  %i.j = ashr i64 %i.e, 3
  %i.k = add i64 %i.e, 6
  %i.l = add i64 %i.k, %i.j
  %i.m = and i64 %i.l, -4                         ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %i.o = icmp sgt i64 %.val29, %i.n
end_hunk_13
begin_hunk_14_@list_extend_iter_lock_held:bb.a

bb.k:                                             ; preds = %bb.j
  %i.ab = ashr i64 %i.x, 3
  %i.ac = add i64 %i.x, 6
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -4                       ; 2 uses
  %i.af = sub i64 %i.ae, %i.x
  %i.ag = icmp sgt i64 %i.f, %i.af
end_hunk_14
begin_hunk_15_@list_extend_iter_lock_held:bb.a

bb.v:                                             ; preds = %bb.u
  %i.bk = ashr i64 %.val51, 3
  %i.bl = add nsw i64 %.val51, 6
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = sub i64 %i.bn, %.val51
  %i.bp = icmp slt i64 %i.bo, 0
end_hunk_15
begin_hunk_16_@list_pop:bb.a

bb.t:                                             ; preds = %bb.r
  %i.at = ashr i64 %i.al, 3
  %i.au = add i64 %.val32.i, 5
  %i.av = add i64 %i.au, %i.at
  %i.aw = and i64 %i.av, -4                       ; 2 uses
  %.val.i.i = load i64, ptr %i.k, align 8, !tbaa !29
  %i.ax = sub i64 %i.al, %.val.i.i
end_hunk_16
