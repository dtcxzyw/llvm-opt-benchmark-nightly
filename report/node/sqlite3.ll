begin_hunk_0
bb.m:                                             ; preds = %sqlite3_mutex_enter.exit, %bb.l
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 352), align 8, !tbaa !192
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 368), align 8, !tbaa !198
  %.not23.a = icmp eq ptr %i.ag, null
  br i1 %.not23.a, label %0, label %select.unfold

0:                                                ; preds = %bb.m
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !176
  %.not.i28 = icmp eq i8 %1, 0
  br i1 %.not.i28, label %sqlite3MutexAlloc.exit30.thread, label %sqlite3MutexAlloc.exit30

sqlite3MutexAlloc.exit30.thread:                  ; preds = %0
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 368), align 8, !tbaa !198
  br label %select.unfold

sqlite3MutexAlloc.exit30:                         ; preds = %0
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !177
  %i.ai = tail call ptr %i.ah(i32 noundef 1) #72  ; 2 uses
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !176
end_hunk_0
begin_hunk_1
  %or.cond = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond, label %select.unfold, label %bb.n

select.unfold:                                    ; preds = %sqlite3MutexAlloc.exit30.thread, %sqlite3MutexAlloc.exit30, %bb.m
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 360), align 8, !tbaa !199
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 360), align 8, !tbaa !199
end_hunk_1
begin_hunk_2
bb.v:                                             ; preds = %bb.u, %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 33
end_hunk_2
begin_hunk_3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.ey = load i16, ptr %i.ex, align 1            ; 2 uses
  %i.ez = zext i16 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8                ; 6 uses
  %i.fb = add nuw nsw i32 %i.fa, 16776960
  %i.fc = and i32 %i.fb, %i.fa
  %i.fd = icmp ne i32 %i.fc, 0
end_hunk_3
begin_hunk_4
  %i.fv = load i16, ptr %i.aa, align 8, !tbaa !579
  %i.fw = or i16 %i.fv, 2
  store i16 %i.fw, ptr %i.aa, align 8, !tbaa !579
  store i32 %i.fa, ptr %i.bk, align 4, !tbaa !123
  store i32 %i.fj, ptr %i.bl, align 8, !tbaa !607
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dd, i64 52
  %i.fy = load i32, ptr %i.fx, align 1, !tbaa !204
end_hunk_4
begin_hunk_5
  %i.gq = ashr exact i64 %sext914.i, 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.gr = getelementptr i8, ptr %i.a, i64 %i.gq   ; 4 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 1      ; 5 uses
  store ptr %i.gs, ptr %i.b, align 8, !tbaa !213
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !204 ; 2 uses
  %i.gu = icmp eq i8 %i.gt, 115
end_hunk_5
begin_hunk_6
  ]

.lr.ph.i121.2.i:                                  ; preds = %.lr.ph.i121.1.i
  %i.gx = getelementptr i8, ptr %i.gr, i64 3      ; 6 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !204
  switch i8 %i.gy, label %.lr.ph.i137.1.i.thread [
    i8 115, label %.lr.ph.i121.3.i
end_hunk_6
begin_hunk_7
  br i1 %i.hb, label %.lr.ph33.i.preheader.i, label %.lr.ph.i137.1.i.thread

.lr.ph33.i.preheader.i:                           ; preds = %.lr.ph.i121.3.i
  store i8 115, ptr %i.gx, align 1, !tbaa !204
  store ptr %i.gx, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit162.thread.i.thread

end_hunk_7
begin_hunk_8

.lr.ph33.i144.preheader.i:                        ; preds = %.lr.ph.i121.1.i
  store i8 115, ptr %i.gv, align 1, !tbaa !204
  store i8 115, ptr %i.gs, align 1, !tbaa !204
  br label %stem.exit162.thread.i.thread

.lr.ph.i137.1.i.thread:                           ; preds = %.lr.ph.i121.2.i, %.lr.ph.i121.3.i, %.lr.ph.i121.1.i
end_hunk_8
begin_hunk_9
  ]

.lr.ph.i150.1.i:                                  ; preds = %.lr.ph.i150.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 4 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !204
  %i.hg = icmp eq i8 %i.hf, 101
  br i1 %i.hg, label %.lr.ph.i150.2.i, label %stem.exit162.thread.i

.lr.ph.i150.2.i:                                  ; preds = %.lr.ph.i150.1.i
  %i.hh = getelementptr i8, ptr %i.hd, i64 2      ; 4 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !204 ; 2 uses
  %i.hj = icmp eq i8 %i.hi, 101
  br i1 %i.hj, label %._crit_edge.i155.i, label %._crit_edge.i178.i
end_hunk_9
begin_hunk_10
  br i1 %.not619.i, label %stem.exit162.thread.i, label %stem.exit162.thread.thread.i

stem.exit162.thread.thread.i:                     ; preds = %m_gt_0.exit.i
  store i8 101, ptr %i.hh, align 1, !tbaa !204
  store i8 101, ptr %i.he, align 1, !tbaa !204
  store ptr %i.he, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit162.thread.i.thread

end_hunk_10
begin_hunk_11

.lr.ph.i183.i:                                    ; preds = %hasVowel.exit425.i..lr.ph.i183.i_crit_edge, %hasVowel.exit428.i
  %i.io = phi i8 [ %i.hi, %hasVowel.exit428.i ], [ %.pre705, %hasVowel.exit425.i..lr.ph.i183.i_crit_edge ] ; 4 uses
  %storemerge = phi ptr [ %i.hh, %hasVowel.exit428.i ], [ %scevgep799.i, %hasVowel.exit425.i..lr.ph.i183.i_crit_edge ] ; 21 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !213
  switch i8 %i.io, label %.lr.ph.i209.thread.i [
    i8 116, label %.lr.ph.i183.1.i
end_hunk_11
begin_hunk_12
  br i1 %i.ir, label %.lr.ph33.i190.preheader.i, label %.lr.ph.i209.thread.i

.lr.ph33.i190.preheader.i:                        ; preds = %.lr.ph.i183.1.i
  store i8 116, ptr %storemerge, align 1, !tbaa !204
  %i.is = getelementptr inbounds i8, ptr %storemerge, i64 -1 ; 3 uses
  store i8 101, ptr %i.is, align 1, !tbaa !204
  store ptr %i.is, ptr %i.b, align 8, !tbaa !213
end_hunk_12
begin_hunk_13
  br i1 %i.iv, label %.lr.ph33.i203.preheader.i, label %.lr.ph.i209.thread.i

.lr.ph33.i203.preheader.i:                        ; preds = %.lr.ph.i196.1.i
  store i8 108, ptr %storemerge, align 1, !tbaa !204
  %i.iw = getelementptr inbounds i8, ptr %storemerge, i64 -1 ; 3 uses
  store i8 101, ptr %i.iw, align 1, !tbaa !204
  store ptr %i.iw, ptr %i.b, align 8, !tbaa !213
end_hunk_13
begin_hunk_14
  br i1 %i.iz, label %.lr.ph33.i216.preheader.i, label %.lr.ph.i209.thread.i

.lr.ph33.i216.preheader.i:                        ; preds = %.lr.ph.i209.1.i
  store i8 122, ptr %storemerge, align 1, !tbaa !204
  %i.ja = getelementptr inbounds i8, ptr %storemerge, i64 -1 ; 3 uses
  store i8 101, ptr %i.ja, align 1, !tbaa !204
  store ptr %i.ja, ptr %i.b, align 8, !tbaa !213
end_hunk_14
begin_hunk_15

stem.exit162.thread.i.thread:                     ; preds = %.lr.ph33.i.preheader.i, %.lr.ph33.i131.preheader.i, %.lr.ph33.i144.preheader.i, %bb.u, %hasVowel.exit.i, %stem.exit162.thread.i, %stem.exit162.thread.thread.i
  %i.jw = phi ptr [ %.pre863.i, %bb.u ], [ %.ph.i.ph, %hasVowel.exit.i ], [ %.ph.i.ph, %stem.exit162.thread.i ], [ %i.he, %stem.exit162.thread.thread.i ], [ %i.gx, %.lr.ph33.i131.preheader.i ], [ %i.gx, %.lr.ph33.i.preheader.i ], [ %i.gs, %.lr.ph33.i144.preheader.i ] ; 120 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1 ; 6 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !204
  switch i8 %i.jy, label %stem.exit265.i [
    i8 97, label %.lr.ph.i224.preheader.i
end_hunk_15
begin_hunk_16
  br i1 %i.kx, label %.lr.ph.i224.5.i, label %.lr.ph.i255.2

.lr.ph.i224.5.i:                                  ; preds = %.lr.ph.i224.4.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jw, i64 5 ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !204
  %i.la = icmp eq i8 %i.kz, 116
  br i1 %i.la, label %.lr.ph.i224.6.i, label %.lr.ph.i255.2

.lr.ph.i224.6.i:                                  ; preds = %.lr.ph.i224.5.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jw, i64 6 ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !204
  %i.ld = icmp eq i8 %i.lc, 97
  br i1 %i.ld, label %._crit_edge.i229.i, label %.lr.ph.i255.2
end_hunk_16
begin_hunk_17
  br i1 %.not628.i, label %stem.exit265.i, label %.lr.ph33.i232.preheader.i

.lr.ph33.i232.preheader.i:                        ; preds = %m_gt_0.exit438.i
  store i8 97, ptr %i.lb, align 1, !tbaa !204
  store i8 116, ptr %i.ky, align 1, !tbaa !204
  store i8 101, ptr %i.kv, align 1, !tbaa !204
  store ptr %i.kv, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit265.i
end_hunk_17
begin_hunk_18
  br i1 %.not627.i, label %stem.exit265.i, label %.lr.ph33.i246.preheader.i

.lr.ph33.i246.preheader.i:                        ; preds = %m_gt_0.exit448.i
  store <4 x i8> <i8 101, i8 99, i8 110, i8 101>, ptr %i.jw, align 1, !tbaa !204
  store ptr %i.jw, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit265.i

end_hunk_18
begin_hunk_19
  br label %stem.exit265.i

.lr.ph.i252.2.i:                                  ; preds = %.lr.ph.i252.preheader.i
  %i.ox = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 2 uses
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !204
  %i.oz = icmp eq i8 %i.oy, 122
  br i1 %i.oz, label %.lr.ph.i252.3.i, label %stem.exit265.i

.lr.ph.i252.3.i:                                  ; preds = %.lr.ph.i252.2.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.jw, i64 3 ; 2 uses
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !204
  %i.pc = icmp eq i8 %i.pb, 105
  br i1 %i.pc, label %._crit_edge.i257.i, label %stem.exit265.i
end_hunk_19
begin_hunk_20
  br i1 %.not626.i, label %stem.exit265.i, label %.lr.ph33.i260.preheader.i

.lr.ph33.i260.preheader.i:                        ; preds = %m_gt_0.exit458.i
  store i8 105, ptr %i.pa, align 1, !tbaa !204
  store i8 122, ptr %i.ox, align 1, !tbaa !204
  store i8 101, ptr %i.jx, align 1, !tbaa !204
  store ptr %i.jx, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit265.i

.lr.ph.i266.2.i:                                  ; preds = %.lr.ph.i266.preheader.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 2 uses
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !204
  %i.px = icmp eq i8 %i.pw, 111
  br i1 %i.px, label %.lr.ph.i266.3.i, label %stem.exit265.i

.lr.ph.i266.3.i:                                  ; preds = %.lr.ph.i266.2.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.jw, i64 3 ; 2 uses
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !204
  %i.qa = icmp eq i8 %i.pz, 108
  br i1 %i.qa, label %._crit_edge.i271.i, label %stem.exit265.i
end_hunk_20
begin_hunk_21
  br i1 %.not625.i, label %stem.exit265.i, label %.lr.ph33.i274.preheader.i

.lr.ph33.i274.preheader.i:                        ; preds = %m_gt_0.exit468.i
  store i8 108, ptr %i.py, align 1, !tbaa !204
  store i8 111, ptr %i.pv, align 1, !tbaa !204
  store i8 103, ptr %i.jx, align 1, !tbaa !204
  store ptr %i.jx, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit265.i

.lr.ph.i280.2.i:                                  ; preds = %.lr.ph.i280.preheader.i
  %i.qt = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 2 uses
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !204
  %i.qv = icmp eq i8 %i.qu, 98
  br i1 %i.qv, label %._crit_edge.i285.i, label %.lr.ph.i229.2
end_hunk_21
begin_hunk_22
  br i1 %.not624.i, label %stem.exit265.i, label %.lr.ph33.i288.preheader.i

.lr.ph33.i288.preheader.i:                        ; preds = %m_gt_0.exit478.i
  store i8 98, ptr %i.qt, align 1, !tbaa !204
  store i8 108, ptr %i.jx, align 1, !tbaa !204
  store i8 101, ptr %i.jw, align 1, !tbaa !204
  store ptr %i.jw, ptr %i.b, align 8, !tbaa !213
end_hunk_22
begin_hunk_23
  br i1 %i.ug, label %.lr.ph.i294.5.i, label %.lr.ph.i190.2

.lr.ph.i294.5.i:                                  ; preds = %.lr.ph.i294.4.i
  %i.uh = getelementptr inbounds nuw i8, ptr %i.jw, i64 5 ; 2 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !204
  %i.uj = icmp eq i8 %i.ui, 122
  br i1 %i.uj, label %.lr.ph.i294.6.i, label %.lr.ph.i190.2

.lr.ph.i294.6.i:                                  ; preds = %.lr.ph.i294.5.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.jw, i64 6 ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !204
  %i.um = icmp eq i8 %i.ul, 105
  br i1 %i.um, label %._crit_edge.i299.i, label %.lr.ph.i190.2
end_hunk_23
begin_hunk_24
  br i1 %.not623.i, label %stem.exit265.i, label %.lr.ph33.i302.preheader.i

.lr.ph33.i302.preheader.i:                        ; preds = %m_gt_0.exit488.i
  store i8 105, ptr %i.uk, align 1, !tbaa !204
  store i8 122, ptr %i.uh, align 1, !tbaa !204
  store i8 101, ptr %i.ue, align 1, !tbaa !204
  store ptr %i.ue, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit265.i
end_hunk_24
begin_hunk_25
  br i1 %i.xn, label %.lr.ph.i308.3.i, label %stem.exit265.i

.lr.ph.i308.3.i:                                  ; preds = %.lr.ph.i308.2.i
  %i.xo = getelementptr inbounds nuw i8, ptr %i.jw, i64 3 ; 3 uses
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !204
  %i.xq = icmp eq i8 %i.xp, 108
  br i1 %i.xq, label %.lr.ph.i308.4.i, label %stem.exit265.i

.lr.ph.i308.4.i:                                  ; preds = %.lr.ph.i308.3.i
  %i.xr = getelementptr inbounds nuw i8, ptr %i.jw, i64 4 ; 2 uses
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !204
  %i.xt = icmp eq i8 %i.xs, 97
  br i1 %i.xt, label %._crit_edge.i313.i, label %stem.exit265.i
end_hunk_25
begin_hunk_26
  br i1 %.not622.i, label %stem.exit265.i, label %.lr.ph33.i316.preheader.i

.lr.ph33.i316.preheader.i:                        ; preds = %m_gt_0.exit498.i
  store i8 97, ptr %i.xr, align 1, !tbaa !204
  store i8 108, ptr %i.xo, align 1, !tbaa !204
  store ptr %i.xo, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit265.i

end_hunk_26
begin_hunk_27
  br i1 %i.act, label %.lr.ph.i322.3.i, label %.lr.ph.i125.2

.lr.ph.i322.3.i:                                  ; preds = %.lr.ph.i322.2.i
  %i.acu = getelementptr inbounds nuw i8, ptr %i.jw, i64 3 ; 3 uses
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !204
  %i.acw = icmp eq i8 %i.acv, 108
  br i1 %i.acw, label %.lr.ph.i322.4.i, label %.lr.ph.i125.2

.lr.ph.i322.4.i:                                  ; preds = %.lr.ph.i322.3.i
  %i.acx = getelementptr inbounds nuw i8, ptr %i.jw, i64 4 ; 2 uses
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !204
  %i.acz = icmp eq i8 %i.acy, 97
  br i1 %i.acz, label %._crit_edge.i327.i, label %.lr.ph.i125.2
end_hunk_27
begin_hunk_28
  br i1 %.not621.i, label %stem.exit265.i, label %.lr.ph33.i330.preheader.i

.lr.ph33.i330.preheader.i:                        ; preds = %m_gt_0.exit508.i
  store i8 97, ptr %i.acx, align 1, !tbaa !204
  store i8 108, ptr %i.acu, align 1, !tbaa !204
  store ptr %i.acu, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit265.i

end_hunk_28
begin_hunk_29
  br i1 %i.agj, label %.lr.ph.i336.3.i, label %stem.exit373.i

.lr.ph.i336.3.i:                                  ; preds = %.lr.ph.i336.2.i
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agd, i64 3 ; 3 uses
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !204
  %i.agm = icmp eq i8 %i.agl, 99
  br i1 %i.agm, label %.lr.ph.i336.4.i, label %stem.exit373.i

.lr.ph.i336.4.i:                                  ; preds = %.lr.ph.i336.3.i
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agd, i64 4 ; 2 uses
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !204
  %i.agp = icmp eq i8 %i.ago, 105
  br i1 %i.agp, label %._crit_edge.i341.i, label %stem.exit373.i
end_hunk_29
begin_hunk_30
m_gt_0.exit518.i:                                 ; preds = %.preheader.i515.i
  %i.ahh = load i8, ptr %.1.i516.i, align 1, !tbaa !204
  %.not632.i = icmp eq i8 %i.ahh, 0
  br i1 %.not632.i, label %stem.exit373.i, label %.lr.ph33.i344.preheader.i

.lr.ph33.i344.preheader.i:                        ; preds = %m_gt_0.exit518.i
  store i8 105, ptr %i.agn, align 1, !tbaa !204
  store i8 99, ptr %i.agk, align 1, !tbaa !204
  br label %stem.exit373.i.sink.split

.lr.ph.i350.2.i:                                  ; preds = %.lr.ph.i336.1.i
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agd, i64 2
end_hunk_30
begin_hunk_31
  br i1 %i.ajr, label %.lr.ph.i360.3.i, label %stem.exit373.i

.lr.ph.i360.3.i:                                  ; preds = %.lr.ph.i360.2.i
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.agd, i64 3 ; 3 uses
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !204
  %i.aju = icmp eq i8 %i.ajt, 99
  br i1 %i.aju, label %.lr.ph.i360.4.i, label %stem.exit373.i

.lr.ph.i360.4.i:                                  ; preds = %.lr.ph.i360.3.i
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.agd, i64 4 ; 2 uses
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !204
  %i.ajx = icmp eq i8 %i.ajw, 105
  br i1 %i.ajx, label %._crit_edge.i365.i, label %stem.exit373.i
end_hunk_31
begin_hunk_32
m_gt_0.exit528.i:                                 ; preds = %.preheader.i525.i
  %i.akp = load i8, ptr %.1.i526.i, align 1, !tbaa !204
  %.not631.i = icmp eq i8 %i.akp, 0
  br i1 %.not631.i, label %stem.exit373.i, label %.lr.ph33.i368.preheader.i

.lr.ph33.i368.preheader.i:                        ; preds = %m_gt_0.exit528.i
  store i8 105, ptr %i.ajv, align 1, !tbaa !204
  store i8 99, ptr %i.ajs, align 1, !tbaa !204
  br label %stem.exit373.i.sink.split

.lr.ph.i374.1.i:                                  ; preds = %stem.exit265.i
  %scevgep841.i = getelementptr i8, ptr %i.agd, i64 4 ; 2 uses
end_hunk_32
begin_hunk_33
  br i1 %i.aks, label %.lr.ph.i374.2.i, label %.lr.ph.i388.1.i

.lr.ph.i374.2.i:                                  ; preds = %.lr.ph.i374.1.i
  %i.akt = getelementptr inbounds nuw i8, ptr %i.agd, i64 2 ; 3 uses
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !204
  %i.akv = icmp eq i8 %i.aku, 99
  br i1 %i.akv, label %.lr.ph.i374.3.i, label %stem.exit373.i

.lr.ph.i374.3.i:                                  ; preds = %.lr.ph.i374.2.i
  %i.akw = getelementptr inbounds nuw i8, ptr %i.agd, i64 3 ; 2 uses
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !204
  %i.aky = icmp eq i8 %i.akx, 105
  br i1 %i.aky, label %._crit_edge.i379.i, label %stem.exit373.i
end_hunk_33
begin_hunk_34
m_gt_0.exit538.i:                                 ; preds = %.preheader.i535.i
  %i.alq = load i8, ptr %.1.i536.i, align 1, !tbaa !204
  %.not630.i = icmp eq i8 %i.alq, 0
  br i1 %.not630.i, label %stem.exit373.i, label %.lr.ph33.i382.preheader.i

.lr.ph33.i382.preheader.i:                        ; preds = %m_gt_0.exit538.i
  store i8 105, ptr %i.akw, align 1, !tbaa !204
  store i8 99, ptr %i.akt, align 1, !tbaa !204
  br label %stem.exit373.i.sink.split

.lr.ph.i388.1.i:                                  ; preds = %.lr.ph.i374.1.i
  %scevgep843.i = getelementptr i8, ptr %i.agd, i64 3 ; 3 uses
end_hunk_34
begin_hunk_35
  %.not629.i = icmp eq i8 %i.ann, 0
  br i1 %.not629.i, label %stem.exit373.i, label %stem.exit373.i.sink.split

stem.exit373.i.sink.split:                        ; preds = %m_gt_0.exit548.i, %m_gt_0.exit, %m_gt_0.exit111, %.lr.ph33.i344.preheader.i, %.lr.ph33.i368.preheader.i, %.lr.ph33.i382.preheader.i, %.lr.ph33.i.preheader
  %.sink = phi ptr [ %i.ajl, %.lr.ph33.i.preheader ], [ %scevgep843.i, %m_gt_0.exit ], [ %scevgep849.i, %m_gt_0.exit111 ], [ %i.akt, %.lr.ph33.i382.preheader.i ], [ %i.ajs, %.lr.ph33.i368.preheader.i ], [ %i.agk, %.lr.ph33.i344.preheader.i ], [ %scevgep839.i, %m_gt_0.exit548.i ] ; 2 uses
  store ptr %.sink, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit373.i

end_hunk_35
begin_hunk_36
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.TermSelect, align 8         ; 13 uses
  %6 = alloca %struct.Fts3SegFilter, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #72
end_hunk_36
begin_hunk_37
  %i.al = sext i32 %i.ai to i64                   ; 3 uses
  %i.am = call i32 @sqlite3_initialize()
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %sqlite3_malloc64.exit.i, label %sqlite3_malloc64.exit.thread.i

sqlite3_malloc64.exit.thread.i:                   ; preds = %bb.c
  store ptr null, ptr %5, align 8, !tbaa !213
  br label %.preheader.preheader

sqlite3_malloc64.exit.i:                          ; preds = %bb.c
  %i.an = add nsw i64 %i.al, 11
end_hunk_37
begin_hunk_38
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i36, 16
  br i1 %exitcond.not.i, label %bb.ap, label %.preheader138, !llvm.loop !4420

.preheader.preheader:                             ; preds = %sqlite3_malloc64.exit.i, %fts3TermSelectMerge.exit, %bb.v, %sqlite3_malloc64.exit.thread.i, %sqlite3_free.exit.thread.i, %bb.a
  %.2 = phi i32 [ %i.de, %sqlite3_free.exit.thread.i ], [ %i.z, %bb.a ], [ %i.ay, %bb.v ], [ 7, %sqlite3_malloc64.exit.thread.i ], [ 7, %sqlite3_malloc64.exit.i ], [ %i.ag, %fts3TermSelectMerge.exit ]
  br label %.preheader

bb.ap:                                            ; preds = %bb.ao
end_hunk_38
