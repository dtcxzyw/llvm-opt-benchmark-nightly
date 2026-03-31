begin_hunk_0
  %i.tv = sub nsw i32 %i.tu, %i.sl
  store i32 %i.tv, ptr %i.a, align 8, !tbaa !7
  %i.tw = tail call fastcc i32 @r_stem_suffix_chain_before_ki(ptr noundef nonnull %0)
  %.fr1360.i = freeze i32 %i.tw                   ; 2 uses
  %1 = icmp sgt i32 %.fr1360.i, -1
  br i1 %1, label %r_stem_noun_suffixes.exit.thread, label %r_stem_noun_suffixes.exit.thread107

r_mark_DAn.exit.thread.i:                         ; preds = %r_mark_DAn.exit.i, %bb.df, %bb.de, %.thread1338.i
  %i.tx = load i32, ptr %i.m, align 4, !tbaa !15  ; 2 uses
end_hunk_0
begin_hunk_1
  %spec.select1354.i = select i1 %i.yg, i32 %i.ye, i32 %.83.i
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ek, %bb.ct
  %.103836.i = phi i32 [ %.lobit1365.i, %bb.ek ], [ %.lobit1368.i, %bb.ez ], [ %.lobit.i, %bb.ct ]
  %.107.i = phi i32 [ %.83.i, %bb.ek ], [ %spec.select1354.i, %bb.ez ], [ %i.qf, %bb.ct ]
  %.103836.fr.i = freeze i32 %.103836.i
  %.not1412.i = icmp eq i32 %.103836.fr.i, 0
  br i1 %.not1412.i, label %r_stem_noun_suffixes.exit.thread, label %r_stem_noun_suffixes.exit
end_hunk_1
begin_hunk_2
  store i32 %.sink, ptr %i.a, align 8, !tbaa !7
  br label %r_stem_noun_suffixes.exit.thread

r_stem_noun_suffixes.exit.thread:                 ; preds = %r_stem_noun_suffixes.exit.thread.sink.split, %bb.ey, %bb.ew, %bb.es, %bb.et, %bb.eg, %bb.ef, %bb.ed, %bb.du, %bb.ev, %bb.fa, %bb.dt, %bb.do, %bb.ea, %bb.dc, %bb.dd, %bb.ct, %bb.eh, %bb.ck, %bb.cs, %bb.cr, %bb.ej, %bb.bt, %bb.ce, %bb.ca, %bb.bm, %bb.ek, %r_stem_noun_suffixes.exit
  %i.yj = load i32, ptr %i.m, align 4, !tbaa !15
  store i32 %i.yj, ptr %i.a, align 8, !tbaa !7
  %i.yk = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_16) #2
end_hunk_2
begin_hunk_3
  store i32 %.sink187, ptr %i.a, align 8
  br label %r_stem_noun_suffixes.exit.thread107

r_stem_noun_suffixes.exit.thread107:              ; preds = %r_stem_noun_suffixes.exit.thread107.sink.split, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.fs, %bb.fp, %bb.fm, %bb.fi, %r_is_reserved_word.exit.i, %bb.et, %bb.ef, %bb.du, %bb.ce, %bb.ex, %bb.ep, %.thread1278.i, %bb.ee, %bb.dz, %bb.dq, %bb.di, %bb.do, %bb.dl, %bb.dc, %bb.cz, %bb.ck, %bb.cr, %bb.co, %bb.cc, %.thread1048.i, %bb.bt, %bb.ca, %select.unfold1303.i, %bb.bj, %.thread1226.i, %bb.bq, %.thread1222.i, %bb.bx, %bb.dt, %bb.cl, %.thread1274.i, %bb.dg, %bb.ej, %bb.cw, %bb.bm, %r_stem_noun_suffixes.exit, %bb.ax, %.thread514.i, %bb.aa, %.thread484.i, %r_more_than_one_syllable_word.exit, %select.unfold
  %.4 = phi i32 [ 0, %select.unfold ], [ %i.yc, %bb.ex ], [ %i.kg, %.thread484.i ], [ 0, %r_more_than_one_syllable_word.exit ], [ %i.zj, %bb.fi ], [ %i.jb, %bb.ax ], [ %i.ie, %.thread514.i ], [ %i.er, %bb.aa ], [ %i.yh, %r_stem_noun_suffixes.exit ], [ %i.wy, %bb.ep ], [ %i.xn, %bb.et ], [ %i.xk, %.thread1278.i ], [ %i.vo, %bb.ee ], [ %i.uv, %bb.dz ], [ %i.vq, %bb.ef ], [ %i.tl, %bb.dq ], [ %i.sp, %bb.di ], [ %i.tb, %bb.do ], [ %i.sz, %bb.dl ], [ %i.rm, %bb.dc ], [ %i.rk, %bb.cz ], [ %i.pe, %bb.ck ], [ %i.py, %bb.cr ], [ %i.pw, %bb.co ], [ %i.np, %bb.cc ], [ %i.ms, %.thread1048.i ], [ %i.mi, %bb.bt ], [ %i.ne, %bb.ca ], [ %i.xw, %select.unfold1303.i ], [ %i.kx, %bb.bj ], [ %i.vi, %.thread1226.i ], [ %i.lu, %bb.bq ], [ %i.un, %.thread1222.i ], [ %i.nc, %bb.bx ], [ %i.tp, %bb.dt ], [ %i.pm, %bb.cl ], [ %i.wr, %.thread1274.i ], [ %i.sh, %bb.dg ], [ %i.wb, %bb.ej ], [ %i.ra, %bb.cw ], [ %i.lb, %bb.bm ], [ %.fr1357.i, %bb.ce ], [ %.fr1360.i, %bb.du ], [ %i.aar, %bb.fs ], [ 0, %r_is_reserved_word.exit.i ], [ %i.aax, %bb.fu ], [ %i.abd, %bb.fx ], [ %i.abb, %bb.fw ], [ %i.aaz, %bb.fv ], [ %i.aag, %bb.fp ], [ %i.zv, %bb.fm ], [ %.4.ph, %r_stem_noun_suffixes.exit.thread107.sink.split ]
  ret i32 %.4
}

end_hunk_3
begin_hunk_4
.thread540:                                       ; preds = %.thread540.sink.split, %bb.l, %bb.t, %bb.ah, %bb.aj, %bb.aa, %bb.av, %bb.aw, %bb.ao
  br label %.thread534

.thread534:                                       ; preds = %bb.aj, %bb.t, %bb.q, %bb.as, %bb.av, %bb.ao, %bb.ap, %bb.aw, %bb.al, %bb.ak, %r_mark_nUn.exit.thread, %.thread456, %bb.aa, %bb.ah, %bb.ae, %bb.l, %bb.i, %bb.n, %bb.x, %bb.e, %r_mark_ndA.exit, %.thread540, %bb.a
  %.42 = phi i32 [ 0, %bb.a ], [ 1, %.thread540 ], [ %i.bl, %bb.t ], [ %i.bj, %bb.q ], [ %i.de, %.thread456 ], [ %i.az, %bb.n ], [ %i.gd, %bb.aw ], [ 0, %r_mark_ndA.exit ], [ %i.cg, %bb.x ], [ %i.u, %bb.e ], [ 0, %bb.al ], [ %i.an, %bb.l ], [ %i.aj, %bb.i ], [ %i.do, %bb.ae ], [ %i.dq, %bb.ah ], [ %i.cu, %bb.aa ], [ 0, %r_mark_nUn.exit.thread ], [ 0, %bb.ak ], [ %i.fu, %bb.as ], [ %i.fw, %bb.av ], [ %i.fc, %bb.ao ], [ %i.fk, %bb.ap ], [ %.fr, %bb.aj ]
  ret i32 %.42
}
end_hunk_4
