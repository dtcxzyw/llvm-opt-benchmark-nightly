inline.NumInlined: 4
begin_hunk_0_@FlushGalley:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.in.idx = select i1 %.not780, i64 8, i64 0     ; 2 uses
  %i.ab = xor i32 %i.w, 1                         ; 6 uses
  %or.cond975.v = select i1 %.not780, i8 17, i8 19
  %i.ac = zext nneg i16 %i.v to i64               ; 5 uses
  %i.ad = zext nneg i32 %i.ab to i64              ; 5 uses
end_hunk_0
begin_hunk_1_@FlushGalley:bb.a
bb.aw:                                            ; preds = %bb.aq, %bb.av, %bb.ap
  %.2 = phi ptr [ %.0, %bb.av ], [ %.1, %bb.ap ], [ %.0, %bb.aq ] ; 17 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.2, i64 80
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !8  ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40 ; 5 uses
  %i.eo = load i32, ptr %i.en, align 8            ; 3 uses
  %i.ep = and i32 %i.eo, 1610612736
end_hunk_1
begin_hunk_2_@FlushGalley:bb.a
  br i1 %.not7831157, label %.thread1663, label %.preheader991.lr.ph

.preheader991.lr.ph:                              ; preds = %bb.ay
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 24 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %.in792 = select i1 %.not780, ptr %i.ew, ptr %i.ev
  %.in793 = select i1 %.not780, ptr %i.ev, ptr %i.ew
  %i.ex = getelementptr inbounds nuw i8, ptr %.2, i64 42 ; 2 uses
  br label %.preheader991

end_hunk_2
begin_hunk_3_@FlushGalley:bb.a
  br i1 %i.pl, label %bb.dd, label %bb.ds

bb.dd:                                            ; preds = %bb.dc
  %i.pm = load ptr, ptr %.in792, align 8, !tbaa !8
  %i.pn = load ptr, ptr %.in793, align 8, !tbaa !8
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %bb.df, label %bb.de

end_hunk_3
begin_hunk_4_@FlushGalley:bb.a
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.pr = load ptr, ptr %i.ev, align 8, !tbaa !8  ; 2 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %bb.df
end_hunk_4
begin_hunk_5_@FlushGalley:bb.a
bb.di:                                            ; preds = %bb.dh
  %i.pv = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.pw = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.pv, ptr noundef nonnull @.str.12) #6 ; 0 uses
  %.pre1419 = load ptr, ptr %i.ev, align 8, !tbaa !8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
end_hunk_5
