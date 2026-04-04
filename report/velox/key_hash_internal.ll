begin_hunk_0
  %i.ar = phi ptr [ %.pre, %.lr.ph184 ], [ %i.bw, %._crit_edge ]
  %.0127183 = phi i32 [ 0, %.lr.ph184 ], [ %i.bx, %._crit_edge ] ; 28 uses
  %i.as = sub i32 %i.e, %.0127183                 ; 7 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.as, i32 1024) ; 11 uses
  %.not188 = icmp eq ptr %i.ar, %i.aq
  br i1 %.not188, label %._crit_edge, label %.lr.ph182

end_hunk_0
begin_hunk_1
  %i.at = lshr i32 %.0127183, 3
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = and i32 %.0127183, 7
  %i.aw = zext i32 %.0127183 to i64               ; 5 uses
  %i.ax = getelementptr [4 x i8], ptr %2, i64 %i.aw ; 44 uses
  %wide.trip.count.i65.i = zext nneg i32 %.sroa.speculated to i64 ; 43 uses
  %.not189 = icmp eq i32 %.0127183, %i.e          ; 2 uses
  %6 = add nsw i64 %wide.trip.count.i65.i, -1     ; 2 uses
  %7 = add nsw i64 %wide.trip.count.i65.i, -1     ; 2 uses
  %i.ay = add nuw nsw i64 %wide.trip.count.i65.i, %i.aw
  %8 = shl nuw nsw i64 %i.ay, 2
  %scevgep = getelementptr i8, ptr %2, i64 %8
  %i.az = shl nuw nsw i64 %wide.trip.count.i65.i, 2
  %i.ba = add nuw nsw i64 %wide.trip.count.i65.i, %i.aw
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %scevgep298.a = getelementptr i8, ptr %2, i64 %i.bb
  %i.bc = add nsw i64 %wide.trip.count.i65.i, -1  ; 3 uses
  %i.bd = add nsw i64 %wide.trip.count.i65.i, -1  ; 3 uses
  %min.iters.check318 = icmp ult i32 %i.as, 2
  %n.vec321 = and i64 %wide.trip.count.i65.i, 2046 ; 3 uses
  %cmp.n328 = icmp eq i64 %n.vec321, %wide.trip.count.i65.i
  %xtraiter = and i64 %wide.trip.count.i65.i, 3   ; 3 uses
  %9 = add nsw i32 %.sroa.speculated, -1
  %i.be = icmp ult i32 %9, 3
  %unroll_iter = and i64 %wide.trip.count.i65.i, 2044
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod349 = icmp ne i64 %xtraiter, 0
end_hunk_1
begin_hunk_2
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  %lcmp.mod375 = trunc i32 %.sroa.speculated to i1
  %min.iters.check258 = icmp ult i32 %i.as, 8
  %i.bj = trunc nsw i64 %7 to i32
  %i.bk = xor i32 %.0127183, -1
  %i.bl = icmp ult i32 %i.bk, %i.bj
  %i.bm = icmp ugt i64 %7, 4294967295
  %i.bn = or i1 %i.bl, %i.bm
  %n.vec261 = and i64 %wide.trip.count.i65.i, 2040 ; 3 uses
  %cmp.n267 = icmp eq i64 %n.vec261, %wide.trip.count.i65.i
end_hunk_2
begin_hunk_3
  %i.bo = add nsw i64 %wide.trip.count.i65.i, -1
  %invariant.op = add i32 1, %.0127183
  %min.iters.check = icmp ult i32 %i.as, 12
  %i.bp = trunc nsw i64 %6 to i32
  %i.bq = xor i32 %.0127183, -1
  %i.br = icmp ult i32 %i.bq, %i.bp
  %i.bs = icmp ugt i64 %6, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  %n.vec = and i64 %wide.trip.count.i65.i, 2040   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i65.i
end_hunk_3
begin_hunk_4
  %scevgep269 = getelementptr i8, ptr %i.hu, i64 %wide.trip.count.i65.i
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.hw
  %bound0 = icmp ult ptr %i.ax, %scevgep270
  %bound1 = icmp ult ptr %i.hx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i144.preheader337, label %vector.body276

end_hunk_4
begin_hunk_5
  %i.ak = and i32 %.0119173, 7
  %i.al = zext i32 %.0119173 to i64               ; 5 uses
  %i.am = getelementptr [8 x i8], ptr %2, i64 %i.al ; 42 uses
  %wide.trip.count.i65.i = zext nneg i32 %.sroa.speculated to i64 ; 38 uses
  %.not178 = icmp eq i32 %.0119173, %i.e          ; 2 uses
  %5 = add nsw i64 %wide.trip.count.i65.i, -1     ; 2 uses
  %i.an = add nsw i64 %wide.trip.count.i65.i, -1  ; 2 uses
  %i.ao = shl nuw nsw i64 %wide.trip.count.i65.i, 3
  %i.ap = add nuw nsw i64 %wide.trip.count.i65.i, %i.al
  %i.aq = shl nuw nsw i64 %i.ap, 3
end_hunk_5
begin_hunk_6
  %i.bd = add nsw i64 %wide.trip.count.i65.i, -1
  %invariant.op = add i32 1, %.0119173
  %min.iters.check = icmp ult i32 %i.ah, 10
  %i.be = trunc nsw i64 %5 to i32
  %i.bf = xor i32 %.0119173, -1
  %i.bg = icmp ult i32 %i.bf, %i.be
  %i.bh = icmp ugt i64 %5, 4294967295
  %i.bi = or i1 %i.bg, %i.bh
  %n.vec = and i64 %wide.trip.count.i65.i, 2044   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i65.i
end_hunk_6
