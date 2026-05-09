inline.NumInlined: 17
begin_hunk_0_@nsis_inflate:bb.a
  %.sroa.130.81301 = phi i32 [ %.sroa.130.12, %bb.cp ], [ %.sroa.130.7, %bb.bq ] ; 4 uses
  %.sroa.219199.91300 = phi ptr [ %.sroa.219199.13, %bb.cp ], [ %.sroa.219199.8, %bb.bq ] ; 3 uses
  %.sroa.265.91299 = phi i32 [ %.sroa.265.13, %bb.cp ], [ %.sroa.265.8, %bb.bq ] ; 5 uses
  %.lcssa102312961298 = phi i32 [ %.lcssa10231297, %bb.cp ], [ %.promoted, %bb.bq ] ; 9 uses
  %i.ob = load i32, ptr %i.at, align 8, !tbaa !21 ; 3 uses
  %i.oc = icmp ult i32 %.sroa.130.81301, %i.ob
  br i1 %i.oc, label %.lr.ph1278.preheader, label %._crit_edge1279
end_hunk_0
begin_hunk_1_@nsis_inflate:bb.a
bb.bx:                                            ; preds = %._crit_edge1279
  %i.qr = icmp eq i16 %i.qi, 18                   ; 3 uses
  %i.qs = add nsw i32 %i.qj, -14
  %.0696 = select i1 %i.qr, i32 7, i32 %i.qs      ; 2 uses
  %.0694.neg = select i1 %i.qr, i32 -11, i32 -3
  %.0694 = select i1 %i.qr, i32 11, i32 3
  %i.qt = add nuw nsw i32 %.0696, %i.qg           ; 3 uses
  %i.qu = icmp ult i32 %.sroa.130.9.lcssa, %i.qt
  br i1 %i.qu, label %.lr.ph1289.preheader, label %._crit_edge1290

end_hunk_1
begin_hunk_2_@nsis_inflate:bb.a
  %i.sq = zext nneg i8 %i.qf to i64
  %i.sr = lshr i64 %.sroa.5684.10.lcssa, %i.sq    ; 2 uses
  %i.ss = trunc i64 %i.sr to i32
  %i.st = zext nneg i32 %.0696 to i64             ; 2 uses
  %i.su = getelementptr inbounds nuw [2 x i8], ptr @inflate_mask, i64 %i.st
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !37
  %i.sw = zext i16 %i.sv to i32
  %i.sx = and i32 %i.sw, %i.ss                    ; 2 uses
  %i.sy = add nuw nsw i32 %i.sx, %.0694           ; 6 uses
  %i.sz = lshr i64 %i.sr, %i.st                   ; 2 uses
  %i.ta = sub nuw i32 %.sroa.130.10.lcssa, %i.qt  ; 2 uses
  %i.tb = add nuw nsw i32 %i.sy, %.lcssa102312961298
end_hunk_2
begin_hunk_3_@nsis_inflate:bb.a
  br label %.thread932

bb.cm:                                            ; preds = %bb.cf
  br i1 %i.td, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.un = add nsw i32 %.lcssa102312961298, -1
  %i.uo = zext i32 %i.un to i64
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.uo
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !21
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %1 = phi i32 [ %i.uq, %bb.cn ], [ 0, %bb.cm ]   ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.sy, 12
  %i.ur = sub nuw nsw i32 %.0694.neg, %i.sx
  %i.us = icmp ult i32 %i.ur, %.lcssa102312961298
  %or.cond2337 = select i1 %min.iters.check, i1 true, i1 %i.us
  br i1 %or.cond2337, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.co
  %n.vec = and i32 %i.sy, 131064                  ; 3 uses
  %i.ut = add i32 %.lcssa102312961298, %n.vec     ; 2 uses
  %i.uu = and i32 %i.sy, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

end_hunk_3
begin_hunk_4_@nsis_inflate:bb.a
  %cmp.n = icmp eq i32 %i.sy, %n.vec
  br i1 %cmp.n, label %.loopexit2335, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.co, %middle.block
  %.1697.ph = phi i32 [ %.lcssa102312961298, %bb.co ], [ %i.ut, %middle.block ] ; 2 uses
  %.1695.ph = phi i32 [ %i.sy, %bb.co ], [ %i.uu, %middle.block ] ; 4 uses
  %i.va = add nsw i32 %.1695.ph, -1
  %xtraiter = and i32 %.1695.ph, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_4
begin_hunk_5_@nsis_inflate:bb.a
  %i.vb = add i32 %.1697.prol, 1                  ; 3 uses
  %i.vc = zext i32 %.1697.prol to i64
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.vc
  store i32 %1, ptr %i.vd, align 4, !tbaa !21
  %i.ve = add nsw i32 %.1695.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
end_hunk_5
begin_hunk_6_@nsis_inflate:bb.a
  %i.vg = add i32 %.1697, 1
  %i.vh = zext i32 %.1697 to i64
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.vh
  store i32 %1, ptr %i.vi, align 4, !tbaa !21
  %i.vj = add i32 %.1697, 2
  %i.vk = zext i32 %i.vg to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.vk
  store i32 %1, ptr %i.vl, align 4, !tbaa !21
  %i.vm = add i32 %.1697, 3
  %i.vn = zext i32 %i.vj to i64
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.vn
  store i32 %1, ptr %i.vo, align 4, !tbaa !21
  %i.vp = add i32 %.1697, 4                       ; 2 uses
  %i.vq = zext i32 %i.vm to i64
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.vq
  store i32 %1, ptr %i.vr, align 4, !tbaa !21
  %i.vs = add nsw i32 %.1695, -4                  ; 2 uses
  %.not773.3 = icmp eq i32 %i.vs, 0
  br i1 %.not773.3, label %.loopexit2335, label %scalar.ph, !llvm.loop !47
end_hunk_6
